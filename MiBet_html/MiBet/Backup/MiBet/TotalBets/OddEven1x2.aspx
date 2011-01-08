<%@ Page Language="C#" AutoEventWireup="true" CodeFile="OddEven1x2.aspx.cs" Inherits="TotalBets_OddEven1x2" %>

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

<script type="text/javascript" src="../Js/opt/jx.js?v=20091218"></script>

<script type="text/javascript" src="../Js/IBCWnd/IBCWnd.js?v=20091218"></script>
<script type="text/javascript">
var timer = "";
function GetOddEvent1x2() { 
    Ajax.Request("../Handlers/OddEven1x2Data.ashx",{
        asynchronous:true,
        method:'post',        
        onComplete:BindOddEvent1x2
    });
}
function openForecast1x2(matchid, bettype)
{
    ibcWnd.open('../ForeCast/1x2FC.aspx?matchid='+ matchid + '&bettype=' + bettype, '', 70, 50, 600, 200, 'class1', 'class2');
}
function BindOddEvent1x2(rs) {    
    $('sContent').innerHTML =rs.responseText;    
}
var timer = setInterval("GetOddEvent1x2();", 15000);

</script></head>
<body>
<div id="page_main"><div id="header_main">Odd/Even + 1 X 2</div><div id="sContent"><table cellpadding="0" cellspacing="1" border="0" class="tblRpt c"><tr class="RptHeader"><td rowspan="2" style="width: 20px;">#</td><td rowspan="2" style="width: 110px;">Time</td><td rowspan="2">Event</td><td colspan="3">Full Time</td><td colspan="3">1st Half</td></tr><tr class="RptHeader02"><td style="width: 100px">Odd/Even</td><td style="width: 100px" colspan="2">1 X 2</td><td style="width: 100px">Odd/Even</td><td style="width: 100px" colspan="2">1 X 2</td></tr><tr class="c"><td colspan="9" style="padding-left: 20px;" class="league">*ENGLISH PREMIER LEAGUE</td></tr><tr class="r" bgcolor="#ffddcc" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#ffddcc'"><td class="w-order">1</td><td class="c bl_time">0 - 0<br /><font color=red><i>Live!</i></font></td><td class='l '>Wolverhampton Wanderers -vs- Burnley</td><td></td><td style="width: 70px"><a class="fcnum" href="../BetList/BetList.aspx?matchid=637946&bettype=5&type=BettypeMatch">1</a></td><td class="fcbtn" align="center" style="width: 16px"><a href="javascript:openForecast1x2('637946','5')" class="btnInfo"></a></td><td></td><td style="width: 70px"><a class="fcnum" href="../BetList/BetList.aspx?matchid=637946&bettype=15&type=BettypeMatch">5</a></td><td class="fcbtn" align="center" style="width: 16px"><a href="javascript:openForecast1x2('637946','15')" class="btnInfo"></a></td></tr><tr class="r" bgcolor="#ffddcc" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#ffddcc'"><td class="w-order">2</td><td class="c bl_time">1 - 0<br /><font color=red><i>Live!</i></font></td><td class='l '>Wolverhampton Wanderers -vs- Burnley</td><td></td><td style="width: 70px"><a class="fcnum" href="../BetList/BetList.aspx?matchid=637946&bettype=5&type=BettypeMatch">2</a></td><td class="fcbtn" align="center" style="width: 16px"><a href="javascript:openForecast1x2('637946','5')" class="btnInfo"></a></td><td></td><td style="width: 70px"></td><td class="fcbtn" align="center" style="width: 16px"></td></tr><tr class="c"><td colspan="9" style="padding-left: 20px;" class="league">*ITALY SERIE A</td></tr><tr class="r" bgcolor="#ffddcc" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#ffddcc'"><td class="w-order">3</td><td class="c bl_time">0 - 0<br /><font color=red><i>Live!</i></font></td><td class='l '>AS Roma -vs- Parma</td><td></td><td style="width: 70px"><a class="fcnum" href="../BetList/BetList.aspx?matchid=637962&bettype=5&type=BettypeMatch">0</a></td><td class="fcbtn" align="center" style="width: 16px"><a href="javascript:openForecast1x2('637962','5')" class="btnInfo"></a></td><td></td><td style="width: 70px"></td><td class="fcbtn" align="center" style="width: 16px"></td></tr><tr class="r" bgcolor="#ffddcc" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#ffddcc'"><td class="w-order">4</td><td class="c bl_time">0 - 0<br /><font color=red><i>Live!</i></font></td><td class='l '>Palermo -vs- Siena</td><td></td><td style="width: 70px"><a class="fcnum" href="../BetList/BetList.aspx?matchid=637961&bettype=5&type=BettypeMatch">0</a></td><td class="fcbtn" align="center" style="width: 16px"><a href="javascript:openForecast1x2('637961','5')" class="btnInfo"></a></td><td></td><td style="width: 70px"></td><td class="fcbtn" align="center" style="width: 16px"></td></tr><tr class="c"><td colspan="9" style="padding-left: 20px;" class="league">English League Championship</td></tr><tr class="r" bgcolor="#ffddcc" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#ffddcc'"><td class="w-order">5</td><td class="c bl_time">0 - 0<br /><font color=red><i>Live!</i></font></td><td class='l '>Newcastle United -vs- Middlesbrough</td><td></td><td style="width: 70px"><a class="fcnum" href="../BetList/BetList.aspx?matchid=642756&bettype=5&type=BettypeMatch">0</a></td><td class="fcbtn" align="center" style="width: 16px"><a href="javascript:openForecast1x2('642756','5')" class="btnInfo"></a></td><td></td><td style="width: 70px"></td><td class="fcbtn" align="center" style="width: 16px"></td></tr><tr class="r" bgcolor="#ffddcc" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#ffddcc'"><td class="w-order">6</td><td class="c bl_time">1 - 0<br /><font color=red><i>Live!</i></font></td><td class='l '>Newcastle United -vs- Middlesbrough</td><td></td><td style="width: 70px"><a class="fcnum" href="../BetList/BetList.aspx?matchid=642756&bettype=5&type=BettypeMatch">0</a></td><td class="fcbtn" align="center" style="width: 16px"><a href="javascript:openForecast1x2('642756','5')" class="btnInfo"></a></td><td></td><td style="width: 70px"></td><td class="fcbtn" align="center" style="width: 16px"></td></tr><tr class="r" bgcolor="#F6F8F9" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#F6F8F9'"><td class="w-order">7</td><td class="c bl_time"><font color=red>LIVE</font>  09:00PM</td><td class='l '>Newcastle United -vs- Middlesbrough</td><td></td><td style="width: 70px"><a class="fcnum" href="../BetList/BetList.aspx?matchid=642756&bettype=5&type=BettypeMatch">8</a></td><td class="fcbtn" align="center" style="width: 16px"><a href="javascript:openForecast1x2('642756','5')" class="btnInfo"></a></td><td></td><td style="width: 70px"></td><td class="fcbtn" align="center" style="width: 16px"></td></tr></table></div></div>

</body>
</html>
