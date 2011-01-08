<%@ Page Language="C#" AutoEventWireup="true" Inherits="MemberInfo_AddEditFinancial" Codebehind="AddEditFinancial.aspx.cs" %>

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
    <iframe name="UpdateFrm" id="UpdateFrm" style="display: none"></iframe>
    <form id="form" runat="server">
    <div id="page_main">
        <div id="header_main">
            Edit Finance SMQQ01</div>
        <div style="width: 850px;">
            <table border="0" align="center" cellpadding="0" cellspacing="0" width="100%"
    id="diverr" style="display: none;">
    <tr>
        <td id="1_1" class="emsg_1_1">
            &nbsp;
        </td>
        <td id="1_2" class="emsg_1_2">
            &nbsp;
        </td>
        <td id="1_3" class="emsg_1_3">
            &nbsp;
        </td>
    </tr>
                <tr>
                    <td id="2_1" valign="top" class="emsg_2_1">
                        &nbsp;
                    </td>
                    <td valign="top" id="err" class="Enrich">
                    </td>
                    <td id="2_2" class="emsg_2_2">
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td id="3_1" class="emsg_3_1">
                        &nbsp;
                    </td>
                    <td id="3_2" class="emsg_3_2">
                        &nbsp;
                    </td>
                    <td id="3_3" class="emsg_3_3">
                        &nbsp;
                    </td>
                </tr>
            </table>
        </div>
        <div class="sptPT" style="width: 850px;">
            <table class="tblRpt" width="100%" border="1">
                <tr>
                    <td colspan="4" class="b" id="lstusername" style="white-space: normal;">
                    </td>
                </tr>
                <tr class="bg_eb">
                    <td width='25%' class="r">
                        <asp:Label ID="Label1" runat="server" Text="UserName" CssClass="r"></asp:Label>
&nbsp;</td>
                    <td width='25%' class="l">
                        <asp:Label ID="lblUserName"  runat="server"></asp:Label>
                    </td>
                    <td width='25%' class="r">
                        <asp:Label ID="Label5" runat="server" Text="First Name"></asp:Label>
&nbsp;</td>
                    <td width='25%' class="l">
                        <asp:Label ID="lblFirstName" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr class="bg_eb">
                    <td class="r" width="25%">
                        &nbsp;<asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label>
                    </td>
                    <td class="l" width="25%">
                        <asp:Label ID="lblLastName" runat="server"></asp:Label>
                    </td>
                    <td class="r" width="25%">
                        <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
&nbsp;</td>
                    <td class="l" width="25%">
                        <asp:Label ID="lblPhone" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr class="bg_eb">
                    <td class="r">
                        <asp:Label ID="Label3" runat="server" Text="Mobi Phone"></asp:Label>
&nbsp;</td>
                    <td class="l">
                        <asp:Label ID="lblMobilePhone" runat="server"></asp:Label>
                    </td>
                    <td class="r">
                        <asp:Label ID="Label7" runat="server" Text="Fax"></asp:Label>
&nbsp;</td>
                    <td class="l">
                        <asp:Label ID="lblFax" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr class="bg_eb">
                    <td class="r">
                        <asp:Label ID="Label4" runat="server" Text="Agent Max Credit"></asp:Label>
&nbsp;</td>
                    <td class="l" nowrap="yes">
                        <asp:Label ID="lblAgentMaxCredit" runat="server"></asp:Label>
                    </td>
                    <td class="r">
                        <asp:Label ID="Label8" runat="server" Text="Enable Fiance"></asp:Label>
