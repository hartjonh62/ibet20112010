function showReset(id,usn)
{
	var popH = 150, popW = 370;
	var url = '../../Popup/ResetPass.aspx?id=' + id + '&usn=' + usn;
	//url, title, left, top, width, height
	ibcWnd.open(url, '', 150, 100 , popW, popH, 'class1', 'class2');
}

function showTransferCondition(id)
{
	var popH = 140, popW = 550;
	//url, title, left, top, width, height
	ibcWnd.open('../Popup/TransferCondition.aspx?custid=' + id, '', 200, 100 , popW, popH, 'class1', 'class2');
}
function closeReset() 
{
    ibcWnd.close(true);
}

function HoverPen(e,isover)
{
    if(isover==1)
    {
        e.className='btnEdithover';
    }
    else
    {
        e.className='btnEdit';
    }
}

function UpdateCustomerStatus(custid, isClosed, isSuspended,isAllowAutoMPT,isOutright) {
    //url, title, left, top, width, height
    ibcWnd.open('../Handlers/DownlineList.ashx?custid=' + custid + '&isClosed=' + isClosed + '&isSuspended=' + isSuspended + '&isAllowAutoMPT=' + isAllowAutoMPT + '&isOutright=' + isOutright, '', 0, 0, 0, 0, 'class1', 'class2');	
    
    // stop all event
    document.body.onmousedown = function(evt)
    {
	    if (window.attachEvent) {
		    window.event.cancelBubble = true;
		    window.event.returnValue = false;
	    } else {
		    evt.preventDefault();
		    evt.stopPropagation();
	    }
	    return false;
    }
}

function GetPosition(element)
{
        var left = 0;
		var top = 0;
		if(element.offsetParent) {
			while(element) {
				left += element.offsetLeft;
				top += element.offsetTop;
				element = element.offsetParent;
			}
		}
		return {offsetLeft: left, offsetTop: top};
}

// currentStatus: Open, Closed, Suspended
function ShowFrmUpdStatus(el, custid, isClosed, isSuspended, isAllowAutoMPT, isOutright)
{
    var div = $('divUpd');    
    if(!div) return false;

    var td1 = $('td1');
    var td2 = $('td2');
    var td4 = $('td4');
    
    var cbxSt1 = $('cbxSt1');
    var cbxSt2 = $('cbxSt2');
    var cbxSt4 = $('cbxSt4');
    
    td1.innerHTML = $('txtClosed').innerHTML;
    td2.innerHTML = $('txtSuspended').innerHTML;
    td4.innerHTML = $('txtOutright').innerHTML;    
    
    // Old status
    div.custid = custid;
    div.isClosed = div.isClosed1 = isClosed;
    div.isSuspended = div.isSuspended1 = isSuspended;
    div.isOutright = div.isOutright1 = isOutright;
    
    cbxSt1.checked = isClosed?'checked':null;
    cbxSt2.disabled = null;
    cbxSt2.checked = isSuspended?'checked':null;
    cbxSt2.disabled = (callerIsSuspended) ? 'disabled' : null;
    cbxSt4.disabled = null;
    cbxSt4.checked = isOutright ? 'checked' : null;
    cbxSt4.disabled = (callerIsAllowOutright) ? 'disabled' : null;    
    
    el.style.position = 'relative';
    var pos = GetPosition(el);        
    div.style.top = (pos.offsetTop - 35) + 'px';  //nqminh - 22Oct08 - added 'px' to compatible with DTD XHTML
    div.style.left = (pos.offsetLeft + 12) + 'px';    
    
    div.style.display = 'block';    
    
    clearTimeout(div.timerID);div.timerID=0;
    div.timerID = setTimeout(HideFrmUpdStatus, 2000);
    IBC.addEvent(div, "mouseover", function(){clearTimeout(div.timerID);div.timerID=0;}, true);
    IBC.addEvent(cbxSt1, "click", function(){div.isClosed = cbxSt1.checked?true:false;}, true);
    IBC.addEvent(cbxSt2, "click", function() { div.isSuspended = cbxSt2.checked ? true : false; }, true);
    IBC.addEvent(cbxSt4, "click", function() { div.isOutright = cbxSt4.checked ? true : false; }, true);

    if (($('roleid') && $('roleid').value == 4) && ($('hdlevel') && $('hdlevel').value =='Super')) {
        var td3 = $('td3');
        var cbxSt3 = $('cbxSt3');
        td3.innerHTML = $('txtAllowAutoPT').innerHTML;
        div.isAllowAutoMPT = div.isAllowAutoMPT1 = isAllowAutoMPT;
        cbxSt3.checked = isAllowAutoMPT ? 'checked' : null;
        IBC.addEvent(cbxSt3, "click", function() { div.isAllowAutoMPT = cbxSt3.checked ? true : false; }, true);    
    }
    
    IBC.addEvent(div, "mouseout", function(){clearTimeout(div.timerID);div.timerID=0;div.timerID = setTimeout(HideFrmUpdStatus, 100);}, true);
}

