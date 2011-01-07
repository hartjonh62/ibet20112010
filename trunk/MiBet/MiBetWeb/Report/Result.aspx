<%@ Page Language="C#" AutoEventWireup="true" Inherits="Report_Result" Codebehind="Result.aspx.cs" %>

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
<script type="text/javascript" src="../Js/IBCWnd/IBCWnd.js?v=20091230"></script>
<script type="text/javascript">
var _noFocusStartUp = true;
function SearchByDate()
{
    var d = new Date();  
    var idsport=1;
    var idleague=0;
    fdate = $('fdate').value;  
    
    $('frResult').action="Result.aspx?fdate=" + fdate;
    $('frResult').submit();
}
function SearchOneDay(isop)
{
    var d = new Date();  
    var idsport=1;
    $("isdate").value = isop;
    $('frResult').submit();
}
function ChangeSport()
{
    $("idsport").value = $('ddlSport').value;
    $('frResult').submit();
}
function ChangeLeague()
{
    $("idleague").value = $('ddlLeague').value;
    $("idsport").value = $('ddlSport').value;
    $('frResult').submit();
}
function OpenGoalHistory(leagueid,homeid,awayid,goalrecord,isneutral) {

    var URL = "../Popup/GoalHistory.aspx?";
    URL += 'lid=' + leagueid;
    URL += '&hid=' + homeid;
    URL += '&aid=' + awayid;
    URL += '&grecord=' + goalrecord;
    URL += '&isneutral=' + isneutral;
    var popH = 300, popW = 300;
    ibcWnd.open(URL, '', 0, 4, popW, popH, 'class1', 'class2');	
}
function SearchByResultType(vl)
{
    var url = "Result.aspx?isOutright=" + vl;
    window.location.href = url;
}
function ViewSCRInfo(evendate, raceno, leagueid) {
    
    var URL = "../Popup/SCRInfo.aspx?";
    URL += 'lid=' + leagueid;
    URL += '&race=' + raceno;
    URL += '&date=' + evendate;
    var popH = 250, popW = 400;
    ibcWnd.open(URL, '', 50, 200, popW, popH, 'class1', 'class2');	
}

</script></head>
<body>
    <form id="frResult" runat="server">
    <div id="page_main" style="overflow-y: hidden; overflow-x: auto; padding-bottom: 15px;
        height: 100%;">
        <div id="header_main">
            <div class="divBoxRight">
                <input type="image" id="exporttoexcel" name="exporttoexcel" alt="Export to Excel"
                    nofocus="true" src="../App_Themes/AgencyV2/Images/excel.gif" title="Export to Excel"
                    class="hand" /></div>
            Results</div>
        <table border="0" cellpadding="0" cellspacing="0" width="680px">
            <tr>
                <td>
                    <div id="box_header">
                        <table border="0">
                            <tr>
                                <td style="width: 570px">
                                    <script type="text/javascript">                                        function reset_date() { var dayNoReset = 0; var fdateId = 'fdate'; var tdateId = 'tdate'; var td = new Date(); var fd = new Date(td.getTime() - dayNoReset * 24 * 60 * 60 * 1000); var fdateIdObj = $(fdateId); fdateIdObj.value = (fd.getMonth() + 1) + "/" + fd.getDate() + "/" + fd.getFullYear(); fdateIdObj.value = (td.getMonth() + 1) + "/" + td.getDate() + "/" + td.getFullYear(); } function disableButton() { var dSubmit = $('dSubmit'); var dToday = $('dToday'); var dYesterday = $('dYesterday'); var btResultType = $('btResultType'); dSubmit.disabled = true; if (!hasClassName(dSubmit, 'hidden')) dSubmit.className = 'btn2'; dToday.disabled = true; if (!hasClassName(dToday, 'hidden')) dToday.className = 'btn2'; dYesterday.disabled = true; if (!hasClassName(dYesterday, 'hidden')) dYesterday.className = 'btn2'; if (btResultType) { btResultType.disabled = true; btResultType.className = 'btn2'; } }</script>
                        <span id="spDateTimeSearch">
                            <table cellpading="0" cellspacing="0" border="0">
                                <tr style="height: 32px;">
                                    <td id="tdfdatetext" style="padding-left: 6px;" class="l">
                                        <asp:Label ID="lblFrom" runat="server" Text="Date :"></asp:Label>
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
                                        &nbsp;</td>
                                    <td id="tdToDateCal" class="l">
                                        &nbsp;</td>
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
                                </td>
                                <td align="right">
                                    <input type="button" class="btn" style="width: 90px" id="btResultType" value="Outright"
                                        onclick="disableButton(); SearchByResultType(1);" />
                                </td>
                            </tr>
                        </table>
                    </div>
                </td>
                <tr>
                    <td>
                        <div id="divContent" style="padding-top: 0px;">
                            <table class="tblRpt c" width="100%" border="0" cellpadding="0" cellspacing="1">
                                <tr class="RptHeader">
                                    <td width="95">
                                        Kick Off. Time
                                    </td>
                                    <td width="250">
                                        Match
                                    </td>
                                    <td class="nowrap">
                                        First Half Score
                                    </td>
                                    <td class="nowrap">
                                        Final Score
                                    </td>
                                    <td class="nowrap">
                                        Status
                                    </td>
                                </tr>
                                <tr class="bg_white">
                                    <td colspan="5">
                                        No information is available
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </td>
                </tr>
        </table>
        <input type="hidden" id="isdate" name="isdate" value="" /><input type="hidden" id="idleague"
            name="idleague" value="" /><input type="hidden" id="idsport" name="idsport" value="" /><input
                type="hidden" id="isOutright" name="isOutright" value="0" /></div>
    </form>
</body>
</html>