&nbsp;</td>
                    <td class="l">
                        <input type="checkbox" id="chkDisabledFI" name="chkDisabledFI" checked='true' onclick="DisableFI('chkDisabledFI','chkDisabledFIDownline');" />
                        <asp:Label ID="Label9" runat="server" Text="Agent"></asp:Label>
                        &nbsp;&nbsp;&nbsp<input type="checkbox" id="chkDisabledFIDownline" name="chkDisabledFIDownline"
                            checked='true' disabled onclick="DisableFI('chkDisabledFI','chkDisabledFIDownline');" />
                        <asp:Label ID="Label10" runat="server" Text="Agent's Downlines"></asp:Label>
                    </td>
                </tr>
                <tr class="RptHeader">
                    <td colspan="4" class="c">
                        &nbsp;<asp:Label ID="Label11" runat="server" Text="Finance Comission "></asp:Label>
                    </td>
                </tr>
                <tr class="bg_eb">
                    <td class="c" colspan="4">
                        &nbsp;<asp:DropDownList ID="ddlFinanceComission" runat="server" CssClass="selectcomm">
                        </asp:DropDownList>
                    </td>
                </tr>
            </table>
            <table width="100%" class="tblRpt">
                <tr class="tblTitleCenter">
                    <td colspan="3">
                        Bet Setting
                    </td>
                </tr>
                <tr class="bg_eb">
                    <td class="c tdPT1">
                        Min Bet&nbsp;<%--<input type="text" maxlength="14" id="txtMinbet201" name="txtMinbet201"
                            value="5" />--%>
                            <asp:TextBox ID="txtMinbet201" runat="server"></asp:TextBox>
                        <span class="minmaxbet">&gt;=<span id="txtMinbet_Min201">1</span></span>
                    </td>
                    <td class="c">
                        Max Bet&nbsp;<%--<input type="text" maxlength="14" id="txtMaxbet201" name="txtMaxbet201"
                            value="300" />--%><asp:TextBox ID="txtMaxbet201" runat="server"></asp:TextBox>
                        <span class="minmaxbet">&lt;=<span id="txtMaxbet_Max201">300</span></span>
                    </td>
                    <td class="c">
                        Max Per Match&nbsp;<%--<input type="text" maxlength="14" id="txtMaxPerMatch201" name="txtMaxPerMatch201"
                            value="12,000" />--%>
                            <span class="hidden">&gt;=<span id="txtMaxPerMatch_Min201">0</span>
                                and</span><asp:TextBox ID="txtMaxPerMatch201" runat="server"></asp:TextBox>
                        <span class="minmaxbet">&lt;=<span id="txtMaxPerMatch_Max201">12,000</span></span>
                    </td>
                </tr>
            </table>
           

            <div id="divUpdPT201" name="divUpdPT201" style="width: 850px;">
             <table border="1" width="100%" class="tblRpt">
                <tr class="tblTitleCenter">
                    <td colspan="6">
                        Tote - Position Taking
                    </td>
                </tr>
                <tr class="bg_eb {clssTr-text}">
                    <td class="" style="width: 200px">
                    </td>
                    <td class="" style="width: 200px">
                        Win
                    </td>
                    <td class="" style="width: 200px">
                        Place
                    </td>
                    <td class="" style="width: ">
                    </td>
                </tr>
                <tr class="bg_eb {clssTr-text}">
                    <td class="r" style="width: 200px">
                        Agent Position
                    </td>
                    <td class="c" style="width: 200px">
                        <%--<select id="listMTOWin" name="listMTOWin" onchange="SelectOnChange('listMTOWin',10);">
                            <option selected='true' value='0'>0</option>
                        </select>--%>
                        <asp:DropDownList ID="dlltxtMaxPerMatch201" runat="server">
                        </asp:DropDownList>
&nbsp;<a class="imaLink img" href="javascript:ReducePT('listMTOWin',10)"><img class="hand" hspace="1" id="Img3" name="btnReduce10" src="../App_Themes/AgencyV2/Images/b_sub.jpg" /></a><a
                                class="imaLink img" href="javascript:IncreasePT('listMTOWin',10)"><img class="hand"
                                    hspace="1" id="Img4" name="btnIncrease10" src="../App_Themes/AgencyV2/Images/b_add.jpg" /></a>
                    </td>
                    <td class="c" style="width: 200px">
                        <%--<select id="listMTOPlace" name="listMTOPlace" onchange="SelectOnChange('listMTOPlace',10);">
                            <option selected='true' value='0'>0</option>
                        </select>--%>
                        <asp:DropDownList ID="DropDownList1" runat="server" 
                            DataSourceID="ddllistMTOPlace">
                        </asp:DropDownList>
&nbsp;</td>
                    <td class="" style="width: 200px">
                        &nbsp;
                    </td>
                </tr>
                <tr class="bg_eb {clssTr-text}">
                    <td class="r" style="width: 200px">
                        Master Preset
                    </td>
                    <td class="c" style="width: 200px">
                        <%--<select id="listSTOWin" name="listSTOWin" onchange="SelectOnChange('listSTOWin',10);">
                            <option selected='true' value='0'>0</option>
                        </select>--%>
                        <asp:DropDownList ID="ddllistSTOWin" runat="server">
                        </asp:DropDownList>
&nbsp;<a class="imaLink img" href="javascript:ReducePT('listSTOWin',10)"><img class="hand" hspace="1" id="Img3" name="btnReduce10" src="../App_Themes/AgencyV2/Images/b_sub.jpg" /></a><a
                                class="imaLink img" href="javascript:IncreasePT('listSTOWin',10)"><img class="hand"
                                    hspace="1" id="Img4" name="btnIncrease10" src="../App_Themes/AgencyV2/Images/b_add.jpg" /></a>
                    </td>
                    <td class="c" style="width: 200px">
                        <%--<select id="listSTOPlace" name="listSTOPlace" onchange="SelectOnChange('listSTOPlace',10);">
                            <option selected='true' value='0'>0</option>
                        </select>--%>
                        <asp:DropDownList ID="ddllistSTOPlace" runat="server">
                        </asp:DropDownList>
