<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddEditFinancial.aspx.cs" Inherits="MemberInfo_AddEditFinancial" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<title>Home</title>
<meta name="keywords" content="sportsbook, agency, agent, betting" />
<meta name="description" content="online betting sportsbook agency system" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<link href='../App_Themes/AgencyV2/button.css' type='text/css' rel='stylesheet' /><link href='../App_Themes/AgencyV2/casino.css' type='text/css' rel='stylesheet' /><link href='../App_Themes/AgencyV2/common.css' type='text/css' rel='stylesheet' /><link href='../App_Themes/AgencyV2/footer.css' type='text/css' rel='stylesheet' /><link href='../App_Themes/AgencyV2/header.css' type='text/css' rel='stylesheet' /><link href='../App_Themes/AgencyV2/leftMenu.css' type='text/css' rel='stylesheet' /><link href='../App_Themes/AgencyV2/main.css' type='text/css' rel='stylesheet' /><link href='../App_Themes/AgencyV2/message.css' type='text/css' rel='stylesheet' /><link href='../App_Themes/AgencyV2/newagent.css' type='text/css' rel='stylesheet' /><link href='../App_Themes/AgencyV2/popup.css' type='text/css' rel='stylesheet' /><link href='../App_Themes/AgencyV2/PopUpMessage.css' type='text/css' rel='stylesheet' /><link href='../App_Themes/AgencyV2/tabmenu.css' type='text/css' rel='stylesheet' /><link href='../App_Themes/AgencyV2/thickbox.css' type='text/css' rel='stylesheet' /><link href='../App_Themes/AgencyV2/userinfo.css' type='text/css' rel='stylesheet' />
<script type='text/javascript' src='../Js/opt/Core.js?v=20091230' ></script>
<script type='text/javascript' src='../Js/Common.js?v=20091230' ></script>
<script src='../Js/IBCWnd/IBCWnd.js?v=20091230' type='text/javascript'></script>
<script src='../Js/Customer.js?v=20091230' type='text/javascript'></script>

<script src='../Js/EditMaster.js?v=20091230' type='text/javascript'></script>
<script src='../Js/AddNewAgent.js?v=20091230' type='text/javascript'></script>
<script language='javascript'>
var alertcredit='Incorrect Agent Maximum Credit';
var alertMinbet='Incorrect Min Bet'; 
var alertMaxbet='Incorrect Max Bet';
var alertMaxpermatch='Incorrect Max Per Match';
var alertCompare3='Min Bet cannot be greater than Max Bet'; 
var alertCompare='Max Bet can not be greater than Max Per Match'; 
var alertminbetC='Min Bet must be greater than or equal to';
var alertMaxbetC='Max Bet must be less than or equal to';
var alertMaxpermatchC='Max Per Match must be less than or equal to {1}.';
var alertMaxpermatchCMin='Max Bet Match must be more than or equal to';
var alertMaxpermatchCMax='Max Bet Match must be less than or equal to';
var alertUserName='Please Enter User name!';
var lblPasswordRequire='Password must have at least 6 characters, including at least 2 letters and at least 2 digits. (e.g:pass22)';
var alertPasswordEmpty='Sorry, password can not be empty!!!';
var alertIncorrectCredit='Incorrect Master Max Credit';
var lblChooseDaily='Please choose Daily instead of 7 days.';
var lblChooseOneDay='Please select at least one day.';
var alertCreditInvalid='Master Max Credit must be between {1} and {2}';
var alertLessthanMinPT='Master Preset and Super Preset must not be less than ';
</script>
<script type="text/javascript">
    var flag = false;
    function SetIsEdit() {
        parent.frames[0].$("IdIsEditFi").value = "True";   
    }
    
    function BtnOnClick() {
        
	    ClearAllMsg();
		if(!CheckLimitMinMaxBet(201)) return false;          	    
	
		DelayReloadPage(null, 300000);

		var isPT = CheckPotionTakingFI();    
		if (!isPT) return false;		
		document.form.submit();
		return true;

    }

    function showInfoMsg(msg, type) {                   
        showEnrichMsg(msg, type);            
    }

    function CheckChangeAutoFI() {               
        if ($("divUpdPT201")) {
            elements = $("divUpdPT201").getElementsByTagName("input");               
            var isNewAuto;
            for (var i = 0; i < elements.length; i++) {
                var id = elements[i].id;
                if (id == "chkCopy201OU") {
                    continue;
                }
                var isAutoId = id.replace("chkAuto", "isAuto");
                var isAuto = $(isAutoId).value == "1";
                if (isAuto && !elements[i].checked) {
                    return true;
                }
            }
        }
        return false;
    }
    function CheckPotionTakingFI() {
        var IsChaneAuto = false;
        if ($("roleId").value == "4" || $("roleId").value == "3") {
            IsChaneAuto = CheckChangeAutoFI();
        }
        if (IsChaneAuto) {                
            if ($("roleId").value == "4") {
                $("maxMemberPT").value = parseFloat($('maxMS201OU').value) - parseFloat($("listM201OU").value);
            }
            else if ($("roleId").value == "3") {
                $("maxMemberPT").value = parseFloat($('maxM201OU').value) - parseFloat($("listM201OU").value);
            }
            if (!flag) {
                DisableControls();
                ibcWnd.open('../UserSuper/ConfirmEditMaster.aspx', '', 300, 300, 450, 170, 'class1', 'class2');
                flag = true;
            }
            return false;
        }
        else {
            $("memberPT").value = 0;
            $("isUpdateMember").value = 0;
            if (!flag) {
                flag = true;
                DelayReloadPage(null, 300000);
                enabledBtn(false);
                
            }
        }
        return true;
    }

    window.onload = function() {
        var PCustid = parent.$("arrayCustID");
        var PUsername = parent.$("arrayUserName");
        if (PCustid) {
            if (PCustid.value != "") {
                $("custid").value = PCustid.value;
                $("username").value = PUsername.value;
                var arr = PUsername.value.split("^");
                if (arr.length > 1) {
                    var username = "";
                    var counter = 0;
                    for (var i = 0; i < arr.length; i++) {
                        if (arr[i] != "") {
                            username += arr[i] + ", ";
                            
                        }
                    }

                    $("lstusername").innerHTML = trim(username).substring(0, trim(username).length - 1);
                }

            }
        }
    } 
