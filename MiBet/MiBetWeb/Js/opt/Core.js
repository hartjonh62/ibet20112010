function $(id) {
    return document.getElementById(id);
}

window.$ = $;
window.parent.$ = function(id) {
    return this.document.getElementById(id);
};

// Detect browser
function isIE() { return /msie/i.test(navigator.userAgent) && !/opera/i.test(navigator.userAgent); }

// Cookie
function getCookie(name) {
    var nameEQ = name + "=";
    var ca = document.cookie.split(';');
    for (var i = 0; i < ca.length; i++) {
        var c = ca[i];
        while (c.charAt(0) == ' ') c = c.substring(1, c.length);
        if (c.indexOf(nameEQ) == 0) return c.substring(nameEQ.length, c.length);
    }
    return null;
}

function setCookie(name, value, days) {
    if (days) {
        var date = new Date();
        date.setTime(date.getTime() + (days * 24 * 60 * 60 * 1000));
        var expires = "; expires=" + date.toGMTString();
    }
    else var expires = "";
    document.cookie = name + "=" + value + expires + "; path=/";
}

// Utility functions
var IE = isIE();

var IBC_Cls = function() { };
// !!!IMPORTANT: addOnce = true if you want just one function for this event
IBC_Cls.prototype.addEvent = function(el, evname, func, addOnce) {
    if (el.attachEvent && addOnce != true) { // IE
        el.attachEvent("on" + evname, func);
    } else if (el.addEventListener && addOnce != true) { // Gecko / W3C
        el.addEventListener(evname, func, true);
    } else { // Opera (or old browsers)
        el["on" + evname] = func;
    }
}

IBC_Cls.prototype.removeEvent = function(el, evname, func) {
    if (el.detachEvent) { // IE
        el.detachEvent("on" + evname, func);
    } else if (el.removeEventListener) { // Gecko / W3C
        el.removeEventListener(evname, func, true);
    } else { // Opera (or old browsers)
        el["on" + evname] = null;
    }
}

IBC_Cls.prototype.stopEvent = function(ev) {
    if (IE) {
        window.event.cancelBubble = true;
        window.event.returnValue = false;
    } else {
        ev.preventDefault();
        ev.stopPropagation();
    }
    return false;
};

IBC_Cls.prototype.calculateViewport = function() {
    window.viewport = [];
    if (!IE) {
        // in standards compliant mode (i.e. with a valid doctype as the first line in the document)
        if (typeof document.documentElement != 'undefined'
         && typeof document.documentElement.scrollWidth !=
         'undefined' && document.documentElement.scrollWidth != 0) {
            window.viewport.width = document.documentElement.scrollWidth;
            window.viewport.height = document.documentElement.scrollHeight;
        }

        window.viewport.width = Math.max(window.viewport.width, (Math.max(document.body.scrollWidth, document.body.clientWidth)));
        window.viewport.height = Math.max(window.viewport.height, (Math.max(document.body.scrollHeight, document.body.clientHeight)));
    }
    else {
        // in standards compliant mode (i.e. with a valid doctype as the first line in the document)
        if (typeof document.documentElement != 'undefined'
         && typeof document.documentElement.clientWidth !=
         'undefined' && document.documentElement.clientWidth != 0) {
            window.viewport.width = document.documentElement.clientWidth;
            window.viewport.height = document.documentElement.clientHeight;
        }
        // older versions of IE
        else {
            window.viewport.width = document.getElementsByTagName('body')[0].clientWidth;
            window.viewport.height = document.getElementsByTagName('body')[0].clientHeight;
        }

        window.viewport.width = Math.max(document.body.scrollWidth, window.viewport.width);
        window.viewport.height = Math.max(document.body.scrollHeight, window.viewport.height);
    }
}