function HideFrmUpdStatus()
{
    var div = $('divUpd');
    if(!div) return false;
    div.style.display = 'none';
    
    // Is changing status
    var isClosed = (div.isClosed!=div.isClosed1)?div.isClosed:'-1';
    var isSuspended = (div.isSuspended != div.isSuspended1) ? div.isSuspended : '-1';
    var isAllowAutoMPT = (div.isAllowAutoMPT != div.isAllowAutoMPT1) ? div.isAllowAutoMPT : '-1';
    var isOutright = (div.isOutright != div.isOutright1) ? div.isOutright : '-1';
    // Call saving
    if ((isClosed == '-1') && (isSuspended == '-1') && (isAllowAutoMPT == '-1') && (isOutright == '-1')) return;
    
    UpdateCustomerStatus(div.custid, isClosed, isSuspended, isAllowAutoMPT, isOutright);
}

function ShowErrMsg(msg)
{
    clearTimeout(window.timerErr); window.timerErr = 0;
    
    window.diverr = $('diverr');
    if(!window.diverr) return false;
    
    window.err = $('err');
    if(!window.err) return false;
    
    window.err.innerHTML = msg;
    window.diverr.style.display = 'block';
    
    window.timerErr = setTimeout('location = location.href;', 5000);
}

// Init floating div
function InitFrmUpdMult() {
    var div = $('divUpdMult');
    if (div) return false;
    var strDiv = '<div id="divUpdMult" style="display:none; border: solid 1px #ccdddd; position: absolute; background-color: #eeeeee; white-space:nowrap; padding-right: 5px;">'
    strDiv += '<table border="0" cellspacing="2" cellpadding="1"><tr><td></td></tr>'
    strDiv += '<tr>'
    strDiv += '<td>'
    strDiv += '<a class="b_left" id="updMultSpBook" href="javascript:;"></a>'
    strDiv += '</td></tr>'
    if ($('isDisableFI').value != 1) {
        strDiv += '<tr>'
        strDiv += '<td>'
        strDiv += '<a class="b_left" id="updMultFI" href="javascript:;"></a>'
        strDiv += '</td>'
        strDiv += '</tr>'
    }
    if ($('isDisableHR').value != 1) {
        strDiv += '<tr>'
        strDiv += '<td>'
        strDiv += '<a class="b_left" id="updMultHR" href="javascript:;"></a>'
        strDiv += '</td>'
        strDiv += '</tr>'
    }
    if ($('isDisableCS').value != 1) {
        strDiv += '<tr id="tr_updMultCS">'
        strDiv += '<td>'
        strDiv += '<a class="b_left" id="updMultCS" href="javascript:;"></a>'
        strDiv += '</td></tr>'
    }    
    
    strDiv += '<tr><td></td></tr></table>'
    strDiv += '</div>';

    $('FrmUpd').innerHTML += strDiv;
    return true;
}

