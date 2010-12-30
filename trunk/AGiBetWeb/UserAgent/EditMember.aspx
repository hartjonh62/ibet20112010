<%@ Page Language="C#" AutoEventWireup="true" Inherits="UserAgent_EditMember" Codebehind="EditMember.aspx.cs" %>

<script language='javascript'>    var alertcredit = 'Incorrect Agent Maximum Credit'; var alertMinbet = 'Incorrect Min Bet'; var alertMaxbet = 'Incorrect Max Bet'; var alertMaxpermatch = 'Incorrect Max Per Match'; var alertCompare3 = 'Min Bet cannot be greater than Max Bet'; var alertCompare = 'Max Bet can not be greater than Max Per Match'; var alertminbetC = 'Min Bet must be greater than or equal to'; var alertMaxbetC = 'Max Bet must be less than or equal to'; var alertMaxpermatchC = 'Max Per Match must be less than or equal to {1}.'; var alertMaxpermatchCMin = 'Max Bet Match must be more than or equal to'; var alertMaxpermatchCMax = 'Max Bet Match must be less than or equal to'; var alertUserName = 'Please Enter User name!'; var lblPasswordRequire = 'Password must have at least 6 characters, including at least 2 letters and at least 2 digits. (e.g:pass22)'; var alertPasswordEmpty = 'Sorry, password can not be empty!!!'; var alertIncorrectCredit = 'Incorrect Member Max Credit'; var alertCreditInvalid = 'Master Max Credit must be between {1} and {2}'; var alertLessthanMinPT = 'Master Preset and Super Preset must not be less than ';</script>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <title>Home</title>
    <meta name="keywords" content="sportsbook, agency, agent, betting" />
    <meta name="description" content="online betting sportsbook agency system" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href='../App_Themes/AgencyV2/common.css' type='text/css' rel='stylesheet' />
    <link href='../App_Themes/AgencyV2/main.css' type='text/css' rel='stylesheet' />

    <script type='text/javascript' src='../Js/opt/Core.js?v=20091230'></script>

    <script type='text/javascript' src='../Js/Common.js?v=20091230'></script>

    <link href="../App_Themes/AgencyV2/newagent.css" type="text/css" rel="Stylesheet" />
    <style type="text/css">
        .slwidth
        {
            width: 50px;
        }
    </style>

    <script type="text/javascript">
        _FocusEl = 'Number1';
        function IncreasePT(ddl, step) {
            var max = $(ddl).options[0].value;
            Increase(ddl, step, max);
            sh
        }

        function Increase(ddl, step, max) {
            var objDDL = $(ddl);
            var maxValue = Math.round(max * 100);
            var currSelect = Math.round(parseFloat(objDDL.value) * 100);
            var nextValue = currSelect + step;
            for (var i = 0; i < objDDL.length; i++) {
                if (objDDL[i].value == (nextValue / 100.0)) {
                    objDDL[i].selected = true;
                    return true;
                }
            }
            return false;
        }
        function ReducePT(ddl, step) {
            var min = 0;
            Reduce(ddl, step, min);
        }
        function Reduce(ddl, step, min) {
            var objDDL = $(ddl);
            var minValue = Math.round(min * 100);
            var currSelect = Math.round(parseFloat(objDDL.value) * 100);
            var nextValue = currSelect - step;
            for (var i = 0; i < objDDL.length; i++) {
                if (objDDL[i].value == (nextValue / 100.0)) {
                    objDDL[i].selected = true;
                    return true;
                }
            }
            return false;
        }
        function ChangeGroup() {
            $("txtComHdp").value = $("ddlslGroup").value;
            changeComm($("ddlslGroup").value, "ddlslComHdp");
            $("hdGroup").value = $("ddlslGroup").options[$("ddlslGroup").selectedIndex].text;
        }
        window.onload = function () {
            ChangeGroup();
            CopyHandicap();
        }
        function changeComm(value, id) {
            var select = $(id);
            clearOptions(select);

            value = value * 10000;

            while (value > 0) {
                var format = value / 10000;
                var str = new String(format);

                var op = new Option(str, str);
                select.options[select.options.length] = op;
                value = value - 5;
            }
            if (value <= 0) {
                var op = new Option("0", "0");
                select.options[select.options.length] = op;
            }
            select.options.selectedIndex = 0;
        }
        function clearOptions(select) {
            for (i = select.options.length - 1; i >= 0; i--) {
                select.options[i] = null;
            }
        }
        function BtnOnClick() {
            if (!CheckInfoValue())
                return false;
            if (!CheckMinMax())
                return false;

            DelayReloadPage(null, 300000);
            enabledBtn(false);
            return true;
            $("fUpdate").submit();
        }
        function CheckMinMax() {
            if (isEmpty("txtMinBet")) {
                $("txtMinBet").focus();
                ShowBalloonMsg("txtMinBet", alertMinbet);
                return false;
            }
            if (isEmpty("txtMaxBet")) {
                $("txtMaxBet").focus();
                ShowBalloonMsg("txtMaxBet", alertMaxbet);
                return false;
            }
            if (isEmpty("txtMaxPerMatch")) {
                $("txtMaxPerMatch").focus();
                ShowBalloonMsg("txtMaxPerMatch", alertMaxpermatch);
                return false;
            }
            var MinBet = toFloat($("txtMinBet").value);
            var MaxBet = toFloat($("txtMaxBet").value);
            var MaxPerMatch = toFloat($("txtMaxPerMatch").value);
            var MinBet_max = toFloat($("hdMinBet").value);
            var MaxBet_Min = toFloat($("hdMaxBet").value);
            var MaxPerMatch_max = toFloat($("hdMaxPerMatch").value);
            var MaxPerMatch_min = toFloat($("hdMaxPerMatchMin").value);

            if ((MinBet == 0) && (MaxBet == 0) && (MaxPerMatch == 0))
                return true;

            if ((MinBet != 0) && (MinBet_max != 0) && (MinBet < MinBet_max)) {
                $("txtMinBet").focus();
                ShowBalloonMsg("txtMinBet", alertminbetC + " " + $("hdMinBet").value);
                return false;
            }
            if ((MaxBet != 0) && (MaxBet_Min != 0) && MaxBet > MaxBet_Min) {
                $("txtMaxBet").focus();
                ShowBalloonMsg("txtMaxBet", alertMaxbetC + " " + $("hdMaxBet").value);
                return false;
            }
            if ((MaxPerMatch != 0) && (MaxPerMatch_max != 0) && (MaxPerMatch > MaxPerMatch_max || MaxPerMatch < MaxPerMatch_min)) {
                $("txtMaxPerMatch").focus();
                ShowBalloonMsg("txtMaxPerMatch", alertMaxpermatchC.replace("{1}", $("hdMaxPerMatchMin").value).replace("{2}", $("hdMaxPerMatch").value));
                return false;
            }
            if (MinBet > MaxBet) {
                $("txtMinBet").focus();
                ShowBalloonMsg("txtMinBet", alertCompare3);
                return false;
            }
            if (MaxBet > MaxPerMatch) {
                $("txtMaxBet").focus();
                ShowBalloonMsg("txtMaxBet", alertCompare);
                return false;
            }
            return true;
        }
        function CheckInfoValue() {
            if (isEmpty("txtPass")) {
                $("txtPass").focus();
                ShowError(alertPasswordEmpty, "err");
                return false;
            }
            if (!checkpass($("txtPass"))) {
                $("txtPass").focus();
                return false;
            }
            if (isEmpty("txtMaxCredit")) {
                $("txtMaxCredit").focus();
                ShowBalloonMsg("txtMaxCredit", alertIncorrectCredit);
                return false;
            }
            if (toFloat($("txtMaxCredit").value) > toFloat($("hdMaxCredit").value)) {
                $("txtMaxCredit").focus();
                ShowBalloonMsg("txtMaxCredit", alertCreditInvalid.replace("{1}", "0").replace("{2}", $("hdMaxCredit").value));
                return false;
            }
            return true;
        }

        function toFloat(str) {
            var value = "";
            for (i = 0; i < str.length; i++) {
                var c = str.charAt(i);
                if (c != ',') value += c;
            }
            return parseFloat(value);
        }
        function CopyHandicap() {
            if ($("chkCpyHdp").checked) {
                $("ddlslOtherPT").disabled = true;
                $("ddlslOutrightPT").disabled = true;
                $("ddlslLivePT").disabled = true;
            }
            else {
                $("ddlslOtherPT").disabled = false;
                $("ddlslOutrightPT").disabled = false;
                $("ddlslLivePT").disabled = false;
            }
        }

    </script>

