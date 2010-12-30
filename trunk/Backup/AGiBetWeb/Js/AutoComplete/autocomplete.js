http://www.vonloesch.de/node/18
var suggestions = null;

if(typeof parent.accInfoCacheQuery == 'undefined')
{
    parent.accInfoCacheQuery = new Array(); // max 200
    parent.accInfoCacheSuggestion = new Array(); // max 200
}
var maxCache = 200;
var cacheQuery = parent.accInfoCacheQuery;
var cacheSuggestion = parent.accInfoCacheSuggestion;

var outp;
var oldins;
var posi = -1;
var words = new Array();
var input;
var key;
var tId = 0;
var url = null;
var txtObj = null;
function setVisible(visi){
	var x = $("shadow");
	x.style.position = 'absolute';
	x.style.top =  (findPosY(txtObj)+3)+"px";
	x.style.left = (findPosX(txtObj)+2)+"px";
	x.style.visibility = visi;
}

function initAutoComplete(id, queryUrl){
    txtObj = $(id);
    url = queryUrl;
    txtObj.setAttribute('autocomplete', 'off');
    IBC.addEvent(txtObj, 'blur', function(){setTimeout('setVisible("hidden")', 500);});
    
	outp = $("output");
	setVisible("hidden");
	
	IBC.addEvent(txtObj, 'keydown', keygetter); //needed for Opera...
	IBC.addEvent(txtObj, 'keyup', keyHandler);
	
	if(cacheQuery.length == 0)
	{
	    cacheQuery.push('');
	    cacheSuggestion.push([]);
	}
}

function findPosX(obj)
{
	var curleft = 0;
	if (obj.offsetParent){
		while (obj.offsetParent){
			curleft += obj.offsetLeft;
			obj = obj.offsetParent;
		}
	}
	else if (obj.x)
		curleft += obj.x;
	return curleft;
}

function findPosY(obj)
{
	var curtop = 0;
	if (obj.offsetParent){
		curtop += obj.offsetHeight;
		while (obj.offsetParent){
			curtop += obj.offsetTop;
			obj = obj.offsetParent;
		}
	}
	else if (obj.y){
		curtop += obj.y;
		curtop += obj.height;
	}
	return curtop;
}

var oldValue = ''; var oldIdx = -1;
function getSuggestions()
{
    if(txtObj.value.length < 2) 
    {
        suggestions = [];
        lookAt('');
        return;
    }
    
    if(oldValue != '' && txtObj.value.indexOf(oldValue) != -1 && oldIdx != -1 && cacheSuggestion[oldIdx].length == 0) 
    {
        return;
    }
    
    oldValue = txtObj.value;
    oldIdx = findItemInArr(oldValue.toLowerCase(), cacheQuery);
    
    if(oldIdx != -1 && cacheQuery.length < maxCache)
    {
        suggestions = cacheSuggestion[oldIdx];
        lookAt();
    }
    else
    {
        if(cacheQuery.length >= maxCache) {cacheQuery.slice(1, maxCache-1); cacheSuggestion.slice(1, maxCache-1)};
        jx.request(url,lookAt,'get','query=' + oldValue);
    }
}

function lookAt(data){

    if(typeof data == 'object')
    {
        eval('suggestions = ' + data.responseText + '.suggestions');
    }
    
    if(findItemInArr(oldValue.toLowerCase(), cacheQuery) == -1)
    {
        cacheQuery.push(oldValue.toLowerCase());
        cacheSuggestion.push(suggestions);
        
        oldIdx = cacheQuery.length - 1;
    }
    
	var ins = txtObj.value;
	if (oldins == ins) return;

	else if (ins.length > 0){
		words = getWord(ins);
		if (words.length > 0){
			clearOutput();
			for (var i=0;i < words.length; ++i) addWord (words[i]);
			setVisible("visible");
			input = txtObj.value;
		}
		else{
			setVisible("hidden");
			posi = -1;
		}
	}
	else{
		setVisible("hidden");
		posi = -1;
	}
	oldins = ins;
}

function addWord(word){
	var sp = document.createElement("div");
	sp.style.paddingLeft = '3px';
	sp.appendChild(document.createTextNode(word));
	sp.onmouseover = mouseHandler;
	sp.onmouseout = mouseHandlerOut;
	sp.onclick = mouseClick;
	outp.appendChild(sp);
}

function clearOutput(){
	while (outp.hasChildNodes()){
		noten=outp.firstChild;
		outp.removeChild(noten);
	}
	posi = -1;
}

function getWord(beginning){
	var words = new Array();
	for (var i=0;i < suggestions.length; ++i){
		var j = -1;
		var correct = 1;
        if (suggestions[i].toLowerCase().indexOf(beginning.toLowerCase()) == -1) correct = 0;
		if (correct == 1) words[words.length] = suggestions[i];
	}
	return words;
}

function setColor (_posi, _color, _forg){
	outp.childNodes[_posi].style.background = _color;
	outp.childNodes[_posi].style.color = _forg;
}

function keygetter(event){
	if (!event && window.event) event = window.event;
	if (event) key = event.keyCode;
	else key = event.which;
}
	
function keyHandler(event){

	if ($("shadow").style.visibility == "visible"){
	    if (key == 40){ //Key down
		    if (words.length > 0 && posi < words.length-1){
			    if (posi >=0) setColor(posi, "#fff", "black");
			    else input = txtObj.value;
			    setColor(++posi, "#316AC5", "white");
			    txtObj.value = outp.childNodes[posi].firstChild.nodeValue;
		    }
	    }
	    else if (key == 38){ //Key up
		    if (words.length > 0 && posi >= 0){
			    if (posi >=1){
				    setColor(posi, "#fff", "black");
				    setColor(--posi, "#316AC5", "white");
				    txtObj.value = outp.childNodes[posi].firstChild.nodeValue;
			    }
			    else{
				    setColor(posi, "#fff", "black");
				    txtObj.value = input;
				    txtObj.focus();
				    posi--;
			    }
		    }
	    }
	    else if (key == 27){ // Esc
		    txtObj.value = input;
		    setVisible("hidden");
		    posi = -1;
		    oldins = input;
	    }
	    else if (key == 8){ // Backspace
		    posi = -1;
		    oldins=-1;
	    }
	}
	
	if (key != 40 && key != 38 && key != 27)
	{
        if(tId > 0) clearTimeout(tId);
        tId = setTimeout(getSuggestions, 200);
    }
}

var mouseHandler=function(){
	for (var i=0; i < words.length; ++i)
		setColor (i, "white", "black");
	this.style.background = "#316AC5";
	this.style.color= "white";
}

var mouseHandlerOut=function(){
	this.style.background = "white";
	this.style.color= "black";
}

var mouseClick=function(){
	txtObj.value = this.firstChild.nodeValue;
	setVisible("hidden");
	posi = -1;
	oldins = this.firstChild.nodeValue;
	txtObj.focus();
}