&nbsp;</td>
                    <td class="" style="width: 200px">
                        &nbsp;
                    </td>
                </tr>
                <tr class="bg_eb {clssTr-text}">
                    <td rowspan="2" class="r">
                        Auto Master Preset
                    </td>
                    <td class="c" style="width: 200px">
                        <input type="checkbox" onclick="CheckAutoPreset(this,null,10)" id="chkAutoTOWin"
                            name="chkAutoTOWin" />
                    </td>
                    <td class="c" style="width: 200px">
                        <input type="checkbox" onclick="CheckAutoPreset(this,null,10)" id="chkAutoTOPlace"
                            name="chkAutoTOPlace" />
                    </td>
                    <td class="" style="width: 200px">
                        &nbsp;
                    </td>
                </tr>
                <tr class="bg_eb {clssTr-text}">
                    <td class="{clss-text}" style="width: {width}">
                        <%--<select id="autoSTOWin" name="autoSTOWin" onchange="SelectOnChange('autoSTOWin',10);"
                            disabled>
                            <option selected='true' value='0'>0</option>
                        </select>--%>
                        <asp:DropDownList ID="autoSTOWin" runat="server">
                        </asp:DropDownList>
&nbsp;<a class="imaLink img" href="javascript:ReducePT('autoSTOWin',10)"><img class="hand" hspace="1" id="Img3" name="btnReduce10" src="../App_Themes/AgencyV2/Images/b_sub.jpg" /></a><a
                                class="imaLink img" href="javascript:IncreasePT('autoSTOWin',10)"><img class="hand"
                                    hspace="1" id="Img4" name="btnIncrease10" src="../App_Themes/AgencyV2/Images/b_add.jpg" /></a>
                    </td>
                    <td class="{clss-text}" style="width: {width}">
                        <%--<select id="autoSTOPlace" name="autoSTOPlace" onchange="SelectOnChange('autoSTOPlace',10);"
                            disabled>
                            <option selected='true' value='0'>0</option>
                        </select>--%>
                        <asp:DropDownList ID="ddlautoSTOPlace" runat="server">
                        </asp:DropDownList>
&nbsp;</td>
                    <td class="" style="width: {width}">
                        &nbsp;
                    </td>
                </tr>
                <tr class="bg_eb {clssTr-text}">
                    <td class="r" style="width: width">
                    </td>
                    <td colspan="3" class="l">
                        <input type="checkbox" id="chkCopyTOWin" name="chkCopyTOWin" onclick="CheckCopyPT(this,arrSuper151TO,arrMaster151TO,'chkAuto151TO');" />
                        Copy From Win
                    </td>
                </tr>
                <tr class="bg_eb {clssTr-text}">
                    <td class="r" style="width: {width}">
                    </td>
                    <td colspan="3" class="CopyPreset">
                        <input type="checkbox" id="chkCopyTOPreset" checked name="chkCopyTOPreset" />
                        Apply Master Preset PT to all members
                    </td>
                </tr>
            </table>
            </div>
        </div>
        <div class="b_add">
            <li>
                <asp:LinkButton ID="btnSubmit" runat="server"><span>Submit</span></asp:LinkButton>
                <%-- <a id="" onclick="BtnOnClick();" href="javascript:;"><span>Submitit" onclick="BtnOnClick();"
                href="javascript:;"></a>--%>
                
                
                
                
                </li></div>
    </div>
    <br />
    <input type="hidden" id="hdDisabledFI" name="hdDisabledFI" value="0" /><input type="hidden"
        id="hdDisabledFIDownline" name="hdDisabledFIDownline" value="0" /><input type="hidden"
            id="hdDisabledFI_Old" name="hdDisabledFI_Old" value="0" /><input type="hidden" id="hdDisabledFIDownline_Old"
                name="hdDisabledFIDownline_Old" value="0" /><input type="hidden" id="custid" name="custid"
                    value="2012586" /><input type="hidden" id="username" name="username" value="" /><input
                        type="hidden" id="isEdit" name="isEdit" value="true" /><input type="hidden" id="isNoBgr"
                            name="isNoBgr" value="0" /><script type="text/javascript" src="../Js/wz_tooltip/wz_tooltip.js"></script><script
                                type="text/javascript" src="../Js/wz_tooltip/tip_centerwindow.js"></script><script
                                    type="text/javascript" src="../Js/wz_tooltip/tip_balloon.js"></script><input type="hidden"
                                        id="isAuto201OU" name="isAuto201OU" value="0" /><input type="hidden" id="maxA201OU"
                                            name="maxA201OU" value="0" /><input type="hidden" id="minM201OU" name="minM201OU"
                                                value="0" /><input type="hidden" id="maxA201OE" name="maxA201OE" value="0" /><input
                                                    type="hidden" id="maxM201OU" name="maxM201OU" value="0" /><input type="hidden" id="minM201OE"
                                                        name="minM201OE" value="0" /><input type="hidden" id="maxM201OE" name="maxM201OE"
                                                            value="0" /><input type="hidden" id="isAuto201OE" name="isAuto201OE" value="0" /><input
                                                                type="hidden" id="roleId" name="roleId" value="3" /><input type="hidden" id="memberPT"
                                                                    name="memberPT" value="0" /><input type="hidden" id="maxMemberPT" name="maxMemberPT"
                                                                        value="0" /><input type="hidden" id="saveControlDisabled" name="saveControlDisabled"
                                                                            value="" /><input type="hidden" id="isUpdateMember" name="isUpdateMember" value="0" />
    </form>
</body>
</html>
