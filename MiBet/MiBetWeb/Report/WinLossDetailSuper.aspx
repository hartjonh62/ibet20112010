﻿<%@ Page Language="C#" AutoEventWireup="true" Inherits="Report_WinLossDetailSuper" Codebehind="WinLossDetailSuper.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
                                            <link href="../Js/Calendar2/Skin/calendar-blue.css" media="all" rel="stylesheet"
                                                type="text/css" title="Blue" />
<title>Home</title>
<meta name="keywords" content="sportsbook, agency, agent, betting" />
<meta name="description" content="online betting sportsbook agency system" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<link href='../App_Themes/AgencyV2/common.css' type='text/css' rel='stylesheet' /><link href='../App_Themes/AgencyV2/main.css' type='text/css' rel='stylesheet' />
<script type='text/javascript' src='../Js/opt/Core.js?v=20091218' ></script>
<script type='text/javascript' src='../Js/Common.js?v=20091218' ></script>

<script type="text/javascript" src="../Js/excel.js?v=20091218"></script>

<script type="text/javascript" src="../Js/opt/jx.js?v=20091218"></script>
<script type="text/javascript" src="../Js/Report/ReportWinLoss.js?v=20091218"></script>
<script type="text/javascript">
    function SearchByDate() {
        SearchByDate2(searchPageUrl);
    }
    function SearchOneDay(value) {
        SearchOneDay2(searchPageUrl, value);
    }
    function doViewDownline(custid) //ViewDownLine
    {
        doViewDownlineDetail2(searchDLPageURL, custid);
    }
    
</script>

</head>
<body>
    <form id="frmmain" runat="server">
    <div id="page_main">
        <div id="header_main">
            <div class="divBoxRight">
                <input type="checkbox" id="chk_rpt_bold" checked='checked' onclick="boldTable(this.checked);" /><span
                    style="color: #999; text-transform: none">Bold</span>&nbsp;<input type="image" id="exporttoexcel"
                        name="exporttoexcel" alt="Export to Excel" nofocus="true" src="../App_Themes/AgencyV2/Images/excel.gif"
                        title="Export to Excel" class="hand" /></div>
            Master Win Loss Detail</div>
        <table border="0" cellpadding="0" cellspacing="0" widthreport>
            <tr>
                <td>
                    <div id="box_header">
                        <script type="text/javascript">                            function reset_date() { var dayNoReset = 0; var fdateId = 'fdate'; var tdateId = 'tdate'; var td = new Date(); var fd = new Date(td.getTime() - dayNoReset * 24 * 60 * 60 * 1000); var fdateIdObj = $(fdateId); fdateIdObj.value = (fd.getMonth() + 1) + "/" + fd.getDate() + "/" + fd.getFullYear(); fdateIdObj.value = (td.getMonth() + 1) + "/" + td.getDate() + "/" + td.getFullYear(); } function disableButton() { var dSubmit = $('dSubmit'); var dToday = $('dToday'); var dYesterday = $('dYesterday'); var btResultType = $('btResultType'); dSubmit.disabled = true; if (!hasClassName(dSubmit, 'hidden')) dSubmit.className = 'btn2'; dToday.disabled = true; if (!hasClassName(dToday, 'hidden')) dToday.className = 'btn2'; dYesterday.disabled = true; if (!hasClassName(dYesterday, 'hidden')) dYesterday.className = 'btn2'; if (btResultType) { btResultType.disabled = true; btResultType.className = 'btn2'; } }</script>
                        <span id="spDateTimeSearch">
                            <table cellpading="0" cellspacing="0" border="0">
                                <tr style="height: 32px;">
                                    <td id="tdfdatetext" style="padding-left: 6px;" class="l">
                                        <asp:Label ID="lblFrom" runat="server" Text="From:"></asp:Label>
