// Js file is dedicated to reports (Win Loss and Win Loss Detail)
// -- Common: --
function urlFiltering() {
    var url = '';
    var showSB, showCasino, showP2P, showHR, showFI;

    if ($('chk_SB') != null) {
        if ($('chk_SB').checked == true) showSB = 1; else showSB = 0;
    }
    if ($('chk_Casino') != null) {
        if ($('chk_Casino').checked == true) showCasino = 1; else showCasino = 0;
    }
    if ($('chk_P2P') != null) {
        if ($('chk_P2P').checked == true) showP2P = 1; else showP2P = 0;
    }
    if ($('chk_HR') != null) {
        if ($('chk_HR').checked == true) showHR = 1; else showHR = 0;
    }
    if ($('chk_FI') != null) {
        if ($('chk_FI').checked == true) showFI = 1; else showFI = 0;
    }
    url += '&showSB=' + showSB + '&showCasino=' + showCasino + '&showP2P=' + showP2P + '&showHR=' + showHR + '&showFI=' + showFI;
    return url;
}
function urlDLFiltering() {
    var url = '';
    var showSB, showCasino, showP2P, showHR, showFI;
    var count = 0;

    if ($('chk_SB') != null) {
        if ($('chk_SB').checked == true) showSB = 1; else showSB = 0;
        count++;
    }
    if ($('chk_Casino') != null) {
        if ($('chk_Casino').checked == true) showCasino = 1; else showCasino = 0;
        count++;
    }
    if ($('chk_P2P') != null) {
        if ($('chk_P2P').checked == true) showP2P = 1; else showP2P = 0;
        count++;
    }
    if ($('chk_HR') != null) {
        if ($('chk_HR').checked == true) showHR = 1; else showHR = 0;
        count++;
    }
    if ($('chk_FI') != null) {
        if ($('chk_FI').checked == true) showFI = 1; else showFI = 0;
        count++;
    }

    if (count > 0) {
        url += '&showSB=' + showSB + '&showCasino=' + showCasino + '&showP2P=' + showP2P + '&showHR=' + showHR + '&showFI=' + showFI;
    }
    else {
        url += '&showSB=' + $('hdSB').value + '&showCasino=' + $('hdCasino').value + '&showP2P=' + '&showHR=' + $('hdHR').value + '&showFI=' + $('hdFI').value;
    }

    return url;
}
function InitOptionItems() {
    var arrayOptionItems = new Array(6);
    arrayOptionItems[0] = "chk_All";
    arrayOptionItems[1] = "chk_SB";
    arrayOptionItems[2] = "chk_Casino";
    arrayOptionItems[3] = "chk_P2P";
    arrayOptionItems[4] = "chk_HR";
    arrayOptionItems[5] = "chk_FI";

    return arrayOptionItems;
}
function CheckAll() {
    var arrayOptionItem = InitOptionItems();
    if ($(arrayOptionItem[0]) != null) {
        var allStatus = $(arrayOptionItem[0]).checked;
        for (var i = 1; i < arrayOptionItem.length; i++) {
            if ($(arrayOptionItem[i]) != null) {
                $(arrayOptionItem[i]).checked = allStatus;
            }
        }
    }
}
function IsCheck() {
    var arrayOptionItem = InitOptionItems();
    var isUncheck = true;
    var item;
    if ($(arrayOptionItem[0]) != null) {
        for (var i = 1; i < arrayOptionItem.length; i++) {
            item = $(arrayOptionItem[i]);
            if (item != undefined && item != null) {
                if (item.checked == false) {
                    isUncheck = false;
                    break;
                }
            }
        }
        $(arrayOptionItem[0]).checked = isUncheck;
    }
}
function SearchByDate2(pageUrl) {
    var url = pageUrl + '?' + 'custid=' + $('hdcus').value + '&fdate=' + $("fdate").value + '&tdate=' + $("tdate").value;
    url += '&IsHistotyReport=' + $('IsHistotyReport').value;
    if ($('IsHistotyReport').value == '1' && $('ddlMonth')) {
        url += '&month=' + $('ddlMonth').value.split('^')[0];
        url += '&year=' + $('ddlMonth').value.split('^')[1];
    }
    url += urlFiltering();
    _submit();
    location.href = url;
}
function SearchOneDay2(pageUrl, value) {
    var url = pageUrl + '?' + 'custid=' + $('hdcus').value + '&isdate=' + value;
    url += urlFiltering();
    _submit();
    location.href = url;
}
// --! Common --

