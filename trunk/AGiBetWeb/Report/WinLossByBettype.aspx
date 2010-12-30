<%@ Page Language="C#" AutoEventWireup="true" Inherits="Report_WinLossByBettype" Codebehind="WinLossByBettype.aspx.cs" %>

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
<script type="text/javascript"> 
    function SearchByDate()
    {       
        var url='WinLossByBettype.aspx?fdate=' + $("fdate").value + '&tdate=' + $("tdate").value;
        _submit();
       location.href=url;
    }
    
    function SearchOneDay(value)
    {      
        var url='WinLossByBettype.aspx?isdate=' + value;
        _submit();
        location.href=url;
    }
    
    function ViewCasDetail(bettype)
    {
        var url = 'WinlossCasino.aspx?fdate='+ $("fdate").value + '&tdate=' + $("tdate").value + '&btype=' + bettype ;
        location.href=url;
    }
    
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div id="page_main"><div id="header_main"><div class="divBoxRight"><asp:CheckBox ID="chkBold" checked="true" runat="server" onclick="boldTable(this.checked);"/><span style="color:#999; text-transform:none">Bold</span>&nbsp;<input type="image" id="exporttoexcel" name="exporttoexcel" alt="Export to Excel" noFocus="true" src="../App_Themes/AgencyV2/Images/excel.gif" title="Export to Excel" class="hand" /></div>
    <asp:Label ID="lblType" runat="server" Text="Win Loss By Bet Type"></asp:Label></div><table border="0" cellpadding="0" cellspacing="0" {widthReport}><tr><td><div id="box_header"> <script type="text/javascript">function reset_date(){var dayNoReset=0;var fdateId='fdate';var tdateId='tdate';var td = new Date();var fd=new Date(td.getTime()-dayNoReset*24*60*60*1000);var fdateIdObj = $(fdateId);fdateIdObj.value=(fd.getMonth()+1)+"/"+fd.getDate()+"/"+fd.getFullYear();fdateIdObj.value=(td.getMonth()+1)+"/"+td.getDate()+"/"+td.getFullYear();}function disableButton(){var dSubmit = $('dSubmit');var dToday = $('dToday');var dYesterday = $('dYesterday');var btResultType = $('btResultType');dSubmit.disabled=true;if(!hasClassName(dSubmit, 'hidden')) dSubmit.className='btn2';dToday.disabled=true;if(!hasClassName(dToday, 'hidden')) dToday.className='btn2';dYesterday.disabled=true;if(!hasClassName(dYesterday, 'hidden')) dYesterday.className='btn2';if (btResultType) {btResultType.disabled = true;btResultType.className = 'btn2';}}</script><span id="spDateTimeSearch"><table cellpading="0" cellspacing="0" border="0"><tr style="height:32px;"><td id="tdfdatetext" style="padding-left: 6px;" class="l">
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

                                                                                                               </td><td class="l">&nbsp;&nbsp;
                                                              <asp:Button ID="btnSubmit" runat="server" Text="Submit"  class="btn" style="width:55px"  OnClientClick="disableButton(); SearchByDate();" />
                                                        &nbsp;&nbsp;&nbsp;
                                                        <asp:Button ID="btnToday" runat="server" Text="1/2/2010" class=" btn" Style="width: 80px" OnClientClick="disableButton(); SearchOneDay(0);" />
                                                        &nbsp;
                                                        <asp:Button ID="btnYesterday" runat="server" Text="1/2/2010" class=" btn" Style="width: 80px" OnClientClick="disableButton(); SearchOneDay(0);" />
                                                    </td>
                                                    <td valign="top">
                                                        <div id="loading" class="myloading" style="float: left;">
                                                        </div>
                                                    </td></tr></table></span><style type="text/css">li{margin-bottom:3px;margin-top:3px;}</style><table border="0" cellpadding="0" cellspacing="0"><tr><td class="l"><div id="dvMsg" class="warning" style="margin-bottom: 5px; margin-top: 10px;"><ul><li><font color="#EB6003">The gross commission formula has been changed, with effect from December 1st 2009.<br>

Now, gross commission = (your commission percentage) * turnover (excluding Draw tickets).</font></li></ul></div></td></tr></table></div></td></tr><tr><td><div id="divContent"><table class="tblRpt boldrow r" width="750px" border="0" cellpadding="0" cellspacing="1" id="tbl-rpt"><tr id="Tr1" class="RptTitle"><td colspan="20" id="spTitle">Win Loss By Bet Type 01/02/2010 --&gt 01/02/2010</td></tr><tr class="RptHeader"><td rowspan="2" class="nowrap">Bet Type</td><td rowspan="2">Turnover</td><td rowspan="2" class="nowrap" style="width:80px">Gross Comm</td><td colspan="3">Member</td><td colspan="3">Agent</td><td rowspan="2">Company</td></tr><tr class="RptHeader02"><td>Win/Loss</td><td>Comm</td><td>Total</td><td>Win/Loss</td><td>Comm</td><td>Total</td></tr><tr class="bg_white c"><td colspan="10" class="nobold">No information is available</td></tr></table></div></td></tr></table><input type="hidden" value="{cus}" name="hdcus" id="hdcus" /><input type="hidden" value="{role}" name="hdrole" id="hdrole" /><input type="hidden" value="{site}" name="hdsite" id="hdsite" /><input type="hidden" value="{checked_SB}" name="hdSB" id="hdSB" /><input type="hidden" value="{checked_Casino}" name="hdCasino" id="hdCasino" /><input type="hidden" value="{checked_HR}" name="hdHR" id="hdHR" /><input type="hidden" value="{checked_FI}" name="hdFI" id="hdFI" /></div>
</form>

</body>
</html>
