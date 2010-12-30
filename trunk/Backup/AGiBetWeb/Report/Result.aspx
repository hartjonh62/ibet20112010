<%@ Page Language="C#" AutoEventWireup="true" Inherits="Report_Result" Codebehind="Result.aspx.cs" %>

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
    <div id="page_main" style="overflow-y: hidden; overflow-x: auto; padding-bottom: 15px; height: 100%;"><div id="header_main"><div class="divBoxRight"><input type="image" id="exporttoexcel" name="exporttoexcel" alt="Export to Excel" nofocus="true" src="../App_Themes/AgencyV2/Images/excel.gif" title="Export to Excel" class="hand" /></div>
    <asp:Label ID="lblOutrightResults" runat="server" Text="Outright Results"></asp:Label></div><table border="0" cellpadding="0" cellspacing="0" width="680px"><tr><td><div id="box_header"><table border="0"><tr><td style="width: 570px"><script type="text/javascript">function reset_date(){var dayNoReset=0;var fdateId='fdate';var tdateId='tdate';var td = new Date();var fd=new Date(td.getTime()-dayNoReset*24*60*60*1000);var fdateIdObj = $(fdateId);fdateIdObj.value=(fd.getMonth()+1)+"/"+fd.getDate()+"/"+fd.getFullYear();fdateIdObj.value=(td.getMonth()+1)+"/"+td.getDate()+"/"+td.getFullYear();}function disableButton(){var dSubmit = $('dSubmit');var dToday = $('dToday');var dYesterday = $('dYesterday');var btResultType = $('btResultType');dSubmit.disabled=true;if(!hasClassName(dSubmit, 'hidden')) dSubmit.className='btn2';dToday.disabled=true;if(!hasClassName(dToday, 'hidden')) dToday.className='btn2';dYesterday.disabled=true;if(!hasClassName(dYesterday, 'hidden')) dYesterday.className='btn2';if (btResultType) {btResultType.disabled = true;btResultType.className = 'btn2';}}</script><span id="spDateTimeSearch">
            <table cellpading="0" cellspacing="0" border="0" style="width: 627px"><tr style="height:32px;"><td id="tdfdatetext" style="padding-left: 6px;" class="l">
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
                                                                                                                                                               </td><td><a href="#" class="imaLink"><img alt="" id="fdate_tg" {disabled} title="Date selector" style="margin: 0px; cursor:pointer;" src="../App_Themes/AgencyV2/Images/cal.gif" /></a></td></tr></table><script type="text/javascript">var ctrInput = "1/2/2010";Calendar.setup({inputField : "txtdate",ifFormat : "%m/%d/%Y",showsTime : false,button : "fdate_tg",singleClick : true,showOthers : true,step : 1});</script></span></td><td id="tdtdatetext" class="l">&nbsp;&nbsp; <span id="sptdatetext">To:<span id="spDateTimeSearch"><div id="loading" class="myloading" style="float: left;">
                                                        </div>
                                                    </span></span></td><td id="tdToDateCal" class="l"><span id="spToDateCal"><table cellpading="0" cellspacing="0" border="0"><tr><td>

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
                                                        &nbsp;</td></tr></table></span></td><td align="right">
                                                    
                                                        <asp:Button ID="btnResultType" runat="server" Text="Normal" OnClientClick="disableButton(); SearchByResultType(0);" class="btn" style="width: 90px"/>
                                                    
                                                    
                                                    </td></tr></table></div></td><tr><td><div id="divContent" style="padding-top: 0px;"><table class="tblRpt c" width="100%" border="0" cellpadding="0" cellspacing="1"><tr class="RptHeader"><td style="width: 18%">Time</td><td style="width: 70%">Team</td><td style="width: 20%">Results</td></tr><tr class="bg_white c"><td colspan="3" class="nobold">No information is available</td></tr></table></div></td></tr></table><input type="hidden" id="isdate" name="isdate" value="" /><input type="hidden" id="idleague" name="idleague" value="" /><input type="hidden" id="idsport" name="idsport" value="" /><input type="hidden" id="isOutright" name="isOutright" value="1" /></div>
</form>

</body>
</html>