IBC_Cls.prototype.createElement = function(type, parent) {
    var el = null;
    if (document.createElementNS) {
        // use the XHTML namespace; IE won't normally get here unless
        // _they_ "fix" the DOM2 implementation.
        el = document.createElementNS("http://www.w3.org/1999/xhtml", type);
    } else {
        el = document.createElement(type);
    }
    if (typeof parent != "undefined") {
        parent.appendChild(el);
    }
    return el;
}

// HTML page functions
function CreateMaskLoadingDiv() {
    window.divMaskLoading = IBC.createElement("div");
    var div1 = IBC.createElement("div");
    div1.style.width = '100px'; div1.style.height = '100px';
    div1.style.position = 'relative';
    div1.style.background = 'url(../App_Themes/Login/loader3.gif)';
    window.divMaskLoading.style.display = 'none';
    window.divMaskLoading.style.position = 'absolute';
    window.divMaskLoading.style.top = '0px';
    window.divMaskLoading.style.left = '0px';
    window.divMaskLoading.style.filter = 'alpha(opacity=50)';
    window.divMaskLoading.style.opacity = '0.5';
    window.divMaskLoading.style.backgroundColor = 'white';
    window.divMaskLoading.appendChild(div1);
    document.body.appendChild(window.divMaskLoading);
}

function RemoveBookmarksInUrl(url) {
    if (typeof url != 'string') return null;
    var i = url.indexOf('#');
    if (i == -1) return url;
    return url.substr(0, i);
}

function DelayReloadPage(url, time) {
    if (!window.divMaskLoading) return;
    if (typeof ibcWnd != 'undefined') if (ibcWnd.loaded) ibcWnd.close(true);

    window.divMaskLoading.style.width = (window.viewport.width - (IE ? 22 : 2)) + 'px';
    window.divMaskLoading.style.height = (window.viewport.height) + 'px';

    window.divMaskLoading.firstChild.style.left = Math.floor(window.viewport.width / 2) + 'px';
    window.divMaskLoading.firstChild.style.top = document.documentElement.scrollTop + 'px';
    window.divMaskLoading.style.display = 'block';
    var delay = time ? time : 2000;
    if (!url) {

        window.loadingT = setTimeout("location = RemoveBookmarksInUrl(location.href)", delay);
    }
    else {
        window.loadingT = setTimeout("location = '" + url + "'", delay);
    }
}

function HideLoadingDiv() {
    if (!window.divMaskLoading) return;
    window.divMaskLoading.style.display = 'none';
    if (window.loadingT) {
        clearTimeout(window.loadingT);
    }
}

function DisablePage(isDisabled) {
    if (!window.divMaskLoading) return;
    if (typeof ibcWnd != 'undefined') if (ibcWnd.loaded) ibcWnd.close();
    if (typeof isDisabled == 'undefined') isDisabled = true;

    window.divMaskLoading.style.width = (window.viewport.width - (IE ? 22 : 2)) + 'px';
    window.divMaskLoading.style.height = (window.viewport.height) + 'px';

    window.divMaskLoading.firstChild.style.left = Math.floor(window.viewport.width / 2) + 'px';
    window.divMaskLoading.firstChild.style.top = document.documentElement.scrollTop + 'px';
    window.divMaskLoading.style.display = isDisabled ? 'block' : 'none';
}

function DelayReloadPageSimple() {
    var delay2 = 2000;
    setTimeout("window.location=RemoveBookmarksInUrl(window.location.href)", delay2);
}

// start up script ---------------------------
IBC = new IBC_Cls();
IBC.addEvent(window, "load", _startup);
function _startup() {
    // focus at startup
    if (!window._noFocusStartUp) {
        var input = firstFormElement("input");
        var select = firstFormElement("select");
        var item = beforeElement(input, select);
        try { if (item) item.focus(); }
        catch (e) { }
    }
    // create loading div
    CreateMaskLoadingDiv();
    // calculate width and height
    IBC.calculateViewport();
    // override submit method of HTMLFormElement to create floating div
    if (document.forms[0]) {
        document.forms[0].submit = (function(submit) { return function() { if (window.attachEvent) { _submit(); return submit() } else if (window.addEventListener) { _submit(); return submit.call(document.forms[0]) }; } })
        (
        document.forms[0].submit, {}
        );
    }
}

