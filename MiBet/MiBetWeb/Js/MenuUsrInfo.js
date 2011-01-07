function clearCurrentLeftMenu(){//do nothing here!
}

var oldClassName = 'b_left';
var newClassName = 'b_left_hover';

function checkAndSubmitUI()
{
    if ( $('txtUsername').value == '')
    {
        alert(usernamerequired);
        return;
    }
    document.forms.frmAgent.submit();
}

function checkKeyPress(e, textboxCredit) {
    if (checkAllowNumber(e) == false) return false;
    try {        
        if (typeof e =='undefined') e=window.event;
        var key =(typeof e.keyCode =='undefined') ?e.which : e.keyCode;
        if (key == 27) {
            changeCredit(false, textboxCredit);            
            return false;
        }
        if (key == 13) {
            var givencredit = replaceAll($(textboxCredit).value, ",","");
            if (!isNumeric(givencredit)){
                alert(invalidvalue);
                return false;
            }

            var fr =self.frames['frmUpdate'];
            if (typeof fr != 'undefined' && fr) {
                fr.location.href = 'Handlers/UpdateGivenCredit.ashx?custid=' + UserId + '&custRoleId=' + CustRoleId + '&amount=' + givencredit + '&creditType=' + textboxCredit;
                return true;
            }
        }
    } catch(ex){
        alert(ex.message);
    }
}

function changeCredit(ischanging, textboxCredit) {
    try {
        var spanGC = $('span' + textboxCredit);
        var txtGC = $(textboxCredit);
        
        if (typeof ischanging != 'undefined' && ischanging) {
            if ($('tdMemMaxCredit')) $('tdMemMaxCredit').innerHTML = lblMemberMax; //for nice GUI
            if ($('tdAgOutstand')) $('tdAgOutstand').innerHTML = lblAgOutst; //for nice GUI
            
            txtGC.value = replaceAll(spanGC.innerHTML, ",", "");
            spanGC.style.display = 'none';
            txtGC.style.display = ''
            txtGC.focus();
        }
        else {
            if ($('tdMemMaxCredit')) $('tdMemMaxCredit').innerHTML = lblMemberMaxCredit; 
            if ($('tdAgOutstand')) $('tdAgOutstand').innerHTML = lblAgentOutstanding; 
            spanGC.style.display = '';
            txtGC.style.display = 'none';
        }
    }
    catch (e) { }
}

function reloadMenuUsrInfo() {
    var delay2 = 2000;  
    setTimeout("window.location.href = window.location.href", delay2);
}
        