// -- Win Loss: --
function urlBLFiltering() {
    var url = '';
    var showSB, showCasino, showP2P, showHR, showFI;
    var count = 0;

    if ($('chk_SB') != null) {
        if ($('chk_SB').checked == true) showSB = 1; else showSB = 0;
        count++;
    }
    if ($('chk_Casino') != null) {
        if ($('chk_Casino').checked == true) showCasino = 1; else showCasino = 0;
        count++;
    }
    if ($('chk_P2P') != null) {
        if ($('chk_P2P').checked == true) showP2P = 1; else showP2P = 0;
        count++;
    }
    if ($('chk_HR') != null) {
        if ($('chk_HR').checked == true) showHR = 1; else showHR = 0;
        count++;
    }
    if ($('chk_FI') != null) {
        if ($('chk_FI').checked == true) showFI = 1; else showFI = 0;
        count++;
    }

    if (count > 0) {
        url += '&showSB=' + showSB + '&showCasino=' + showCasino + '&showP2P=' + showP2P + '&showHR=' + showHR + '&showFI=' + showFI;
    }
    else {
        url += '&showSB=' + $('hdSB').value + '&showCasino=' + $('hdCasino').value + '&showP2P=' + '&showHR=' + $('hdHR').value + '&showFI=' + $('hdFI').value;
    }

    return url;
}
function doViewDownline2(pageURL, custid) {
    var url = pageURL + '?' + 'custid=' + custid + '&fdate=' + $('txtFdate').value + '&tdate=' + $('txtTdate').value;
    url += '&IsHistotyReport=' + $('IsHistotyReport').value;
    url += '&IsVDL=1';
    if ($('IsHistotyReport').value == '1' && $('ddlMonth')) {
        url += '&month=' + $('ddlMonth').value.split('^')[0];
        url += '&year=' + $('ddlMonth').value.split('^')[1];
    }
    //url += urlFiltering();
    url += urlDLFiltering();
    window.location.href = url;
}
// --! Win Loss --

// -- Win Loss Detail: --
function doViewDownlineDetail2(pageURL, custid) {
    var url = pageURL + '?' + 'custid=' + custid;
    url += '&IsHistotyReport=' + $('IsHistotyReport').value;
    if ($('IsHistotyReport').value == '1' && $('ddlMonth')) {
        url += '&month=' + $('ddlMonth').value.split('^')[0];
        url += '&year=' + $('ddlMonth').value.split('^')[1];
        url += '&fdate=' + $('txtFdate').value.split('/')[1];
        url += '&tdate=' + $('txtTdate').value.split('/')[1];
    }
    else {
        url += '&fdate=' + $('txtFdate').value;
        url += '&tdate=' + $('txtTdate').value;
    }
    //url += urlFiltering();
    url += urlDLFiltering();
    window.location.href = url;
}
function ChangeView(flag) {
    var f = 0;
    if (flag == 1)
        f = 1;
    else f = 0;

    var url = 'WinLossDetailMaster.aspx?fdate=' + $('fdate').value + '&tdate=' + $('tdate').value + '&custid=' + $('hdcus').value;
    url += '&IsHistotyReport=' + $('IsHistotyReport').value + '&oldView=' + f;
    if ($('IsHistotyReport').value == '1' && $('ddlMonth')) {
        url += '&month=' + $('ddlMonth').value.split('^')[0];
        url += '&year=' + $('ddlMonth').value.split('^')[1];
    }
    url += urlFiltering();
    window.location.href = url;
}
// --! Win Loss Detail --