function _submit() {
    var loading = $("loading");
    if (loading) loading.className = "loading1";
}

function beforeElement(o1, o2) {
    if (typeof o2 == 'undefined') return o1;
    if (typeof o1 == 'undefined') return o2;

    // to get offset position
    o1.style.position = 'relative';
    o2.style.position = 'relative';

    // compare distance from origin
    var d1 = o1.offsetTop * o1.offsetTop + o1.offsetLeft * o1.offsetLeft;
    var d2 = o2.offsetTop * o2.offsetTop + o2.offsetLeft * o2.offsetLeft;

    if (d1 > d2) return o2;
    else return o1;
}

function firstFormElement(tag) {
    var items = document.getElementsByTagName(tag);
    if (items.length > 0) {
        for (var i = 0; i < items.length; i++) {
            if (
                !items[i].getAttribute('noFocus') &&    // property indicate do not focus on this item
                !items[i].disabled &&
                items[i].type != 'hidden' &&
                !items[i].readonly &&
                items[i].type != 'checkbox' &&
                items[i].type != 'radio'
                ) {
                return items[i];
            }
        }
    }
}

function getShortDate(dtmDate) {
    return dtmDate.getMonth() + 1 + "/" + dtmDate.getDate() + "/" + dtmDate.getFullYear();
}

function check(str) {
    numbers = new String("0123456789");
    var i = 0;
    var nCount = 0;
    while (i < str.length) {
        (numbers.indexOf(str.substring(i, i + 1)) >= 0) ? nCount++ : false;
        i++;
    }
    return ((nCount > (str.length - 2)) || nCount < 2) ? false : true;
}

function formatNumber(num, dec, thou, pnt, curr1, curr2, n1, n2) {
    var sign = '';
    if (num < 0) sign = '-';
    var x = Math.round(num * Math.pow(10, dec));
    if (x >= 0) n1 = n2 = '';
    var y = ('' + Math.abs(x)).split('');
    var z = y.length - dec;
    y.splice(z, 0, pnt);
    while (z > 3) {
        z -= 3;
        y.splice(z, 0, thou);
    }
    var r = curr1 + n1 + y.join('') + n2 + curr2;
    if (num > -1 && num < 1 && r.indexOf('.') == 0) r = "0" + r;
    return sign + r;

}
//format number to form: #,###,###
function formatNumber2(nr) {
    return formatNumber(nr, 0, ',', '', '', '', '', '');
}
//format number to form: #,###,###.00
function formatNumber32(nr) {
    return formatNumber(nr, 2, ',', '.', '', '', '', '');
}

String.prototype.trimLeft = function() {
    return this.replace(/^\s*/, "");
}

String.prototype.trimRight = function() {
    return this.replace(/\s*$/, "");
}

String.prototype.trim = function() {
    return this.trimRight().trimLeft();
}

String.prototype.replaceAll = function(str, findStr, replacingStr) {
    return str.replace(eval('/' + findStr + '/g'), replacingStr);
}

function IsNumeric(sText) {
    var ValidChars = "0123456789";
    var IsNumber = true;
    var Char;
    for (i = 0; i < sText.length && IsNumber == true; i++) {
        Char = sText.charAt(i);
        if (ValidChars.indexOf(Char) == -1) {
            IsNumber = false;
        }
    }
    return IsNumber;
}

function isEmpty(id) {
    if (!$(id)) {
        alert(id + ' does not exists.');
        return;
    }
    return $(id).value == "";
}

//assign error into span 
function alert_error(errmsg, errHolderId) {
    $(errHolderId).innerHTML = errmsg;
}

//check string input field by id , return true or false
function isString(id) {
    return isNaN(ReplaceAll($(id).value, ',', ''));
}