&nbsp;</td>
                                    <td id="tdFromDateCal" class="l">
                                        <span id="spFromDateCal">
                                            <script src="../Js/Calendar2/calendar.js" type="text/javascript"></script>
                                            <script src="../Js/Calendar2/date.js" type="text/javascript"></script>
                                            <script src="../Js/Calendar2/Lang/calendar-E.js" type="text/javascript"></script>
                                            <script src="../Js/Calendar2/calendar-setup.js" type="text/javascript"></script>
                                            <link href="../Js/Calendar2/Skin/calendar-blue.css" media="all" rel="stylesheet"
                                                type="text/css" title="Blue" />
                                            <table cellpading="0" cellspacing="0" border="0">
                                                <tr>
                                                    <td>
                                                        <asp:TextBox ID="txtFDate0" class="date_no" ReadOnly="true" runat="server"  
                                                            size="13"></asp:TextBox>
                                                    </td>
                                                    <td>
                                                        <a href="#" class="imaLink">
                                                            <img alt="" id="fdate_tg" disabled title="Date selector" style="margin: 0px; cursor: pointer;"
                                                                src="../App_Themes/AgencyV2/Images/cal.gif" /></a>
                                                    </td>
                                                </tr>
                                            </table>
                                            <script type="text/javascript">                                                var ctrInput = "1/3/2010"; Calendar.setup({ inputField: "fdate", ifFormat: "%m/%d/%Y", showsTime: false, button: "fdate_tg", singleClick: true, showOthers: true, step: 1 });</script>
                                        </span>
                                    </td>
                                    <td id="tdtdatetext" class="l">
                                        &nbsp;&nbsp; 
                                        <asp:Label ID="lblTo" runat="server" Text="To: "></asp:Label>
                                    </td>
                                    <td id="tdToDateCal" class="l">
                                        <span id="spToDateCal">
                                            <table cellpading="0" cellspacing="0" border="0">
                                                <tr>
                                                    <td>
                                                        
                                                        <asp:TextBox ID="txtTDate0" ReadOnly="true" runat="server" class="date_no" 
                                                            size="13"></asp:TextBox>
                                                    </td>
                                                    <td>
                                                        <a href="#" class="imaLink">
                                                            <img alt="" id="tdate_tg" disabled title="Date selector" style="margin: 0px; cursor: pointer;"
                                                                src="../App_Themes/AgencyV2/Images/cal.gif" /></a>
                                                    </td>
                                                </tr>
                                            </table>
                                            <script type="text/javascript">                                                var ctrInput = "1/3/2010"; Calendar.setup({ inputField: "txtTDate", ifFormat: "%m/%d/%Y", showsTime: false, button: "tdate_tg", singleClick: true, showOthers: true, step: 1 });</script>
                                        </span>
                                    </td>
                                    <td class="l">
                                        &nbsp;&nbsp;
                                        <asp:Button ID="btnSubmit" OnClientClick="disableButton(); SearchByDate();" runat="server" Text="Submit" class="btn" style="width: 55px"/>
                                            &nbsp;
                                            <asp:Button ID="btnToday" OnClientClick="disableButton(); SearchOneDay(0);" runat="server" class=" btn" style="width: 80px"  />
                                                 &nbsp;
                                                 <asp:Button ID="btnYesterday" OnClientClick="disableButton(); SearchOneDay(-1);" runat="server" class=" btn" style="width: 80px"  />
                                                 
                                    </td>
                                    <td valign="top">
                                        <div id="loading" class="myloading" style="float: left;">
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </span>
                        <input type="checkbox" id="chk_All" onclick="CheckAll()" checked='checked' /><label
                            for="chk_All">All</label>&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" id="chk_SB"
                                onclick="IsCheck()" checked='checked' /><label for="chk_SB">SB</label>&nbsp;&nbsp;&nbsp;&nbsp;<!--<input type="checkbox" id="chk_P2P" style="visibility: hidden" onclick="IsCheck()" />--><input
                                    type="checkbox" id="chk_HR" onclick="IsCheck()" checked='checked' /><label for="chk_HR">Horse</label>&nbsp;&nbsp;&nbsp;&nbsp;<input
                                        type="checkbox" id="chk_FI" onclick="IsCheck()" checked='checked' /><label for="chk_FI">Finance</label><style
                                            type="text/css">
                                                                                                                                                   li margin-bottom:3px;margin-top:3px;</style><table border="0" cellpadding="0"
                                                cellspacing="0">
                                                <tr>
                                                    <td class="l">
                                                        <div id="dvMsg" class="warning" style="margin-bottom: 5px; margin-top: 10px;">
                                                            <ul>
                                                                <li><font color="#EB6003">The gross commission formula has been changed, with effect
                                                                    from December 1st 2009.<br>
                                                                    Now, gross commission = (your commission percentage) * turnover (excluding Draw
                                                                    tickets).</font></li><li><span id="spMsg">You can see the report data up to 3 months.
                                                                        For more historic data, please click to <a href='#' id='spViewHistory' onclick='ViewHistory(4);'>
                                                                            View History Report</a></span></li></ul>
                                                        </div>
                                                    </td>
                                                </tr>
                                                                                                                                                   </table>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div id="divContent">
                        <table class="tblRpt nowrap boldrow r" width="100%" style="min-width: 600px;" border="0"
                            cellpadding="0" cellspacing="1" id="tbl-rpt">
                            <tr id="rowTitle" class="RptTitle">
                                <td colspan="20" id="spTitle">
                                    Master Win Loss Detail  
                <asp:Label ID="lblFDate" runat="server"></asp:Label>