</head>
<body>
    <form id="fUpdate" runat="server">
    <div id="page_main">
        <div id="header_main">
            <asp:Label ID="lblAddNew" runat="server" Text="Edit Member"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </div>
        <table border="0" cellpadding="0" cellspacing="0" width="750px" id="diverr" style="display: none">
            <tr>
                <td class="emsg_1_1">
                    &nbsp;
                </td>
                <td class="emsg_1_2">
                    &nbsp;
                </td>
                <td class="emsg_1_3">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td valign="top" class="emsg_2_1">
                    &nbsp;
                </td>
                <td valign="top" id="err" class="msgerr">
                    &nbsp;
                </td>
                <td class="emsg_2_2">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td class="emsg_3_1">
                    &nbsp;
                </td>
                <td class="emsg_3_2">
                    &nbsp;
                </td>
                <td class="emsg_3_3">
                    &nbsp;
                </td>
            </tr>
        </table>
        <div class="sptPT" style="width: 750px;">
            <table class="tblRpt" width="100%" border="1">
                <tr class="bg_eb">
                    <td class="r" style="width: 20%;">
                        <asp:Label ID="lblUserName" runat="server" Text=" User Name"></asp:Label>
                    </td>
                    <td class="l" style="width: 30%;">
                        <asp:Label ID="lblUserNameValue" runat="server" Text="SMQQ02"></asp:Label>
                        <asp:DropDownList ID="ddlNumber1" runat="server">
                            <asp:ListItem Selected='true' Value='0'>0</asp:ListItem>
                            <asp:ListItem Value='1'>1</asp:ListItem>
                            <asp:ListItem Value='2'>2</asp:ListItem>
                            <asp:ListItem Value='3'>3</asp:ListItem>
                            <asp:ListItem Value='4'>4</asp:ListItem>
                            <asp:ListItem Value='5'>5</asp:ListItem>
                            <asp:ListItem Value='6'>6</asp:ListItem>
                            <asp:ListItem Value='7'>7</asp:ListItem>
                            <asp:ListItem Value='8'>8</asp:ListItem>
                            <asp:ListItem Value='9'>9</asp:ListItem>
                            <asp:ListItem Value='A'>A</asp:ListItem>
                            <asp:ListItem Value='B'>B</asp:ListItem>
                            <asp:ListItem Value='C'>C</asp:ListItem>
                            <asp:ListItem Value='D'>D</asp:ListItem>
                            <asp:ListItem Value='E'>E</asp:ListItem>
                            <asp:ListItem Value='F'>F</asp:ListItem>
                            <asp:ListItem Value='G'>G</asp:ListItem>
                            <asp:ListItem Value='H'>H</asp:ListItem>
                            <asp:ListItem Value='I'>I</asp:ListItem>
                            <asp:ListItem Value='J'>J</asp:ListItem>
                            <asp:ListItem Value='K'>K</asp:ListItem>
                            <asp:ListItem Value='L'>L</asp:ListItem>
                            <asp:ListItem Value='M'>M</asp:ListItem>
                            <asp:ListItem Value='N'>N</asp:ListItem>
                            <asp:ListItem Value='O'>O</asp:ListItem>
                            <asp:ListItem Value='P'>P</asp:ListItem>
                            <asp:ListItem Value='Q'>Q</asp:ListItem>
                            <asp:ListItem Value='R'>R</asp:ListItem>
                            <asp:ListItem Value='S'>S</asp:ListItem>
                            <asp:ListItem Value='T'>T</asp:ListItem>
                            <asp:ListItem Value='U'>U</asp:ListItem>
                            <asp:ListItem Value='V'>V</asp:ListItem>
                            <asp:ListItem Value='W'>W</asp:ListItem>
                            <asp:ListItem Value='X'>X</asp:ListItem>
                            <asp:ListItem Value='Y'>Y</asp:ListItem>
                            <asp:ListItem Value='Z'>Z</asp:ListItem>
                        </asp:DropDownList>
                        <asp:DropDownList ID="ddlNumber2" runat="server">
                            <asp:ListItem Selected='true' Value='0'>0</asp:ListItem>
                            <asp:ListItem Value='1'>1</asp:ListItem>
                            <asp:ListItem Value='2'>2</asp:ListItem>
                            <asp:ListItem Value='3'>3</asp:ListItem>
                            <asp:ListItem Value='4'>4</asp:ListItem>
                            <asp:ListItem Value='5'>5</asp:ListItem>
                            <asp:ListItem Value='6'>6</asp:ListItem>
                            <asp:ListItem Value='7'>7</asp:ListItem>
                            <asp:ListItem Value='8'>8</asp:ListItem>
                            <asp:ListItem Value='9'>9</asp:ListItem>
                            <asp:ListItem Value='A'>A</asp:ListItem>
                            <asp:ListItem Value='B'>B</asp:ListItem>
                            <asp:ListItem Value='C'>C</asp:ListItem>
                            <asp:ListItem Value='D'>D</asp:ListItem>
                            <asp:ListItem Value='E'>E</asp:ListItem>
                            <asp:ListItem Value='F'>F</asp:ListItem>
                            <asp:ListItem Value='G'>G</asp:ListItem>
                            <asp:ListItem Value='H'>H</asp:ListItem>
                            <asp:ListItem Value='I'>I</asp:ListItem>
                            <asp:ListItem Value='J'>J</asp:ListItem>
                            <asp:ListItem Value='K'>K</asp:ListItem>
                            <asp:ListItem Value='L'>L</asp:ListItem>
                            <asp:ListItem Value='M'>M</asp:ListItem>
                            <asp:ListItem Value='N'>N</asp:ListItem>
                            <asp:ListItem Value='O'>O</asp:ListItem>
                            <asp:ListItem Value='P'>P</asp:ListItem>
                            <asp:ListItem Value='Q'>Q</asp:ListItem>
                            <asp:ListItem Value='R'>R</asp:ListItem>
                            <asp:ListItem Value='S'>S</asp:ListItem>
                            <asp:ListItem Value='T'>T</asp:ListItem>
                            <asp:ListItem Value='U'>U</asp:ListItem>
                            <asp:ListItem Value='V'>V</asp:ListItem>
                            <asp:ListItem Value='W'>W</asp:ListItem>
                            <asp:ListItem Value='X'>X</asp:ListItem>
                            <asp:ListItem Value='Y'>Y</asp:ListItem>
                            <asp:ListItem Value='Z'>Z</asp:ListItem>
                        </asp:DropDownList>
                        <asp:DropDownList ID="ddlNumber3" runat="server">
                            <asp:ListItem Value='0'>0</asp:ListItem>
                            <asp:ListItem Value='1' Selected='true'>1</asp:ListItem>
                            <asp:ListItem Value='2'>2</asp:ListItem>
                            <asp:ListItem Value='3'>3</asp:ListItem>
                            <asp:ListItem Value='4'>4</asp:ListItem>
                            <asp:ListItem Value='5'>5</asp:ListItem>
                            <asp:ListItem Value='6'>6</asp:ListItem>
                            <asp:ListItem Value='7'>7</asp:ListItem>
                            <asp:ListItem Value='8'>8</asp:ListItem>
                            <asp:ListItem Value='9'>9</asp:ListItem>
                            <asp:ListItem Value='A'>A</asp:ListItem>
                            <asp:ListItem Value='B'>B</asp:ListItem>
                            <asp:ListItem Value='C'>C</asp:ListItem>
                            <asp:ListItem Value='D'>D</asp:ListItem>
                            <asp:ListItem Value='E'>E</asp:ListItem>
                            <asp:ListItem Value='F'>F</asp:ListItem>
                            <asp:ListItem Value='G'>G</asp:ListItem>
                            <asp:ListItem Value='H'>H</asp:ListItem>
                            <asp:ListItem Value='I'>I</asp:ListItem>
                            <asp:ListItem Value='J'>J</asp:ListItem>
                            <asp:ListItem Value='K'>K</asp:ListItem>
                            <asp:ListItem Value='L'>L</asp:ListItem>
                            <asp:ListItem Value='M'>M</asp:ListItem>
                            <asp:ListItem Value='N'>N</asp:ListItem>
                            <asp:ListItem Value='O'>O</asp:ListItem>
                            <asp:ListItem Value='P'>P</asp:ListItem>
                            <asp:ListItem Value='Q'>Q</asp:ListItem>
                            <asp:ListItem Value='R'>R</asp:ListItem>
                            <asp:ListItem Value='S'>S</asp:ListItem>
                            <asp:ListItem Value='T'>T</asp:ListItem>
                            <asp:ListItem Value='U'>U</asp:ListItem>
                            <asp:ListItem Value='V'>V</asp:ListItem>
                            <asp:ListItem Value='W'>W</asp:ListItem>
                            <asp:ListItem Value='X'>X</asp:ListItem>
                            <asp:ListItem Value='Y'>Y</asp:ListItem>
                            <asp:ListItem Value='Z'>Z</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="r" style="width: 20%;">
                        <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
                    </td>
                    <td class="l" style="width: 30%;" id="td_pass">
                        <asp:TextBox ID="txtPass" runat="server" onkeyup="return checkpass(this);" 
                            TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr class="bg_eb">
                    <td class="r">
                        <asp:Label ID="lblFirstName" runat="server" Text="First Name"></asp:Label>
                    </td>
                    <td class="l">
                        <asp:TextBox ID="txtFName" runat="server"></asp:TextBox>
                    </td>
                    <td class="r">
                        <asp:Label ID="lblLastName" runat="server" Text="Last Name"></asp:Label>
                    </td>
                    <td class="l">
                        <asp:TextBox ID="txtLName" runat="server"></asp:TextBox>
                        &nbsp;
                    </td>
                </tr>
                <tr class="bg_eb">
                    <td class="r">
                        <asp:Label ID="lblPhone" runat="server" Text="Phone"></asp:Label>
                    </td>
                    <td class="l">
                        <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
                    </td>
                    <td class="r">
                        <asp:Label ID="lblMobilePhone" runat="server" Text="Mobile Phone"></asp:Label>
                    </td>
                    <td class="l">
                        <asp:TextBox ID="txtMobilePhone" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr class="bg_eb">
                    <td class="r">
                        <asp:Label ID="lblMemberMaxCredit" runat="server" Text="Member Max Credit"></asp:Label>
                    </td>
                    <td class="l">
                        <asp:TextBox ID="txtMaxCredit" runat="server" value="0" onkeypress="return CheckDecNumber(event);"></asp:TextBox><span><=
                            0</span>
                    </td>
                    <td class="r">
                        <asp:Label ID="lblFax" runat="server" Text="Fax"></asp:Label>
                    </td>
                    <td class="l">
                        <asp:TextBox ID="txtFax" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr class="bg_eb">
                    <td class="r">
                        <asp:Label ID="lblGroup" runat="server" Text="Group"></asp:Label>
                    </td>
                    <td class="l">
                        <asp:DropDownList ID="ddlslGroup" runat="server">
                            <asp:ListItem Value='0.0025' Selected='true'>a</asp:ListItem>
                            <asp:ListItem Value='0.005'>b</asp:ListItem>
                            <asp:ListItem Value='0.0075'>c</asp:ListItem>
                            <asp:ListItem Value='0.01'>d</asp:ListItem>
                            <asp:ListItem Value='0.0025'>hka</asp:ListItem>
                            <asp:ListItem Value='0.005'>hkb</asp:ListItem>
                            <asp:ListItem Value='0.0075'>hkc</asp:ListItem>
                            <asp:ListItem Value='0.01'>hkd</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="r">
                        <asp:Label ID="lblClosed" runat="server" Text="Closed"></asp:Label>
                    </td>
                    <td class="l">
                        <asp:CheckBox ID="chkClosed" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td class="r">
                      <asp:Label ID="lblSuspended" runat="server" Text="Suspended"></asp:Label>
                    </td>
                    <td class="l">
                        <asp:CheckBox ID="chkSuspended" runat="server" />
                    </td>
                    <td colspan='2'>
            </table>
            <table class="tblRpt" width="100%" border="1">
                <tr class="RptHeader">
                    <td colspan="4">
                        Commission
                    </td>
                </tr>
                <tr class="bg_eb">
                    <td class="r">
                        Comm for Agent &nbsp;<u>Asian HDP, OU, OE</u>
                    </td>
                    <td class="l">
                        <asp:TextBox ID="txtComHdp" runat="server" ReadOnly Style="width: 70px;"></asp:TextBox>
                    </td>
                    <td class="r">
                        Comm for Agent &nbsp;<u>Other Bettypes</u>
                    </td>
                    <td class="l">
                        <asp:TextBox ID="txtCommForAgent" runat="server" ReadOnly value="0.01" Style="width: 70px;"></asp:TextBox>
                    </td>
                </tr>
                <tr class="bg_eb">
                    <td class="r">
                        Comm for Member &nbsp;<u>Asian HDP, OU, OE</u>
                    </td>
                    <td class="l">
                        <asp:DropDownList ID="ddlslComHdp" runat="server" class="selectcomm">
                            <asp:ListItem Value='0.0025' Selected='true'>0.0025</asp:ListItem>
                            <asp:ListItem Value='0.002'>0.002</asp:ListItem>
                            <asp:ListItem Value='0.0015'>0.0015</asp:ListItem>
                            <asp:ListItem Value='0.001'>0.001</asp:ListItem>
                            <asp:ListItem Value='0.0005'>0.0005</asp:ListItem>
                            <asp:ListItem Value='0'>0</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="r">
                        Comm for Member &nbsp;<u>Other Bettypes</u>
                    </td>
                    <td class="l">
                        <asp:DropDownList ID="ddlslComOther" runat="server" class="selectcomm">
                            <asp:ListItem Value='0.01' Selected='true'>0.01</asp:ListItem>
                            <asp:ListItem Value='0.0095'>0.0095</asp:ListItem>
                            <asp:ListItem Value='0.009'>0.009</asp:ListItem>
                            <asp:ListItem Value='0.0085'>0.0085</asp:ListItem>
                            <asp:ListItem Value='0.008'>0.008</asp:ListItem>
                            <asp:ListItem Value='0.0075'>0.0075</asp:ListItem>
                            <asp:ListItem Value='0.007'>0.007</asp:ListItem>
                            <asp:ListItem Value='0.0065'>0.0065</asp:ListItem>
                            <asp:ListItem Value='0.006'>0.006</asp:ListItem>
                            <asp:ListItem Value='0.0055'>0.0055</asp:ListItem>
                            <asp:ListItem Value='0.005'>0.005</asp:ListItem>
                            <asp:ListItem Value='0.0045'>0.0045</asp:ListItem>
                            <asp:ListItem Value='0.004'>0.004</asp:ListItem>
                            <asp:ListItem Value='0.0035'>0.0035</asp:ListItem>
                            <asp:ListItem Value='0.003'>0.003</asp:ListItem>
                            <asp:ListItem Value='0.0025'>0.0025</asp:ListItem>
                            <asp:ListItem Value='0.002'>0.002</asp:ListItem>
                            <asp:ListItem Value='0.001'>0.001</asp:ListItem>
                            <asp:ListItem Value='0.0005'>0.0005</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr class="bg_eb">
                    <td class="r">
                        Comm for Agent &nbsp;<u>1x2</u>
                    </td>
                    <td class="l">
                        <asp:TextBox ID="txtDiscount1x2" runat="server" ReadOnly value="0.0025" Style="width: 70px;"></asp:TextBox>
                    </td>
                    <td class="r" colspan="2">
                    </td>
                </tr>
                <tr class="bg_eb">
                    <td class="r">
                        Comm for Member &nbsp;<u>1x2</u>
                    </td>
                    <td class="l">
                        <asp:DropDownList ID="ddlslcom1x2" runat="server" class="selectcomm">
                            <asp:ListItem Value='0.0025' Selected='true'>0.0025</asp:ListItem>
                            <asp:ListItem Value='0.002'>0.002</asp:ListItem>
                            <asp:ListItem Value='0.0015'>0.0015</asp:ListItem>
                            <asp:ListItem Value='0.001'>0.001</asp:ListItem>
                            <asp:ListItem Value='0.0005'>0.0005</asp:ListItem>
                            <asp:ListItem Value='0'>0</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="r" colspan="2">
                    </td>
                </tr>
            </table>
            <table class="tblRpt" width="100%" border="1">
                <tr class="RptHeader">
                    <td colspan="6">
                        Bet Setting
                    </td>
                </tr>
                <tr class="bg_eb">
                    <td class="c">
                        Min Bet
                        <asp:TextBox ID="txtMinBet" runat="server" value="5" onkeypress="return CheckDecNumber(event);"></asp:TextBox>
                        <span class="">>= 5</span>
                    </td>
                    <td class="c">
                        Max Bet
                        <asp:TextBox ID="txtMaxBet" runat="server" value="35,000" onkeypress="return CheckDecNumber(event);"></asp:TextBox>
                        <span class=""><= 35,000</span>
                    </td>
                    <td class="c">
                        Max Per Match
                        <asp:TextBox ID="txtMaxPerMatch" runat="server" onkeypress="return CheckDecNumber(event);"
                            value="200,000"></asp:TextBox>
                        <span class=""><= 200,000</span>
                    </td>
                </tr>
            </table>
            <table class="tblRpt" width="100%" border="1">
                <tr class="RptHeader">
                    <td colspan="4">
                        Position Taking
                    </td>
                </tr>
                <tr class="bg_eb">
                    <td width="10%">
                    </td>
                    <td class="l" width="40%">
                        Handicap, Over/Under, Odd/Even
                    </td>
                    <td class="l" width="30%">
                        1 X 2, Correct Score, Total Goal, Parlay
                    </td>
                    <td class="l" width="20%">
                        Outright
                    </td>
                </tr>
                <tr class="bg_eb">
                    <td class="r">
                        Dead ball
                    </td>
                    <td class="l">
                        <asp:DropDownList ID="ddlslPT" runat="server" class='selectcomm'>
                            <asp:ListItem Selected="True" Value="0.00"></asp:ListItem>
                            <asp:ListItem  Value="0.01"></asp:ListItem>
                            <asp:ListItem  Value="0.02"></asp:ListItem>
                            <asp:ListItem  Value="0.03"></asp:ListItem>
                            <asp:ListItem  Value="0.04"></asp:ListItem>
                            <asp:ListItem  Value="0.05"></asp:ListItem>
                            <asp:ListItem  Value="0.06"></asp:ListItem>
                        </asp:DropDownList>
                        <a class="imaLink img" href="javascript:ReducePT('ddlslPT',1)">
                            <img class="hand" hspace="1" id="btnReduce11" name="btnReduce1" src="../App_Themes/AgencyV2/Images/b_down.jpg" />
                        </a><a class="imaLink img" href="javascript:IncreasePT('ddlslPT',1)">
                            <img class="hand" hspace="1" id="btnIncrease11" name="btnIncrease1" src="../App_Themes/AgencyV2/Images/b_up.jpg" />
                        </a><a class="imaLink img" href="javascript:ReducePT('ddlslPT',10)">
                            <img class="hand" hspace="1" id="btnReduce101" name="btnReduce10" src="../App_Themes/AgencyV2/Images/b_sub.jpg" />
                        </a><a class="imaLink img" href="javascript:IncreasePT('ddlslPT',10)">
                            <img class="hand" hspace="1" id="btnIncrease101" name="btnIncrease10" src="../App_Themes/AgencyV2/Images/b_add.jpg" /></a>
                        <asp:CheckBox ID="chkCpyHdp" runat="server" onclick="CopyHandicap();" />
                        &nbsp;Copy From Handicap
                    </td>
                    <td class="l">
                        <asp:DropDownList ID="ddlslOtherPT" runat="server" class='selectcomm'>
                            <asp:ListItem Selected="True" Value="0.00"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="l">
                        <asp:DropDownList ID="ddlslOutrightPT" runat="server" class='selectcomm'>
                            <asp:ListItem Selected="True" Value="0.00"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr class="bg_eb">
                    <td class="r">
                        <span style="color: #FF6600;">Live!</span>
                    </td>
                    <td class="l">
                        <asp:DropDownList ID="ddlslLivePT" runat="server" class='selectcomm'>
                            <asp:ListItem Selected="True" Value="0.00"></asp:ListItem>
                        </asp:DropDownList>
                        <a class="imaLink img" href="javascript:ReducePT('slLivePT',1)">
                            <img class="hand" hspace="1" id="btnReduce1" name="btnReduce1" src="../App_Themes/AgencyV2/Images/b_down.jpg" /></a><a
                                class="imaLink img" href="javascript:IncreasePT('slLivePT',1)"><img class="hand"
                                    hspace="1" id="btnIncrease1" name="btnIncrease1" src="../App_Themes/AgencyV2/Images/b_up.jpg" /></a><a
                                        class="imaLink img" href="javascript:ReducePT('slLivePT',10)"><img class="hand" hspace="1"
                                            id="btnReduce10" name="btnReduce10" src="../App_Themes/AgencyV2/Images/b_sub.jpg" /></a><a
                                                class="imaLink img" href="javascript:IncreasePT('slLivePT',10)"><img class="hand"
                                                    hspace="1" id="btnIncrease10" name="btnIncrease10" src="../App_Themes/AgencyV2/Images/b_add.jpg" /></a>
                    </td>
                    <td colspan="2">
                    </td>
                </tr>
            </table>
        </div>
        <div style="margin-top: -7px; margin-bottom: -7px" class="warning">
            <ul>
                <li>The above setting is applied for all sports.</li>
                <li>In case you need to customize different settings for different sports, please use
                    the&nbsp;
            </ul>
        </div>
        <table cellspacing="0" cellpadding="0" align="left" border="0" id="tblBtn">
            <tr>
                <td class="l" valign="top">
                    <div class="b_add">
                        <li>
                            <asp:LinkButton ID="LinkAdd" runat="server" 
                                OnClientClick="return BtnOnClick();" onclick="LinkAdd_Click"><span>Update</span></asp:LinkButton>
                        </li>
                    </div>
                </td>
            </tr>
        </table>
        &nbsp;<input type="hidden" id="hdMinBet" name="hdMinBet" value="5" /><input type="hidden"
            id="hdMaxBet" name="hdMaxBet" value="35,000" /><input type="hidden" id="hdMaxPerMatch"
                name="hdMaxPerMatch" value="200,000" /><input type="hidden" id="hdMaxPerMatchMin"
                    name="hdMaxPerMatchMin" value="0" /><input type="hidden" id="hdMaxCredit" name="hdMaxCredit"
                        value="5" /><input type="hidden" id="hdDiscountcs" name="hdDiscountcs" value="{discountcs-value}" /><input
                            type="hidden" id="hdDiscountFC" name="hdDiscountFC" value="{DiscountFC-value}" /><input
                                type="hidden" id="hdukmeeting" name="hdukmeeting" value="{ukmeeting-value}" /><input
                                    type="hidden" id="hdothermeeting" name="hdothermeeting" value="{othermeeting-value}" /><input
                                        type="hidden" id="Hidden2" name="hdDiscountcs" value="{discountcs-value}" /><input
                                            type="hidden" id="hdGroup" name="hdGroup" value="a" /><input type="hidden" id="hdAllowedCurr"
                                                name="hdAllowedCurr" value="1" /><input type="hidden" id="hdDisabledHR" name="hdDisabledHR"
                                                    value="{hddisableHR-value}" /><input type="hidden" id="hdDisabledHRDownline" name="hdDisabledHRDownline"
                                                        value="{hdDisabledHRDownline-value}" /><input type="hidden" id="hdDisabledHR_Old"
                                                            name="hdDisabledHR_Old" value="{hddisableHR-value}" /><input type="hidden" id="hdDisabledHRDownline_Old"
                                                                name="hdDisabledHRDownline_Old" value="{hdDisabledHRDownline-value}" /><input type="hidden"
                                                                    id="hdDisabledFI" name="hdDisabledFI" value="{hddisableFI-value}" /><input type="hidden"
                                                                        id="hdDisabledFIDownline" name="hdDisabledFIDownline" value="{hddisableFIDownline-value}" /><input
                                                                            type="hidden" id="hdDisabledFI_Old" name="hdDisabledFI_Old" value="{hddisableFI-value}" /><input
                                                                                type="hidden" id="hdDisabledFIDownline_Old" name="hdDisabledFIDownline_Old" value="{hddisableFIDownline-value}" /><input
                                                                                    type="hidden" id="UplineSuspended" name="UplineSuspended" value="" /><input type="hidden"
                                                                                        id="201AminPT3" name="201AminPT3" value="{201AminPT2-value}" /><input type="hidden"
                                                                                            id="201AminPT2" name="201AminPT2" value="{201AminPT2-value}" /></div>
    <iframe id="InsertData" name="InsertData" class="hide" style="height: 0px; width: 0px;">
    </iframe>

    <script type="text/javascript" src="../Js/wz_tooltip/wz_tooltip.js"></script>

    <script type="text/javascript" src="../Js/wz_tooltip/tip_centerwindow.js"></script>

    <script type="text/javascript" src="../Js/wz_tooltip/tip_balloon.js"></script>

    
    </form>
    
    
</body>
</html>
