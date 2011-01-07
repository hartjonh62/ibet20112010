<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CreditBalance.aspx.cs" Inherits="MemberInfo_CreditBalance" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<title>Home</title>
<meta name="keywords" content="sportsbook, agency, agent, betting" />
<meta name="description" content="online betting sportsbook agency system" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<link href='../App_Themes/AgencyV2/common.css' type='text/css' rel='stylesheet' /><link href='../App_Themes/AgencyV2/main.css' type='text/css' rel='stylesheet' />
<script type='text/javascript' src='../Js/opt/Core.js?v=20091230' ></script>
<script type='text/javascript' src='../Js/Common.js?v=20091230' ></script>

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
    <table border="0" cellpadding="0" cellspacing="0" width="100%">
        <tr>
            <td>
                <div id="page_main">
                    <div id="header_main">
                        <a href="DownlineList.aspx">Agent List</a> |Credit/Balance&nbsp;&nbsp;&nbsp;&nbsp;<a
                            href="javascript:getPrint('tbl-container');"><img border="0" src='../App_Themes/AgencyV2/Images/printer1.gif'
                                alt='print' title='Print' /></a></div>
                    <div id="box_header" style="width: 100%">
                        <table class="l" cellpadding="0" cellspacing="0" border="0">
                            <tr>
                                <td id="tdfdatetext" style="padding-top: 6px" class="l">
                                    <span>&nbsp;User Name:</span>
                                </td>
                                <td id="tdfdatetext" style="padding-top: 6px" class="l">
                                    <input type="text" name="txtUserName" id="txtUserName" style="font-size: 8pt; font-weight: normal;"
                                        value="All" onkeypress="return KeyPress2(event);" onfocus="ClearAll()" onclick="ClearAll()" />
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
                                    <select style="width: 80px;" id="statusFilter" name="open" style="font-size: 8pt;
                                        font-weight: normal;">
                                        <option value="0">All</option>
                                        <option value="1" selected='selected'>Open</option>
                                        <option value="2">Suspended</option>
                                        <option value="3">Closed</option>
                                        <option value="4">Disabled</option>
                                    </select>
                                </td>
                                <td style="padding-top: 6px; padding-bottom: 6px;">
                                    <input id="dSubmit" type="button" value="Submit" class="btn" style="width: 55px;"
                                        style="width: 55px;" onclick="searchByUsername('CreditBalance.aspx','AgentList')"
                                        onmouseout="this.className='btn';" onmouseover="this.className='btnhover';" />
                                </td>
                                <td>
                                    <div id="loading" style="float: right" class="fl">
                                    </div>
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
                                    <tr bgcolor="#F6F8F9" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#F6F8F9'">
                                        <td class="w-order">
                                            1
                                        </td>
                                        <td class="c">
                                            Open
                                        </td>
                                        <td class="l">
                                            <a href="javascript:viewBal('MemberList', 2012586)">SMQQ01 </a>
                                        </td>
                                        <td class="l">
                                            &nbsp;
                                        </td>
                                        <td class="l">
                                            &nbsp;
                                        </td>
                                        <td>
                                            <a href="javascript:void('');" onclick="openTransfer('2012586','0','SMQQ01','AgentList');return false;">
                                                0</a>
                                        </td>
                                        <td>
                                            0
                                        </td>
                                        <td>
                                            0
                                        </td>
                                        <td>
                                            &nbsp;0
                                        </td>
                                        <td>
                                            0
                                        </td>
                                        <td>
                                            0
                                        </td>
                                        <td class="bl_time">
                                            &nbsp;12/18/2009 10:54:00 AM
                                        </td>
                                        <td class="bl_time">
                                            &nbsp;
                                        </td>
                                        <td class="l">
                                            <a href="javascript:viewBal('MemberList', 2012586)">SMQQ01 </a>
                                        </td>
                                    </tr>
                                    <tr bgcolor="#faf9ee" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#faf9ee'">
                                        <td class="w-order">
                                            2
                                        </td>
                                        <td class="c">
                                            Open
                                        </td>
                                        <td class="l">
                                            <a href="javascript:viewBal('MemberList', 2050492)">SMQQ02 </a>
                                        </td>
                                        <td class="l">
                                            &nbsp;
                                        </td>
                                        <td class="l">
                                            &nbsp;
                                        </td>
                                        <td>
                                            <a href="javascript:void('');" onclick="openTransfer('2050492','0','SMQQ02','AgentList');return false;">
                                                0</a>
                                        </td>
                                        <td>
                                            0
                                        </td>
                                        <td>
                                            0
                                        </td>
                                        <td>
                                            &nbsp;0
                                        </td>
                                        <td>
                                            0
                                        </td>
                                        <td>
                                            0
                                        </td>
                                        <td class="bl_time">
                                            &nbsp;01/03/2010 11:00:00 AM
                                        </td>
                                        <td class="bl_time">
                                            &nbsp;117.4.208.24
                                        </td>
                                        <td class="l">
                                            <a href="javascript:viewBal('MemberList', 2050492)">SMQQ02 </a>
                                        </td>
                                    </tr>
                                    <tr class="tr_paging">
                                        <td colspan="14" class="c" style="padding: 2px">
                                            <div class="pagination">
                                                <a onclick="jumpto('CreditBalance.aspx?custid=2012567&search=&username=All&status=1&total=1'); return false;"
                                                    href="#" style="color: #2673CE;">Page</a>
                                                    <span style="color: #2673CE;" id="currentpage">&nbsp;1:&nbsp;<strong>1</strong </span></div></td></tr></tbody></table></div></div>

                    <input type="hidden" id="rowcount" name="rowcount" value="2" /><input type="hidden"
                        id="isAgentSite" name="isAgentSite" value="0" /><input type="hidden" value="2012567"
                            name="hdcus" id="hdcus" /><input type="hidden" value="" name="hdsearch" id="hdsearch" /><input
                                type="hidden" value="1" name="hdtotalpages" id="hdtotalpages" /></div>
            </td>
        </tr>
    </table>
    <div id="page_menu" class="vbmenu_popup" style="width: 190px; display: none; border: solid 1px black;">
        <table cellspacing="0" cellpadding="0" border="0" style="width: 100%; height: 30px;">
            <tr style="vertical-align: middle;">
                <td style="white-space: nowrap;">
                    Go to Page:
                </td>
                <td>
                    <input type="text" size="4" maxlength="6" onkeypress="return KeyPress(event);" style="font-size: 11px;"
                        id="txtpage" name="txtpage" class="bginput" />
                </td>
                <td style="padding-bottom: 2px;">
                    <input type="button" onclick="return GotoPageNext('CreditBalance.aspx?custid=2012567&search=&username=All&status=1&total=1','AgentList');"
                        value="Go" id="pagenav_ibtn" class="btn" />
                </td>
            </tr>
        </table>
    </div>
</body>
</html>