function ShowFrmUpdMult(el, custLevel, upline_id, masterid) {
    var ArrChkId = document.getElementsByName("chkid");
    var ischecked = false;
    var counter = 0;
    var counterCS = 0;
    var custid = 0;
    var custidCS = 0;
    var status = ''; //  For casino
    var isCasino = false;
    
    for (var j = 0; j < ArrChkId.length; j++) {
        if (ArrChkId[j].checked) {
        
            if ($('isDisableCS').value != 1) {
                var strStatus = ArrChkId[j].getAttribute('statusCS');
                status += strStatus + ';';
                                
                if(!isCasino) {
                    if(strStatus == "0" || strStatus == "1") {
                        isCasino = true;
                    }
                    else counterCS--;
                }
            }

            ischecked = true;
            counter++;
            counterCS++;
            if (counter > 1 && counterCS > 1) {
                break;
            }
            else if (counter == 1) { // First other custid
                custid = ArrChkId[j].value.split(';')[0];
            }
            else if(counterCS == 1) { // First casino custid
                custidCS = ArrChkId[j].value.split(';')[0];
            }
        }
    }
    
    if (ischecked) {
        var div = $('divUpdMult');
        if (!div) return false;

        el.style.position = 'relative';
        var pos = GetPosition(el);
        div.style.top = (pos.offsetTop - 15) + 'px';  //Ryan - 22Oct08 - added 'px' to compatible with DTD XHTML
        div.style.left = (pos.offsetLeft + 20) + 'px';

        clearTimeout(div.timerID); div.timerID = 0;
        div.timerID = setTimeout(HideFrmUpdMult, 2000);
        IBC.addEvent(div, "mouseover", function() { clearTimeout(div.timerID); div.timerID = 0; }, true);

        var td1 = $('updMultSpBook');
        td1.innerHTML = $("txtSpBookMult").innerHTML;
        if ($("roleid").value == "4") {
            if (custLevel == "Super" || custLevel == "Master")
                td1.href = 'javascript:EditMember_Multi(' + upline_id + ',"' + custLevel + '",' + masterid + ')';
            else
                td1.href = 'javascript:EditMaster_Multi(' + upline_id + ')';
        }
        else if ($("roleid").value == "3") {
            if (custLevel == "Super" || custLevel == "Master")
                td1.href = 'javascript:EditMember_Multi(' + upline_id + ',"' + custLevel + '",' +  masterid + ')';
            else
                td1.href = 'javascript:EditAgent_Multi(' + upline_id + ')';
        }
        else
            td1.href = 'javascript:EditMember_Multi(' + upline_id + ',"' + custLevel + '",' + masterid + ')';

        if ($('isDisableFI').value != 1) {
            var td3 = $('updMultFI');
            td3.innerHTML = $("txtFIMult").innerHTML;
            if (counter > 1)
                td3.href = 'javascript:OpenEditFinance("","' + custLevel + '",' + upline_id + ',1)';
            else
                td3.href = 'javascript:OpenEditFinance(' + custid + ',"' + custLevel + '",' + upline_id + ',0)';
        }
        if ($('isDisableHR').value != 1) {
            var td4 = $('updMultHR');
            td4.innerHTML = $("txtHRMult").innerHTML;
            if (counter > 1)
                td4.href = 'javascript:EditHR("","' + custLevel + '",' + upline_id + ',1)';
            else
                td4.href = 'javascript:EditHR(' + custid + ',"' + custLevel + '",' + upline_id + ',0)';
        }
        
        // For casino
        if ($('isDisableCS').value != 1) {
            var trUpdCS = $('tr_updMultCS');
            if(!isCasino) trUpdCS.style.display = 'none';
            else trUpdCS.style.display = '';
        
            var updCS = $('updMultCS');
            updCS.innerHTML = $("txtCSMultEdit").innerHTML;
            
            if (counterCS > 1)
                updCS.href = 'javascript:EditMultiCS("","' + status + '",1)';
            else
                updCS.href = 'javascript:EditMultiCS(' + custidCS + ',0,"' + status + '")';
        }
        
        div.style.display = 'block';
        IBC.addEvent(div, "mouseout", function() { clearTimeout(div.timerID); div.timerID = 0; div.timerID = setTimeout(HideFrmUpdMult, 100); }, true);
    }
}
function HideFrmUpdMult() {
    var div = $('divUpdMult');
    if (!div) return false;
    div.style.display = 'none';
}

