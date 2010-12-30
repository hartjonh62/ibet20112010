<%@ Page Language="C#" AutoEventWireup="true" Inherits="MemberInfo_AddEditHorseRacing"
    CodeBehind="AddEditHorseRacing.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <title>Home</title>
    <meta name="keywords" content="sportsbook, agency, agent, betting" />
    <meta name="description" content="online betting sportsbook agency system" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href='../App_Themes/AgencyV2/button.css' type='text/css' rel='stylesheet' />
    <link href='../App_Themes/AgencyV2/casino.css' type='text/css' rel='stylesheet' />
    <link href='../App_Themes/AgencyV2/common.css' type='text/css' rel='stylesheet' />
    <link href='../App_Themes/AgencyV2/footer.css' type='text/css' rel='stylesheet' />
    <link href='../App_Themes/AgencyV2/header.css' type='text/css' rel='stylesheet' />
    <link href='../App_Themes/AgencyV2/leftMenu.css' type='text/css' rel='stylesheet' />
    <link href='../App_Themes/AgencyV2/main.css' type='text/css' rel='stylesheet' />
    <link href='../App_Themes/AgencyV2/message.css' type='text/css' rel='stylesheet' />
    <link href='../App_Themes/AgencyV2/newagent.css' type='text/css' rel='stylesheet' />
    <link href='../App_Themes/AgencyV2/popup.css' type='text/css' rel='stylesheet' />
    <link href='../App_Themes/AgencyV2/PopUpMessage.css' type='text/css' rel='stylesheet' />
    <link href='../App_Themes/AgencyV2/tabmenu.css' type='text/css' rel='stylesheet' />
    <link href='../App_Themes/AgencyV2/thickbox.css' type='text/css' rel='stylesheet' />
    <link href='../App_Themes/AgencyV2/userinfo.css' type='text/css' rel='stylesheet' />

    <script type='text/javascript' src='../Js/opt/Core.js?v=20091230'></script>

    <script type='text/javascript' src='../Js/Common.js?v=20091230'></script>

    <script src='../Js/IBCWnd/IBCWnd.js?v=20091230' type='text/javascript'></script>

    <script src='../Js/Customer.js?v=20091230' type='text/javascript'></script>

    <script src='../Js/AddNewMaster.js?v=20091230' type='text/javascript'></script>

    <script src='../Js/AgentEditMemberHR.js?v=20091230' type='text/javascript'></script>

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
var alertIncorrectCredit='Incorrect Master Max Credit';
var alertLessthanMinPT='Master Preset and Super Preset must not be less than ';
    </script>

    <script type="text/javascript">
    var flag = false;
    function SetIsEdit() {
        parent.frames[0].$("IdIsEditHr").value = "True";
            
    }
    
    function BtnOnClick() {

        ClearAllMsg();
        if (!CheckLimitMinMaxBet(151)) return false;

        DelayReloadPage(null, 300000);

        var isPT = CheckPotionTakingHR();
        if (!isPT) return false;
        document.form.submit();
        return true;

    }

    function showInfoMsg(msg, type) {
        showEnrichMsg(msg, type);            
    }

    function CheckChangeAutoHR() {
        var Arr = ["TO", "FO"];
        for (var j = 0; j < Arr.length; j++) {
            if ($("divUpdPT" + Arr[j])) {
                elements = $("divUpdPT" + Arr[j]).getElementsByTagName("input");
                var isNewAuto;
                for (var i = 0; i < elements.length; i++) {
                    var id = elements[i].id;
                    if (id == "chkCopyTOWin" || id == "chkCopyFOWin") {
                        continue;
                    }
                    var isAutoId = id.replace("chkAuto", "isAuto");
                    var isAuto = $(isAutoId).value == "1";
                    if (isAuto && !elements[i].checked) {
                        return true;
                    }
                }
            }
        }
        return false;
    }
    
    function CheckPotionTakingHR() {
        var IsChaneAuto = false;
        if ($("roleId").value == "4" || $("roleId").value == "3") {
            IsChaneAuto = CheckChangeAutoHR();
        }
        if (IsChaneAuto) {
            if ($("roleId").value == "4") {
                $("maxMemberPT").value = parseFloat($('maxMSTOWin').value) - parseFloat($("listMTOWin").value);
            }
            else if ($("roleId").value == "3") {
                $("maxMemberPT").value = parseFloat($('maxMTOWin').value) - parseFloat($("listMTOWin").value);
            }
            if (!flag) {
                DisableControls();
                ibcWnd.open('../MemberInfo/ConfirmChangeAutoPT.aspx', '', 300, 300, 450, 170, 'class1', 'class2');
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

                    $("lstusername").innerHTML = trim(username).substring(0,trim(username).length -1) ;
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
            Add Horse Racing SMQQ02001</div>
        <div style="width: 850px;">
            <table border="0" align="center" cellpadding="0" cellspacing="0" width="100%" id="diverr"
                style="display: none;">
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
                        User Name
                    </td>
                    <td width='25%' class="l">
                        SMQQ02001
                    </td>
                    <td width='25%' class="r">
                        First Name
                    </td>
                    <td width='25%' class="l">
                    </td>
                </tr>
                <tr class="bg_eb">
                    <td class="r" width="25%">
                        Last Name
                    </td>
                    <td class="l" width="25%">
                    </td>
                    <td class="r" width="25%">
                        Phone
                    </td>
                    <td class="l" width="25%">
                    </td>
                </tr>
                <tr class="bg_eb">
                    <td class="r">
                        Mobile Phone
                    </td>
                    <td class="l">
                    </td>
                    <td class="r">
                        Fax
                    </td>
                    <td class="l">
                    </td>
                </tr>
                <tr class="bg_eb">
                    <td class="r">
                        Enable HR
                    </td>
                    <td class="l">
                        <asp:CheckBox ID="chkDisabledHR" runat="server" Checked="True" onclick="DisableHR('chkDisabledHR','chkDisabledHRDownline');" />
                    </td>
                    <td class="r" colspan="2">
                    </td>
                </tr>
                <tr class="RptHeader">
                    <td colspan="4" class="c">
                        Commission
                    </td>
                </tr>
                <tr class="bg_eb">
                    <td class="r">
                        Tote Comm for Agent
                    </td>
                    <td class="l">
                        <asp:TextBox ID="txtAgent" ReadOnly Style="width: 65px;" value="0" runat="server"></asp:TextBox>
                    </td>
                    <td class="r">
                    </td>
                    <td class="l">
                    </td>
                </tr>
                <tr class="bg_eb">
                    <td class="r">
                        Tote Comm for Member
                    </td>
                    <td class="l">
                        <asp:DropDownList ID="ddldiscount31" runat="server" selected='true' Style="width: 60px;">
                            <asp:ListItem Value="0"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="r">
                    </td>
                    <td class="l">
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
                        Min Bet&nbsp;
                        <asp:TextBox ID="txtMinbet151" value="10" MaxLength="14" runat="server"></asp:TextBox>
                        <span class="minmaxbet">&gt;=<span id="txtMinbet_Min151">10</span></span>
                    </td>
                    <td class="c">
                        Max Bet&nbsp;
                        <asp:TextBox ID="txtMaxbet151" value="4,999" MaxLength="14" runat="server"></asp:TextBox>
                        <span class="minmaxbet">&nbsp; &lt;=<span id="txtMaxbet_Max151">4,999</span></span>
                    </td>
                    <td class="c">
                        Max Per Match&nbsp;
                        <asp:TextBox ID="txtMaxPerMatch151" value="20,000" MaxLength="14" runat="server"></asp:TextBox>
                        <span class="hidden">&gt;=<span id="txtMaxPerMatch_Min151"></span> and</span><span
                            class="minmaxbet">&lt;=<span id="txtMaxPerMatch_Max151">20,000</span></span>
                    </td>
                </tr>
            </table>
            <div id="divUpdPTTO" name="divUpdPTTO" style="width: 850px;" class="">
                <table border="1" width="100%" class="tblRpt">
                    <tr class="tblTitleCenter">
                        <td colspan="3">
                            Tote - Position Taking
                        </td>
                    </tr>
                    <tr class="bg_eb {clssTr-text}">
                        <td class="" style="width: 200px">
                            Win
                        </td>
                        <td class="" style="width: 200px">
                            Place
                        </td>
                        <td class="" style="width: 200px">
                        </td>
                    </tr>
                    <tr class="bg_eb {clssTr-text}">
                        <td class="c" style="width: 200px">
                            &nbsp;<asp:DropDownList ID="ddlListMTOWin" runat="server" selected='true' Style="width: 60px;"
                                onChange="SelectOnChange('listMTOWin',10);">
                                <asp:ListItem Value="0"></asp:ListItem>
                            </asp:DropDownList>
                            <a class="imaLink img" href="javascript:ReducePT('listMTOWin',10)">
                                <img class="hand" hspace="1" id="Img3" name="btnReduce10" src="../App_Themes/AgencyV2/Images/b_sub.jpg" /></a><a
                                    class="imaLink img" href="javascript:IncreasePT('listMTOWin',10)"><img class="hand"
                                        hspace="1" id="Img4" name="btnIncrease10" src="../App_Themes/AgencyV2/Images/b_add.jpg" /></a>
                        </td>
                        <td class="c" style="width: 200px">
                            &nbsp;<asp:DropDownList ID="ddlListMTOPlace" runat="server" Style="width: 60px;"
                                onChange="SelectOnChange('listMTOPlace',10);" selected='true'>
                                <asp:ListItem Value="0"></asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td class="" style="width: 200px">
                            &nbsp;
                        </td>
                    </tr>
                    <tr class="bg_eb {clssTr-text}">
                        <td colspan="3" class="l">
                            <asp:CheckBox ID="chkCopyTOWin" runat="server" onclick="CheckCopyPT(this,arrSuper151TO,arrMaster151TO,'chkAuto151TO');" />
                            Copy From Win
                        </td>
                    </tr>
                </table>
            </div>
            <div id="divUpdPTFO" name="divUpdPTFO" style="width: 850px;" class="hidden">
                <table border="1" width="100%" class="tblRpt">
                    <tr class="tblTitleCenter">
                        <td colspan="3">
                            Fixed Odds - Position Taking
                        </td>
                    </tr>
                    <tr class="bg_eb {clssTr-text}">
                        <td class="" style="width: 200px">
                            Win
                        </td>
                        <td class="" style="width: 200px">
                            Place
                        </td>
                        <td class="" style="width: 200px">
                        </td>
                    </tr>
                    <tr class="bg_eb {clssTr-text}">
                        <td class="c" style="width: 200px">
                            <select id="listMFOWin" name="listMFOWin" onchange="SelectOnChange('listMFOWin',10);">
                                <option selected='true' value='0'>0</option>
                            </select>
                            <a class="imaLink img" href="javascript:ReducePT('listMFOWin',10)">
                                <img class="hand" hspace="1" id="Img3" name="btnReduce10" src="../App_Themes/AgencyV2/Images/b_sub.jpg" /></a><a
                                    class="imaLink img" href="javascript:IncreasePT('listMFOWin',10)"><img class="hand"
                                        hspace="1" id="Img4" name="btnIncrease10" src="../App_Themes/AgencyV2/Images/b_add.jpg" /></a>
                        </td>
                        <td class="c" style="width: 200px">
                            <select id="listMFOPlace" name="listMFOPlace" onchange="SelectOnChange('listMFOPlace',10);">
                                <option selected='true' value='0'>
                              0</option></select></td><td class="" style="width:200px">&nbsp;</td></tr><tr class="bg_eb {clssTr-text}"><td colspan="3" class="l"><input type="checkbox" id="chkCopyFOWin" {chk-copy} name="chkCopyFOWin" onclick="CheckCopyPT(this,arrSuper151FO,arrMaster151FO,'chkAuto151FO');" /> 

                            Copy From Win
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <div class="b_add">
            <li><asp:LinkButton ID="LinkSubmit" runat="server" OnClientClick="BtnOnClick();"><span>Submit</span></asp:LinkButton></li></div>
    </div>
    <br />
    <input type="hidden" id="hdDisabledHR" name="hdDisabledHR" value="0" /><input type="hidden"
        id="hdDisabledHRDownline" name="hdDisabledHRDownline" value="{hddisableHRDownline-value}" /><input
            type="hidden" id="hdDisabledHR_Old" name="hdDisabledHR_Old" value="0" /><input type="hidden"
                id="hdDisabledHRDownline_Old" name="hdDisabledHRDownline_Old" value="{hddisableHRDownline-value}" /><input
                    type="hidden" id="custid" name="custid" value="2052164" /><input type="hidden" id="username"
                        name="username" value="" /><input type="hidden" id="isEdit" name="isEdit" value="false" /><input
                            type="hidden" id="isNoBgr" name="isNoBgr" value="0" /><script type="text/javascript"
                                src="../Js/wz_tooltip/wz_tooltip.js"></script><script type="text/javascript" src="../Js/wz_tooltip/tip_centerwindow.js"></script><script
                                    type="text/javascript" src="../Js/wz_tooltip/tip_balloon.js"></script><input type="hidden"
                                        id="roleId" name="roleId" value="2" /><input type="hidden" id="memberPT" name="memberPT"
                                            value="0" /><input type="hidden" id="maxMemberPT" name="maxMemberPT" value="0" /><input
                                                type="hidden" id="saveControlDisabled" name="saveControlDisabled" value="" /><input
                                                    type="hidden" id="isUpdateMember" name="isUpdateMember" value="0" />
</form>
</body>
</html>
