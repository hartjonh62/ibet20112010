﻿<%@ Page Language="C#" AutoEventWireup="true" Inherits="WinlossDetailAgent" CodeBehind="WinlossDetailAgent.aspx.cs" %>

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

    <script type="text/javascript" src="../Js/excel.js?v=20091230"></script>

    <script type="text/javascript" src="../Js/opt/jx.js?v=20091230"></script>

    <script type="text/javascript" src="../Js/Report/ReportWinLoss.js?v=20091230"></script>

    <script type="text/javascript">
    function SearchByDate() {
        SearchByDate2(searchPageUrl);
    }
    function SearchOneDay(value) {
        SearchOneDay2(searchPageUrl, value);
    }
    function VBL(custid,username) { // ViewBetList
        var url = '../BetList/BetList.aspx?custid=' + custid + '&fdate=' + $('txtFdate').value + '&tdate=' + $('txtTdate').value + '&type=' + $('type').value;
        url += '&IsHistotyReport=' + $('IsHistotyReport').value + '&username=' + username;
        url += urlFiltering();
        window.location.href = url;
    }
    </script>

</head>
<body>
    <form id="frmmain" runat="server">
    <div id="page_main">
        <div id="header_main">
            <div class="divBoxRight">
                <asp:CheckBox ID="chkBold" runat="server" onclick="boldTable(this.checked);" />
                <span style="color: #999; text-transform: none">Bold</span>&nbsp;
                 <input type="image" id="exporttoexcel" name="exporttoexcel" alt="Export to Excel" noFocus="true" src="../App_Themes/AgencyV2/Images/excel.gif" title="Export to Excel" class="hand" /></div>Member Win Loss Detail</div><table border="0" cellpadding="0" cellspacing="0" {widthReport}><tr><td><div id="box_header"> 

                <script type="text/javascript">function reset_date(){var dayNoReset=0;var fdateId='fdate';var tdateId='tdate';var td = new Date();var fd=new Date(td.getTime()-dayNoReset*24*60*60*1000);var fdateIdObj = $(fdateId);fdateIdObj.value=(fd.getMonth()+1)+"/"+fd.getDate()+"/"+fd.getFullYear();fdateIdObj.value=(td.getMonth()+1)+"/"+td.getDate()+"/"+td.getFullYear();}function disableButton(){var dSubmit = $('dSubmit');var dToday = $('dToday');var dYesterday = $('dYesterday');var btResultType = $('btResultType');dSubmit.disabled=true;if(!hasClassName(dSubmit, 'hidden')) dSubmit.className='btn2';dToday.disabled=true;if(!hasClassName(dToday, 'hidden')) dToday.className='btn2';dYesterday.disabled=true;if(!hasClassName(dYesterday, 'hidden')) dYesterday.className='btn2';if (btResultType) {btResultType.disabled = true;btResultType.className = 'btn2';}}</script>

                <span id="spDateTimeSearch">
                    <table cellpading="0" cellspacing="0" border="0">
                        <tr style="height: 32px;">
                            <td id="tdfdatetext" style="padding-left: 6px;" class="l">
                                <span id="spfdatetext">From:</span>
                            </td>
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
                                                <asp:TextBox ID="txtdate" runat="server" value="01/02/2010" size="13" ReadOnly="true"></asp:TextBox>
                                                                                                                                                                     </td><td><a href="#" class="imaLink"><img alt="" id="fdate_tg" {disabled} title="Date selector" style="margin: 0px; cursor:pointer;" src="../App_Themes/AgencyV2/Images/cal.gif" /></a></td></tr></table><script type="text/javascript">var ctrInput = "1/2/2010";Calendar.setup({inputField : "txtdate",ifFormat : "%m/%d/%Y",showsTime : false,button : "fdate_tg",singleClick : true,showOthers : true,step : 1});</script></span></td><td id="tdtdatetext" class="l">&nbsp;&nbsp; <span id="sptdatetext">To:</span></td><td id="tdToDateCal" class="l"><span id="spToDateCal"><table cellpading="0" cellspacing="0" border="0"><tr><td>
                                                <asp:TextBox ID="txtdate1" runat="server" value="01/02/2010" size="13" ReadOnly="true"></asp:TextBox>
                                                                                                                                                                                                                    </td><td><a href="#" class="imaLink"><img alt="" id="tdate_tg" {disabled} title="Date selector" style="margin: 0px; cursor:pointer;" src="../App_Themes/AgencyV2/Images/cal.gif" /></a></td></tr></table><script type="text/javascript">var ctrInput = "1/2/2010";Calendar.setup({inputField : "txtdate1",ifFormat : "%m/%d/%Y",showsTime : false,button : "tdate_tg",singleClick : true,showOthers : true,step : 1});</script></span>

                                            </td>
                                            <td class="l">
                                                &nbsp;&nbsp;
                                                <asp:Button ID="btnSubmit" runat="server" Text="Submit" class="btn" Style="width: 55px"
                                                    OnClientClick="disableButton(); SearchByDate();" />
                                                &nbsp;&nbsp;&nbsp;
                                                <asp:Button ID="btnToday" runat="server" Text="1/2/2010" class=" btn" Style="width: 80px"
                                                    OnClientClick="disableButton(); SearchOneDay(0);" />
                                                &nbsp;
                                                <asp:Button ID="btnYesterday" runat="server" Text="1/2/2010" class=" btn" Style="width: 80px"
                                                    OnClientClick="disableButton(); SearchOneDay(0);" />
                                            </td>
                                            <td valign="top">
                                                <div id="loading" class="myloading" style="float: left;">
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                </span>
                <asp:CheckBox ID="chk_All" runat="server" onclick="CheckAll()" Checked="true" />
                <label for="chk_All">
                    All</label>&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:CheckBox ID="chk_SB" runat="server" onclick="IsCheck()" Checked="true" />
                <label for="chk_SB">
                    SB</label>&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" id="chk_P2P" style="visibility: hidden" onclick="IsCheck()" />
                <asp:CheckBox ID="chk_HR" runat="server" onclick="IsCheck()" Checked="true" />
                <label for="chk_HR">
                    Horse</label>&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:CheckBox ID="chk_FI" runat="server" onclick="IsCheck()" Checked="true" />
                <label for="chk_FI">
                    Finance</label><style type="text/css">
                                       li
                                       {
                                           margin-bottom: 3px;
                                           margin-top: 3px;
                                       }
                                   </style><table border="0" cellpadding="0" cellspacing="0">
                               <tr>
                                   <td class="l">
                                       <div id="dvMsg" class="warning" style="margin-bottom: 5px; margin-top: 10px;">
                                           <ul>
                                               <li><font color="#EB6003">The gross commission formula has been changed, with effect
                                                   from December 1st 2009.<br>
                                                   Now, gross commission = (your commission percentage) * turnover (excluding Draw
                                                   tickets).</font></li><li><span id="spMsg">You can see the report data up to 3 months.
                                                       For more historic data, please click to <a href='#' id='spViewHistory' onclick='ViewHistory(2);'>
                                                           View History Report</a></span></li></ul>
                                       </div>
                                   </td>
                               </tr>
                           </table>
            </div>
            </td></tr><tr>
                <td>
                    <div id="divContent">
                        <table class="tblRpt nowrap boldrow r" width="100%" style="min-width: 600px;" border="0"
                            cellpadding="0" cellspacing="1" id="tbl-rpt">
                            <tr id="rowTitle" class="RptTitle">
                                <td colspan="20" id="spTitle">
                                    Member Win Loss Detail <span id='spSumaryDate'>01/02/2010 --&gt 01/02/2010</span>
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
                            </tr>
                            <tr>
                                <td colspan="11" class="c bg_white nobold" height="20">
                                    No information is available
                                </td>
                            </tr>
                        </table>
                        <input type="hidden" id="IsHistotyReport" name="IsHistotyReport" value="" /><input
                            type="hidden" id="txtTdate" name="txtTdate" value="1/2/2010" /><input type="hidden"
                                id="type" name="type" value="WLByDate" /><input type="hidden" id="txtFdate" name="txtFdate"
                                    value="1/2/2010" /></div>
                </td>
            </tr>
            </table><input type="hidden" value="2050492" name="hdcus" id="hdcus" /><input type="hidden"
                value="{role}" name="hdrole" id="hdrole" /><input type="hidden" value="{site}" name="hdsite"
                    id="hdsite" /><input type="hidden" value="checked='checked'" name="hdSB" id="hdSB" /><input
                        type="hidden" value="checked='checked'" name="hdCasino" id="hdCasino" /><input type="hidden"
                            value="checked='checked'" name="hdHR" id="hdHR" /><input type="hidden" value="checked='checked'"
                                name="hdFI" id="hdFI" /></div>
    </form>
</body>
</html>

<script type="text/javascript">

searchPageUrl='WinLossDetailAgent.aspx';

</script>