function GenerateTRStatus(number) {
    return '<tr><td>'
        + '<input id="cbxSt' + number + '" name="{cbxst' + number + '}" type="checkbox" />'
        + '</td>'
        + '<td align="left">'
        + '<label id="td' + number + '" for="cbxSt' + number +'"><label>'
        + '</td>'
        + '</tr>';
}

function InitFrmUpdStatus()
{
    var div = $('divUpd');    
    var disableAutoMPT = "";    
    if (div) return false;
    var strDivHeader = '<div id="divUpd" style="display:none; border: solid 1px #ccdddd; position: absolute; background-color: #eeeeee; white-space: nowrap; padding-right: 5px;">'
               + '<table border="0" cellspacing="2" cellpadding="1">';
    var strDivFooter = '</table></div>';
    var strDivContent = '';
    strDivContent += GenerateTRStatus(1); //closed
    strDivContent += GenerateTRStatus(2); //suspend
    if (($('roleid') && $('roleid').value == 4) && ($('hdlevel') && $('hdlevel').value == 'Super')) {
        strDivContent += GenerateTRStatus(3); //autoMPT
    }    
    strDivContent += GenerateTRStatus(4); //outRight
    
    $('FrmUpd').innerHTML += strDivHeader + strDivContent + strDivFooter;
    return true;
}

function InitFrmUpdOthersFunction()
{
   var div = $('divUpdOthers');
   if (div) return false;   
    var strDiv = '<div id="divUpdOthers" style="display:none; border: solid 1px #ccdddd; position: absolute; background-color: #eeeeee; white-space: nowrap; padding-right: 5px;">'
    strDiv +='<table cellspacing="2" cellpadding="1">'
    strDiv += '<tr>'
    strDiv += '<td>'
    strDiv += '<a class="b_left" id="updMinPT" href="javascript:;"></a>'
    strDiv += '</td></tr>'
    
    if ($("isTransfer") != null && $('isDisableFI').value != 1) {
        strDiv += '<tr>'
        strDiv += '<td>'
        strDiv += '<a class="b_left" id="updFIMinPT" href="javascript:;"></a>'
        strDiv += '</td></tr>'
    }
    if ($('isDisableHR').value != 1) {
        strDiv += '<tr>'
        strDiv += '<td>'
        strDiv += '<a class="b_left" id="updHRMinPT" href="javascript:;"></a>'
        strDiv += '</td></tr>'
    }
    if ($("isTransfer") != null && $("isTransfer").value=="1") 
    {
        strDiv += '<tr><td align="left"><a class="b_left" id="updTransferCon" href="javascript:;"></a>'
        strDiv += '</td>'
        strDiv += '</tr>'
    }
    
    strDiv += '<tr>'
    strDiv += '<td>'
    strDiv += '<a class="b_left" id="updPwd" href="javascript:;"></a>'
    strDiv += '</td>'
    strDiv += '</tr>'
    strDiv += '</table>'
    strDiv += '</div>';
    
    $('FrmUpd').innerHTML += strDiv;
    return true;
}
function ShowFrmUpdOthers(el, custid, username) {
    var div = $('divUpdOthers');
    if (!div) return false;    
    
    var td1 = $('updMinPT');
    td1.innerHTML = $("txtMinPT").innerHTML;    
    var td3 = $('updPwd');
    td3.innerHTML = $("txtPassword").innerHTML;    

    el.style.position = 'relative';
    var pos = GetPosition(el);
    div.style.top = (pos.offsetTop - 35) + 'px';  //Ryan - 22Oct08 - added 'px' to compatible with DTD XHTML
    div.style.left = (pos.offsetLeft + 12) + 'px';

    div.style.display = 'block';
    clearTimeout(div.timerID); div.timerID = 0;
    div.timerID = setTimeout(HideFrmUpdOthers, 2000);
    IBC.addEvent(div, "mouseover", function() { clearTimeout(div.timerID); div.timerID = 0; }, true);
    td1.href = 'javascript:OpenEditMinMax(' + custid + ',"' + username + '")';
    td3.href = 'javascript:showReset(' + custid + ',"' + username + '")';
    IBC.addEvent(div, "mouseout", function() { clearTimeout(div.timerID); div.timerID = 0; div.timerID = setTimeout(HideFrmUpdOthers, 100); }, true);
    
    if ($("isTransfer") != null && $("isTransfer").value == "1") {
        var td2 = $('updTransferCon');
        td2.innerHTML = $("txtTransfer").innerHTML;
        td2.href = 'javascript:showTransferCondition(' + custid + ')';
    }
    if ($("isTransfer") != null && $('isDisableFI').value != 1) {
        var td4 = $('updFIMinPT');
        td4.innerHTML = $("txtFIMinPT").innerHTML;
        td4.href = 'javascript:OpenEditMinMaxFI(' + custid + ',"' +  username + '")';
    }
    if ($('isDisableHR').value != 1) {
        var td5 = $('updHRMinPT');
        td5.innerHTML = $("txtHRMinPT").innerHTML;
        td5.href = 'javascript:OpenEditMinMaxHR(' + custid + ',"' + username + '")';
    }
}
function HideFrmUpdOthers() {
    var div = $('divUpdOthers');
    if (!div) return false;
    div.style.display = 'none';   
}