//Find all occurrence of regexp in str and replace it with newstr
function ReplaceAll(str, regexp, newstr) {
    return str.replace(eval('/' + regexp + '/g'), newstr);
}

//check Numeric input field by id , return value
function isNumeric(id) {
    return parseFloat(ReplaceAll($(id).value, ',', ''));
}

function round(number, X) {
    X = (!X ? 2 : X);
    return Math.round(number * Math.pow(10, X)) / Math.pow(10, X);
}

//Check for decimal number
function CheckDecNumber(e) {
    var code = (e.which) ? e.which : e.keyCode;
    if ((code < 48 || code > 57) && code != 8 && code != 13 && code != 0 && code != 46 && (code < 37 || code > 40)) {
        return false;
    }
    return true;
}

function createCookie(name, value, days) {
    if (days) {
        var date = new Date();
        date.setTime(date.getTime() + (days * 24 * 60 * 60 * 1000));
        var expires = "; expires=" + date.toGMTString();
    }
    else var expires = "";
    document.cookie = name + "=" + value + expires + "; path=/";
}

function readCookie(name) {
    var nameEQ = name + "=";
    var ca = document.cookie.split(';');
    for (var i = 0; i < ca.length; i++) {
        var c = ca[i];
        while (c.charAt(0) == ' ') c = c.substring(1, c.length);
        if (c.indexOf(nameEQ) == 0) return c.substring(nameEQ.length, c.length);
    }
    return null;
}

function eraseCookie(name) {
    createCookie(name, "", -1);
}

//do not allow enter text on numberic field
function CheckNumber(e, onEnter) {
    var code = "";
    if (e.which)
        code = e.which;
    else if (e.keyCode)
        code = e.keyCode;
    if (code == 37 || code == 39)
        return true;
    if ((code < 48 || code > 57) && code != 8 && code != 13 && code != 0 && code != 46 && code != 9) {
        return false;
    }
    if (code == 13) {
        onEnter();
    }
    return true;
}

function getPrint(print_area) {
    var printContent = $(print_area);
    var printWindow = window.open('', '', 'left=50000,top=50000,width=0,height=0');
    printWindow.document.write("<html><head>");
    printWindow.document.write("</head>");
    printWindow.document.write("<body>");
    printWindow.document.write(printContent.innerHTML);
    printWindow.document.write("</body></html>");
    printWindow.document.close();
    printWindow.focus();
    printWindow.print();
    printWindow.close();
}

function validateEmail(email) {
    var emailRegEx = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
    return email.match(emailRegEx);
}

function ltrim(str) {
    for (var k = 0; k < str.length && isWhitespace(str.charAt(k)); k++);
    return str.substring(k, str.length);
}

function rtrim(str) {
    for (var j = str.length - 1; j >= 0 && isWhitespace(str.charAt(j)); j--);
    return str.substring(0, j + 1);
}

function trim(str) {
    return ltrim(rtrim(str));
}

function isWhitespace(charToCheck) {
    var whitespaceChars = " \t\n\r\f";
    return (whitespaceChars.indexOf(charToCheck) != -1);
}

function findItemInArr(item, array) {
    if (typeof array != 'object') return -1;
    var c = array.length;
    if (typeof c == 'undefined') return -1;
    for (var i = c; i >= 0; i--) {
        if (array[i] == item) return i;
    }
    return -1;
}

// Manipulate style sheet class name
function hasClassName(element, className) {
    if (!(element = $(element))) return;
    var elementClassName = element.className;
    return (elementClassName.length > 0 && (elementClassName == className ||
  new RegExp("(^|\\s)" + className + "(\\s|$)").test(elementClassName)));
}

function addClassName(element, className) {
    if (!(element = $(element))) return;
    if (!hasClassName(element, className))
        element.className += (element.className ? ' ' : '') + className;
    return element;
}

function removeClassName(element, className) {
    if (!(element = $(element))) return;
    element.className = element.className.replace(
  new RegExp("(^|\\s+)" + className + "(\\s+|$)"), ' ');
    return element;
}