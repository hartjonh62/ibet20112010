<%@ Page Language="C#" AutoEventWireup="true"
    Inherits="Transfer_MultipleTransfer" Codebehind="MultipleTransfer.aspx.cs" %>

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

    <script type="text/javascript" src="../Js/opt/jx.js?v=20091230"></script>

    <script type="text/javascript" src="../Js/IBCWnd/IBCWnd.js?v=20091230"></script>

    <script type="text/javascript" src="../Js/Transfer/Transfer.js?v=20091230"></script>

    <script type="text/javascript" src="../Js/Paging.js?v=20091230"></script>

</head>
<body>
    <form id="form1" runat="server">
    <div id="page_main">
        <div id="header_main">
            <asp:Label ID="lblMultipleTransfer" runat="server" Text="Multiple Transfer"></asp:Label> &nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:getPrint('tbl-container');"><img
                border="0" src='../App_Themes/AgencyV2/Images/printer1.gif' alt='print' title='Print' /></a>
        </div>
        <table border="0" cellpadding="0" cellspacing="0" width="99%">
            <tr>
                <td>
                    <div id="box_header">
                        <table class="l" cellpadding="2" cellspacing="0" border="0">
                            <tr>
                                <td id="tdfdatetext" style="padding-top: 6px" class="l">
                                    <span>&nbsp;User Name:</span>
                                </td>
                                <td id="tdfdatetext" style="padding-top: 6px" class="l">
                                    &nbsp;<asp:TextBox ID="txtUserName" runat="server" Style="font-size: 8pt; font-weight: normal;"
                                        value="All" onkeypress="return KeyPress2(event);" onfocus="ClearAll()"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:CheckBox ID="chkAllYesBal" runat="server" Style="cursor: pointer" onclick="this.disabled=true; $('dSubmit').disabled=true; $('dSubmit').className='btn2'; searchByUsername('MultipleTransfer.aspx', 'memberlist', 2050492);" />
                                    <label for="chkAllYesBal" style="cursor: pointer">
                                        All yesterday balance</label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <span>&nbsp;Status:</span>
                                </td>
                                <td>
                                    &nbsp;<asp:DropDownList ID="ddlStatusFilter" runat="server" Style="width: 80px;" class="form_down"
                                        onchange="searchByUsername('MultipleTransfer.aspx', 'memberlist', 2050492);">
                                        <asp:ListItem Value="0">All</asp:ListItem>
                                        <asp:ListItem Selected="True" Value="1">Open</asp:ListItem>
                                        <asp:ListItem Value="2">Suspended</asp:ListItem>
                                        <asp:ListItem Value="3">Closed</asp:ListItem>
                                        <asp:ListItem Value="4">Disabled</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td style="padding-left: 6px">
                                    &nbsp;<asp:Button ID="btnSubmit" runat="server" Text="Submit" Style="width: 55px;"
                                        class="btn" onmouseout="this.className='btn';" onmouseover="this.className='btnhover';"
                                        OnClientClick="this.disabled=true; this.className='btn2'; $('chkAllYesBal').disabled=true;
                                         searchByUsername('MultipleTransfer.aspx', 'memberlist', 2050492);" />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3">
                                    <span class="warning">
                                        <ul>
                                            <li>You are allowed to transfer on Daily</li></ul>
                                    </span>
                                </td>
                            </tr>
                        </table>
                        <table border="0" align="center" cellpadding="0" cellspacing="0" width="100%" id="diverrmsg"
                            style="display: none;">
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
                                <td valign="top" id="spmsgerr" class="msgerr">
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
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div id="tbl-container">
                        <style type="text/css" media="print">
                            div.tbl-container
                            {
                                overflow: visible;
                            }
                            table > tbody
                            {
                                overflow: visible;
                            }
                            td
                            {
                                height: 14pt;
                            }
                            thead td
                            {
                                font-size: 11pt;
                            }
                            thead
                            {
                                display: table-header-group;
                            }
                            thead th, thead td
                            {
                                position: static;
                            }
                            thead tr
                            {
                                position: static;
                            }
                            table
                            {
                                border-collapse: collapse;
                                empty-cells: show;
                            }
                            table td
                            {
                                font-size: 9pt;
                                border-top: solid 1px slategray;
                                border-left: solid 1px slategray;
                            }
                            .RptSubTitle
                            {
                                background-color: #ffefde;
                            }
                            .c
                            {
                                text-align: center;
                            }
                            .r
                            {
                                text-align: right;
                            }
                            .l
                            {
                                text-align: left;
                            }
                            .RptHeader
                            {
                                color: #FFFFFF;
                                font-size: 12px;
                                text-align: center;
                                height: 22px;
                                font-weight: normal;
                            }
                            table#tbl-rpt
                            {
                                border: solid 1px black;
                            }
                            .RptHeader01
                            {
                                text-align: center;
                            }
                            a
                            {
                                color: #1e1eeb;
                                text-decoration: none;
                            }
                            .tr_paging
                            {
                                display: none;
                            }
                        </style>
                        <div id="boderRight">
                            <table class="tblRpt r nowrap" cellpadding="0" cellspacing="1" style="width: 100%;"
                                id="tbl-rpt">
                                <thead>
                                    <tr class="RptHeader">
                                        <td style="width: 3%;">
                                            #
                                        </td>
                                        <td style="width: 9%;">
                                            User Name
                                        </td>
                                        <td style="width: 9%;">
                                            Credit
                                        </td>
                                        <td style="width: 8%;">
                                            Outstanding
                                        </td>
                                        <td style="width: 9%;">
                                            Balance
                                        </td>
                                        <td style="width: 9%;">
                                            Yesterday Balance
                                        </td>
                                        <td style="width: 3%;">
                                            <asp:CheckBox ID="chkall" runat="server" onclick="CheckAll();" />
                                            <br />
                                            Yesterday
                                        </td>
                                        <td style="width: 8%;">
                                            First Name
                                        </td>
                                        <td style="width: 8%;">
                                            Last Name
                                        </td>
                                        <td style="width: 9%;">
                                            User Name
                                        </td>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr class="bg_white c">
                                        <td colspan="15" class="nobold">
                                            No information is available
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                </td>
            </tr>
        </table>
        <input type="hidden" id="errchooseitem" name="errchooseitem" value="You must choose at least one item to transfer" /><input
            type="hidden" id="wrntransfer" name="wrntransfer" value="Are you sure you want to transfer?" />
        <input type="hidden" value="0" name="hdtotalpages" id="hdtotalpages" /><input type="hidden"
            value="MultipleTransfer.aspx?status=1&username=All&custId=2050492&allYesBal=no&page=1&sitelist=memberlist"
            name="hdCurrentUrl" id="hdCurrentUrl" /><input type="hidden" value="Your account was closed so you're forced to logout. Please contact your upline for the assistance."
                name="hdConfirmClosedAcc" id="hdConfirmClosedAcc" /><input type="hidden" value="No permission for sub-account."
                    name="hdConfirmCloseSubdAcc" id="hdConfirmCloseSubdAcc" /></div>
    </form>
</body>
</html>