function viewCustOutSt(username, custid) {    
    window.location.href = "../Report/OutstandingAgentDetail.aspx?username=" + username + "&option=1&custid=" + custid + "&page=1&ShowCasino=1&ShowSB=1&ShowHR=1&ShowFI=1";
}

function viewStatement(custid, type) {
    window.location.href = "../Report/Statement.aspx?custid=" + custid + "&site=" + type;
}

function viewDownlineList(act, custId, masterId) {
    //DownlineList.aspx?act=AgentList&custid={custid}&masterid={custid}
    var masterIdParam = "";
    if (typeof masterId != 'undefined' && masterId)
        masterIdParam = "&masterid=" + masterId;    
    window.location.href = "DownlineList.aspx?act=" + act + "&custid=" + custId + masterIdParam;
}

function EditMultiCS(custid, status, isMult) {
    var URL = "../MemberInfo/PositionTakingCS.aspx?";
    var popH = 600, popW = 980;
    var SelStatus = "";
    var bHasCheckall = true;
    var bAddToList = false;
    if (isMult == 1) {
        var arCID = document.getElementsByName("chkid");
        if (!arCID) return;
        var SelCID = "";
        var SelUser = "";
        var firstSynCustId = 0;
        var firstNotSynCustId = 0;
        var intCount = 0;
        for (var i = 0; i < arCID.length; i++) {
            if (arCID[i].checked) {
                if(arCID[i].getAttribute("statusCS") == "1") {//Already synchronized
                    if(firstSynCustId == 0) firstSynCustId = arCID[i].value.substring(0, arCID[i].value.indexOf(";"));
                    bAddToList = true;
                }
                else if(arCID[i].getAttribute("statusCS") == "0") {
                    if(firstNotSynCustId == 0) firstNotSynCustId = arCID[i].value.substring(0, arCID[i].value.indexOf(";"));
                    bAddToList = true;
                }
                else {
                    arCID[i].checked = null;
                    bHasCheckall = false;
                    bAddToList = false;
                }

                if(bAddToList) {
                    SelCID += arCID[i].value.substring(0, arCID[i].value.indexOf(";")) + "^";
                    SelUser += arCID[i].value.substring(arCID[i].value.indexOf(";") + 1) + "^";
                    SelStatus += arCID[i].getAttribute("statusCS") + "^";
                    intCount += 1;
                }
            }
        }
        
        if(!bHasCheckall) checkall.checked = null;
        
        if(firstSynCustId == 0) {
            firstSynCustId = firstNotSynCustId;
        }
        
        if (intCount == 0) return;
        if (intCount == 1) {
            $("arrayCustID").value = "";
            $("arrayUserName").value = "";
            URL += "custid=" + firstSynCustId + "&isMult=0";
        }
        else if (intCount > 1) {
            $("arrayCustID").value = SelCID;
            $("arrayUserName").value = SelUser;
            $("arrayStatus").value = SelStatus;
            URL += "custid=" + firstSynCustId + "&isMult=1";
        }
    }
    else {
        $("arrayCustID").value = "";
        $("arrayUserName").value = "";
        $("arrayStatus").value = "";
        URL += "custid=" + custid + "&isMult=0&status=" + SelStatus.substring(0, SelStatus.indexOf("^"));
    }
    ibcWnd.open(URL, '', 0, 10, popW, popH, 'class1', 'class2');
}