</script>
</head>
<body>
<iframe name="UpdateFrm" id="UpdateFrm" style="display: none"></iframe><form action="../Handlers/UpdatePositionTaking_FI.ashx" method="post" id="form" name="form" target="UpdateFrm"><div id="page_main"><div id="header_main">Edit Finance SMQQ01</div><div style="width:850px;"><table border="0" align="center" cellpadding="0" cellspacing="0" width="100%" id="diverr"style="display: none;"><tr><td id="1_1" class="emsg_1_1">&nbsp;</td><td id="1_2" class="emsg_1_2">&nbsp;</td><td id="1_3" class="emsg_1_3">&nbsp;</td></tr><tr><td id="2_1" valign="top" class="emsg_2_1">&nbsp;</td><td valign="top" id="err" class="Enrich"></td><td id="2_2" class="emsg_2_2">&nbsp;</td></tr><tr><td id="3_1" class="emsg_3_1">&nbsp;</td><td id="3_2" class="emsg_3_2">&nbsp;</td><td id="3_3" class="emsg_3_3">&nbsp;</td></tr></table></div><div class="sptPT" style="width: 850px;"><table class="tblRpt" width="100%" border="1"><tr><td colspan="4" class="b" id="lstusername" style="white-space:normal;"></td></tr><tr class="bg_eb"><td width='25%' class="r">User Name</td><td width='25%' class="l">SMQQ01</td><td width='25%' class="r">First Name</td><td width='25%' class="l"></td></tr><tr class="bg_eb"><td class="r" width="25%">Last Name</td><td class="l" width="25%"></td><td class="r" width="25%">Phone</td><td class="l" width="25%"></td></tr><tr class="bg_eb"><td class="r">Mobile Phone</td><td class="l"></td><td class="r">Fax</td><td class="l"></td></tr><tr class="bg_eb"><td class="r">Agent Max Credit</td><td class="l" nowrap="yes">0</td><td class="r">Enable Finance</td><td class="l"><input type="checkbox" id="chkDisabledFI" name="chkDisabledFI" checked='true'onclick="DisableFI('chkDisabledFI','chkDisabledFIDownline');"/> Agent&nbsp;&nbsp;&nbsp<input type="checkbox" id="chkDisabledFIDownline" name="chkDisabledFIDownline" checked='true' disabled onclick="DisableFI('chkDisabledFI','chkDisabledFIDownline');"/> Agent's Downlines</td></tr><tr class="RptHeader"><td colspan="4" class="c">Finance Commission</td></tr><tr class="bg_eb"><td class="c" colspan="4"><select class="selectcomm" style="width:60px;" id="discountcsFC" {sel-disFC} name="discountcsFC"><option selected='true'>0</option></select></td></tr></table><table width="100%" class="tblRpt"><tr class="tblTitleCenter"><td colspan="3">Bet Setting</td></tr><tr class="bg_eb"><td class="c tdPT1">Min Bet&nbsp;<input type="text" maxlength="14" id="txtMinbet201" name="txtMinbet201" value="5" /><span class="minmaxbet">&gt;=<span id="txtMinbet_Min201">1</span></span></td><td class="c">Max Bet&nbsp;<input type="text" maxlength="14" id="txtMaxbet201" name="txtMaxbet201" value="300" /><span class="minmaxbet">&lt;=<span id="txtMaxbet_Max201">300</span></span></td><td class="c">Max Per Match&nbsp;<input type="text" maxlength="14" id="txtMaxPerMatch201" name="txtMaxPerMatch201" value="12,000" /><span class="hidden">&gt;=<span id="txtMaxPerMatch_Min201">0</span> and</span><span class="minmaxbet">&lt;=<span id="txtMaxPerMatch_Max201">12,000</span></span></td></tr></table><div id="divUpdPT201" name="divUpdPT201" style="width: 850px;"><table border="1" width="100%" class="tblRpt"><tr class="tblTitleCenter"><td colspan="5">Position Taking</td></tr><tr class="bg_eb {clssTr-text}"><td class="" style="width:200px"></td><td class="" style="width:200px">Over/Under</td><td class="" style="width:200px">Odd/Even</td><td class="" style="width:"></td></tr><tr class="bg_eb {clssTr-text}"><td class="r" style="width:200px">Agent Position</td><td class="c" style="width:200px"><select id="listM201OU" name="listM201OU"onChange="SelectOnChange('listM201OU');"  ><option selected='true' value='0'>0</option></select> <a class="imaLink img" href="javascript:ReducePT('listM201OU',1)"><img class="hand" hspace="1" id="btnReduce1" name="btnReduce1" src="../App_Themes/AgencyV2/Images/b_down.jpg" /></a><a class="imaLink img" href="javascript:IncreasePT('listM201OU',1)"><img class="hand" hspace="1" id="btnIncrease1" name="btnIncrease1" src="../App_Themes/AgencyV2/Images/b_up.jpg"/></a><a class="imaLink img" href="javascript:ReducePT('listM201OU',10)"><img class="hand" hspace="1" id="btnReduce10" name="btnReduce10" src="../App_Themes/AgencyV2/Images/b_sub.jpg"/></a><a class="imaLink img" href="javascript:IncreasePT('listM201OU',10)"><img class="hand" hspace="1" id="btnIncrease10" name="btnIncrease10" src="../App_Themes/AgencyV2/Images/b_add.jpg"/></a></td><td class="c" style="width:200px"><select id="listM201OE" name="listM201OE"onChange="SelectOnChange('listM201OE');"  ><option selected='true' value='0'>0</option></select></td><td class="" style="width:200px">&nbsp;</td></tr><tr class="bg_eb {clssTr-text}"><td class="r" style="width:200px">Master Preset</td><td class="c" style="width:200px"><select id="listS201OU" name="listS201OU"onChange="SelectOnChange('listS201OU');"  ><option selected='true' value='0'>0</option></select> <a class="imaLink img" href="javascript:ReducePT('listS201OU',1)"><img class="hand" hspace="1" id="btnReduce1" name="btnReduce1" src="../App_Themes/AgencyV2/Images/b_down.jpg" /></a><a class="imaLink img" href="javascript:IncreasePT('listS201OU',1)"><img class="hand" hspace="1" id="btnIncrease1" name="btnIncrease1" src="../App_Themes/AgencyV2/Images/b_up.jpg"/></a><a class="imaLink img" href="javascript:ReducePT('listS201OU',10)"><img class="hand" hspace="1" id="btnReduce10" name="btnReduce10" src="../App_Themes/AgencyV2/Images/b_sub.jpg"/></a><a class="imaLink img" href="javascript:IncreasePT('listS201OU',10)"><img class="hand" hspace="1" id="btnIncrease10" name="btnIncrease10" src="../App_Themes/AgencyV2/Images/b_add.jpg"/></a></td><td class="c" style="width:200px"><select id="listS201OE" name="listS201OE"onChange="SelectOnChange('listS201OE');"  ><option selected='true' value='0'>0</option></select></td><td class="" style="width:200px">&nbsp;</td></tr><tr class="bg_eb {clssTr-text}"><td rowspan="2" class="r">Auto Master Preset</td><td class="c" style="width:200px"><input type="checkbox" onclick="CheckAutoPreset(this)" id="chkAuto201OU" name="chkAuto201OU"  /></td><td class="c" style="width:200px"><input type="checkbox" onclick="CheckAutoPreset(this)" id="chkAuto201OE" name="chkAuto201OE"  /></td><td class="" style="width:200px">&nbsp;</td></tr><tr class="bg_eb {clssTr-text}"><td class="{clss-text}" style="width:{width}"><select id="autoS201OU" name="autoS201OU"onChange="SelectOnChange('autoS201OU');" disabled ><option selected='true' value='0'>0</option></select> <a class="imaLink img" href="javascript:ReducePT('autoS201OU',1)"><img class="hand" hspace="1" id="btnReduce1" name="btnReduce1" src="../App_Themes/AgencyV2/Images/b_down.jpg" /></a><a class="imaLink img" href="javascript:IncreasePT('autoS201OU',1)"><img class="hand" hspace="1" id="btnIncrease1" name="btnIncrease1" src="../App_Themes/AgencyV2/Images/b_up.jpg"/></a><a class="imaLink img" href="javascript:ReducePT('autoS201OU',10)"><img class="hand" hspace="1" id="btnReduce10" name="btnReduce10" src="../App_Themes/AgencyV2/Images/b_sub.jpg"/></a><a class="imaLink img" href="javascript:IncreasePT('autoS201OU',10)"><img class="hand" hspace="1" id="btnIncrease10" name="btnIncrease10" src="../App_Themes/AgencyV2/Images/b_add.jpg"/></a></td><td class="{clss-text}" style="width:{width}"><select id="autoS201OE" name="autoS201OE"onChange="SelectOnChange('autoS201OE');" disabled ><option selected='true' value='0'>0</option></select></td><td class="" style="width:{width}">&nbsp;</td></tr><tr class="bg_eb {clssTr-text}"><td class="r" style="width:{width}"></td><td colspan="3" class="l"><input type="checkbox" id="chkCopy201OU" {chk-copy} name="chkCopy201OU" onclick="CheckCopyPT(this,arrSuper201,arrMaster201,'chkAuto201OU');" /> Copy From Over/Under</td></tr></table></div></div><div class="b_add"><li><a id="btnSubmit" onclick="BtnOnClick();" href="javascript:;"><span>Submit</span></a></li></div></div><br /><input type="hidden" id="hdDisabledFI" name="hdDisabledFI" value="0" /><input type="hidden" id="hdDisabledFIDownline" name="hdDisabledFIDownline" value="0" /><input type="hidden" id="hdDisabledFI_Old" name="hdDisabledFI_Old" value="0" /><input type="hidden" id="hdDisabledFIDownline_Old" name="hdDisabledFIDownline_Old" value="0" /><input type="hidden" id="custid" name="custid" value="2012586" /><input type="hidden" id="username" name="username" value="" /><input type="hidden" id="isEdit" name="isEdit" value="true" /><input type="hidden" id="isNoBgr" name="isNoBgr" value="0" /><script type="text/javascript" src="../Js/wz_tooltip/wz_tooltip.js"></script><script type="text/javascript" src="../Js/wz_tooltip/tip_centerwindow.js"></script><script type="text/javascript" src="../Js/wz_tooltip/tip_balloon.js"></script><input type="hidden" id="isAuto201OU" name="isAuto201OU" value="0" /><input type="hidden" id="maxA201OU" name="maxA201OU" value="0" /><input type="hidden" id="minM201OU" name="minM201OU" value="0" /><input type="hidden" id="maxA201OE" name="maxA201OE" value="0" /><input type="hidden" id="maxM201OU" name="maxM201OU" value="0" /><input type="hidden" id="minM201OE" name="minM201OE" value="0" /><input type="hidden" id="maxM201OE" name="maxM201OE" value="0" /><input type="hidden" id="isAuto201OE" name="isAuto201OE" value="0" /><input type="hidden" id="roleId" name="roleId" value="3" /><input type="hidden" id="memberPT" name="memberPT" value="0" /><input type="hidden" id="maxMemberPT" name="maxMemberPT" value="0" /><input type="hidden" id="saveControlDisabled" name="saveControlDisabled" value="" /><input type="hidden" id="isUpdateMember" name="isUpdateMember" value="0" /></form>

</body>
</html>
