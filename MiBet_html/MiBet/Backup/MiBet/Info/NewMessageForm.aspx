<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NewMessageForm.aspx.cs" Inherits="Info_NewMessageForm" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<title>Home</title>
<meta name="keywords" content="sportsbook, agency, agent, betting" />
<meta name="description" content="online betting sportsbook agency system" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<link href='../App_Themes/AgencyV2/common.css' type='text/css' rel='stylesheet' /><link href='../App_Themes/AgencyV2/main.css' type='text/css' rel='stylesheet' />
<script type='text/javascript' src='../Js/opt/Core.js?v=20091218' ></script>
<script type='text/javascript' src='../Js/Common.js?v=20091218' ></script>


<script type="text/javascript">
    var sobjDate=null;
    var eobjDate=null;
    var fromDateControlID = "fdate";
    var toDateControlID = "tdate";
    
    function splitDate(){
	    var s_date=$(fromDateControlID);
	    var e_date=$(toDateControlID);
	    var s_dataAry = new Array(2);
	    var e_dataAry = new Array(2);
    	
	    var kk1=s_date.value.split("/");
	    for(var i=0;i<kk1.length ;i++){
		    s_dataAry[i]=kk1[i];
	    }
	    var kk2=e_date.value.split("/");
	    for(var i=0;i<kk2.length ;i++){
		    e_dataAry[i]=kk2[i];
	    }
    	
	    sobjDate = new Date(s_dataAry[2],s_dataAry[0],s_dataAry[1]);
	    eobjDate = new Date(e_dataAry[2],e_dataAry[0],e_dataAry[1]);
	}
	function showMsg(msgType) {
	    splitDate();
	    if (eobjDate < sobjDate) {
	        if (msgType != 'special' && msgType != 'allSpecial') {
	            alert($("eroMeg").value);
	            return;
	        }
	        else {
	            setDDate();
	        }
	    }

	    if (msgType == '') {
	        msgType = $("msgType").value;
	    }
	    var str1 = msgType;
	    var str2 = $(fromDateControlID).value;
	    var str3 = $(toDateControlID).value;
	    var extraParam = "";
	    // update count of private messages in header frame
	    if (msgType == 'private') {
	        var open = "(", close = ")";
	        var countPriMsg = "0";

	        var countText = parent.frHeader.$('privateMsgLnk').innerHTML;
	        if (countText.indexOf(open) >= 0) {
	            var temp = countText.substring(0, countText.indexOf(open) + 1) + countPriMsg + ")";
	            var temp2 = countText.substring(countText.indexOf(open) + 1, countText.indexOf(close));
	            extraParam = (parseInt(temp2) > 0 ? "&extra=1" : "");
	            parent.frHeader.$('privateMsgLnk').innerHTML = temp;
	        }
	    }
	    
	    location.href = "NewMessageForm.aspx?pageQuery=" + str1 + "&s_date=" + str2 + "&e_date=" + str3 + extraParam;
	}
    function setDDate() {
        var timeNow = new Date();
        var year = timeNow.getFullYear();
        var mon = timeNow.getMonth() + 1;
        var ddate = timeNow.getDate();
        var yesterday = new Date(Date.parse(timeNow) - (3 * 1000 * 60 * 60 * 24));
        $(fromDateControlID).value = mon + "/" + yesterday.getDate() + "/" + year;
        $(toDateControlID).value = mon + "/" + ddate + "/" + year;
    }
    function enableCalendar(IsDisabled)
    {
        $(fromDateControlID + "_tg").disabled = IsDisabled;
        $(toDateControlID + "_tg").disabled = IsDisabled;
        $("dSubmit").disabled = IsDisabled;
    }
    function setStatusCalendar() {
        var spMes = $("msgType").value;
        if (spMes == 'special' || spMes == 'allSpecial') {
            enableCalendar(true);
        }
        else {
            enableCalendar(false);
        }
    }

