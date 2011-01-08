function CheckValidPage() {
    if ($('hdtotalpages') != null) {
        if (parseInt($('txtpage').value) > parseInt($('hdtotalpages').value)) {
            return false;
        }
    }    

    var currentPage = $('currentpage').firstChild.nodeValue;
    currentPage = parseInt(currentPage.substring(0, currentPage.indexOf(':')));
    if (currentPage == parseInt($('txtpage').value)) {
        return false;
    }

    return true;
}

function NavigatePage2(page, url, siteKey, siteValue) {
    var param = "";
    param = '&page=' + page + '&' + siteKey + "=" + siteValue;
    
    DelayReloadPage(null, 300000);
    location = url + param;
}

function GotoPageNext2(url, siteKey, siteValue) {
    if ($('txtpage').value != 0) {
        if (CheckValidPage() == false) {
            return false;
        }

        url = url + '&page=' + $('txtpage').value + '&' + siteKey + "=" + siteValue;
        location.href = url;
    }
    else {
        $('txtpage').focus();
    }
}

//this function to go to page in paging
function jumpto(url) {

    var page_menu = $('page_menu');

    if (page_menu.style.display == 'none' && url != '') {
        page_menu.style.display = '';
        page_menu.style.left = String(xMousePos) + 'px';
        page_menu.style.top = String(yMousePos + 12) + 'px';
        page_menu.style.position = 'absolute';
        $('txtpage').focus();
    }
    else
        page_menu.style.display = 'none';
}
//this function is used when Enter key is pressed "User Name" textbox
function KeyPress2(e) {
    var isok = true;
    if (!e) e = window.event;
    var key = (e.keyCode) ? e.keyCode : e.which;
    if (key == 13) {
        $("dSubmit").click();
        return false;
    }
}
//this function is used when Enter key is pressed "Go to page" textbox
function KeyPress(e) {
    var isok = true;
    if (!e) e = window.event;
    var key = (e.keyCode) ? e.keyCode : e.which;
    if ((key < 48 || key > 57) && key != 8 && key != 13 && key != 0 && (key < 37 || key > 40)) {
        return false;
    }
    else {
        if (key == 13) {
            $("pagenav_ibtn").click();
            return false;

        }
    }
}

if (document.layers) { // Netscape
    document.captureEvents(Event.MOUSEMOVE);
    document.onmousemove = captureMousePosition;
} else if (document.all) { // Internet Explorer
    document.onmousemove = captureMousePosition;
} else if (document.getElementById) { // Netcsape 6
    document.onmousemove = captureMousePosition;
}

// Global variables
xMousePos = 0;
yMousePos = 0;
xMousePosMax = 0;
yMousePosMax = 0;

function captureMousePosition(e) {    
    if (!e) var e = window.event;
    if (e.pageX || e.pageY) {
        xMousePos = e.pageX;
        yMousePos = e.pageY;
        xMousePosMax = window.innerWidth + window.pageXOffset;
        yMousePosMax = window.innerHeight + window.pageYOffset;
    }
    else if (e.clientX || e.clientY) {
        var doc = document.documentElement || document.body;
        xMousePos = e.clientX + doc.scrollLeft;
        yMousePos = e.clientY + doc.scrollTop; 
        xMousePosMax = doc.clientWidth + doc.scrollLeft;
        yMousePosMax = doc.clientHeight + doc.scrollTop;
    } 
}
var IsSearch = 0;
var IsFirst = 1;
function ClearAll() {
    if (IsFirst == 1) {
        IsFirst = 0;
        return;
    }
    var value = "";
    value = $('txtUserName').value;
    if (value.toLowerCase() == "all") {
        $('txtUserName').value = "";
    }
}