&nbsp;--&gt;
                <asp:Label ID="lblTDate" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr class="RptHeader">
                                <td rowspan="2">
                                    User Name
                                </td>
                                <td rowspan="2">
                                    Turnover
                                </td>
                                <td rowspan="2">
                                    Gross Comm
                                </td>
                                <td colspan="3">
                                    Member
                                </td>
                                <td colspan="3">
                                    Agent
                                </td>
                                <td colspan="3">
                                    Master
                                </td>
                                <td colspan="3">
                                    Super
                                </td>
                                <td rowspan="2">
                                    Company
                                </td>
                            </tr>
                            <tr class="RptHeader02">
                                <td>
                                    Win/Loss
                                </td>
                                <td>
                                    Comm
                                </td>
                                <td>
                                    Total
                                </td>
                                <td>
                                    Win/Loss
                                </td>
                                <td>
                                    Comm
                                </td>
                                <td>
                                    Total
                                </td>
                                <td>
                                    Win/Loss
                                </td>
                                <td>
                                    Comm
                                </td>
                                <td>
                                    Total
                                </td>
                                <td>
                                    Win/Loss
                                </td>
                                <td>
                                    Comm
                                </td>
                                <td>
                                    Total
                                </td>
                            </tr>
                            <tr bgcolor="#faf9ee" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#faf9ee'">
                                <td class="l n">
                                    <span onclick="doViewDownline('1121328');" class='link1'>SM01</span>
                                </td>
                                <td>
                                    1,179.00
                                </td>
                                <td>
                                    1.43
                                </td>
                                <td>
                                    139.71
                                </td>
                                <td>
                                    0.78
                                </td>
                                <td class="b">
                                    140.49
                                </td>
                                <td class="altercol">
                                    0.00
                                </td>
                                <td class="altercol">
                                    0.66
                                </td>
                                <td class="altercol b">
                                    0.66
                                </td>
                                <td>
                                    -90.81
                                </td>
                                <td>
                                    -0.93
                                </td>
                                <td class="b">
                                    -91.74
                                </td>
                                <td class="altercol">
                                    -6.99
                                </td>
                                <td class="altercol">
                                    -0.07
                                </td>
                                <td class="altercol b">
                                    -7.06
                                </td>
                                <td>
                                    -42.34
                                </td>
                            </tr>
                            <tr bgcolor="#F6F8F9" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#F6F8F9'">
                                <td class="l n">
                                    <span onclick="doViewDownline('1122034');" class='link1'>SM02</span>
                                </td>
                                <td>
                                    150.00
                                </td>
                                <td>
                                    0.30
                                </td>
                                <td>
                                    -22.90
                                </td>
                                <td>
                                    0.00
                                </td>
                                <td class="b">
                                    -22.90
                                </td>
                                <td class="altercol">
                                    0.00
                                </td>
                                <td class="altercol">
                                    0.30
                                </td>
                                <td class="altercol b">
                                    0.30
                                </td>
                                <td>
                                    14.89
                                </td>
                                <td>
                                    -0.19
                                </td>
                                <td class="b">
                                    14.69
                                </td>
                                <td class="altercol">
                                    1.15
                                </td>
                                <td class="altercol">
                                    -0.02
                                </td>
                                <td class="altercol b">
                                    1.13
                                </td>
                                <td>
                                    6.78
                                </td>
                            </tr>
                            <tr bgcolor="#faf9ee" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#faf9ee'">
                                <td class="l n">
                                    <span onclick="doViewDownline('1128655');" class='link1'>SM04</span>
                                </td>
                                <td>
                                    38,255.00
                                </td>
                                <td>
                                    82.70
                                </td>
                                <td>
                                    1,250.34
                                </td>
                                <td>
                                    15.88
                                </td>
                                <td class="b">
                                    1,266.21
                                </td>
                                <td class="altercol">
                                    0.00
                                </td>
                                <td class="altercol">
                                    66.73
                                </td>
                                <td class="altercol b">
                                    66.73
                                </td>
                                <td>
                                    -812.72
                                </td>
                                <td>
                                    -53.66
                                </td>
                                <td class="b">
                                    -866.38
                                </td>
                                <td class="altercol">
                                    -62.52
                                </td>
                                <td class="altercol">
                                    -4.14
                                </td>
                                <td class="altercol b">
                                    -66.66
                                </td>
                                <td>
                                    -399.91
                                </td>
                            </tr>
                            <tr bgcolor="#F6F8F9" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#F6F8F9'">
                                <td class="l n">
                                    <span onclick="doViewDownline('1131515');" class='link1'>SM05</span>
                                </td>
                                <td>
                                    60,960.00
                                </td>
                                <td>
                                    95.20
                                </td>
                                <td>
                                    -46.43
                                </td>
                                <td>
                                    0.00
                                </td>
                                <td class="b">
                                    -46.43
                                </td>
                                <td class="altercol">
                                    0.00
                                </td>
                                <td class="altercol">
                                    84.10
                                </td>
                                <td class="altercol b">
                                    84.10
                                </td>
                                <td>
                                    30.18
                                </td>
                                <td>
                                    -50.77
                                </td>
                                <td class="b">
                                    -20.59
                                </td>
                                <td class="altercol">
                                    2.32
                                </td>
                                <td class="altercol">
                                    -4.77
                                </td>
                                <td class="altercol b">
                                    -2.44
                                </td>
                                <td>
                                    -14.63
                                </td>
                            </tr>
                            <tr bgcolor="#faf9ee" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#faf9ee'">
                                <td class="l n">
                                    <span onclick="doViewDownline('1131805');" class='link1'>SM06</span>
                                </td>
                                <td>
                                    2,093.00
                                </td>
                                <td>
                                    4.48
                                </td>
                                <td>
                                    42.39
                                </td>
                                <td>
                                    1.80
                                </td>
                                <td class="b">
                                    44.18
                                </td>
                                <td class="altercol">
                                    0.00
                                </td>
                                <td class="altercol">
                                    2.50
                                </td>
                                <td class="altercol b">
                                    2.50
                                </td>
                                <td>
                                    -27.55
                                </td>
                                <td>
                                    -2.73
                                </td>
                                <td class="b">
                                    -30.28
                                </td>
                                <td class="altercol">
                                    -2.12
                                </td>
                                <td class="altercol">
                                    -0.22
                                </td>
                                <td class="altercol b">
                                    -2.34
                                </td>
                                <td>
                                    -14.06
                                </td>
                            </tr>
                            <tr bgcolor="#F6F8F9" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#F6F8F9'">
                                <td class="l n">
                                    <span onclick="doViewDownline('1138848');" class='link1'>SM1A</span>
                                </td>
                                <td>
                                    2,968.00
                                </td>
                                <td>
                                    5.78
                                </td>
                                <td>
                                    544.83
                                </td>
                                <td>
                                    0.00
                                </td>
                                <td class="b">
                                    544.83
                                </td>
                                <td class="altercol">
                                    0.00
                                </td>
                                <td class="altercol">
                                    5.77
                                </td>
                                <td class="altercol b">
                                    5.77
                                </td>
                                <td>
                                    -354.14
                                </td>
                                <td>
                                    -3.75
                                </td>
                                <td class="b">
                                    -357.89
                                </td>
                                <td class="altercol">
                                    -27.24
                                </td>
                                <td class="altercol">
                                    -0.29
                                </td>
                                <td class="altercol b">
                                    -27.53
                                </td>
                                <td>
                                    -165.18
                                </td>
                            </tr>
                            <tr bgcolor="#faf9ee" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#faf9ee'">
                                <td class="l n">
                                    <span onclick="doViewDownline('1147110');" class='link1'>SM3A</span>
                                </td>
                                <td>
                                    31,093.00
                                </td>
                                <td>
                                    63.38
                                </td>
                                <td>
                                    6,921.21
                                </td>
                                <td>
                                    0.00
                                </td>
                                <td class="b">
                                    6,921.21
                                </td>
                                <td class="altercol">
                                    0.00
                                </td>
                                <td class="altercol">
                                    63.38
                                </td>
                                <td class="altercol b">
                                    63.38
                                </td>
                                <td>
                                    -4,498.78
                                </td>
                                <td>
                                    -41.20
                                </td>
                                <td class="b">
                                    -4,539.98
                                </td>
                                <td class="altercol">
                                    -346.06
                                </td>
                                <td class="altercol">
                                    -3.17
                                </td>
                                <td class="altercol b">
                                    -349.23
                                </td>
                                <td>
                                    -2,095.38
                                </td>
                            </tr>
                            <tr bgcolor="#F6F8F9" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#F6F8F9'">
                                <td class="l n">
                                    <span onclick="doViewDownline('1831943');" class='link1'>SM40</span>
                                </td>
                                <td>
                                    3,201.00
                                </td>
                                <td>
                                    6.69
                                </td>
                                <td>
                                    88.02
                                </td>
                                <td>
                                    2.02
                                </td>
                                <td class="b">
                                    90.04
                                </td>
                                <td class="altercol">
                                    0.00
                                </td>
                                <td class="altercol">
                                    4.56
                                </td>
                                <td class="altercol b">
                                    4.56
                                </td>
                                <td>
                                    -57.21
                                </td>
                                <td>
                                    -4.24
                                </td>
                                <td class="b">
                                    -61.45
                                </td>
                                <td class="altercol">
                                    -4.40
                                </td>
                                <td class="altercol">
                                    -0.34
                                </td>
                                <td class="altercol b">
                                    -4.74
                                </td>
                                <td>
                                    -28.41
                                </td>
                            </tr>
                            <tr bgcolor="#faf9ee" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#faf9ee'">
                                <td class="l n">
                                    <span onclick="doViewDownline('1258286');" class='link1'>SM5B</span>
                                </td>
                                <td>
                                    15,100.00
                                </td>
                                <td>
                                    29.03
                                </td>
                                <td>
                                    1,277.24
                                </td>
                                <td>
                                    0.00
                                </td>
                                <td class="b">
                                    1,277.24
                                </td>
                                <td class="altercol">
                                    0.00
                                </td>
                                <td class="altercol">
                                    0.00
                                </td>
                                <td class="altercol b">
                                    0.00
                                </td>
                                <td>
                                    -830.21
                                </td>
                                <td>
                                    10.17
                                </td>
                                <td class="b">
                                    -820.04
                                </td>
                                <td class="altercol">
                                    -63.86
                                </td>
                                <td class="altercol">
                                    -1.45
                                </td>
                                <td class="altercol b">
                                    -65.32
                                </td>
                                <td>
                                    -391.88
                                </td>
                            </tr>
                            <tr bgcolor="#F6F8F9" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#F6F8F9'">
                                <td class="l n">
                                    <span onclick="doViewDownline('1157518');" class='link1'>SM6A</span>
                                </td>
                                <td>
                                    14,596.00
                                </td>
                                <td>
                                    31.14
                                </td>
                                <td>
                                    383.44
                                </td>
                                <td>
                                    0.73
                                </td>
                                <td class="b">
                                    384.16
                                </td>
                                <td class="altercol">
                                    0.00
                                </td>
                                <td class="altercol">
                                    30.41
                                </td>
                                <td class="altercol b">
                                    30.41
                                </td>
                                <td>
                                    -249.23
                                </td>
                                <td>
                                    -20.23
                                </td>
                                <td class="b">
                                    -269.47
                                </td>
                                <td class="altercol">
                                    -19.17
                                </td>
                                <td class="altercol">
                                    -1.56
                                </td>
                                <td class="altercol b">
                                    -20.73
                                </td>
                                <td>
                                    -124.37
                                </td>
                            </tr>
                            <tr bgcolor="#faf9ee" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#faf9ee'">
                                <td class="l n">
                                    <span onclick="doViewDownline('1159846');" class='link1'>SM9A</span>
                                </td>
                                <td>
                                    35,980.00
                                </td>
                                <td>
                                    70.16
                                </td>
                                <td>
                                    5,488.33
                                </td>
                                <td>
                                    2.31
                                </td>
                                <td class="b">
                                    5,490.64
                                </td>
                                <td class="altercol">
                                    0.00
                                </td>
                                <td class="altercol">
                                    67.84
                                </td>
                                <td class="altercol b">
                                    67.84
                                </td>
                                <td>
                                    -3,567.41
                                </td>
                                <td>
                                    -45.59
                                </td>
                                <td class="b">
                                    -3,613.00
                                </td>
                                <td class="altercol">
                                    -274.42
                                </td>
                                <td class="altercol">
                                    -3.51
                                </td>
                                <td class="altercol b">
                                    -277.93
                                </td>
                                <td>
                                    -1,667.55
                                </td>
                            </tr>
                            <tr bgcolor="#F6F8F9" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#F6F8F9'">
                                <td class="l n">
                                    <span onclick="doViewDownline('1978456');" class='link1'>SMB1</span>
                                </td>
                                <td>
                                    15,024.00
                                </td>
                                <td>
                                    34.00
                                </td>
                                <td>
                                    -1,558.95
                                </td>
                                <td>
                                    33.12
                                </td>
                                <td class="b">
                                    -1,525.83
                                </td>
                                <td class="altercol">
                                    0.00
                                </td>
                                <td class="altercol">
                                    0.73
                                </td>
                                <td class="altercol b">
                                    0.73
                                </td>
                                <td>
                                    0.00
                                </td>
                                <td>
                                    0.15
                                </td>
                                <td class="b">
                                    0.15
                                </td>
                                <td class="altercol">
                                    1,091.27
                                </td>
                                <td class="altercol">
                                    -23.79
                                </td>
                                <td class="altercol b">
                                    1,067.47
                                </td>
                                <td>
                                    457.48
                                </td>
                            </tr>
                            <tr bgcolor="#faf9ee" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#faf9ee'">
                                <td class="l n">
                                    <span onclick="doViewDownline('1514554');" class='link1'>SMM1</span>
                                </td>
                                <td>
                                    1,502.00
                                </td>
                                <td>
                                    3.02
                                </td>
                                <td>
                                    -158.95
                                </td>
                                <td>
                                    0.00
                                </td>
                                <td class="b">
                                    -158.95
                                </td>
                                <td class="altercol">
                                    0.00
                                </td>
                                <td class="altercol">
                                    0.00
                                </td>
                                <td class="altercol b">
                                    0.00
                                </td>
                                <td>
                                    103.32
                                </td>
                                <td>
                                    1.06
                                </td>
                                <td class="b">
                                    104.38
                                </td>
                                <td class="altercol">
                                    7.95
                                </td>
                                <td class="altercol">
                                    -0.15
                                </td>
                                <td class="altercol b">
                                    7.80
                                </td>
                                <td>
                                    46.78
                                </td>
                            </tr>
                            <tr bgcolor="#F6F8F9" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#F6F8F9'">
                                <td class="l n">
                                    <span onclick="doViewDownline('1514767');" class='link1'>SMM2</span>
                                </td>
                                <td>
                                    10,559.00
                                </td>
                                <td>
                                    21.70
                                </td>
                                <td>
                                    684.16
                                </td>
                                <td>
                                    0.00
                                </td>
                                <td class="b">
                                    684.16
                                </td>
                                <td class="altercol">
                                    0.00
                                </td>
                                <td class="altercol">
                                    21.69
                                </td>
                                <td class="altercol b">
                                    21.69
                                </td>
                                <td>
                                    -444.70
                                </td>
                                <td>
                                    -14.10
                                </td>
                                <td class="b">
                                    -458.80
                                </td>
                                <td class="altercol">
                                    -34.21
                                </td>
                                <td class="altercol">
                                    -1.09
                                </td>
                                <td class="altercol b">
                                    -35.29
                                </td>
                                <td>
                                    -211.76
                                </td>
                            </tr>
                            <tr bgcolor="#faf9ee" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#faf9ee'">
                                <td class="l n">
                                    <span onclick="doViewDownline('1530861');" class='link1'>SMM3</span>
                                </td>
                                <td>
                                    39,001.00
                                </td>
                                <td>
                                    62.02
                                </td>
                                <td>
                                    -5,840.18
                                </td>
                                <td>
                                    0.63
                                </td>
                                <td class="b">
                                    -5,839.56
                                </td>
                                <td class="altercol">
                                    0.00
                                </td>
                                <td class="altercol">
                                    61.38
                                </td>
                                <td class="altercol b">
                                    61.38
                                </td>
                                <td>
                                    3,796.12
                                </td>
                                <td>
                                    -40.30
                                </td>
                                <td class="b">
                                    3,755.82
                                </td>
                                <td class="altercol">
                                    292.01
                                </td>
                                <td class="altercol">
                                    -3.10
                                </td>
                                <td class="altercol b">
                                    288.91
                                </td>
                                <td>
                                    1,733.44
                                </td>
                            </tr>
                            <tr bgcolor="#F6F8F9" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#F6F8F9'">
                                <td class="l n">
                                    <span onclick="doViewDownline('1531632');" class='link1'>SMM4</span>
                                </td>
                                <td>
                                    4,963.00
                                </td>
                                <td>
                                    8.09
                                </td>
                                <td>
                                    218.12
                                </td>
                                <td>
                                    0.00
                                </td>
                                <td class="b">
                                    218.12
                                </td>
                                <td class="altercol">
                                    0.00
                                </td>
                                <td class="altercol">
                                    8.09
                                </td>
                                <td class="altercol b">
                                    8.09
                                </td>
                                <td>
                                    -141.78
                                </td>
                                <td>
                                    -5.26
                                </td>
                                <td class="b">
                                    -147.04
                                </td>
                                <td class="altercol">
                                    -10.91
                                </td>
                                <td class="altercol">
                                    -0.40
                                </td>
                                <td class="altercol b">
                                    -11.31
                                </td>
                                <td>
                                    -67.86
                                </td>
                            </tr>
                            <tr bgcolor="#faf9ee" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#faf9ee'">
                                <td class="l n">
                                    <span onclick="doViewDownline('1531635');" class='link1'>SMM6</span>
                                </td>
                                <td>
                                    3,635.00
                                </td>
                                <td>
                                    8.64
                                </td>
                                <td>
                                    -1,933.01
                                </td>
                                <td>
                                    0.00
                                </td>
                                <td class="b">
                                    -1,933.01
                                </td>
                                <td class="altercol">
                                    0.00
                                </td>
                                <td class="altercol">
                                    8.64
                                </td>
                                <td class="altercol b">
                                    8.64
                                </td>
                                <td>
                                    1,256.46
                                </td>
                                <td>
                                    -5.61
                                </td>
                                <td class="b">
                                    1,250.84
                                </td>
                                <td class="altercol">
                                    96.65
                                </td>
                                <td class="altercol">
                                    -0.43
                                </td>
                                <td class="altercol b">
                                    96.22
                                </td>
                                <td>
                                    577.31
                                </td>
                            </tr>
                            <tr bgcolor="#F6F8F9" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#F6F8F9'">
                                <td class="l n">
                                    <span onclick="doViewDownline('1531636');" class='link1'>SMM7</span>
                                </td>
                                <td>
                                    30,415.00
                                </td>
                                <td>
                                    63.40
                                </td>
                                <td>
                                    -2,608.76
                                </td>
                                <td>
                                    0.00
                                </td>
                                <td class="b">
                                    -2,608.76
                                </td>
                                <td class="altercol">
                                    0.00
                                </td>
                                <td class="altercol">
                                    63.40
                                </td>
                                <td class="altercol b">
                                    63.40
                                </td>
                                <td>
                                    1,695.69
                                </td>
                                <td>
                                    -41.20
                                </td>
                                <td class="b">
                                    1,654.49
                                </td>
                                <td class="altercol">
                                    130.44
                                </td>
                                <td class="altercol">
                                    -3.17
                                </td>
                                <td class="altercol b">
                                    127.27
                                </td>
                                <td>
                                    763.60
                                </td>
                            </tr>
                            <tr bgcolor="#faf9ee" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#faf9ee'">
                                <td class="l n">
                                    <span onclick="doViewDownline('1531639');" class='link1'>SMM8</span>
                                </td>
                                <td>
                                    7,972.00
                                </td>
                                <td>
                                    16.76
                                </td>
                                <td>
                                    870.21
                                </td>
                                <td>
                                    0.00
                                </td>
                                <td class="b">
                                    870.21
                                </td>
                                <td class="altercol">
                                    0.00
                                </td>
                                <td class="altercol">
                                    16.76
                                </td>
                                <td class="altercol b">
                                    16.76
                                </td>
                                <td>
                                    -565.64
                                </td>
                                <td>
                                    -10.89
                                </td>
                                <td class="b">
                                    -576.53
                                </td>
                                <td class="altercol">
                                    -43.51
                                </td>
                                <td class="altercol">
                                    -0.84
                                </td>
                                <td class="altercol b">
                                    -44.35
                                </td>
                                <td>
                                    -266.09
                                </td>
                            </tr>
                            <tr bgcolor="#F6F8F9" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#F6F8F9'">
                                <td class="l n">
                                    <span onclick="doViewDownline('1560189');" class='link1'>SMO2</span>
                                </td>
                                <td>
                                    21,606.00
                                </td>
                                <td>
                                    44.21
                                </td>
                                <td>
                                    1,170.40
                                </td>
                                <td>
                                    17.71
                                </td>
                                <td class="b">
                                    1,188.11
                                </td>
                                <td class="altercol">
                                    0.00
                                </td>
                                <td class="altercol">
                                    26.30
                                </td>
                                <td class="altercol b">
                                    26.30
                                </td>
                                <td>
                                    -760.76
                                </td>
                                <td>
                                    -28.54
                                </td>
                                <td class="b">
                                    -789.30
                                </td>
                                <td class="altercol">
                                    -58.52
                                </td>
                                <td class="altercol">
                                    -2.21
                                </td>
                                <td class="altercol b">
                                    -60.73
                                </td>
                                <td>
                                    -364.39
                                </td>
                            </tr>
                            <tr bgcolor="#faf9ee" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#faf9ee'">
                                <td class="l n">
                                    <span onclick="doViewDownline('1599275');" class='link1'>SMO5</span>
                                </td>
                                <td>
                                    11,709.00
                                </td>
                                <td>
                                    23.55
                                </td>
                                <td>
                                    -760.18
                                </td>
                                <td>
                                    23.27
                                </td>
                                <td class="b">
                                    -736.90
                                </td>
                                <td class="altercol">
                                    0.00
                                </td>
                                <td class="altercol">
                                    0.00
                                </td>
                                <td class="altercol b">
                                    0.00
                                </td>
                                <td>
                                    494.11
                                </td>
                                <td>
                                    -15.03
                                </td>
                                <td class="b">
                                    479.09
                                </td>
                                <td class="altercol">
                                    38.01
                                </td>
                                <td class="altercol">
                                    -1.18
                                </td>
                                <td class="altercol b">
                                    36.83
                                </td>
                                <td>
                                    220.99
                                </td>
                            </tr>
                            <tr bgcolor="#F6F8F9" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#F6F8F9'">
                                <td class="l n">
                                    <span onclick="doViewDownline('1605766');" class='link1'>SMO7</span>
                                </td>
                                <td>
                                    9,216.00
                                </td>
                                <td>
                                    15.43
                                </td>
                                <td>
                                    -478.73
                                </td>
                                <td>
                                    0.10
                                </td>
                                <td class="b">
                                    -478.63
                                </td>
                                <td class="altercol">
                                    0.00
                                </td>
                                <td class="altercol">
                                    15.32
                                </td>
                                <td class="altercol b">
                                    15.32
                                </td>
                                <td>
                                    311.17
                                </td>
                                <td>
                                    -10.02
                                </td>
                                <td class="b">
                                    301.16
                                </td>
                                <td class="altercol">
                                    23.94
                                </td>
                                <td class="altercol">
                                    -0.77
                                </td>
                                <td class="altercol b">
                                    23.16
                                </td>
                                <td>
                                    138.99
                                </td>
                            </tr>
                            <tr bgcolor="#faf9ee" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#faf9ee'">
                                <td class="l n">
                                    <span onclick="doViewDownline('1607202');" class='link1'>SMO8</span>
                                </td>
                                <td>
                                    13,454.00
                                </td>
                                <td>
                                    28.91
                                </td>
                                <td>
                                    -4.31
                                </td>
                                <td>
                                    0.00
                                </td>
                                <td class="b">
                                    -4.31
                                </td>
                                <td class="altercol">
                                    0.00
                                </td>
                                <td class="altercol">
                                    28.91
                                </td>
                                <td class="altercol b">
                                    28.91
                                </td>
                                <td>
                                    2.80
                                </td>
                                <td>
                                    -18.78
                                </td>
                                <td class="b">
                                    -15.98
                                </td>
                                <td class="altercol">
                                    0.22
                                </td>
                                <td class="altercol">
                                    -1.45
                                </td>
                                <td class="altercol b">
                                    -1.23
                                </td>
                                <td>
                                    -7.38
                                </td>
                            </tr>
                            <tr bgcolor="#F6F8F9" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#F6F8F9'">
                                <td class="l n">
                                    <span onclick="doViewDownline('1724794');" class='link1'>SMP4</span>
                                </td>
                                <td>
                                    47,076.00
                                </td>
                                <td>
                                    101.70
                                </td>
                                <td>
                                    -374.11
                                </td>
                                <td>
                                    58.59
                                </td>
                                <td class="b">
                                    -315.51
                                </td>
                                <td class="altercol">
                                    0.00
                                </td>
                                <td class="altercol">
                                    43.11
                                </td>
                                <td class="altercol b">
                                    43.11
                                </td>
                                <td>
                                    243.17
                                </td>
                                <td>
                                    -66.10
                                </td>
                                <td class="b">
                                    177.07
                                </td>
                                <td class="altercol">
                                    18.71
                                </td>
                                <td class="altercol">
                                    -5.09
                                </td>
                                <td class="altercol b">
                                    13.62
                                </td>
                                <td>
                                    81.72
                                </td>
                            </tr>
                            <tr bgcolor="#faf9ee" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#faf9ee'">
                                <td class="l n">
                                    <span onclick="doViewDownline('1875152');" class='link1'>SMP6</span>
                                </td>
                                <td>
                                    46,170.00
                                </td>
                                <td>
                                    97.11
                                </td>
                                <td>
                                    -1,983.98
                                </td>
                                <td>
                                    75.66
                                </td>
                                <td class="b">
                                    -1,908.32
                                </td>
                                <td class="altercol">
                                    0.00
                                </td>
                                <td class="altercol">
                                    21.45
                                </td>
                                <td class="altercol b">
                                    21.45
                                </td>
                                <td>
                                    1,289.58
                                </td>
                                <td>
                                    -63.12
                                </td>
                                <td class="b">
                                    1,226.46
                                </td>
                                <td class="altercol">
                                    99.20
                                </td>
                                <td class="altercol">
                                    -4.86
                                </td>
                                <td class="altercol b">
                                    94.34
                                </td>
                                <td>
                                    566.06
                                </td>
                            </tr>
                            <tr bgcolor="#F6F8F9" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#F6F8F9'">
                                <td class="l n">
                                    <span onclick="doViewDownline('1914935');" class='link1'>SMP8</span>
                                </td>
                                <td>
                                    87,883.00
                                </td>
                                <td>
                                    190.90
                                </td>
                                <td>
                                    8,550.47
                                </td>
                                <td>
                                    160.83
                                </td>
                                <td class="b">
                                    8,711.30
                                </td>
                                <td class="altercol">
                                    0.00
                                </td>
                                <td class="altercol">
                                    29.92
                                </td>
                                <td class="altercol b">
                                    29.92
                                </td>
                                <td>
                                    -5,557.81
                                </td>
                                <td>
                                    -123.93
                                </td>
                                <td class="b">
                                    -5,681.73
                                </td>
                                <td class="altercol">
                                    -427.52
                                </td>
                                <td class="altercol">
                                    -9.55
                                </td>
                                <td class="altercol b">
                                    -437.07
                                </td>
                                <td>
                                    -2,622.41
                                </td>
                            </tr>
                            <tr bgcolor="#faf9ee" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#faf9ee'">
                                <td class="l n">
                                    <span onclick="doViewDownline('1991718');" class='link1'>SMP9</span>
                                </td>
                                <td>
                                    80.00
                                </td>
                                <td>
                                    0.20
                                </td>
                                <td>
                                    7.75
                                </td>
                                <td>
                                    0.12
                                </td>
                                <td class="b">
                                    7.87
                                </td>
                                <td class="altercol">
                                    0.00
                                </td>
                                <td class="altercol">
                                    0.08
                                </td>
                                <td class="altercol b">
                                    0.08
                                </td>
                                <td>
                                    0.00
                                </td>
                                <td>
                                    0.00
                                </td>
                                <td class="b">
                                    0.00
                                </td>
                                <td class="altercol">
                                    -5.43
                                </td>
                                <td class="altercol">
                                    -0.14
                                </td>
                                <td class="altercol b">
                                    -5.56
                                </td>
                                <td>
                                    -2.39
                                </td>
                            </tr>
                            <tr class="RptFooter">
                                <td class="l">
                                    Total
                                </td>
                                <td>
                                    555,840.00
                                </td>
                                <td>
                                    1,109.95
                                </td>
                                <td>
                                    11,866.12
                                </td>
                                <td>
                                    393.54
                                </td>
                                <td>
                                    12,259.66
                                </td>
                                <td class="altercol2">
                                    0.00
                                </td>
                                <td class="altercol2">
                                    672.04
                                </td>
                                <td class="altercol2">
                                    672.04
                                </td>
                                <td>
                                    -8,721.26
                                </td>
                                <td>
                                    -654.80
                                </td>
                                <td>
                                    -9,376.06
                                </td>
                                <td class="altercol2">
                                    414.97
                                </td>
                                <td class="altercol2">
                                    -77.76
                                </td>
                                <td class="altercol2">
                                    337.21
                                </td>
                                <td>
                                    -3,892.85
                                </td>
                            </tr>
                        </table>
                        <input type="hidden" id="IsHistotyReport" name="IsHistotyReport" value="" /><input
                            type="hidden" id="txtTdate" name="txtTdate" value="12/20/2009" /><input type="hidden"
                                id="txtFdate" name="txtFdate" value="12/20/2009" /></div>
                </td>
            </tr>
        </table>
        <input type="hidden" value="{cus}" name="hdcus" id="hdcus" /><input type="hidden"
            value="{role}" name="hdrole" id="hdrole" /><input type="hidden" value="{site}" name="hdsite"
                id="hdsite" /><input type="hidden" value="checked='checked'" name="hdSB" id="hdSB" /><input
                    type="hidden" value="checked='checked'" name="hdCasino" id="hdCasino" /><input type="hidden"
                        value="checked='checked'" name="hdHR" id="hdHR" /><input type="hidden" value="checked='checked'"
                            name="hdFI" id="hdFI" /></div>
    </form>
</body>
</html>
<script type="text/javascript">

searchPageUrl='WinLossDetailSuper.aspx';
searchDLPageURL='WinLossDetailMaster.aspx';

</script>