function changeStatus(type, hasDownLine) {
    try {        
        var yes =false;
        var isUpdateDownline = false; //update HR status for all downline?
        $('btnUptStatus').className = "btn2";
        
        switch(type) {
            case "suspended":
                yes = ($('chkSuspend').className);
                $('hdnTypeStatus').value = 'NO_POP'; //type popup: No popup
                if (typeof hasDownLine != 'undefined' && hasDownLine && yes == 0) {
                    if (!confirm(confirmSuspendDownline)) {
                        return;
                    }
                }
                else {                    
                    if (!confirm(confirmSuspendMem)) {
                        return;
                    }
                }
                updateStatusCustomer(type, (1 - yes == 1 ? 'true' : 'false'), isUpdateDownline);
                break;

            case "closed":
                yes = ($('chkClosed').className);
                $('hdnTypeStatus').value = 'NO_POP'; //type popup

                if (typeof hasDownLine != 'undefined' && hasDownLine && yes == 0) {
                    if (!confirm(alertCloseCustDownline)) {
                        return;
                    }
                }
                else {
                    if (!confirm(confirmCloseMem)) {
                        return;
                    }
                }

                updateStatusCustomer(type, (1 - yes == 1 ? 'true' : 'false'), isUpdateDownline);
                break;

            case "disableor": //disable outright
                yes = ($('chkOR').className);
                $('hdnTypeStatus').value = 'NO_POP'; //type popup: No popup
                if (typeof hasDownLine != 'undefined' && hasDownLine && yes == 0) {
                    if (!confirm(confirmAllowOutright)) {
                        return;
                    }
                }
                else { //wanna to disable outright
                    if (hasDownLine) {
                        if (!confirm(confirmDisableOutright)) {
                            return;
                        }
                    }
                    else { //for member                        
                        if (!confirm((yes==1) ? confirmDisableOutright_Member : confirmAllowOutright)) {
                            return;
                        }
                    }
                }
                updateStatusCustomer(type, (1 - yes == 1 ? 'true' : 'false'), isUpdateDownline);
                break;

            case "disablehr":
                yes = ($('chkHR').className);
                //fill data for popup
                $('hdnTypeStatus').value = 'HR'; //type popup
                $('lblEnableStatus').innerHTML = enablehr; //title popup
                $('chkEnabled').checked = ($('hdnOldHRStatus').value == 1);
                $('chkEnabledDL').checked = ($('hdnOldHRDownlineStatus').value == 1);
                $('chkEnabledDL').disabled = true;
                $('spanChkEnabledDL').style.display = 'none';
                $('lbldownline').innerHTML = downlines;
                $('btnUptStatus').disabled = true;

                if (yes == 1) //enableHR currently, wanna disableHR
                {
                    if (hasDownLine) { //for agent

                        if (!confirm(lblAlertDisableHR)) {
                            return;
                        }

                        $('chkEnabled').checked = false;
                        $('chkEnabledDL').checked = false;
                        isUpdateDownline = true;
                        updateStatusCustomer(type, false, isUpdateDownline);
                        return true;
                    }
                    else { //for member
                        if (!confirm(lblAlertDisableHRMember)) {
                            return;
                        }
                        isUpdateDownline = false;
                        updateStatusCustomer(type, (1 - yes == 1 ? 'true' : 'false'), isUpdateDownline);
                        return true;
                    }
                }
                else if (yes == 0) //disableHR currently, wanna enableHR
                {
                    if (typeof hasDownLine != 'undefined' && hasDownLine) { //for agent
                        showDivPopup('chkHR');
                        $('btnUptStatus').onclick = function A() {
                            isUpdateDownline = !$('chkEnabledDL').checked; //checkDownline = true => enableDownline = 1
                            updateStatusCustomer(type, $('chkEnabled').checked, isUpdateDownline);
                        };
                        return true;
                    }
                    else { //for member
                        if (!confirm(lblAlertEnableHR)) {
                            return;
                        }
                        isUpdateDownline = false;
                        updateStatusCustomer(type, (1 - yes == 1 ? 'true' : 'false'), isUpdateDownline);
                        return true;
                    }
                }
                break;

            case "disablefi":
                //get current status
                yes = ($('chkFinancial').className);
                //fill data for popup                
                $('hdnTypeStatus').value = 'FI'; //type popup
                $('lblEnableStatus').innerHTML = lblenableFI; //title popup
                $('chkEnabled').checked = ($('hdnOldFIStatus').value == 1);
                $('chkEnabledDL').checked = ($('hdnOldFIDownlineStatus').value == 1);
                $('chkEnabledDL').disabled = true;
                $('spanChkEnabledDL').style.display = 'none';
                $('lbldownline').innerHTML = downlines;
                $('btnUptStatus').disabled = true;

                if (yes == 1) //enableFI currently, wanna disableFI
                {
                    if (hasDownLine) { //for agent

                        if (!confirm(lblAlertDisalbeFI)) {
                            return;
                        }

                        $('chkEnabled').checked = false;
                        $('chkEnabledDL').checked = false;
                        isUpdateDownline = true;
                        updateStatusCustomer(type, false, isUpdateDownline);
                        
                        return true;
                    }
                    else { //for member
                        if (!confirm(lblAlertDisalbeFIMember)) {
                            return;
                        }
                        isUpdateDownline = false;
                        updateStatusCustomer(type, (1 - yes == 1 ? 'true' : 'false'), isUpdateDownline);
                        return true;
                    }
                }
                else if (yes == 0) //disableFI currently, wanna enableFI
                {
                    if (typeof hasDownLine != 'undefined' && hasDownLine) { //for agent
                        showDivPopup('chkFinancial');
                        $('btnUptStatus').onclick = function A() {
                            isUpdateDownline = !$('chkEnabledDL').checked; //checkDownline = true => enableDownline = 1
                            updateStatusCustomer(type, $('chkEnabled').checked, isUpdateDownline);
                        };
                        return true;
                    }
                    else { //for member
                        if (!confirm(lblAlertEnableFIMember)) {
                            return;
                        }
                        isUpdateDownline = false;
                        updateStatusCustomer(type, (1 - yes == 1 ? 'true' : 'false'), isUpdateDownline);
                        return true;
                    }
                }
                break;

            case "disablecs":            

                //get current status
                yes = ($('chkCS').className);
                //fill data for popup                
                $('hdnTypeStatus').value = 'CS'; //type popup
                $('lblEnableStatus').innerHTML = lblEnableCS; //title popup
                $('chkEnabled').checked = ($('hdnOldCSStatus').value == 1);
                $('chkEnabledDL').checked = ($('hdnOldCSDownlineStatus').value == 1);
                $('chkEnabledDL').disabled = true;
                $('spanChkEnabledDL').style.display = 'none';
                $('lbldownline').innerHTML = casinodownlines;
                $('btnUptStatus').disabled = true;

                if (yes == 1) //enableCS currently, wanna disableCS
                {
                    if (hasDownLine) { //for agent

                        if (!confirm(strConfirmDisableCS)) {
                            return;
                        }
                        
                        $('chkEnabled').checked = false;
                        $('chkEnabledDL').checked = false;
                        isUpdateDownline = true;
                        updateStatusCustomer(type, false, isUpdateDownline);
                        
                        return true;
                    }
                    else { //for member
                        if (!confirm(lblAlertDisableCSMember)) {
                            return;
                        }
                        isUpdateDownline = false;
                        updateStatusCustomer(type, (1 - yes == 1 ? 'true' : 'false'), isUpdateDownline);
                        return true;
                    }
                }
                else if (yes == 0) //disableCS currently, wanna enableCS
                {
                    if (typeof hasDownLine != 'undefined' && hasDownLine) { //for agent
                        showDivPopup('chkCS');
                        $('btnUptStatus').onclick = function A() {
                            isUpdateDownline = !$('chkEnabledDL').checked; //checkDownline = true => enableDownline = 1
                            updateStatusCustomer(type, $('chkEnabled').checked, isUpdateDownline);
                        };
                        return true;
                    }
                    else { //for member
                        if (!confirm(strConfirmEnableCS)) {
                            return;
                        }
                        isUpdateDownline = false;
                        updateStatusCustomer(type, (1 - yes == 1 ? 'true' : 'false'), isUpdateDownline);
                        return true;
                    }
                }                
                break;

            case "disablemautopt": //disable master AutoPT
                yes = ($('chkMAutoPT').className);
                $('hdnTypeStatus').value = 'NO_POP'; //No popup
                if (!confirm((yes == 1) ? confirmDisableMAutoPT : confirmEnableMAutoPT)) {
                    return;
                }                
                updateStatusCustomer(type, (1 - yes == 1 ? 'true' : 'false'), isUpdateDownline);
                break;
                        
            default: return;
        }                        
    }
    catch(ex) {
        alert(ex);
    }
}