</script>
</head>
<body>
<script src="../Js/Calendar2/calendar.js" type="text/javascript"></script><script src="../Js/Calendar2/date.js" type="text/javascript"></script><script src="../Js/Calendar2/Lang/calendar-E.js" type="text/javascript"></script><script src="../Js/Calendar2/calendar-setup.js" type="text/javascript"></script><link href="../Js/Calendar2/Skin/calendar-blue.css" media="all" rel="stylesheet" type="text/css" title="Blue" /><LINK REL=StyleSheet HREF="../App_Themes/AgencyV2/message.css" TYPE="text/css"><div id="header_cont"><div class="b_msg0"><span class="text_header">Message History</span></div><div class="msg"><table width="100%" border="0" cellspacing="0" cellpadding="0"><tr><td><div id="msg_menu"><ul><li id="current"><a href="javascript:showMsg('normal');"><span>Normal Announcements</span></a></li><li ><a href="javascript:showMsg('special');"><span>Special Announcements</span></a></li><li ><a href="javascript:showMsg('private');"><span>Personal Message</span></a></li></ul></div></td><td ><table border="0" cellspacing="0" cellpadding="0"><tr><td nowrap="nowrap">From:&nbsp;<input id="fdate" class="date_no" value="12/17/2009" type="text" size="13" name="fdate" readonly /></td><td nowrap="nowrap"><a href="#" class="imaLink"><img alt="" id="fdate_tg" title="Date selector" style="margin: 0px; cursor:pointer;" src="../App_Themes/AgencyV2/Images/cal.gif" /></a><script type="text/javascript">var ctrInput = "12/20/2009";Calendar.setup({inputField : "fdate",ifFormat : "%m/%d/%Y",showsTime : false,button : "fdate_tg",singleClick : true,showOthers : true,step : 1});</script></td><td nowrap="nowrap">To:&nbsp;<input id="tdate" class="date_no" value="12/20/2009" type="text" size="13" name="tdate" readonly /></td><td nowrap="nowrap"><a href="#" class="imaLink"><img alt="" id="tdate_tg" title="Date selector" style="margin: 0px; cursor:pointer;" src="../App_Themes/AgencyV2/Images/cal.gif" /></a><script type="text/javascript">var ctrInput = "12/20/2009";Calendar.setup({inputField : "tdate",ifFormat : "%m/%d/%Y",showsTime : false,button : "tdate_tg",singleClick : true,showOthers : true,step : 1});</script></td></tr></table></td><td><input type="button" class="btn" style="width:55px" id="dSubmit" value="Submit" onclick="javascript:showMsg('');" /></td></tr></table></div></div><div id="divMsgContent" ><table cellspacing="1" cellpadding="0" width="100%" class="tblRpt" border="0"><tr class="RptHeader"><td width="20px">#</td><td width="60px">ID</td><td width="80px">Post date</td><td>Message</td></tr><tr bgcolor="#F6F8F9" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#F6F8F9'"><td class="w_order_ms">1</td><td class="c_ms">115632</td><td class="bl_time_ms">12/20/2009<br/>08:03:11 AM</td><td class="message_content">Attn:[Soccer]The match between "Gaziantep Buyuksehir -vs- Belediyespor U18 -vs- Kayseri Erciyesspor U18" [Turkey U18 League - 20/12*Live*], we faced disruption in our broadcast from 20/12 7:37:15 PM - 7:40:44 PM. As a result tickets placed during the disrupted period were rejected. Sorry for the inconveniences caused!  	</td></tr><tr bgcolor="#faf9ee" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#faf9ee'"><td class="w_order_ms">2</td><td class="c_ms">115631</td><td class="bl_time_ms">12/20/2009<br/>07:59:17 AM</td><td class="message_content">Attn:[Soccer]The match between "Tokatspor -vs- Y.Kirsehirspor" [Turkey Second League - 20/12*Live*], we faced disruption in our broadcast from 20/12 7:35:29 PM - 7:40:06 PM. As a result tickets placed during the disrupted period were rejected. Sorry for the inconveniences caused!  	</td></tr><tr bgcolor="#F6F8F9" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#F6F8F9'"><td class="w_order_ms">3</td><td class="c_ms">115630</td><td class="bl_time_ms">12/20/2009<br/>01:52:21 AM</td><td class="message_content">Attn: [Basketball] The match between "Virginia -vs- NC.Wilmington" [NCAA Basketball Men - 19/12] & "Halcones UV Xalapa -vs- Halcones Rojos de Veracruz" [Basketball - Mexico LNBP League - 19/12] had been postponed. All bets taken are considered REFUNDED. Thank you!  	</td></tr><tr bgcolor="#faf9ee" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#faf9ee'"><td class="w_order_ms">4</td><td class="c_ms">115627</td><td class="bl_time_ms">12/19/2009<br/>07:10:22 PM</td><td class="message_content">Attn:[Basketball] Due to wrong result displayed, the match between "Kepez Belediye -vs- Aliaga Petkim" [Basketball - Turkey TBL - 19/12]. The actual final result is "77-80" instead of "77-84". Please kindly double check your statement again. Sorry for the inconveniences caused!  	</td></tr><tr bgcolor="#F6F8F9" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#F6F8F9'"><td class="w_order_ms">5</td><td class="c_ms">115623</td><td class="bl_time_ms">12/19/2009<br/>01:36:56 PM</td><td class="message_content">Attn:[Soccer]The matches between "Blue Square Premier -10 matches", "BELGIUM JUPILER PRO LEAGUE-1 match", "Belgium 2nd Division-6 matches", "English League Championship-3 matches", "English League One-1 match", "English League Two-8 matches", "GERMANY WOMEN FOOTBALL CUP-1 match", "Germany Regional League West-1 match", "Germany Regional League North-1 match", "Germany 3rd Liga-2 matches", "Germany Regional League South-5 matches", "FRANCE-LIGUE 1 -1 match", "France National-3 matches", "SCOTLAND PREMIER LEAGUE-1 match", "Scotland Division 1- 2matches", "Scotland Division 2- 5 matches", "Scotland Division 3- 4 matches", "Northern Ireland Premier League-1 match", "ITALY SERIE A- 2matches (Included SPECIALS & kick off)", "ITALY SERIE B-4 matches", "Spain Segunda B Division-2 matches", "South Africa Premier League-1 match" at 19/12/2009 have been postponed.All bets taken are considered REFUNDED. Parlay counted as one (1)...[Please kindly refer to result section for more details] Thank you!!  	</td></tr><tr bgcolor="#faf9ee" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#faf9ee'"><td class="w_order_ms">6</td><td class="c_ms">115620</td><td class="bl_time_ms">12/19/2009<br/>11:57:37 AM</td><td class="message_content">Attn:[Soccer] The match between "Sheffield Wednesday -vs- Swansea City" [English League Championship - 19/12*Live*], we faced disruption in our broadcast from 19/12 11:32:49 PM - 11:38:08 PM. As a result tickets placed during the disrupted period were rejected. Sorry for the inconveniences caused!  	</td></tr><tr bgcolor="#F6F8F9" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#F6F8F9'"><td class="w_order_ms">7</td><td class="c_ms">115619</td><td class="bl_time_ms">12/19/2009<br/>11:07:36 AM</td><td class="message_content">Attn:[SOCCER] Due to NO Extra Time being played for the match between "Atlante (ET)(N) -vs- Pohang Steelers (ET)"[FIFA Club World Cup - 19/12*LIVE*], All bets placed will be considered REFUNDED...Thank you!!  	</td></tr><tr bgcolor="#faf9ee" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#faf9ee'"><td class="w_order_ms">8</td><td class="c_ms">115615</td><td class="bl_time_ms">12/19/2009<br/>09:32:21 AM</td><td class="message_content">Attn:[Soccer] Due to disruption in Live broadcast, the match between "Borussia Monchengladbach AM -vs- VfL Bochum AM" [Germany Regional League West - 19/12*Live*]. This match will be removed from our website. Sorry for the inconveniences caused!  	</td></tr><tr bgcolor="#F6F8F9" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#F6F8F9'"><td class="w_order_ms">9</td><td class="c_ms">115614</td><td class="bl_time_ms">12/19/2009<br/>09:25:03 AM</td><td class="message_content">Attn:[Soccer] The match between "Borussia Monchengladbach AM -vs- VfL Bochum AM" [Germany Regional League West - 19/12*Live*], we faced disruption in our broadcast from 19/12 9:09:52 PM - 9:13:41 PM. As a result tickets placed during the disrupted period were rejected. Sorry for the inconveniences caused!  	</td></tr><tr bgcolor="#faf9ee" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#faf9ee'"><td class="w_order_ms">10</td><td class="c_ms">115611</td><td class="bl_time_ms">12/19/2009<br/>01:49:03 AM</td><td class="message_content">Attn:[Soccer] Due to result undecided, "Al Wasl U17 -vs- Al Ahli (UAE) U17"[UAE U17 League - 17/12] statement will be moved to 19/12. Sorry for the inconvenience caused!  	</td></tr><tr bgcolor="#F6F8F9" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#F6F8F9'"><td class="w_order_ms">11</td><td class="c_ms">115610</td><td class="bl_time_ms">12/18/2009<br/>04:31:44 PM</td><td class="message_content">Attn:[Soccer] The match between "Carl Zeiss Jena -vs- SV Sandhausen" [Germany 3rd Liga - 19/12*Early*] has been rescheduled to 23/01/2010, All bets placed are still considered VALID .Thank you!!  	</td></tr><tr bgcolor="#faf9ee" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#faf9ee'"><td class="w_order_ms">12</td><td class="c_ms">115609</td><td class="bl_time_ms">12/18/2009<br/>03:04:40 PM</td><td class="message_content">Attn:[Soccer]The matches between "Belgium 2nd Division-1 match" , "BELGIUM JUPILER PRO LEAGUE-1 match" , "Blue Square Premier-1 match" , "English League Two-1 match" , "France-Ligue 2- 2 matches" , "France National-7 matches" , "Germany Regional League North-3 matches" , "Germany Regional League West-1 matches" , "Holland 2nd Division-5 matches"at 18/12/2009 have been postponed.All bets taken are considered REFUNDED. Parlay counted as one (1)...[Please kindly refer to result section for more details]...Thank you!!  </td></tr><tr bgcolor="#F6F8F9" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#F6F8F9'"><td class="w_order_ms">13</td><td class="c_ms">115607</td><td class="bl_time_ms">12/18/2009<br/>01:10:41 PM</td><td class="message_content">Attn:[Soccer] The match between "Sepahan -vs- Moghavemat" [IRAN PRO LEAGUE - 18/12] has been suspended after 1st half. All bets placed will be considered REFUNDED (Except 1st half). Thank you!  	</td></tr><tr bgcolor="#faf9ee" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#faf9ee'"><td class="w_order_ms">14</td><td class="c_ms">115602</td><td class="bl_time_ms">12/18/2009<br/>07:16:07 AM</td><td class="message_content">Attn:[Soccer] The match between "Teraktor Sazi -vs- Shahin Bushehr" [IRAN PRO LEAGUE - 18/12*Live*], we faced disruption in our broadcast from 18/12 6:44:21 PM - 6:47:11 PM. As a result tickets placed during the disrupted period were rejected. Sorry for the inconveniences caused!  	</td></tr><tr bgcolor="#F6F8F9" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#F6F8F9'"><td class="w_order_ms">15</td><td class="c_ms">115601</td><td class="bl_time_ms">12/18/2009<br/>12:10:58 AM</td><td class="message_content">Attn:[Soccer] Due to result undecided, "Al Wasl U17 -vs- Al Ahli (UAE) U17"[UAE U17 League - 17/12] statement will be moved to 18/12. Sorry for the inconvenience caused!  	</td></tr><tr bgcolor="#faf9ee" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#faf9ee'"><td class="w_order_ms">16</td><td class="c_ms">115599</td><td class="bl_time_ms">12/17/2009<br/>06:18:05 PM</td><td class="message_content">Attn:[Soccer] Due to irregular playing time (1st half 41st minutes & 2nd half 37th minutes) on match between "KR Reykjavik (N) -vs- IBV Vestmannaeyjar"[CLUB FRIENDLY - 17/12], all bets taken are considered REFUNDED (Except 1st Half). Sorry for the inconveniences caused!  	</td></tr><tr bgcolor="#F6F8F9" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#F6F8F9'"><td class="w_order_ms">17</td><td class="c_ms">115598</td><td class="bl_time_ms">12/17/2009<br/>04:24:21 PM</td><td class="message_content">Dear Valued Customer:[System] At the following time, 18/12/2009 (Friday) from 14:00 PM – 14:40 PM. We will be performing server maintenance. There will be no market open temporarily. Sorry for the inconvenience caused!  	</td></tr><tr bgcolor="#faf9ee" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#faf9ee'"><td class="w_order_ms">18</td><td class="c_ms">115597</td><td class="bl_time_ms">12/17/2009<br/>01:46:21 PM</td><td class="message_content">Attn: [Soccer] The match between "Twente (W) -vs- SC Heerenveen (W)","AZ Alkmaar (W) -vs- Utrecht (W)" & "ADO Den Haag (W) -vs- Willem II (W)"[HOLLAND WOMEN EREDIVISIE - 17/12] had been postponed. All bets taken are considered REFUNDED. Thank you!  	</td></tr><tr bgcolor="#F6F8F9" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#F6F8F9'"><td class="w_order_ms">19</td><td class="c_ms">115596</td><td class="bl_time_ms">12/17/2009<br/>01:40:33 PM</td><td class="message_content">Attn:[Soccer]Due to wrong result displayed, the match between "Al Karmel -vs- Al Yarmouk" [Jordan League - 17/12]. The actual final result is "0-3" instead of "0-2". Please kindly double check your statement again. Sorry for the inconveniences caused!  	</td></tr><tr bgcolor="#faf9ee" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#faf9ee'"><td class="w_order_ms">20</td><td class="c_ms">115595</td><td class="bl_time_ms">12/17/2009<br/>11:39:54 AM</td><td class="message_content">ATTN:[SOCCER] The match between "Al Jazira Al Hamra U17-vs-Ajman U17"[UAE U17 League - 17/12], due to this game start with unequal players: home 9 players vs away 11 players, all bets taken are considered REFUNDED. Thank you!</td></tr><tr bgcolor="#F6F8F9" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#F6F8F9'"><td class="w_order_ms">21</td><td class="c_ms">115593</td><td class="bl_time_ms">12/17/2009<br/>08:10:45 AM</td><td class="message_content">Attn:[Soccer] Due to disruption in Live broadcast, the match between "Malavan -vs- Peykan" [IRAN PRO LEAGUE - 17/12*Live*]. This match will be removed from our website. Sorry for the inconveniences caused!  	</td></tr><tr bgcolor="#faf9ee" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#faf9ee'"><td class="w_order_ms">22</td><td class="c_ms">115592</td><td class="bl_time_ms">12/17/2009<br/>07:45:05 AM</td><td class="message_content">Attn:[Soccer] Due to wrong team name displayed,the match between "Johor Pasir Gudang -vs- Felda United FC" [CLUB FRIENDLY - 17/12] All bets taken are considered REFUNDED. The actual team name is "Johor Melodies -vs- Felda United FC". Sorry for the inconveniences caused!  	</td></tr><tr bgcolor="#F6F8F9" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#F6F8F9'"><td class="w_order_ms">23</td><td class="c_ms">115591</td><td class="bl_time_ms">12/17/2009<br/>07:32:10 AM</td><td class="message_content">Attn:[Soccer]The match between "Shirin Faraz Kermanshah -vs- Mes Sarcheshme" [Iran Azadegan League - 17/12*Live*], we faced disruption in our broadcast from 17/12 7:02:48 PM - 7:06:56 PM. As a result tickets placed during the disrupted period were rejected. Sorry for the inconveniences caused!  	</td></tr><tr bgcolor="#faf9ee" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#faf9ee'"><td class="w_order_ms">24</td><td class="c_ms">115590</td><td class="bl_time_ms">12/17/2009<br/>07:21:21 AM</td><td class="message_content">Attn:[Soccer]The match between "Saipa FC -vs- Rah Ahan" [IRAN PRO LEAGUE - 17/12*Live*], we faced disruption in our broadcast from 17/12 7:05:09 PM - 7:08:41 PM. As a result tickets placed during the disrupted period were rejected. Sorry for the inconveniences caused!  	</td></tr><tr bgcolor="#F6F8F9" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#F6F8F9'"><td class="w_order_ms">25</td><td class="c_ms">115579</td><td class="bl_time_ms">12/17/2009<br/>12:12:39 AM</td><td class="message_content">Attn:[Soccer] Due to result undecided, "Al Ahli (UAE) U19 -vs- Al Shabab (UAE) U19"[UAE U19 League - 16/12] statement will be moved to 17/12. Sorry for the inconvenience caused!  	</td></tr></table></div><input type="hidden" name="eroMeg" id="eroMeg" value="The &quot;From&quot; Date can not be greater than the &quot;To&quot; Date"><input type="hidden" name="msgType" id="msgType" value="normal"><script type="text/javascript">setStatusCalendar();</script>

</body>
</html>