function OpenEditFinance(custid, custLevel, upline_id, isMult) {
    var URL = "../MemberInfo/AddEditFinancial.aspx?";
    var popH = 550, popW = 950;
    if (isMult == 1) {
        var arCID = document.getElementsByName("chkid");
        if (!arCID) return;
        var SelCID = "";
        var SelUser = "";
        var intCount = 0;
        var mycustid = "";
        for (var i = 0; i < arCID.length; i++) {
            if (arCID[i].checked) {
                SelCID += arCID[i].value.substring(0, arCID[i].value.indexOf(";")) + "^";
                SelUser += arCID[i].value.substring(arCID[i].value.indexOf(";") + 1) + "^";                
                intCount += 1;               
            }
        }
        URL += "custid=" + SelCID.substring(0,SelCID.indexOf("^")) + "&isMult=1";
        
        if (intCount == 0) return;
        if (intCount == 1) {
            $("arrayCustID").value = "";
            $("arrayUserName").value = "";
        }
        else if (intCount > 1) {
            $("arrayCustID").value = SelCID;
            $("arrayUserName").value = SelUser;
            
        }
        if (custLevel == "Super" || custLevel == "Master") {
            popH = 550;
            popW = 800;
            URL = "../MemberInfo/EditMemberFI.aspx?custId=" + SelCID.substring(0, SelCID.indexOf("^")) + "&agentid=" + upline_id + "&isMult=1" ;            
        }
    }
    else {
        $("arrayCustID").value = "";
        $("arrayUserName").value = "";
        URL += "custId=" + custid + "&isMult=0";
        
        if (custLevel == "Super" || custLevel == "Master") {
            popH = 550;
            popW = 800;
            URL = "../MemberInfo/EditMemberFI.aspx?custId=" + custid + "&agentid=" + upline_id + "&isMult=0";
        }
    }
    ibcWnd.open(URL, '', 0, 10, popW, popH, 'class1', 'class2');
}

//Open Horseracing edit setting window
function EditHR(custid, custLevel, upline_id, isMult) {

    var URL = "../MemberInfo/AddEditHorseRacing.aspx?";
    var popH = 700, popW = 950;
    if (isMult == 1) {
        var arCID = document.getElementsByName("chkid");
        if (!arCID) return;
        var SelCID = "";
        var SelUser = "";
        var intCount = 0;
        var mycustid = "";
        for (var i = 0; i < arCID.length; i++) {
            if (arCID[i].checked) {
                SelCID += arCID[i].value.substring(0, arCID[i].value.indexOf(";")) + "^";
                SelUser += arCID[i].value.substring(arCID[i].value.indexOf(";") + 1) + "^";
                intCount += 1;
            }
        }
        URL += "custid=" + SelCID.substring(0, SelCID.indexOf("^")) + "&isMult=1";

        if (intCount == 0) return;
        if (intCount == 1) {
            $("arrayCustID").value = "";
            $("arrayUserName").value = "";
        }
        else if (intCount > 1) {
            $("arrayCustID").value = SelCID;
            $("arrayUserName").value = SelUser;

        }
        if (custLevel == "Super" || custLevel == "Master") {
            popH = 700;
            popW = 800;
            URL = "../MemberInfo/EditMemberHR.aspx?custId=" + SelCID.substring(0, SelCID.indexOf("^")) + "&agentid=" + upline_id + "&isMult=1";
        }
    }
    else {
        $("arrayCustID").value = "";
        $("arrayUserName").value = "";
        URL += "custId=" + custid + "&isMult=0";

        if (custLevel == "Super" || custLevel == "Master") {
            popH = 700;
            popW = 800;
            URL = "../MemberInfo/EditMemberHR.aspx?custId=" + custid + "&agentid=" + upline_id + "&isMult=0";
        }
        if (custLevel == "ViewAgent") {
            popH = 700;
            popW = 800;
            URL = "../MemberInfo/AddEditHorseRacing.aspx?custId=" + custid + "&lv=viewAgent";
        }
    }
    ibcWnd.open(URL, '', 0, 10, popW, popH, 'class1', 'class2');
}