function updateStatusCustomer(type, status, isUpdateDownline) {
    var _URL = 'Handlers/UpdateStatusCustomer.ashx?custid=' + UserId + '&type=' + type + '&status=' + String(status) + '&isupddownline=' + String(isUpdateDownline) + '&issyncs=' + isCustSync;
    var fr = self.frames['frmUpdate'];
    if (typeof fr != 'undefined' && fr) fr.location.href = _URL;
}

function allowSubmit(chkDisablePop) {    
    //check agent status has changed to enable button submit
    curStatusAgent = chkDisablePop.checked ? 1 : 0;

    idOldStatus = ('hdnOld' + $('hdnTypeStatus').value + 'Status');
    idOldDownlineStatus = 'hdnOld' + $('hdnTypeStatus').value + 'DownlineStatus';

    if (curStatusAgent == $(idOldStatus).value) {
        $('btnUptStatus').disabled = true;
        $('btnUptStatus').className = "btn2";
    }
    else {
        $('btnUptStatus').disabled = false;
        $('btnUptStatus').className = "btn";
    }
    
    //control downline status when change agent status
    if (chkDisablePop.checked == false) { //disable
        $('chkEnabledDL').checked = false;
        $('chkEnabledDL').disabled = true;        
        $('spanChkEnabledDL').style.display = 'none';
    } else { //enable
        $('chkEnabledDL').checked = ($(idOldDownlineStatus).value == 1);
        if ($(idOldStatus).value == 0) //currently disable, changing status from 0 to 1
        {
            $('chkEnabledDL').disabled = false;
            $('spanChkEnabledDL').style.display = '';
        }
    }
}

function setCheckBoxStatus(chkId, status) {

    //change checkbox status
    changeChkValue($(chkId), status);
    
    //change old value (in case of HR, FI, CS)
    typePopup = $('hdnTypeStatus').value;
    if (typePopup != "NO_POP") {        
        idOldStatus = ('hdnOld' + typePopup + 'Status');
        idOldDownlineStatus = 'hdnOld' + typePopup + 'DownlineStatus';
        $(idOldStatus).value = $('chkEnabled').checked ? 1 : 0;
        $(idOldDownlineStatus).value = $('chkEnabledDL').checked ? 1 : 0;
        //hide popup
        closeDivPopup();
    }
}

function showDivPopup(idCheckBox) {
    var obj = $(idCheckBox);    
    var curtop = 0;
    if (obj.offsetParent) {
        do {
            curtop += obj.offsetTop;
        } while (obj = obj.offsetParent);
    }
    curtop += 16;
    $('disabledStatusPop').style.top = curtop + 'px';
    $('disabledStatusPop').style.display = 'block'; //show popup
    $('overlayBg').style.display = 'block'; //show overlay
}

