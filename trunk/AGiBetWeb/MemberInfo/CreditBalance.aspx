<%@ Page Language="C#" AutoEventWireup="true" Inherits="MemberInfo_CreditBalance"
    CodeBehind="CreditBalance.aspx.cs" %>

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

    <script type="text/javascript" src="../Js/IBCWnd/IBCWnd.js?v=20091230"></script>

    <script type="text/javascript" src="../Js/MemberInfo/CreditBalance.js?v=20091230"></script>

    <script type="text/javascript" src="../Js/Paging.js?v=20091230"></script>

    <script type="text/javascript">
    function viewOutSt(custId, userName)
    {
        window.location = "../Report/OutstandingAgentDetail.aspx?custid=" + custId + "&username=" + userName + "&type=RunByDate_Mem" + '&ShowCasino=1' + '&ShowSB=1' + '&ShowHR=1' + '&ShowFI=1';
    }

    function viewBal(act, custId) {
        window.location = "CreditBalance.aspx?act=" + act + "&custid=" + custId;
    }
    
    //paging
    function NavigatePage(mypage, strNavigatePage, site) {
        NavigatePage2(mypage, strNavigatePage, "act", site);
    }
    
    function GotoPageNext(strNavigatePage, site) {
        GotoPageNext2(strNavigatePage, "act", site);
    }
    
    function searchByUsername(strNavigatePage, site) {
        var ctrlCondition = $('txtUserName');
        var conditionValue = "";
        if (ctrlCondition != null) {
            $('hdtotalpages').value = 0;
            conditionValue = ctrlCondition.value;
            $('hdsearch').value = (conditionValue.length > 0 ? 'yes' : '');
            var url = strNavigatePage + '?' + 'custid=' + $('hdcus').value;
            url = url + '&search=' + $('hdsearch').value;
            url = url + '&username=' + ($('hdsearch').value == 'yes' ? conditionValue : '');
            url = url + '&status=' + $('statusFilter').value;
            url = url + '&total=' + $('hdtotalpages').value;
            NavigatePage(1, url, site);
        }
        $('dSubmit').disabled = true;
        $('dSubmit').className = 'btn2';
    }
    </script>

</head>
<body>
    <form id="form1" runat="server">
    <table border="0" cellpadding="0" cellspacing="0" width="100%">
        <tr>
            <td>
                <div id="page_main">
                    <div id="header_main">
                        <asp:HyperLink ID="HyperLinkCustomer" runat="server" NavigateUrl="DownlineList.aspx">Customer List</asp:HyperLink>
                        <asp:Label ID="lblCreditBalance" runat="server" Text="|Credit/Balance"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:getPrint('tbl-container');"><img border="0"
                            src='../App_Themes/AgencyV2/Images/printer1.gif' alt='print' title='Print' /></a></div>
                    <div id="box_header" style="width: 100%">
                        <table class="l" cellpadding="0" cellspacing="0" border="0">
                            <tr>
                                <td id="tdfdatetext" style="padding-top: 6px" class="l">
                                    <span>&nbsp;User Name:</span>
                                </td>
                                <td id="tdfdatetext" style="padding-top: 6px" class="l">
                                    <asp:TextBox ID="txtUserName" runat="server" Style="font-size: 8pt; font-weight: normal;"
                                        value="All" onkeypress="return KeyPress2(event);" onfocus="ClearAll()" onclick="ClearAll()"></asp:TextBox>
                                </td>
                                <td style="padding-top: 6px">
                                </td>
                                <td style="padding-top: 6px">
                                </td>
                            </tr>
                            <tr>
                                <td style="padding-top: 6px; padding-bottom: 6px;">
                                    <span>&nbsp;Status:</span>
                                </td>
                                <td style="padding-top: 6px; padding-bottom: 6px;">
                                    <asp:DropDownList ID="ddlStatusFilter" Style="font-size: 8pt; font-weight: normal;
                                        width: 80px; width: 60px;" runat="server">
                                        <asp:ListItem Value="0">All</asp:ListItem>
                                        <asp:ListItem Value="1" Selected='selected'>Open</asp:ListItem>
                                        <asp:ListItem Value="2">Suspended</asp:ListItem>
                                        <asp:ListItem Value="3">Closed</asp:ListItem>
                                        <asp:ListItem Value="4">Disabled</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td style="padding-top: 6px; padding-bottom: 6px;">
                                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" class="btn" Style="width: 55px;"
                                        OnClientClick="searchByUsername('CreditBalance.aspx','')" onmouseout="this.className='btn';"
                                        onmouseover="this.className='btnhover';" />
                                </td>
                                <td>
                                    <div id="loading" style="float: right" class="fl">
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="4">
                                    <span class="warning">
                                        <ul>
                                            <li>You are allowed to transfer on Daily</li></ul>
                                    </span>
                                </td>
                            </tr>
                        </table>
                    </div>
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
                            <table id="tbl-rpt" class="tblRpt nowrap r" cellpadding="0" cellspacing="1" style="width: 100%;">
                                <thead>
                                    <tr>
                                        <td class="RptHeader">
                                            #
                                        </td>
                                        <td class="RptHeader">
                                            Status
                                        </td>
                                        <td class="RptHeader">
                                            User Name
                                        </td>
                                        <td class="RptHeader">
                                            First Name
                                        </td>
                                        <td class="RptHeader">
                                            Last Name
                                        </td>
                                        <td class="RptHeader">
                                            Credit
                                        </td>
                                        <td class="RptHeader">
                                            Balance
                                        </td>
                                        <td class="RptHeader">
                                            Yesterday Balance
                                        </td>
                                        <td class="RptHeader">
                                            Bet Credit
                                        </td>
                                        <td class="RptHeader">
                                            Outstanding
                                        </td>
                                        <td class="RptHeader">
                                            Member Turnover
                                        </td>
                                        <td class="RptHeader" style="width: 110px;">
                                            Last Login
                                        </td>
                                        <td class="RptHeader">
                                            Login IP
                                        </td>
                                        <td class="RptHeader">
                                            User Name
                                        </td>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr class="bg_white c">
                                        <td colspan="14" class="nobold">
                                            No information is available
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <input type="hidden" id="rowcount" name="rowcount" value="0" /><input type="hidden"
                        id="isAgentSite" name="isAgentSite" value="1" /><input type="hidden" value="2050492"
                            name="hdcus" id="hdcus" /><input type="hidden" value="" name="hdsearch" id="hdsearch" /><input
                                type="hidden" value="0" name="hdtotalpages" id="hdtotalpages" /></div>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