function EditMaster_Single(cid,cname, superid)
{
	$("arrayCustID").value="";
	$("arrayUserName").value="";
	var URL = "../UserSuper/EditMaster.aspx?";//V1
	
	URL += "m=0";
	var popH = 950, popW = 1024;
	URL += "&custid="+cid;
	URL += "&USER="+cname;
	URL += '&superid=' + superid;
	var w = screen.availWidth;
	var h = screen.availHeight;
	var leftPos = (w-popW)/2, topPos = (h-popH)/2;
	
	//url, title, left, top, width, height
	ibcWnd.open(URL, '', 0 , 10, popW, popH, 'class1', 'class2');
}

function EditMaster_Multi(superid){
	var arCID = document.getElementsByName("chkid");			
	if(!arCID) return;
	var SelCID = "";
	var SelUser = "";
	var intCount = 0;
	for(var i=0; i < arCID.length; i++){
		if (arCID[i].checked){
			SelCID +=arCID[i].value.substring(0,arCID[i].value.indexOf(";")) + "^";
			SelUser += arCID[i].value.substring(arCID[i].value.indexOf(";")+1) + "^";							
			intCount +=1;
		}
	}
	
	 
	var URL = "../UserSuper/EditMaster.aspx?";
	if(intCount == 0 ) return;
	if(intCount ==1 )
	{
		URL += "m=0";
		var popH = 950, popW = 1024;
		URL += "&custid="+SelCID.replace("^","");
		URL += "&USER="+SelUser;
		$("arrayCustID").value="";
		$("arrayUserName").value="";
			
	}else if(intCount > 1)
	{
		URL += "m=1";
		var popH = 950, popW = 1024;
		$("arrayCustID").value=SelCID;
		$("arrayUserName").value=SelUser;
	}			
	
	URL += '&superid=' + superid;
	//url, title, left, top, width, height
	ibcWnd.open(URL, '', 0 , 10, popW, popH, 'class1', 'class2');
}

//this function is used when master edit agent that from agent list -- edit single
function EditAgent_Single(id,us, masterid){
	$("arrayCustID").value="";
	$("arrayUserName").value="";
	var url = "../UserMaster/EditAgent.aspx?m=0&custid=" + id + "&USER=" + us + '&masterid=' + masterid; //V1
	var popH = 950, popW = 1024;
	
	//url, title, left, top, width, height
	ibcWnd.open(url, '', 0, 10, popW, popH, 'class1', 'class2');	
}

//this function is used when master edit agent that from agent list -- edit multi
function EditAgent_Multi(masterid)
{
		var arCID = document.getElementsByName("chkid");
		if(!arCID) return;
		var SelCID = "";
		var SelUser = "";
		var intCount = 0;
		for(var i=0; i < arCID.length; i++){
			if (arCID[i].checked){				
				SelCID +=arCID[i].value.substring(0,arCID[i].value.indexOf(";")) + "^";
				SelUser += arCID[i].value.substring(arCID[i].value.indexOf(";")+1) + "^";
				intCount +=1;
			}
		}
		
		var URL = "../UserMaster/EditAgent.aspx?";
		if(intCount == 0 ) return;
		if(intCount ==1 ){
			URL += "m=0";
			var popH = 950, popW = 1024;
			URL += "&custid=" + SelCID.replace("^","");			
			URL +="&USER="+ SelUser;	
			$("arrayCustID").value="";
			$("arrayUserName").value="";
		}else if(intCount > 1){
			URL += "m=1";
			var popH = 950, popW = 1024;
			$("arrayCustID").value=SelCID;
			$("arrayUserName").value=SelUser;					
		}

        URL += '&masterid=' + masterid;
		
        //url, title, left, top, width, height
	    ibcWnd.open(URL, '', 0 , 10, popW, popH, 'class1', 'class2');	
}

