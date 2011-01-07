<%@ Page Language="C#" AutoEventWireup="true" Inherits="Report_MatchResultEntered" Codebehind="MatchResultEntered.aspx.cs" %>
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
<script type='text/javascript' src='../Js/opt/Core.js?v=20091230' ></script>
<script type='text/javascript' src='../Js/Common.js?v=20091230' ></script>

<script type="text/javascript" src="../Js/excel.js?v=20091230"></script>

<script type="text/javascript" src="../Js/opt/jx.js?v=20091230"></script>
<script type="text/javascript">
    function SearchByDate(IsHistoty)
    {
        var IsHistotyReport = (IsHistoty) ? IsHistoty : '0';
        var IsSwitch =  (IsHistoty) ? '1' : '';
        var url='';
        
        if($('hdrole').value=='4') //super
        {
            url='WinlossSuper.aspx';
        }
        else if($('hdrole').value=='3')
        {
            url='WinlossMaster.aspx';
        }
        else
        {
            url='WinlossAgent.aspx';
        }        
        _submit();
        location.href=url + '?custid=' + $('hdcus').value + '&fdate=' + $("fdate").value + '&tdate=' + $("tdate").value + '&IsHistotyReport=' + IsHistotyReport + '&IsSwitch=' + IsSwitch;
    }
    
    function SearchOneDay(value)
    {
       var url='';
        
        if($('hdrole').value=='4') //super
        {
            url='WinlossSuper.aspx';
        }
        else if($('hdrole').value=='3')
        {
            url='WinlossMaster.aspx';
        }
        else
        {
            url='WinlossAgent.aspx';
        }
        _submit();
        location.href=url + '?custid=' + $('hdcus').value + '&fdate=' + $("fdate").value + '&tdate=' + $("tdate").value + '&isdate=' + value;
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
            Agent Win Loss</div>
        <table border="0" cellpadding="0" cellspacing="0" widthreport>
            <tr>
                <td>
                    <div id="box_header">
                        <script type="text/javascript">                            function reset_date() { var dayNoReset = 0; var fdateId = 'fdate'; var tdateId = 'tdate'; var td = new Date(); var fd = new Date(td.getTime() - dayNoReset * 24 * 60 * 60 * 1000); var fdateIdObj = $(fdateId); fdateIdObj.value = (fd.getMonth() + 1) + "/" + fd.getDate() + "/" + fd.getFullYear(); fdateIdObj.value = (td.getMonth() + 1) + "/" + td.getDate() + "/" + td.getFullYear(); } function disableButton() { var dSubmit = $('dSubmit'); var dToday = $('dToday'); var dYesterday = $('dYesterday'); var btResultType = $('btResultType'); dSubmit.disabled = true; if (!hasClassName(dSubmit, 'hidden')) dSubmit.className = 'btn2'; dToday.disabled = true; if (!hasClassName(dToday, 'hidden')) dToday.className = 'btn2'; dYesterday.disabled = true; if (!hasClassName(dYesterday, 'hidden')) dYesterday.className = 'btn2'; if (btResultType) { btResultType.disabled = true; btResultType.className = 'btn2'; } }</script>
                        <style type="text/css">limargin-bottom:3px;margin-top:3px;}</style>
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
                        <table border="0" cellpadding="0" cellspacing="0">
                            <tr>
                                <td class="l">
                                    <div id="dvMsg" class="warning" style="margin-bottom: 5px; margin-top: 10px;">
                                        <ul>
                                            <li><span id="spMsg">You can see the report data up to 3 months. For more historic data,
                                                please click to <a href='#' onclick='SearchByDate(1);'>View History Report</a></span></li></ul>
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
                        <table class="tblRpt r boldrow" style="min-width: 300px" border="0" cellpadding="0"
                            cellspacing="1" id="tbl-rpt">
                            <tr class="RptHeader">
                                <td style="width: 150px">
                                    Date
                                </td>
                                <td colspan="2">
                                    01/02/2010
                                </td>
                                <td colspan="2">
                                    01/03/2010
                                </td>
                            </tr>
                            <tr class="RptHeader02">
                                <td>
                                    Results
                                </td>
                                <td style="width: 110px">
                                    Entered
                                </td>
                                <td style="width: 110px">
                                    Non-Entered
                                </td>
                                <td style="width: 110px">
                                    Entered
                                </td>
                                <td style="width: 110px">
                                    Non-Entered
                                </td>
                            </tr>
                            <tr class="even_row">
                                <td class="RptSubTitle l n">
                                    Soccer
                                </td>
                                <td style="width: 110px">
                                    243
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                                <td style="width: 110px">
                                    352
                                </td>
                            </tr>
                            <tr class="odd_row">
                                <td class="RptSubTitle l n">
                                    Basketball
                                </td>
                                <td style="width: 110px">
                                    200
                                </td>
                                <td style="width: 110px">
                                    4
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                                <td style="width: 110px">
                                    110
                                </td>
                            </tr>
                            <tr class="even_row">
                                <td class="RptSubTitle l n">
                                    Football
                                </td>
                                <td style="width: 110px">
                                    4
                                </td>
                                <td style="width: 110px">
                                    1
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                                <td style="width: 110px">
                                    32
                                </td>
                            </tr>
                            <tr class="odd_row">
                                <td class="RptSubTitle l n">
                                    Ice Hockey
                                </td>
                                <td style="width: 110px">
                                    31
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                                <td style="width: 110px">
                                    8
                                </td>
                            </tr>
                            <tr class="even_row">
                                <td class="RptSubTitle l n">
                                    Tennis
                                </td>
                                <td style="width: 110px">
                                    10
                                </td>
                                <td style="width: 110px">
                                    17
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                                <td style="width: 110px">
                                    12
                                </td>
                            </tr>
                            <tr class="odd_row">
                                <td class="RptSubTitle l n">
                                    Volleyball
                                </td>
                                <td style="width: 110px">
                                    2
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                                <td style="width: 110px">
                                    8
                                </td>
                            </tr>
                            <tr class="even_row">
                                <td class="RptSubTitle l n">
                                    Billiard
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                            </tr>
                            <tr class="odd_row">
                                <td class="RptSubTitle l n">
                                    Baseball
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                            </tr>
                            <tr class="even_row">
                                <td class="RptSubTitle l n">
                                    Badminton
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                            </tr>
                            <tr class="odd_row">
                                <td class="RptSubTitle l n">
                                    Golf
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                            </tr>
                            <tr class="even_row">
                                <td class="RptSubTitle l n">
                                    Motor Sports
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                            </tr>
                            <tr class="odd_row">
                                <td class="RptSubTitle l n">
                                    Swimming
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                            </tr>
                            <tr class="even_row">
                                <td class="RptSubTitle l n">
                                    Politics
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                            </tr>
                            <tr class="odd_row">
                                <td class="RptSubTitle l n">
                                    Water Polo
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                            </tr>
                            <tr class="even_row">
                                <td class="RptSubTitle l n">
                                    Diving
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                            </tr>
                            <tr class="odd_row">
                                <td class="RptSubTitle l n">
                                    Boxing
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                                <td style="width: 110px">
                                    5
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                            </tr>
                            <tr class="even_row">
                                <td class="RptSubTitle l n">
                                    Archery
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                            </tr>
                            <tr class="odd_row">
                                <td class="RptSubTitle l n">
                                    Table Tennis
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                            </tr>
                            <tr class="even_row">
                                <td class="RptSubTitle l n">
                                    Weightlifting
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                            </tr>
                            <tr class="odd_row">
                                <td class="RptSubTitle l n">
                                    Canoeing
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                            </tr>
                            <tr class="even_row">
                                <td class="RptSubTitle l n">
                                    Gymnastics
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                            </tr>
                            <tr class="odd_row">
                                <td class="RptSubTitle l n">
                                    Athletics
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                            </tr>
                            <tr class="even_row">
                                <td class="RptSubTitle l n">
                                    Equestrian
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                            </tr>
                            <tr class="odd_row">
                                <td class="RptSubTitle l n">
                                    Handball
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                            </tr>
                            <tr class="even_row">
                                <td class="RptSubTitle l n">
                                    Horse Racing
                                </td>
                                <td style="width: 110px">
                                    23
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                            </tr>
                            <tr class="odd_row">
                                <td class="RptSubTitle l n">
                                    Finance
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                            </tr>
                            <tr class="even_row">
                                <td class="RptSubTitle l n">
                                    Darts
                                </td>
                                <td style="width: 110px">
                                    8
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                                <td style="width: 110px">
                                    9
                                </td>
                            </tr>
                            <tr class="odd_row">
                                <td class="RptSubTitle l n">
                                    Rugby
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                            </tr>
                            <tr class="even_row">
                                <td class="RptSubTitle l n">
                                    Cricket
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                                <td style="width: 110px">
                                    2
                                </td>
                            </tr>
                            <tr class="odd_row">
                                <td class="RptSubTitle l n">
                                    Field Hockey
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                            </tr>
                            <tr class="even_row">
                                <td class="RptSubTitle l n">
                                    Other Sports
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                                <td style="width: 110px">
                                    0
                                </td>
                            </tr>
                        </table>
                    </div>
                </td>
            </tr>
        </table>
        <input type="hidden" value="2012567" name="hdcus" id="hdcus" /><input type="hidden"
            value="3" name="hdrole" id="hdrole" /><input type="hidden" value="{site}" name="hdsite"
                id="hdsite" /><input type="hidden" value="{checked_SB}" name="hdSB" id="hdSB" /><input
                    type="hidden" value="{checked_Casino}" name="hdCasino" id="hdCasino" /><input type="hidden"
                        value="{checked_HR}" name="hdHR" id="hdHR" /><input type="hidden" value="{checked_FI}"
                            name="hdFI" id="hdFI" /></div>
    </form>
</body>
</html>
