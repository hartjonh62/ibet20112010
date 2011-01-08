jx = {
      toQueryString: function(obj) 
        {
            if(typeof obj == 'object'){
                var arr = new Array();
                for(var att in obj)
                {
                    arr.push(att + '=' + eval('obj.' + att));
                }
                return arr.join('&');
            }
            else if(typeof obj == 'array'){
                return obj.join('&');
            }
            else if(typeof obj == 'string'){
                return obj.replace('?', '');
            }
            else{
                return obj;
            }
        }
    , getHTTPObject: function() 
        { var A = false; if (typeof ActiveXObject != "undefined") { try { A = new ActiveXObject("Msxml2.XMLHTTP") } catch (C) { try { A = new ActiveXObject("Microsoft.XMLHTTP") } catch (B) { A = false } } } else { if (window.XMLHttpRequest) { try { A = new XMLHttpRequest() } catch (C) { A = false } } } return A }
    , request: function(url, callback, method, params, async) 
        { var http = this.init(); if (!http || !url || !method) { return } method = method.toUpperCase(); if(typeof async == "undefined") async = true; var isGet = (method == "GET"); var ch = (url.indexOf("?") == -1)? "?":"&"; http.open(method, (isGet && typeof params != "undefined")?url+ch+this.toQueryString(params):url, async); http.onreadystatechange = function() { if (http.readyState == 4) { if (http.status == 200) { var result = http; if (callback && async) { callback(result, http.getResponseHeader('Date')) } } else {/*alert(http.statusText)*/} } }; if(!isGet) {http.setRequestHeader("Content-type", "application/x-www-form-urlencoded"); if(typeof params != "undefined") http.setRequestHeader("Content-length", params.length);http.setRequestHeader("Connection", "close");}; http.send(isGet?null:this.toQueryString(params)); if(!async) callback(http); }
    , init: function() { return this.getHTTPObject() } 
}
/*
jx.request(url,function(result){...},method,params,async);
method:post,get
async:true,false
params:a string, an object or an array
*/
function Ajax() { };
Ajax.Request = function(url, options) {
    /*
    url:'url?var1=val1&var2=val2...'
    options:{method:'get/post',asynchronous:true/false,parameters:'var3=val3&var4=val4',onComplete:function(data){}}
    */
    var method = 'post';
    var callback = 'void(0)', params = null;
    var async = true;
    if (options) {
        if (typeof options.method != 'undefined') method = options.method;
        if (typeof options.parameters != 'undefined') params = options.parameters;
        
        if (typeof options.onComplete != 'undefined') callback = options.onComplete;
        else if (typeof options.onSuccess != 'undefined') callback = options.onSuccess;
        
        if (typeof options.asynchronous != 'undefined') async = options.asynchronous;
    }
    
    jx.request(url, callback, method, params, async);
}