function closeDivPopup() {
    if ($('disabledStatusPop'))
        $('disabledStatusPop').style.display = 'none';
    $('overlayBg').style.display = 'none'; 
}

function toggleCheckBox(chkId) {
    $(chkId).checked = !$(chkId).checked;
}

function loadCustDownlineList(downlineList) {
    $("tabdownline").innerHTML = downlineList;
}

function showEditPage(isShow) {
    $('spPage').style.display = (isShow == 1) ? 'none' : '';
    $('txtPage').style.display = (isShow == 1) ? '' : 'none';
    if (isShow) {
        $('txtPage').value = $('spPage').innerHTML;
        $('txtPage').focus();
    }
}

function checkDownlinePageKeyPress(e, textbox) {
    if (checkAllowNumber(e) == false) return false;
    try {
        if (typeof e == 'undefined') e = window.event;
        var key = (typeof e.keyCode == 'undefined') ? e.which : e.keyCode;
        if (key == 27) {
            showEditPage(0);
            return false;
        }
        if (key == 13) {
            var fr = self.frames['frmDownlineList'];
            if (typeof fr != 'undefined' && fr) {                
                var pageIdx = parseInt($('txtPage').value);
                var totalPage = parseInt($('hdnTotalPage').value);                
                if (pageIdx < 1 || pageIdx > totalPage) return false;                
                showLoadingDownline(1);
                fr.location.href = 'Handlers/GetDownlineList.ashx?custid=' + UserId + '&pageidx=' + pageIdx + '&totalpages=' + totalPage;
                return true;
            }
        }
    } catch (ex) {
        showLoadingDownline(0);
        alert(ex.message);        
    }
}


function showLoadingDownline(isShow) {
    //$('tabdownline').innerHTML = "<center><img src='../App_Themes/AgencyV2/Images/ajax-loader.gif' alt='loading'/></center>";
    $('ploading').style.display = (isShow==1)?"":"none";
}

function loadCustOnlineList(onlineList)
{
    $("tbl_onlinelist").innerHTML = onlineList;
}

function showDownlineList(isShow) {    
    if (isShow == 1) {
        $('tabbalance').style.display = 'none';
        $('tabdownline').style.display = '';
        $('balinfo').className = "";
        $('userdownline').className = "current";
    }
    else {
        $('tabbalance').style.display = '';
        $('tabdownline').style.display = 'none';
        $('balinfo').className = "current";
        $('userdownline').className = "";
    }
}

//Show/hide customer settings tab
function showSection(sectionID)
{
    switch (sectionID)
    {
        case "custsettings":
            $("logininfo").className = "";            
            $("onlinelist").className = "";
            $("tbl_logininfo").style.display = "none";
            $("tbl_onlinelist").style.display = "none";
            break;
        case "logininfo":
            $("custsettings").className = "";
            $("onlinelist").className = "";
            $("tbl_custsettings").style.display = "none";
            $("tbl_onlinelist").style.display = "none";
            break;
        case "onlinelist":
            $("custsettings").className = "";
            $("logininfo").className = ""; 
            $("tbl_custsettings").style.display = "none";
            $("tbl_logininfo").style.display = "none";            
            
            //request data from server
            var fr =self.frames['frmUpdate'];            
            if (typeof fr !='undefined' && fr) 
                fr.location.href = "Handlers/GetUserOnlineList.ashx?custId=" + UserId;             
                
            break;
    }        
    $(sectionID).className = "current";        
    $("tbl_" + sectionID).style.display = "block";    
}

function ShowErrMsg(msg)
{
    alert(msg);
    //Hide popup if any
    closeDivPopup();
}
        
function replaceAll(text, strA, strB)
{
    while (text.indexOf(strA) != -1)
    {
        text = text.replace(strA,strB);
    }
    return text;
} 

function isNumeric(x) {
    var RegExp = /^(-)?(\d*)(\.?)(\d*)$/; // Note: this WILL allow a number that ends in a decimal: -452.
    return x.match(RegExp);
}

//Check allow number only (except ESC, ENTER, ...)
function checkAllowNumber(e) {
    var code = (e.which) ? e.which : e.keyCode;    
    if ((code < 48 || code > 57) && code != 8 && code != 13 && code != 27 && code != 0 && code != 46 && (code < 37 || code > 40)) {
        return false;
    }
    return true;
}

function changeChkValue(imgCheckbox, status) {
    imgCheckbox.className = status;
    imgCheckbox.src = '../App_Themes/' + imgCheckbox.className + '.png';
}

