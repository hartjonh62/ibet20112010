<%@ Page Language="C#" AutoEventWireup="true" Inherits="Report_MatchWinLossDetail" Codebehind="MatchWinLossDetail.aspx.cs" %>
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

<script type="text/javascript" src="../Js/excel.js?v=20091230"></script>

<script type="text/javascript" src="../Js/opt/jx.js?v=20091230"></script>
<script type="text/javascript" src="../Js/Report/MatchWinLossDetail.js?v=20091230"></script>
</head>
<body>
    <form id="frGetData" runat="server">
    <div id="page_main">
        <div id="header_main">
            <div class="divBoxRight">
                <input type="checkbox" id="chk_rpt_bold" checked='checked' onclick="boldTable(this.checked);" /><span
                    style="color: #999; text-transform: none">Bold</span>&nbsp;<input type="image" id="exporttoexcel"
                        name="exporttoexcel" alt="Export to Excel" nofocus="true" src="../App_Themes/AgencyV2/Images/excel.gif"
                        title="Export to Excel" class="hand" /></div>
            Match Win Loss Detail</div>
        <table border="0" cellpadding="0" cellspacing="0" style="width: 99%;">
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
                                                        <asp:TextBox ID="txtFDate" class="date_no" ReadOnly="true" runat="server"  size="13"></asp:TextBox>
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
                                                        
                                                        <asp:TextBox ID="txtTDate" ReadOnly="true" runat="server" class="date_no" size="13"></asp:TextBox>
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
                        <div id="dvMsg" class="warning" style="margin-bottom: 5px; margin-top: 10px;">
                            <ul>
                                <li><font color="#EB6003">The gross commission formula has been changed, with effect
                                    from December 1st 2009.<br>
                                    Now, gross commission = (your commission percentage) * turnover (excluding Draw
                                    tickets).</font></li></ul>
                        </div>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div id="tbl-container">
                        <div id="boderRight">
                            <table class="tblRpt r nowrap boldrow" cellpadding="0" cellspacing="1" style="width: 100%;"
                                id="tbl-rpt">
                                <thead>
                                    <tr id="rowTitle" class="RptTitle l">
                                        <td id="spTitle" colspan="14">
                                            Match Win Loss Detail 
                <asp:Label ID="lblFDate" runat="server"></asp:Label>
&nbsp;--&gt;
                <asp:Label ID="lblTDate" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="RptHeader" colspan="3">
                                            &nbsp;
                                        </td>
                                        <td class="RptHeader" colspan="3">
                                            Member
                                        </td>
                                        <td class="RptHeader" colspan="3">
                                            Agent
                                        </td>
                                        <td class="RptHeader" colspan="3">
                                            Master
                                        </td>
                                        <td class="RptHeader" colspan="2">
                                            Company
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="RptHeader02">
                                            Bet Type
                                        </td>
                                        <td class="RptHeader02">
                                            Turnover
                                        </td>
                                        <td class="RptHeader02">
                                            Gross Comm
                                        </td>
                                        <td class="RptHeader02">
                                            Win/Loss
                                        </td>
                                        <td class="RptHeader02">
                                            Comm
                                        </td>
                                        <td class="RptHeader02">
                                            Total
                                        </td>
                                        <td class="RptHeader02">
                                            Win/Loss
                                        </td>
                                        <td class="RptHeader02">
                                            Comm
                                        </td>
                                        <td class="RptHeader02">
                                            Total
                                        </td>
                                        <td class="RptHeader02">
                                            Win/Loss
                                        </td>
                                        <td class="RptHeader02">
                                            Comm
                                        </td>
                                        <td class="RptHeader02">
                                            Total
                                        </td>
                                        <td class="RptHeader02">
                                            Comm
                                        </td>
                                        <td class="RptHeader02">
                                            Total
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
                </td>
            </tr>
        </table>
        <input type="hidden" id="rowcount" name="rowcount" value="0" /><input type="hidden"
            id="columncount" name="columncount" value="14" /></div>
    </form>
</body>
</html>