function EditMember_Multi(agentid, Customer, masterid)
{		
		var arCID = document.getElementsByName("chkid");
		if(!arCID) return;
		var SelCID = "";
		var SelUser = "";
		var intCount = 0;
		for(var i=0; i < arCID.length; i++){			
			if (arCID[i].checked){		
				SelCID +=arCID[i].value.substring(0,arCID[i].value.indexOf(";")) + "^";
				SelUser += arCID[i].value.substring(arCID[i].value.indexOf(";")+1) + "^";
				intCount +=1;
			}
		}
		
		var URL = "../UserAgent/EditMember.aspx?";
		
		if(Customer == 'Super') URL = "../UserSuper/EditMember.aspx?";
		if(Customer == 'Master') URL = "../UserMaster/EditMember.aspx?";
		
		if(intCount == 0 ) return;
		if(intCount ==1 )
		{
			URL += "m=0";
			URL += "&custid=" + SelCID.replace("^","");
			URL +="&USER="+ SelUser;			
			var popH = 950, popW = 1024;
			$("arrayCustID").value="";
			$("arrayUserName").value="";
			
		}else if(intCount > 1){
			URL += "m=1";							
			$("arrayCustID").value=SelCID;
			$("arrayUserName").value=SelUser;
			var popH = 950, popW = 1024;
		}	
		
		URL += '&agentid=' + agentid + '&masterid=' + masterid;
			
		//url, title, left, top, width, height
	    ibcWnd.open(URL, '', 0 , 10, popW, popH, 'class1', 'class2');	
}

function OpenEditMinMax(custid,username)
{
	var url="../UserSuper/EditMinPT.aspx?custid="+custid+"&username="+username;	
	var popW = 1024, popH = 950;

	//url, title, left, top, width, height
	ibcWnd.open(url, '', 0 , 10, popW, popH, 'class1', 'class2');
}
function OpenEditMinMaxFI(custid, username) {
    var url = "../MemberInfo/EditMinFI.aspx?custid=" + custid + "&username=" + username;
    var popW = 900, popH = 400;

    //url, title, left, top, width, height
    ibcWnd.open(url, '', 0, 10, popW, popH, 'class1', 'class2');
}
function OpenEditMinMaxHR(custid, username) {
    var url = "../MemberInfo/EditMinHR.aspx?custid=" + custid + "&username=" + username;
    var popW = 800, popH = 530;

    //url, title, left, top, width, height
    ibcWnd.open(url, '', 0, 10, popW, popH, 'class1', 'class2');
}

function ChangeIcon(id, isDis) {
    var custid = id.split('^');
    
    for (var i = 0; i < custid.length-1; i++) {
        if (isDis == "0") {
            $(custid[i]).className = "divEdit";
        }
        else {
            $(custid[i]).className = "divEditDisabled";
        }
    }
    HideLoadingDiv();
}
function DelayReloadIcon(Id, isDis, time) {
    if (!window.divMaskLoading) return;
    if (typeof ibcWnd != 'undefined') if (ibcWnd.loaded) ibcWnd.close(true);

    window.divMaskLoading.style.width = (window.viewport.width - (IE ? 22 : 2)) + 'px';
    window.divMaskLoading.style.height = (window.viewport.height) + 'px';

    window.divMaskLoading.firstChild.style.left = Math.floor(window.viewport.width / 2) + 'px';
    window.divMaskLoading.firstChild.style.top = document.documentElement.scrollTop + 'px';
    window.divMaskLoading.style.display = 'block';
    var delay = time ? time : 2000;
    window.loadingT = setTimeout("ChangeIcon('" + Id + "','" + isDis + "')", delay);
}
function SetChangeICon(id, isDis) {
    $('HdCustid').value = id;
    $('HdStatus').value = isDis;
}

