<%@ Page Language="C#" AutoEventWireup="true" Inherits="TotalBets_HDPOU" Codebehind="HDPOU.aspx.cs" %>

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
function GetHDPOU() {
    Ajax.Request("../Handlers/HDPOUData.ashx",{
        asynchronous:true,
        method:'get',        
        onComplete:BindHDPOU
    });    
}

function BindHDPOU(rs) {    
    $('sContent').innerHTML = rs.responseText;
}

function openForecast(matchid, bettype)
{
    ibcWnd.open('../ForeCast/FCAH.aspx?matchid='+ matchid + '&b=' + bettype, '', 70, 50, 550, 200, 'class1', 'class2');
}

var timer = setInterval("GetHDPOU();", 15000);

</script>
</head>
<body>
    <div id="page_main">
        <div id="header_main">
            Handicap/Over Under/Live</div>
        <div id="sContent">
            <table cellpadding="0" cellspacing="1" class="tblRpt" style="width: 98%;">
                <tr class="RptHeader">
                    <td rowspan="2" style="width: 20px;">
                        #
                    </td>
                    <td rowspan="2" style="width: 110px;">
                        Time
                    </td>
                    <td rowspan="2">
                        Event
                    </td>
                    <td colspan="4">
                        &nbsp;Full Time
                    </td>
                    <td colspan="4">
                        &nbsp;1st Half
                    </td>
                </tr>
                <tr class="RptHeader02">
                    <td colspan="2" style="text-align: center;">
                        Handicap
                    </td>
                    <td colspan="2" style="text-align: center;">
                        Over/Under
                    </td>
                    <td colspan="2" style="text-align: center;">
                        Handicap
                    </td>
                    <td colspan="2" style="text-align: center;">
                        Over/Under
                    </td>
                </tr>
                <tr class="c">
                    <td colspan="11" class="league" style="padding-left: 20px;">
                        *ENGLISH PREMIER LEAGUE
                    </td>
                </tr>
                <tr bgcolor="#ffddcc" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#ffddcc'">
                    <td class="w-order">
                        1
                    </td>
                    <td class="c bl_time">
                        0 - 0<br />
                        <font color="red"><i>Live!</i></font>
                    </td>
                    <td style="white-space: nowrap;">
                        Wolverhampton Wanderers -vs- Burnley
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=637946&bettype=1&type=BettypeMatch">
                            144</a>
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                        <a href="javascript:openForecast('637946','1')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=637946&bettype=3&type=BettypeMatch">
                            <font color='#eb6003'>-311</font></a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('637946','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=637946&bettype=7&type=BettypeMatch">
                            <font color='#eb6003'>-26</font></a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('637946','7')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=637946&bettype=8&type=BettypeMatch">
                            96</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('637946','8')" class="btnInfo"></a>
                    </td>
                </tr>
                <tr bgcolor="#ffddcc" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#ffddcc'">
                    <td class="w-order">
                        2
                    </td>
                    <td class="c bl_time">
                        1 - 0<br />
                        <font color="red"><i>Live!</i></font>
                    </td>
                    <td style="white-space: nowrap;">
                        Wolverhampton Wanderers -vs- Burnley
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=637946&bettype=1&type=BettypeMatch">
                            <font color='#eb6003'>-246</font></a>
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                        <a href="javascript:openForecast('637946','1')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=637946&bettype=3&type=BettypeMatch">
                            <font color='#eb6003'>-797</font></a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('637946','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=637946&bettype=7&type=BettypeMatch">
                            <font color='#eb6003'>-3</font></a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('637946','7')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=637946&bettype=8&type=BettypeMatch">
                            519</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('637946','8')" class="btnInfo"></a>
                    </td>
                </tr>
                <tr class="c">
                    <td colspan="11" class="league" style="padding-left: 20px;">
                        *ENGLISH PREMIER LEAGUE - SPECIALS
                    </td>
                </tr>
                <tr bgcolor="#ffddcc" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#ffddcc'">
                    <td class="w-order">
                        3
                    </td>
                    <td class="c bl_time">
                        0 - 0<br />
                        <font color="red"><i>Live!</i></font>
                    </td>
                    <td style="white-space: nowrap;">
                        Wolverhampton Wanderers No.of Corners -vs- Burnley No.of Corners
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=645932&bettype=3&type=BettypeMatch">
                            <font color='#eb6003'>-50</font></a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('645932','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=645932&bettype=8&type=BettypeMatch">
                            <font color='#eb6003'>-52</font></a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('645932','8')" class="btnInfo"></a>
                    </td>
                </tr>
                <tr bgcolor="#ffddcc" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#ffddcc'">
                    <td class="w-order">
                        4
                    </td>
                    <td class="c bl_time">
                        1 - 0<br />
                        <font color="red"><i>Live!</i></font>
                    </td>
                    <td style="white-space: nowrap;">
                        Wolverhampton Wanderers No.of Corners -vs- Burnley No.of Corners
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=645932&bettype=3&type=BettypeMatch">
                            107</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('645932','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=645932&bettype=8&type=BettypeMatch">
                            <font color='#eb6003'>-4</font></a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('645932','8')" class="btnInfo"></a>
                    </td>
                </tr>
                <tr bgcolor="#ffddcc" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#ffddcc'">
                    <td class="w-order">
                        5
                    </td>
                    <td class="c bl_time">
                        2 - 0<br />
                        <font color="red"><i>Live!</i></font>
                    </td>
                    <td style="white-space: nowrap;">
                        Wolverhampton Wanderers No.of Corners -vs- Burnley No.of Corners
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=645932&bettype=3&type=BettypeMatch">
                            <font color='#eb6003'>-11</font></a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('645932','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=645932&bettype=8&type=BettypeMatch">
                            <font color='#eb6003'>-63</font></a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('645932','8')" class="btnInfo"></a>
                    </td>
                </tr>
                <tr bgcolor="#ffddcc" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#ffddcc'">
                    <td class="w-order">
                        6
                    </td>
                    <td class="c bl_time">
                        2 - 1<br />
                        <font color="red"><i>Live!</i></font>
                    </td>
                    <td style="white-space: nowrap;">
                        Wolverhampton Wanderers No.of Corners -vs- Burnley No.of Corners
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=645932&bettype=3&type=BettypeMatch">
                            <font color='#eb6003'>-4</font></a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('645932','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=645932&bettype=8&type=BettypeMatch">
                            <font color='#eb6003'>-97</font></a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('645932','8')" class="btnInfo"></a>
                    </td>
                </tr>
                <tr bgcolor="#ffddcc" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#ffddcc'">
                    <td class="w-order">
                        7
                    </td>
                    <td class="c bl_time">
                        3 - 1<br />
                        <font color="red"><i>Live!</i></font>
                    </td>
                    <td style="white-space: nowrap;">
                        Wolverhampton Wanderers No.of Corners -vs- Burnley No.of Corners
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=645932&bettype=3&type=BettypeMatch">
                            <font color='#eb6003'>-162</font></a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('645932','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=645932&bettype=8&type=BettypeMatch">
                            97</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('645932','8')" class="btnInfo"></a>
                    </td>
                </tr>
                <tr class="c">
                    <td colspan="11" class="league" style="padding-left: 20px;">
                        *ITALY SERIE A
                    </td>
                </tr>
                <tr bgcolor="#ffddcc" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#ffddcc'">
                    <td class="w-order">
                        8
                    </td>
                    <td class="c bl_time">
                        0 - 0<br />
                        <font color="red"><i>Live!</i></font>
                    </td>
                    <td style="white-space: nowrap;">
                        AS Roma -vs- Parma
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=637962&bettype=1&type=BettypeMatch">
                            66</a>
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                        <a href="javascript:openForecast('637962','1')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=637962&bettype=3&type=BettypeMatch">
                            <font color='#eb6003'>-109</font></a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('637962','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=637962&bettype=7&type=BettypeMatch">
                            129</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('637962','7')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=637962&bettype=8&type=BettypeMatch">
                            62</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('637962','8')" class="btnInfo"></a>
                    </td>
                </tr>
                <tr bgcolor="#ffddcc" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#ffddcc'">
                    <td class="w-order">
                        9
                    </td>
                    <td class="c bl_time">
                        0 - 0<br />
                        <font color="red"><i>Live!</i></font>
                    </td>
                    <td style="white-space: nowrap;">
                        Juventus -vs- Catania
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=637958&bettype=1&type=BettypeMatch">
                            284</a>
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                        <a href="javascript:openForecast('637958','1')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=637958&bettype=3&type=BettypeMatch">
                            <font color='#eb6003'>-355</font></a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('637958','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=637958&bettype=7&type=BettypeMatch">
                            1,319</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('637958','7')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=637958&bettype=8&type=BettypeMatch">
                            <font color='#eb6003'>-432</font></a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('637958','8')" class="btnInfo"></a>
                    </td>
                </tr>
                <tr bgcolor="#ffddcc" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#ffddcc'">
                    <td class="w-order">
                        10
                    </td>
                    <td class="c bl_time">
                        0 - 0<br />
                        <font color="red"><i>Live!</i></font>
                    </td>
                    <td style="white-space: nowrap;">
                        Livorno -vs- Sampdoria
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=637959&bettype=1&type=BettypeMatch">
                            <font color='#eb6003'>-39</font></a>
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                        <a href="javascript:openForecast('637959','1')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=637959&bettype=3&type=BettypeMatch">
                            11</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('637959','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=637959&bettype=7&type=BettypeMatch">
                            <font color='#eb6003'>-11</font></a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('637959','7')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=637959&bettype=8&type=BettypeMatch">
                            48</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('637959','8')" class="btnInfo"></a>
                    </td>
                </tr>
                <tr bgcolor="#ffddcc" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#ffddcc'">
                    <td class="w-order">
                        11
                    </td>
                    <td class="c bl_time">
                        0 - 1<br />
                        <font color="red"><i>Live!</i></font>
                    </td>
                    <td style="white-space: nowrap;">
                        Livorno -vs- Sampdoria
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=637959&bettype=1&type=BettypeMatch">
                            <font color='#eb6003'>-134</font></a>
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                        <a href="javascript:openForecast('637959','1')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=637959&bettype=3&type=BettypeMatch">
                            <font color='#eb6003'>-76</font></a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('637959','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=637959&bettype=7&type=BettypeMatch">
                            49</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('637959','7')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=637959&bettype=8&type=BettypeMatch">
                            80</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('637959','8')" class="btnInfo"></a>
                    </td>
                </tr>
                <tr bgcolor="#ffddcc" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#ffddcc'">
                    <td class="w-order">
                        12
                    </td>
                    <td class="c bl_time">
                        0 - 0<br />
                        <font color="red"><i>Live!</i></font>
                    </td>
                    <td style="white-space: nowrap;">
                        Napoli -vs- Chievo
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=637960&bettype=1&type=BettypeMatch">
                            108</a>
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                        <a href="javascript:openForecast('637960','1')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=637960&bettype=3&type=BettypeMatch">
                            55</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('637960','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=637960&bettype=7&type=BettypeMatch">
                            7</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('637960','7')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=637960&bettype=8&type=BettypeMatch">
                            0</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('637960','8')" class="btnInfo"></a>
                    </td>
                </tr>
                <tr bgcolor="#ffddcc" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#ffddcc'">
                    <td class="w-order">
                        13
                    </td>
                    <td class="c bl_time">
                        1 - 0<br />
                        <font color="red"><i>Live!</i></font>
                    </td>
                    <td style="white-space: nowrap;">
                        Napoli -vs- Chievo
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=637960&bettype=1&type=BettypeMatch">
                            <font color='#eb6003'>-150</font></a>
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                        <a href="javascript:openForecast('637960','1')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=637960&bettype=3&type=BettypeMatch">
                            <font color='#eb6003'>-499</font></a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('637960','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=637960&bettype=7&type=BettypeMatch">
                            0</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('637960','7')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=637960&bettype=8&type=BettypeMatch">
                            69</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('637960','8')" class="btnInfo"></a>
                    </td>
                </tr>
                <tr bgcolor="#ffddcc" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#ffddcc'">
                    <td class="w-order">
                        14
                    </td>
                    <td class="c bl_time">
                        0 - 0<br />
                        <font color="red"><i>Live!</i></font>
                    </td>
                    <td style="white-space: nowrap;">
                        Palermo -vs- Siena
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=637961&bettype=1&type=BettypeMatch">
                            101</a>
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                        <a href="javascript:openForecast('637961','1')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=637961&bettype=3&type=BettypeMatch">
                            26</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('637961','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=637961&bettype=7&type=BettypeMatch">
                            27</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('637961','7')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=637961&bettype=8&type=BettypeMatch">
                            42</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('637961','8')" class="btnInfo"></a>
                    </td>
                </tr>
                <tr class="c">
                    <td colspan="11" class="league" style="padding-left: 20px;">
                        *ITALY SERIE A - SPECIFIC 15 MINS OVER/UNDER
                    </td>
                </tr>
                <tr bgcolor="#ffddcc" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#ffddcc'">
                    <td class="w-order">
                        15
                    </td>
                    <td class="c bl_time">
                        0 - 0<br />
                        <font color="red"><i>Live!</i></font>
                    </td>
                    <td style="white-space: nowrap;">
                        Juventus 15:01-30:00 -vs- Catania 15:01-30:00
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=646334&bettype=3&type=BettypeMatch">
                            0</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('646334','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                </tr>
                <tr bgcolor="#ffddcc" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#ffddcc'">
                    <td class="w-order">
                        16
                    </td>
                    <td class="c bl_time">
                        0 - 0<br />
                        <font color="red"><i>Live!</i></font>
                    </td>
                    <td style="white-space: nowrap;">
                        Livorno 00:00-15:00 -vs- Sampdoria 00:00-15:00
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=646337&bettype=3&type=BettypeMatch">
                            0</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('646337','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                </tr>
                <tr bgcolor="#ffddcc" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#ffddcc'">
                    <td class="w-order">
                        17
                    </td>
                    <td class="c bl_time">
                        0 - 0<br />
                        <font color="red"><i>Live!</i></font>
                    </td>
                    <td style="white-space: nowrap;">
                        Livorno 15:01-30:00 -vs- Sampdoria 15:01-30:00
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=646338&bettype=3&type=BettypeMatch">
                            1</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('646338','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                </tr>
                <tr bgcolor="#ffddcc" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#ffddcc'">
                    <td class="w-order">
                        18
                    </td>
                    <td class="c bl_time">
                        0 - 0<br />
                        <font color="red"><i>Live!</i></font>
                    </td>
                    <td style="white-space: nowrap;">
                        Napoli 15:01-30:00 -vs- Chievo 15:01-30:00
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=646342&bettype=3&type=BettypeMatch">
                            0</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('646342','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                </tr>
                <tr bgcolor="#ffddcc" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#ffddcc'">
                    <td class="w-order">
                        19
                    </td>
                    <td class="c bl_time">
                        0 - 0<br />
                        <font color="red"><i>Live!</i></font>
                    </td>
                    <td style="white-space: nowrap;">
                        Palermo 00:00-15:00 -vs- Siena 00:00-15:00
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=646345&bettype=3&type=BettypeMatch">
                            0</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('646345','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                </tr>
                <tr bgcolor="#ffddcc" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#ffddcc'">
                    <td class="w-order">
                        20
                    </td>
                    <td class="c bl_time">
                        0 - 0<br />
                        <font color="red"><i>Live!</i></font>
                    </td>
                    <td style="white-space: nowrap;">
                        AS Roma 15:01-30:00 -vs- Parma 15:01-30:00
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=646350&bettype=3&type=BettypeMatch">
                            1</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('646350','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                </tr>
                <tr class="c">
                    <td colspan="11" class="league" style="padding-left: 20px;">
                        *ITALY SERIE A - SPECIALS
                    </td>
                </tr>
                <tr bgcolor="#ffddcc" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#ffddcc'">
                    <td class="w-order">
                        21
                    </td>
                    <td class="c bl_time">
                        1 - 0<br />
                        <font color="red"><i>Live!</i></font>
                    </td>
                    <td style="white-space: nowrap;">
                        Juventus No.of Corners -vs- Catania No.of Corners
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=646472&bettype=3&type=BettypeMatch">
                            <font color='#eb6003'>-14</font></a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('646472','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=646472&bettype=8&type=BettypeMatch">
                            <font color='#eb6003'>-3</font></a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('646472','8')" class="btnInfo"></a>
                    </td>
                </tr>
                <tr bgcolor="#ffddcc" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#ffddcc'">
                    <td class="w-order">
                        22
                    </td>
                    <td class="c bl_time">
                        2 - 0<br />
                        <font color="red"><i>Live!</i></font>
                    </td>
                    <td style="white-space: nowrap;">
                        Juventus No.of Corners -vs- Catania No.of Corners
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=646472&bettype=3&type=BettypeMatch">
                            1</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('646472','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=646472&bettype=8&type=BettypeMatch">
                            <font color='#eb6003'>-60</font></a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('646472','8')" class="btnInfo"></a>
                    </td>
                </tr>
                <tr bgcolor="#ffddcc" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#ffddcc'">
                    <td class="w-order">
                        23
                    </td>
                    <td class="c bl_time">
                        0 - 0<br />
                        <font color="red"><i>Live!</i></font>
                    </td>
                    <td style="white-space: nowrap;">
                        Livorno No.of Corners -vs- Sampdoria No.of Corners
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=646474&bettype=3&type=BettypeMatch">
                            <font color='#eb6003'>-1</font></a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('646474','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=646474&bettype=8&type=BettypeMatch">
                            1</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('646474','8')" class="btnInfo"></a>
                    </td>
                </tr>
                <tr bgcolor="#ffddcc" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#ffddcc'">
                    <td class="w-order">
                        24
                    </td>
                    <td class="c bl_time">
                        0 - 2<br />
                        <font color="red"><i>Live!</i></font>
                    </td>
                    <td style="white-space: nowrap;">
                        Livorno No.of Corners -vs- Sampdoria No.of Corners
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=646474&bettype=3&type=BettypeMatch">
                            1</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('646474','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=646474&bettype=8&type=BettypeMatch">
                            <font color='#eb6003'>-25</font></a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('646474','8')" class="btnInfo"></a>
                    </td>
                </tr>
                <tr bgcolor="#ffddcc" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#ffddcc'">
                    <td class="w-order">
                        25
                    </td>
                    <td class="c bl_time">
                        0 - 0<br />
                        <font color="red"><i>Live!</i></font>
                    </td>
                    <td style="white-space: nowrap;">
                        Napoli No.of Corners -vs- Chievo No.of Corners
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=646475&bettype=3&type=BettypeMatch">
                            <font color='#eb6003'>-5</font></a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('646475','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                </tr>
                <tr bgcolor="#ffddcc" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#ffddcc'">
                    <td class="w-order">
                        26
                    </td>
                    <td class="c bl_time">
                        0 - 2<br />
                        <font color="red"><i>Live!</i></font>
                    </td>
                    <td style="white-space: nowrap;">
                        Napoli No.of Corners -vs- Chievo No.of Corners
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=646475&bettype=3&type=BettypeMatch">
                            0</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('646475','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=646475&bettype=8&type=BettypeMatch">
                            0</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('646475','8')" class="btnInfo"></a>
                    </td>
                </tr>
                <tr bgcolor="#ffddcc" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#ffddcc'">
                    <td class="w-order">
                        27
                    </td>
                    <td class="c bl_time">
                        0 - 0<br />
                        <font color="red"><i>Live!</i></font>
                    </td>
                    <td style="white-space: nowrap;">
                        Palermo No.of Corners -vs- Siena No.of Corners
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=646477&bettype=3&type=BettypeMatch">
                            <font color='#eb6003'>-4</font></a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('646477','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                </tr>
                <tr bgcolor="#ffddcc" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#ffddcc'">
                    <td class="w-order">
                        28
                    </td>
                    <td class="c bl_time">
                        0 - 1<br />
                        <font color="red"><i>Live!</i></font>
                    </td>
                    <td style="white-space: nowrap;">
                        AS Roma No.of Corners -vs- Parma No.of Corners
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=646478&bettype=3&type=BettypeMatch">
                            <font color='#eb6003'>-1</font></a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('646478','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                </tr>
                <tr bgcolor="#ffddcc" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#ffddcc'">
                    <td class="w-order">
                        29
                    </td>
                    <td class="c bl_time">
                        1 - 1<br />
                        <font color="red"><i>Live!</i></font>
                    </td>
                    <td style="white-space: nowrap;">
                        AS Roma No.of Corners -vs- Parma No.of Corners
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=646478&bettype=8&type=BettypeMatch">
                            5</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('646478','8')" class="btnInfo"></a>
                    </td>
                </tr>
                <tr bgcolor="#ffddcc" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#ffddcc'">
                    <td class="w-order">
                        30
                    </td>
                    <td class="c bl_time">
                        2 - 1<br />
                        <font color="red"><i>Live!</i></font>
                    </td>
                    <td style="white-space: nowrap;">
                        AS Roma No.of Corners -vs- Parma No.of Corners
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=646478&bettype=3&type=BettypeMatch">
                            2</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('646478','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=646478&bettype=8&type=BettypeMatch">
                            <font color='#eb6003'>-1</font></a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('646478','8')" class="btnInfo"></a>
                    </td>
                </tr>
                <tr bgcolor="#ffddcc" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#ffddcc'">
                    <td class="w-order">
                        31
                    </td>
                    <td class="c bl_time">
                        3 - 1<br />
                        <font color="red"><i>Live!</i></font>
                    </td>
                    <td style="white-space: nowrap;">
                        AS Roma No.of Corners -vs- Parma No.of Corners
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=646478&bettype=3&type=BettypeMatch">
                            1</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('646478','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=646478&bettype=8&type=BettypeMatch">
                            10</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('646478','8')" class="btnInfo"></a>
                    </td>
                </tr>
                <tr class="c">
                    <td colspan="11" class="league" style="padding-left: 20px;">
                        English League Championship
                    </td>
                </tr>
                <tr bgcolor="#ffddcc" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#ffddcc'">
                    <td class="w-order">
                        32
                    </td>
                    <td class="c bl_time">
                        0 - 0<br />
                        <font color="red"><i>Live!</i></font>
                    </td>
                    <td style="white-space: nowrap;">
                        Newcastle United -vs- Middlesbrough
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=642756&bettype=1&type=BettypeMatch">
                            <font color='#eb6003'>-87</font></a>
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                        <a href="javascript:openForecast('642756','1')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=642756&bettype=3&type=BettypeMatch">
                            <font color='#eb6003'>-4</font></a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('642756','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                </tr>
                <tr bgcolor="#ffddcc" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#ffddcc'">
                    <td class="w-order">
                        33
                    </td>
                    <td class="c bl_time">
                        1 - 0<br />
                        <font color="red"><i>Live!</i></font>
                    </td>
                    <td style="white-space: nowrap;">
                        Newcastle United -vs- Middlesbrough
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=642756&bettype=1&type=BettypeMatch">
                            <font color='#eb6003'>-206</font></a>
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                        <a href="javascript:openForecast('642756','1')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=642756&bettype=3&type=BettypeMatch">
                            <font color='#eb6003'>-231</font></a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('642756','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                </tr>
                <tr bgcolor="#ffddcc" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#ffddcc'">
                    <td class="w-order">
                        34
                    </td>
                    <td class="c bl_time">
                        2 - 0<br />
                        <font color="red"><i>Live!</i></font>
                    </td>
                    <td style="white-space: nowrap;">
                        Newcastle United -vs- Middlesbrough
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=642756&bettype=1&type=BettypeMatch">
                            <font color='#eb6003'>-3</font></a>
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                        <a href="javascript:openForecast('642756','1')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=642756&bettype=3&type=BettypeMatch">
                            <font color='#eb6003'>-15</font></a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('642756','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                </tr>
                <tr class="c">
                    <td colspan="11" class="league" style="padding-left: 20px;">
                        English League Championship - SPECIALS
                    </td>
                </tr>
                <tr bgcolor="#ffddcc" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#ffddcc'">
                    <td class="w-order">
                        35
                    </td>
                    <td class="c bl_time">
                        0 - 0<br />
                        <font color="red"><i>Live!</i></font>
                    </td>
                    <td style="white-space: nowrap;">
                        Newcastle United No.of Corners -vs- Middlesbrough No.of Corners
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=650236&bettype=3&type=BettypeMatch">
                            0</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('650236','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=650236&bettype=8&type=BettypeMatch">
                            <font color='#eb6003'>-1</font></a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('650236','8')" class="btnInfo"></a>
                    </td>
                </tr>
                <tr bgcolor="#ffddcc" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#ffddcc'">
                    <td class="w-order">
                        36
                    </td>
                    <td class="c bl_time">
                        1 - 0<br />
                        <font color="red"><i>Live!</i></font>
                    </td>
                    <td style="white-space: nowrap;">
                        Newcastle United No.of Corners -vs- Middlesbrough No.of Corners
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=650236&bettype=3&type=BettypeMatch">
                            8</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('650236','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=650236&bettype=8&type=BettypeMatch">
                            177</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('650236','8')" class="btnInfo"></a>
                    </td>
                </tr>
                <tr bgcolor="#ffddcc" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#ffddcc'">
                    <td class="w-order">
                        37
                    </td>
                    <td class="c bl_time">
                        2 - 1<br />
                        <font color="red"><i>Live!</i></font>
                    </td>
                    <td style="white-space: nowrap;">
                        Newcastle United No.of Corners -vs- Middlesbrough No.of Corners
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=650236&bettype=3&type=BettypeMatch">
                            3</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('650236','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                </tr>
                <tr class="c">
                    <td colspan="11" class="league" style="padding-left: 20px;">
                        Germany-Bundesliga 2
                    </td>
                </tr>
                <tr bgcolor="#ffddcc" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#ffddcc'">
                    <td class="w-order">
                        38
                    </td>
                    <td class="c bl_time">
                        0 - 0<br />
                        <font color="red"><i>Live!</i></font>
                    </td>
                    <td style="white-space: nowrap;">
                        Union Berlin -vs- TSV 1860 Munchen
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=642781&bettype=1&type=BettypeMatch">
                            <font color='#eb6003'>-24</font></a>
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                        <a href="javascript:openForecast('642781','1')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=642781&bettype=3&type=BettypeMatch">
                            25</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('642781','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                </tr>
                <tr bgcolor="#ffddcc" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#ffddcc'">
                    <td class="w-order">
                        39
                    </td>
                    <td class="c bl_time">
                        1 - 0<br />
                        <font color="red"><i>Live!</i></font>
                    </td>
                    <td style="white-space: nowrap;">
                        Union Berlin -vs- TSV 1860 Munchen
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=642781&bettype=1&type=BettypeMatch">
                            <font color='#eb6003'>-68</font></a>
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                        <a href="javascript:openForecast('642781','1')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=642781&bettype=3&type=BettypeMatch">
                            <font color='#eb6003'>-35</font></a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('642781','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                </tr>
                <tr bgcolor="#ffddcc" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#ffddcc'">
                    <td class="w-order">
                        40
                    </td>
                    <td class="c bl_time">
                        1 - 1<br />
                        <font color="red"><i>Live!</i></font>
                    </td>
                    <td style="white-space: nowrap;">
                        Union Berlin -vs- TSV 1860 Munchen
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=642781&bettype=1&type=BettypeMatch">
                            5</a>
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                        <a href="javascript:openForecast('642781','1')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=642781&bettype=3&type=BettypeMatch">
                            288</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('642781','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                </tr>
                <tr class="c">
                    <td colspan="11" class="league" style="padding-left: 20px;">
                        Germany-Bundesliga 2 - SPECIFIC 15 MINS OVER/UNDER
                    </td>
                </tr>
                <tr bgcolor="#ffddcc" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#ffddcc'">
                    <td class="w-order">
                        41
                    </td>
                    <td class="c bl_time">
                        0 - 0<br />
                        <font color="red"><i>Live!</i></font>
                    </td>
                    <td style="white-space: nowrap;">
                        SC Paderborn 07 60:01-75:00 -vs- St. Pauli 60:01-75:00
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=650160&bettype=3&type=BettypeMatch">
                            0</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('650160','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                </tr>
                <tr bgcolor="#ffddcc" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#ffddcc'">
                    <td class="w-order">
                        42
                    </td>
                    <td class="c bl_time">
                        1 - 0<br />
                        <font color="red"><i>Live!</i></font>
                    </td>
                    <td style="white-space: nowrap;">
                        SC Paderborn 07 60:01-75:00 -vs- St. Pauli 60:01-75:00
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=650160&bettype=3&type=BettypeMatch">
                            10</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('650160','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                </tr>
                <tr class="c">
                    <td colspan="11" class="league" style="padding-left: 20px;">
                        Germany-Bundesliga 2 - SPECIALS
                    </td>
                </tr>
                <tr bgcolor="#ffddcc" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#ffddcc'">
                    <td class="w-order">
                        43
                    </td>
                    <td class="c bl_time">
                        0 - 0<br />
                        <font color="red"><i>Live!</i></font>
                    </td>
                    <td style="white-space: nowrap;">
                        Union Berlin No.of Corners -vs- TSV 1860 Munchen No.of Corners
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=650166&bettype=3&type=BettypeMatch">
                            1</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('650166','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=650166&bettype=8&type=BettypeMatch">
                            1</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('650166','8')" class="btnInfo"></a>
                    </td>
                </tr>
                <tr bgcolor="#ffddcc" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#ffddcc'">
                    <td class="w-order">
                        44
                    </td>
                    <td class="c bl_time">
                        1 - 0<br />
                        <font color="red"><i>Live!</i></font>
                    </td>
                    <td style="white-space: nowrap;">
                        Union Berlin No.of Corners -vs- TSV 1860 Munchen No.of Corners
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=650166&bettype=3&type=BettypeMatch">
                            <font color='#eb6003'>-1</font></a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('650166','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=650166&bettype=8&type=BettypeMatch">
                            <font color='#eb6003'>-35</font></a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('650166','8')" class="btnInfo"></a>
                    </td>
                </tr>
                <tr bgcolor="#ffddcc" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#ffddcc'">
                    <td class="w-order">
                        45
                    </td>
                    <td class="c bl_time">
                        1 - 2<br />
                        <font color="red"><i>Live!</i></font>
                    </td>
                    <td style="white-space: nowrap;">
                        Union Berlin No.of Corners -vs- TSV 1860 Munchen No.of Corners
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=650166&bettype=3&type=BettypeMatch">
                            7</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('650166','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=650166&bettype=8&type=BettypeMatch">
                            <font color='#eb6003'>-25</font></a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('650166','8')" class="btnInfo"></a>
                    </td>
                </tr>
                <tr bgcolor="#ffddcc" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#ffddcc'">
                    <td class="w-order">
                        46
                    </td>
                    <td class="c bl_time">
                        1 - 4<br />
                        <font color="red"><i>Live!</i></font>
                    </td>
                    <td style="white-space: nowrap;">
                        Union Berlin No.of Corners -vs- TSV 1860 Munchen No.of Corners
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=650166&bettype=3&type=BettypeMatch">
                            <font color='#eb6003'>-15</font></a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('650166','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                </tr>
                <tr class="c">
                    <td colspan="11" class="league" style="padding-left: 20px;">
                        SCOTLAND PREMIER LEAGUE - SPECIFIC 15 MINS OVER/UNDER
                    </td>
                </tr>
                <tr bgcolor="#ffddcc" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#ffddcc'">
                    <td class="w-order">
                        47
                    </td>
                    <td class="c bl_time">
                        0 - 0<br />
                        <font color="red"><i>Live!</i></font>
                    </td>
                    <td style="white-space: nowrap;">
                        Heart of Midlothian 60:01-75:00 -vs- Celtic 60:01-75:00
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=650152&bettype=3&type=BettypeMatch">
                            8</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('650152','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                </tr>
                <tr class="c">
                    <td colspan="11" class="league" style="padding-left: 20px;">
                        SCOTLAND PREMIER LEAGUE - SPECIALS
                    </td>
                </tr>
                <tr bgcolor="#ffddcc" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#ffddcc'">
                    <td class="w-order">
                        48
                    </td>
                    <td class="c bl_time">
                        0 - 0<br />
                        <font color="red"><i>Live!</i></font>
                    </td>
                    <td style="white-space: nowrap;">
                        Heart of Midlothian No.of Corners -vs- Celtic No.of Corners
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=650148&bettype=8&type=BettypeMatch">
                            18</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('650148','8')" class="btnInfo"></a>
                    </td>
                </tr>
                <tr bgcolor="#ffddcc" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#ffddcc'">
                    <td class="w-order">
                        49
                    </td>
                    <td class="c bl_time">
                        0 - 2<br />
                        <font color="red"><i>Live!</i></font>
                    </td>
                    <td style="white-space: nowrap;">
                        Heart of Midlothian No.of Corners -vs- Celtic No.of Corners
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=650148&bettype=3&type=BettypeMatch">
                            5</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('650148','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=650148&bettype=8&type=BettypeMatch">
                            0</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('650148','8')" class="btnInfo"></a>
                    </td>
                </tr>
                <tr bgcolor="#ffddcc" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#ffddcc'">
                    <td class="w-order">
                        50
                    </td>
                    <td class="c bl_time">
                        0 - 3<br />
                        <font color="red"><i>Live!</i></font>
                    </td>
                    <td style="white-space: nowrap;">
                        Heart of Midlothian No.of Corners -vs- Celtic No.of Corners
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=650148&bettype=8&type=BettypeMatch">
                            <font color='#eb6003'>-12</font></a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('650148','8')" class="btnInfo"></a>
                    </td>
                </tr>
                <tr bgcolor="#ffddcc" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#ffddcc'">
                    <td class="w-order">
                        51
                    </td>
                    <td class="c bl_time">
                        0 - 5<br />
                        <font color="red"><i>Live!</i></font>
                    </td>
                    <td style="white-space: nowrap;">
                        Heart of Midlothian No.of Corners -vs- Celtic No.of Corners
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=650148&bettype=3&type=BettypeMatch">
                            <font color='#eb6003'>-16</font></a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('650148','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=650148&bettype=8&type=BettypeMatch">
                            60</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('650148','8')" class="btnInfo"></a>
                    </td>
                </tr>
                <tr bgcolor="#ffddcc" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#ffddcc'">
                    <td class="w-order">
                        52
                    </td>
                    <td class="c bl_time">
                        0 - 7<br />
                        <font color="red"><i>Live!</i></font>
                    </td>
                    <td style="white-space: nowrap;">
                        Heart of Midlothian No.of Corners -vs- Celtic No.of Corners
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=650148&bettype=3&type=BettypeMatch">
                            <font color='#eb6003'>-4</font></a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('650148','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                </tr>
                <tr bgcolor="#ffddcc" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#ffddcc'">
                    <td class="w-order">
                        53
                    </td>
                    <td class="c bl_time">
                        1 - 7<br />
                        <font color="red"><i>Live!</i></font>
                    </td>
                    <td style="white-space: nowrap;">
                        Heart of Midlothian No.of Corners -vs- Celtic No.of Corners
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=650148&bettype=3&type=BettypeMatch">
                            <font color='#eb6003'>-1</font></a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('650148','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                </tr>
                <tr class="c">
                    <td colspan="11" class="league" style="padding-left: 20px;">
                        GREECE SUPER LEAGUE
                    </td>
                </tr>
                <tr bgcolor="#ffddcc" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#ffddcc'">
                    <td class="w-order">
                        54
                    </td>
                    <td class="c bl_time">
                        0 - 0<br />
                        <font color="red"><i>Live!</i></font>
                    </td>
                    <td style="white-space: nowrap;">
                        Panthrakikos -vs- Atromitos
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=645527&bettype=1&type=BettypeMatch">
                            87</a>
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                        <a href="javascript:openForecast('645527','1')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=645527&bettype=3&type=BettypeMatch">
                            <font color='#eb6003'>-6</font></a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('645527','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                </tr>
                <tr bgcolor="#ffddcc" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#ffddcc'">
                    <td class="w-order">
                        55
                    </td>
                    <td class="c bl_time">
                        0 - 1<br />
                        <font color="red"><i>Live!</i></font>
                    </td>
                    <td style="white-space: nowrap;">
                        Panthrakikos -vs- Atromitos
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=645527&bettype=1&type=BettypeMatch">
                            59</a>
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                        <a href="javascript:openForecast('645527','1')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=645527&bettype=3&type=BettypeMatch">
                            <font color='#eb6003'>-30</font></a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('645527','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                </tr>
                <tr bgcolor="#ffddcc" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#ffddcc'">
                    <td class="w-order">
                        56
                    </td>
                    <td class="c bl_time">
                        0 - 2<br />
                        <font color="red"><i>Live!</i></font>
                    </td>
                    <td style="white-space: nowrap;">
                        Panthrakikos -vs- Atromitos
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=645527&bettype=1&type=BettypeMatch">
                            <font color='#eb6003'>-3</font></a>
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                        <a href="javascript:openForecast('645527','1')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=645527&bettype=3&type=BettypeMatch">
                            5</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('645527','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                </tr>
                <tr bgcolor="#ffddcc" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#ffddcc'">
                    <td class="w-order">
                        57
                    </td>
                    <td class="c bl_time">
                        0 - 3<br />
                        <font color="red"><i>Live!</i></font>
                    </td>
                    <td style="white-space: nowrap;">
                        Panthrakikos -vs- Atromitos
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=645527&bettype=1&type=BettypeMatch">
                            <font color='#eb6003'>-7</font></a>
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                        <a href="javascript:openForecast('645527','1')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=645527&bettype=3&type=BettypeMatch">
                            6</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('645527','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                </tr>
                <tr bgcolor="#ffddcc" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#ffddcc'">
                    <td class="w-order">
                        58
                    </td>
                    <td class="c bl_time">
                        0 - 0<br />
                        <font color="red"><i>Live!</i></font>
                    </td>
                    <td style="white-space: nowrap;">
                        Panionios -vs- Nea Kavala
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=645528&bettype=1&type=BettypeMatch">
                            <font color='#eb6003'>-133</font></a>
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                        <a href="javascript:openForecast('645528','1')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=645528&bettype=3&type=BettypeMatch">
                            16</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('645528','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                </tr>
                <tr bgcolor="#ffddcc" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#ffddcc'">
                    <td class="w-order">
                        59
                    </td>
                    <td class="c bl_time">
                        1 - 0<br />
                        <font color="red"><i>Live!</i></font>
                    </td>
                    <td style="white-space: nowrap;">
                        Panionios -vs- Nea Kavala
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=645528&bettype=1&type=BettypeMatch">
                            46</a>
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                        <a href="javascript:openForecast('645528','1')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=645528&bettype=3&type=BettypeMatch">
                            1</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('645528','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                </tr>
                <tr bgcolor="#ffddcc" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#ffddcc'">
                    <td class="w-order">
                        60
                    </td>
                    <td class="c bl_time">
                        1 - 1<br />
                        <font color="red"><i>Live!</i></font>
                    </td>
                    <td style="white-space: nowrap;">
                        Panionios -vs- Nea Kavala
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=645528&bettype=3&type=BettypeMatch">
                            72</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('645528','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                </tr>
                <tr class="c">
                    <td colspan="11" class="league" style="padding-left: 20px;">
                        GREECE SUPER LEAGUE - SPECIALS
                    </td>
                </tr>
                <tr bgcolor="#ffddcc" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#ffddcc'">
                    <td class="w-order">
                        61
                    </td>
                    <td class="c bl_time">
                        0 - 0<br />
                        <font color="red"><i>Live!</i></font>
                    </td>
                    <td style="white-space: nowrap;">
                        Panthrakikos No.of Corners -vs- Atromitos No.of Corners
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=650174&bettype=8&type=BettypeMatch">
                            1</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('650174','8')" class="btnInfo"></a>
                    </td>
                </tr>
                <tr bgcolor="#ffddcc" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#ffddcc'">
                    <td class="w-order">
                        62
                    </td>
                    <td class="c bl_time">
                        1 - 2<br />
                        <font color="red"><i>Live!</i></font>
                    </td>
                    <td style="white-space: nowrap;">
                        Panthrakikos No.of Corners -vs- Atromitos No.of Corners
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=650174&bettype=8&type=BettypeMatch">
                            1</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('650174','8')" class="btnInfo"></a>
                    </td>
                </tr>
                <tr bgcolor="#ffddcc" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#ffddcc'">
                    <td class="w-order">
                        63
                    </td>
                    <td class="c bl_time">
                        1 - 5<br />
                        <font color="red"><i>Live!</i></font>
                    </td>
                    <td style="white-space: nowrap;">
                        Panthrakikos No.of Corners -vs- Atromitos No.of Corners
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=650174&bettype=8&type=BettypeMatch">
                            2</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('650174','8')" class="btnInfo"></a>
                    </td>
                </tr>
                <tr bgcolor="#ffddcc" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#ffddcc'">
                    <td class="w-order">
                        64
                    </td>
                    <td class="c bl_time">
                        7 - 1<br />
                        <font color="red"><i>Live!</i></font>
                    </td>
                    <td style="white-space: nowrap;">
                        Panionios No.of Corners -vs- Nea Kavala No.of Corners
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=650178&bettype=3&type=BettypeMatch">
                            3</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('650178','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                </tr>
                <tr class="c">
                    <td colspan="11" class="league" style="padding-left: 20px;">
                        Germany Regional League North
                    </td>
                </tr>
                <tr bgcolor="#ffddcc" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#ffddcc'">
                    <td class="w-order">
                        65
                    </td>
                    <td class="c bl_time">
                        0 - 0<br />
                        <font color="red"><i>Live!</i></font>
                    </td>
                    <td style="white-space: nowrap;">
                        Hannover 96 AM -vs- Hertha Berlin AM
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=644694&bettype=3&type=BettypeMatch">
                            2</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('644694','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                </tr>
                <tr bgcolor="#ffddcc" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#ffddcc'">
                    <td class="w-order">
                        66
                    </td>
                    <td class="c bl_time">
                        0 - 1<br />
                        <font color="red"><i>Live!</i></font>
                    </td>
                    <td style="white-space: nowrap;">
                        Hannover 96 AM -vs- Hertha Berlin AM
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=644694&bettype=1&type=BettypeMatch">
                            4</a>
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                        <a href="javascript:openForecast('644694','1')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=644694&bettype=3&type=BettypeMatch">
                            <font color='#eb6003'>-1</font></a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('644694','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                </tr>
                <tr bgcolor="#ffddcc" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#ffddcc'">
                    <td class="w-order">
                        67
                    </td>
                    <td class="c bl_time">
                        1 - 1<br />
                        <font color="red"><i>Live!</i></font>
                    </td>
                    <td style="white-space: nowrap;">
                        Hannover 96 AM -vs- Hertha Berlin AM
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=644694&bettype=3&type=BettypeMatch">
                            <font color='#eb6003'>-1</font></a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('644694','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                </tr>
                <tr bgcolor="#ffddcc" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#ffddcc'">
                    <td class="w-order">
                        68
                    </td>
                    <td class="c bl_time">
                        2 - 1<br />
                        <font color="red"><i>Live!</i></font>
                    </td>
                    <td style="white-space: nowrap;">
                        Hannover 96 AM -vs- Hertha Berlin AM
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=644694&bettype=1&type=BettypeMatch">
                            2</a>
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                        <a href="javascript:openForecast('644694','1')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=644694&bettype=3&type=BettypeMatch">
                            1</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('644694','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                </tr>
                <tr bgcolor="#ffddcc" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#ffddcc'">
                    <td class="w-order">
                        69
                    </td>
                    <td class="c bl_time">
                        2 - 2<br />
                        <font color="red"><i>Live!</i></font>
                    </td>
                    <td style="white-space: nowrap;">
                        Hannover 96 AM -vs- Hertha Berlin AM
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=644694&bettype=1&type=BettypeMatch">
                            24</a>
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                        <a href="javascript:openForecast('644694','1')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=644694&bettype=3&type=BettypeMatch">
                            53</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('644694','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                </tr>
                <tr class="c">
                    <td colspan="11" class="league" style="padding-left: 20px;">
                        Italy Lega Pro 1A
                    </td>
                </tr>
                <tr bgcolor="#ffddcc" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#ffddcc'">
                    <td class="w-order">
                        70
                    </td>
                    <td class="c bl_time">
                        0 - 0<br />
                        <font color="red"><i>Live!</i></font>
                    </td>
                    <td style="white-space: nowrap;">
                        Alessandria -vs- Sorrento Calcio
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=644995&bettype=1&type=BettypeMatch">
                            <font color='#eb6003'>-4</font></a>
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                        <a href="javascript:openForecast('644995','1')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=644995&bettype=3&type=BettypeMatch">
                            <font color='#eb6003'>-1</font></a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('644995','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=644995&bettype=7&type=BettypeMatch">
                            16</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('644995','7')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=644995&bettype=8&type=BettypeMatch">
                            2</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('644995','8')" class="btnInfo"></a>
                    </td>
                </tr>
                <tr bgcolor="#ffddcc" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#ffddcc'">
                    <td class="w-order">
                        71
                    </td>
                    <td class="c bl_time">
                        1 - 0<br />
                        <font color="red"><i>Live!</i></font>
                    </td>
                    <td style="white-space: nowrap;">
                        Alessandria -vs- Sorrento Calcio
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=644995&bettype=8&type=BettypeMatch">
                            10</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('644995','8')" class="btnInfo"></a>
                    </td>
                </tr>
                <tr bgcolor="#ffddcc" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#ffddcc'">
                    <td class="w-order">
                        72
                    </td>
                    <td class="c bl_time">
                        0 - 0<br />
                        <font color="red"><i>Live!</i></font>
                    </td>
                    <td style="white-space: nowrap;">
                        Esperia Viareggio -vs- Cremonese
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=645002&bettype=7&type=BettypeMatch">
                            <font color='#eb6003'>-1</font></a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('645002','7')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=645002&bettype=8&type=BettypeMatch">
                            0</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('645002','8')" class="btnInfo"></a>
                    </td>
                </tr>
                <tr class="c">
                    <td colspan="11" class="league" style="padding-left: 20px;">
                        Italy Lega Pro 1B
                    </td>
                </tr>
                <tr bgcolor="#ffddcc" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#ffddcc'">
                    <td class="w-order">
                        73
                    </td>
                    <td class="c bl_time">
                        0 - 0<br />
                        <font color="red"><i>Live!</i></font>
                    </td>
                    <td style="white-space: nowrap;">
                        Rimini -vs- Pescara
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=645021&bettype=1&type=BettypeMatch">
                            <font color='#eb6003'>-3</font></a>
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                        <a href="javascript:openForecast('645021','1')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=645021&bettype=3&type=BettypeMatch">
                            0</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('645021','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=645021&bettype=7&type=BettypeMatch">
                            <font color='#eb6003'>-1</font></a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('645021','7')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=645021&bettype=8&type=BettypeMatch">
                            42</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('645021','8')" class="btnInfo"></a>
                    </td>
                </tr>
                <tr class="c">
                    <td colspan="11" class="league" style="padding-left: 20px;">
                        UAE Premier League
                    </td>
                </tr>
                <tr bgcolor="#ffddcc" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#ffddcc'">
                    <td class="w-order">
                        74
                    </td>
                    <td class="c bl_time">
                        0 - 0<br />
                        <font color="red"><i>Live!</i></font>
                    </td>
                    <td style="white-space: nowrap;">
                        Al Wahda (UAE) -vs- Banni Yas
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=649965&bettype=1&type=BettypeMatch">
                            4</a>
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                        <a href="javascript:openForecast('649965','1')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=649965&bettype=3&type=BettypeMatch">
                            4</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('649965','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                </tr>
                <tr bgcolor="#ffddcc" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#ffddcc'">
                    <td class="w-order">
                        75
                    </td>
                    <td class="c bl_time">
                        1 - 0<br />
                        <font color="red"><i>Live!</i></font>
                    </td>
                    <td style="white-space: nowrap;">
                        Al Wahda (UAE) -vs- Banni Yas
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=649965&bettype=1&type=BettypeMatch">
                            <font color='#eb6003'>-27</font></a>
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                        <a href="javascript:openForecast('649965','1')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=649965&bettype=3&type=BettypeMatch">
                            <font color='#eb6003'>-8</font></a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('649965','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                </tr>
                <tr class="c">
                    <td colspan="11" class="league" style="padding-left: 20px;">
                        UAE Premier League - SPECIFIC 15 MINS OVER/UNDER
                    </td>
                </tr>
                <tr bgcolor="#ffddcc" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#ffddcc'">
                    <td class="w-order">
                        76
                    </td>
                    <td class="c bl_time">
                        0 - 0<br />
                        <font color="red"><i>Live!</i></font>
                    </td>
                    <td style="white-space: nowrap;">
                        Al Wahda (UAE) 45:01-60:00 -vs- Banni Yas 45:01-60:00
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=650220&bettype=3&type=BettypeMatch">
                            14</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('650220','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                </tr>
                <tr class="c">
                    <td colspan="11" class="league" style="padding-left: 20px;">
                        *ENGLISH PREMIER LEAGUE
                    </td>
                </tr>
                <tr bgcolor="#F6F8F9" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#F6F8F9'">
                    <td class="w-order">
                        77
                    </td>
                    <td class="c bl_time">
                        <font color="red">LIVE@U59</font> 09:30PM
                    </td>
                    <td style="white-space: nowrap;">
                        Wolverhampton Wanderers -vs- Burnley
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=637946&bettype=1&type=BettypeMatch">
                            1,922</a>
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                        <a href="javascript:openForecast('637946','1')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=637946&bettype=3&type=BettypeMatch">
                            <font color='#eb6003'>-706</font></a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('637946','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=637946&bettype=7&type=BettypeMatch">
                            <font color='#eb6003'>-61</font></a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('637946','7')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=637946&bettype=8&type=BettypeMatch">
                            <font color='#eb6003'>-117</font></a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('637946','8')" class="btnInfo"></a>
                    </td>
                </tr>
                <tr bgcolor="#faf9ee" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#faf9ee'">
                    <td class="w-order">
                        78
                    </td>
                    <td class="c bl_time">
                        <font color="red">LIVE@U61</font> 11:00PM
                    </td>
                    <td style="white-space: nowrap;">
                        Everton -vs- Birmingham City
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=637947&bettype=1&type=BettypeMatch">
                            537</a>
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                        <a href="javascript:openForecast('637947','1')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=637947&bettype=3&type=BettypeMatch">
                            <font color='#eb6003'>-2</font></a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('637947','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=637947&bettype=7&type=BettypeMatch">
                            <font color='#eb6003'>-7</font></a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('637947','7')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=637947&bettype=8&type=BettypeMatch">
                            <font color='#eb6003'>-7</font></a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('637947','8')" class="btnInfo"></a>
                    </td>
                </tr>
                <tr bgcolor="#F6F8F9" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#F6F8F9'">
                    <td class="w-order">
                        79
                    </td>
                    <td class="c bl_time">
                        <font color="red">LIVE@U59</font> 12:00AM
                    </td>
                    <td style="white-space: nowrap;">
                        West Ham United -vs- Chelsea
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=637948&bettype=1&type=BettypeMatch">
                            <font color='#eb6003'>-155</font></a>
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                        <a href="javascript:openForecast('637948','1')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=637948&bettype=3&type=BettypeMatch">
                            <font color='#eb6003'>-71</font></a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('637948','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=637948&bettype=7&type=BettypeMatch">
                            3</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('637948','7')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=637948&bettype=8&type=BettypeMatch">
                            4</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('637948','8')" class="btnInfo"></a>
                    </td>
                </tr>
                <tr class="c">
                    <td colspan="11" class="league" style="padding-left: 20px;">
                        *ENGLISH PREMIER LEAGUE - SPECIALS
                    </td>
                </tr>
                <tr bgcolor="#faf9ee" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#faf9ee'">
                    <td class="w-order">
                        80
                    </td>
                    <td class="c bl_time">
                        12/20 09:30PM
                    </td>
                    <td style="white-space: nowrap;">
                        Home Team - Sunday (EPL) -vs- Away Team - Sunday (EPL)
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=648364&bettype=1&type=BettypeMatch">
                            12</a>
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                        <a href="javascript:openForecast('648364','1')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                </tr>
                <tr bgcolor="#F6F8F9" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#F6F8F9'">
                    <td class="w-order">
                        81
                    </td>
                    <td class="c bl_time">
                        <font color="red">LIVE@U59</font> 09:30PM
                    </td>
                    <td style="white-space: nowrap;">
                        Wolverhampton Wanderers No.of Corners -vs- Burnley No.of Corners
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=645932&bettype=1&type=BettypeMatch">
                            <font color='#eb6003'>-5</font></a>
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                        <a href="javascript:openForecast('645932','1')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=645932&bettype=3&type=BettypeMatch">
                            <font color='#eb6003'>-11</font></a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('645932','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=645932&bettype=7&type=BettypeMatch">
                            0</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('645932','7')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=645932&bettype=8&type=BettypeMatch">
                            6</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('645932','8')" class="btnInfo"></a>
                    </td>
                </tr>
                <tr bgcolor="#faf9ee" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#faf9ee'">
                    <td class="w-order">
                        82
                    </td>
                    <td class="c bl_time">
                        <font color="red">LIVE@U61</font> 11:00PM
                    </td>
                    <td style="white-space: nowrap;">
                        Everton No.of Corners -vs- Birmingham City No.of Corners
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=645935&bettype=1&type=BettypeMatch">
                            <font color='#eb6003'>-4</font></a>
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                        <a href="javascript:openForecast('645935','1')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=645935&bettype=3&type=BettypeMatch">
                            1</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('645935','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=645935&bettype=7&type=BettypeMatch">
                            1</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('645935','7')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=645935&bettype=8&type=BettypeMatch">
                            1</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('645935','8')" class="btnInfo"></a>
                    </td>
                </tr>
                <tr bgcolor="#F6F8F9" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#F6F8F9'">
                    <td class="w-order">
                        83
                    </td>
                    <td class="c bl_time">
                        <font color="red">LIVE@U59</font> 12:00AM
                    </td>
                    <td style="white-space: nowrap;">
                        West Ham United No.of Corners -vs- Chelsea No.of Corners
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=645937&bettype=1&type=BettypeMatch">
                            1</a>
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                        <a href="javascript:openForecast('645937','1')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=645937&bettype=7&type=BettypeMatch">
                            <font color='#eb6003'>-1</font></a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('645937','7')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=645937&bettype=8&type=BettypeMatch">
                            1</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('645937','8')" class="btnInfo"></a>
                    </td>
                </tr>
                <tr class="c">
                    <td colspan="11" class="league" style="padding-left: 20px;">
                        *ITALY SERIE A
                    </td>
                </tr>
                <tr bgcolor="#faf9ee" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#faf9ee'">
                    <td class="w-order">
                        84
                    </td>
                    <td class="c bl_time">
                        <font color="red">LIVE@U66</font> 10:00PM
                    </td>
                    <td style="white-space: nowrap;">
                        AS Roma -vs- Parma
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=637962&bettype=1&type=BettypeMatch">
                            193</a>
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                        <a href="javascript:openForecast('637962','1')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=637962&bettype=3&type=BettypeMatch">
                            <font color='#eb6003'>-138</font></a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('637962','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=637962&bettype=7&type=BettypeMatch">
                            42</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('637962','7')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=637962&bettype=8&type=BettypeMatch">
                            <font color='#eb6003'>-2</font></a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('637962','8')" class="btnInfo"></a>
                    </td>
                </tr>
                <tr bgcolor="#F6F8F9" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#F6F8F9'">
                    <td class="w-order">
                        85
                    </td>
                    <td class="c bl_time">
                        <font color="red">LIVE@U63</font> 10:00PM
                    </td>
                    <td style="white-space: nowrap;">
                        Juventus -vs- Catania
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=637958&bettype=1&type=BettypeMatch">
                            208</a>
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                        <a href="javascript:openForecast('637958','1')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=637958&bettype=3&type=BettypeMatch">
                            2</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('637958','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=637958&bettype=7&type=BettypeMatch">
                            16</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('637958','7')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=637958&bettype=8&type=BettypeMatch">
                            0</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('637958','8')" class="btnInfo"></a>
                    </td>
                </tr>
                <tr bgcolor="#faf9ee" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#faf9ee'">
                    <td class="w-order">
                        86
                    </td>
                    <td class="c bl_time">
                        <font color="red">LIVE</font> 10:00PM
                    </td>
                    <td style="white-space: nowrap;">
                        Livorno -vs- Sampdoria
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=637959&bettype=1&type=BettypeMatch">
                            <font color='#eb6003'>-248</font></a>
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                        <a href="javascript:openForecast('637959','1')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=637959&bettype=3&type=BettypeMatch">
                            <font color='#eb6003'>-10</font></a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('637959','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=637959&bettype=8&type=BettypeMatch">
                            <font color='#eb6003'>-6</font></a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('637959','8')" class="btnInfo"></a>
                    </td>
                </tr>
                <tr bgcolor="#F6F8F9" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#F6F8F9'">
                    <td class="w-order">
                        87
                    </td>
                    <td class="c bl_time">
                        <font color="red">LIVE</font> 10:00PM
                    </td>
                    <td style="white-space: nowrap;">
                        Napoli -vs- Chievo
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=637960&bettype=1&type=BettypeMatch">
                            <font color='#eb6003'>-133</font></a>
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                        <a href="javascript:openForecast('637960','1')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=637960&bettype=3&type=BettypeMatch">
                            92</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('637960','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=637960&bettype=7&type=BettypeMatch">
                            3</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('637960','7')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=637960&bettype=8&type=BettypeMatch">
                            0</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('637960','8')" class="btnInfo"></a>
                    </td>
                </tr>
                <tr bgcolor="#faf9ee" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#faf9ee'">
                    <td class="w-order">
                        88
                    </td>
                    <td class="c bl_time">
                        <font color="red">LIVE</font> 10:00PM
                    </td>
                    <td style="white-space: nowrap;">
                        Palermo -vs- Siena
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=637961&bettype=1&type=BettypeMatch">
                            220</a>
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                        <a href="javascript:openForecast('637961','1')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=637961&bettype=3&type=BettypeMatch">
                            <font color='#eb6003'>-6</font></a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('637961','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=637961&bettype=7&type=BettypeMatch">
                            3</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('637961','7')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                </tr>
                <tr bgcolor="#F6F8F9" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#F6F8F9'">
                    <td class="w-order">
                        89
                    </td>
                    <td class="c bl_time">
                        <font color="red">LIVE@U61</font> 03:45AM
                    </td>
                    <td style="white-space: nowrap;">
                        Inter Milan -vs- Lazio
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=637964&bettype=1&type=BettypeMatch">
                            <font color='#eb6003'>-207</font></a>
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                        <a href="javascript:openForecast('637964','1')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=637964&bettype=3&type=BettypeMatch">
                            13</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('637964','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=637964&bettype=7&type=BettypeMatch">
                            1</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('637964','7')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=637964&bettype=8&type=BettypeMatch">
                            1</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('637964','8')" class="btnInfo"></a>
                    </td>
                </tr>
                <tr class="c">
                    <td colspan="11" class="league" style="padding-left: 20px;">
                        *ITALY SERIE A - SPECIALS
                    </td>
                </tr>
                <tr bgcolor="#faf9ee" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#faf9ee'">
                    <td class="w-order">
                        90
                    </td>
                    <td class="c bl_time">
                        12/20 10:00PM
                    </td>
                    <td style="white-space: nowrap;">
                        Home Team - Sunday (Italy A) -vs- Away Team - Sunday (Italy A)
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=648372&bettype=1&type=BettypeMatch">
                            0</a>
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                        <a href="javascript:openForecast('648372','1')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=648372&bettype=3&type=BettypeMatch">
                            9</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('648372','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                </tr>
                <tr bgcolor="#F6F8F9" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#F6F8F9'">
                    <td class="w-order">
                        91
                    </td>
                    <td class="c bl_time">
                        <font color="red">LIVE@U63</font> 10:00PM
                    </td>
                    <td style="white-space: nowrap;">
                        Juventus No.of Corners -vs- Catania No.of Corners
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=646472&bettype=7&type=BettypeMatch">
                            <font color='#eb6003'>-1</font></a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('646472','7')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                </tr>
                <tr bgcolor="#faf9ee" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#faf9ee'">
                    <td class="w-order">
                        92
                    </td>
                    <td class="c bl_time">
                        <font color="red">LIVE@U66</font> 10:00PM
                    </td>
                    <td style="white-space: nowrap;">
                        AS Roma No.of Corners -vs- Parma No.of Corners
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=646478&bettype=1&type=BettypeMatch">
                            0</a>
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                        <a href="javascript:openForecast('646478','1')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=646478&bettype=7&type=BettypeMatch">
                            1</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('646478','7')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=646478&bettype=8&type=BettypeMatch">
                            1</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('646478','8')" class="btnInfo"></a>
                    </td>
                </tr>
                <tr bgcolor="#F6F8F9" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#F6F8F9'">
                    <td class="w-order">
                        93
                    </td>
                    <td class="c bl_time">
                        <font color="red">LIVE@U61</font> 03:45AM
                    </td>
                    <td style="white-space: nowrap;">
                        Inter Milan No.of Corners -vs- Lazio No.of Corners
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=646480&bettype=1&type=BettypeMatch">
                            10</a>
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                        <a href="javascript:openForecast('646480','1')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=646480&bettype=7&type=BettypeMatch">
                            5</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('646480','7')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                </tr>
                <tr class="c">
                    <td colspan="11" class="league" style="padding-left: 20px;">
                        *SPAIN PRIMERA LALIGA
                    </td>
                </tr>
                <tr bgcolor="#faf9ee" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#faf9ee'">
                    <td class="w-order">
                        94
                    </td>
                    <td class="c bl_time">
                        <font color="red">LIVE</font> 12:00AM
                    </td>
                    <td style="white-space: nowrap;">
                        Real Valladolid -vs- Sporting Gijon
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=637914&bettype=1&type=BettypeMatch">
                            1</a>
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                        <a href="javascript:openForecast('637914','1')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=637914&bettype=3&type=BettypeMatch">
                            25</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('637914','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                </tr>
                <tr bgcolor="#F6F8F9" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#F6F8F9'">
                    <td class="w-order">
                        95
                    </td>
                    <td class="c bl_time">
                        <font color="red">LIVE</font> 12:00AM
                    </td>
                    <td style="white-space: nowrap;">
                        Villarreal CF -vs- Racing Santander
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=637917&bettype=1&type=BettypeMatch">
                            59</a>
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                        <a href="javascript:openForecast('637917','1')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=637917&bettype=3&type=BettypeMatch">
                            9</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('637917','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=637917&bettype=7&type=BettypeMatch">
                            3</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('637917','7')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=637917&bettype=8&type=BettypeMatch">
                            1</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('637917','8')" class="btnInfo"></a>
                    </td>
                </tr>
                <tr bgcolor="#faf9ee" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#faf9ee'">
                    <td class="w-order">
                        96
                    </td>
                    <td class="c bl_time">
                        <font color="red">LIVE</font> 12:00AM
                    </td>
                    <td style="white-space: nowrap;">
                        RCD Espanyol -vs- UD Almeria
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=637904&bettype=1&type=BettypeMatch">
                            118</a>
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                        <a href="javascript:openForecast('637904','1')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=637904&bettype=3&type=BettypeMatch">
                            18</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('637904','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                </tr>
                <tr bgcolor="#F6F8F9" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#F6F8F9'">
                    <td class="w-order">
                        97
                    </td>
                    <td class="c bl_time">
                        <font color="red">LIVE</font> 12:00AM
                    </td>
                    <td style="white-space: nowrap;">
                        Malaga -vs- RCD Mallorca
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=637906&bettype=1&type=BettypeMatch">
                            <font color='#eb6003'>-196</font></a>
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                        <a href="javascript:openForecast('637906','1')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=637906&bettype=3&type=BettypeMatch">
                            13</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('637906','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                </tr>
                <tr bgcolor="#faf9ee" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#faf9ee'">
                    <td class="w-order">
                        98
                    </td>
                    <td class="c bl_time">
                        <font color="red">LIVE@U59</font> 02:00AM
                    </td>
                    <td style="white-space: nowrap;">
                        Tenerife -vs- Atletico de Madrid
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=637912&bettype=1&type=BettypeMatch">
                            <font color='#eb6003'>-543</font></a>
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                        <a href="javascript:openForecast('637912','1')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=637912&bettype=3&type=BettypeMatch">
                            4</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('637912','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                </tr>
                <tr bgcolor="#F6F8F9" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#F6F8F9'">
                    <td class="w-order">
                        99
                    </td>
                    <td class="c bl_time">
                        <font color="red">LIVE@U59</font> 04:00AM
                    </td>
                    <td style="white-space: nowrap;">
                        Deportivo La Coruna -vs- Valencia CF
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=637902&bettype=1&type=BettypeMatch">
                            <font color='#eb6003'>-277</font></a>
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                        <a href="javascript:openForecast('637902','1')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=637902&bettype=3&type=BettypeMatch">
                            22</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('637902','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=637902&bettype=8&type=BettypeMatch">
                            1</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('637902','8')" class="btnInfo"></a>
                    </td>
                </tr>
                <tr class="c">
                    <td colspan="11" class="league" style="padding-left: 20px;">
                        *GERMANY-BUNDESLIGA I
                    </td>
                </tr>
                <tr bgcolor="#faf9ee" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#faf9ee'">
                    <td class="w-order">
                        100
                    </td>
                    <td class="c bl_time">
                        <font color="red">LIVE@U67</font> 10:30PM
                    </td>
                    <td style="white-space: nowrap;">
                        Hamburger SV -vs- Werder Bremen
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=637933&bettype=1&type=BettypeMatch">
                            <font color='#eb6003'>-376</font></a>
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                        <a href="javascript:openForecast('637933','1')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=637933&bettype=3&type=BettypeMatch">
                            47</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('637933','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=637933&bettype=7&type=BettypeMatch">
                            <font color='#eb6003'>-2</font></a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('637933','7')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                </tr>
                <tr bgcolor="#F6F8F9" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#F6F8F9'">
                    <td class="w-order">
                        101
                    </td>
                    <td class="c bl_time">
                        <font color="red">LIVE</font> 12:30AM
                    </td>
                    <td style="white-space: nowrap;">
                        FC Koln -vs- Nurnberg
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=637934&bettype=1&type=BettypeMatch">
                            13</a>
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                        <a href="javascript:openForecast('637934','1')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=637934&bettype=3&type=BettypeMatch">
                            33</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('637934','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                </tr>
                <tr class="c">
                    <td colspan="11" class="league" style="padding-left: 20px;">
                        *GERMANY-BUNDESLIGA I - SPECIALS
                    </td>
                </tr>
                <tr bgcolor="#faf9ee" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#faf9ee'">
                    <td class="w-order">
                        102
                    </td>
                    <td class="c bl_time">
                        12/20 10:30PM
                    </td>
                    <td style="white-space: nowrap;">
                        Home Team - Sunday (Germany 1) -vs- Away Team - Sunday (Germany 1)
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=648368&bettype=3&type=BettypeMatch">
                            13</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('648368','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                </tr>
                <tr class="c">
                    <td colspan="11" class="league" style="padding-left: 20px;">
                        English League Championship
                    </td>
                </tr>
                <tr bgcolor="#F6F8F9" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#F6F8F9'">
                    <td class="w-order">
                        103
                    </td>
                    <td class="c bl_time">
                        <font color="red">LIVE</font> 09:00PM
                    </td>
                    <td style="white-space: nowrap;">
                        Newcastle United -vs- Middlesbrough
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=642756&bettype=1&type=BettypeMatch">
                            281</a>
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                        <a href="javascript:openForecast('642756','1')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=642756&bettype=3&type=BettypeMatch">
                            21</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('642756','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                </tr>
                <tr class="c">
                    <td colspan="11" class="league" style="padding-left: 20px;">
                        FRANCE-LIGUE 1
                    </td>
                </tr>
                <tr bgcolor="#faf9ee" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#faf9ee'">
                    <td class="w-order">
                        104
                    </td>
                    <td class="c bl_time">
                        <font color="red">LIVE</font> 12:00AM
                    </td>
                    <td style="white-space: nowrap;">
                        Lille OSC -vs- Le Mans UC 72
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=642772&bettype=1&type=BettypeMatch">
                            <font color='#eb6003'>-404</font></a>
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                        <a href="javascript:openForecast('642772','1')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=642772&bettype=3&type=BettypeMatch">
                            27</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('642772','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                </tr>
                <tr bgcolor="#F6F8F9" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#F6F8F9'">
                    <td class="w-order">
                        105
                    </td>
                    <td class="c bl_time">
                        <font color="red">LIVE</font> 12:00AM
                    </td>
                    <td style="white-space: nowrap;">
                        AJ Auxerre -vs- Toulouse
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=642773&bettype=1&type=BettypeMatch">
                            <font color='#eb6003'>-108</font></a>
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                        <a href="javascript:openForecast('642773','1')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=642773&bettype=3&type=BettypeMatch">
                            5</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('642773','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                </tr>
                <tr bgcolor="#faf9ee" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#faf9ee'">
                    <td class="w-order">
                        106
                    </td>
                    <td class="c bl_time">
                        <font color="red">LIVE</font> 04:00AM
                    </td>
                    <td style="white-space: nowrap;">
                        AS Monaco -vs- Olympique Lyonnais
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=642774&bettype=1&type=BettypeMatch">
                            <font color='#eb6003'>-282</font></a>
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                        <a href="javascript:openForecast('642774','1')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=642774&bettype=3&type=BettypeMatch">
                            85</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('642774','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                </tr>
                <tr class="c">
                    <td colspan="11" class="league" style="padding-left: 20px;">
                        Germany-Bundesliga 2
                    </td>
                </tr>
                <tr bgcolor="#F6F8F9" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#F6F8F9'">
                    <td class="w-order">
                        107
                    </td>
                    <td class="c bl_time">
                        <font color="red">LIVE</font> 08:30PM
                    </td>
                    <td style="white-space: nowrap;">
                        Union Berlin -vs- TSV 1860 Munchen
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=642781&bettype=1&type=BettypeMatch">
                            <font color='#eb6003'>-266</font></a>
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                        <a href="javascript:openForecast('642781','1')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=642781&bettype=3&type=BettypeMatch">
                            29</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('642781','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                </tr>
                <tr class="c">
                    <td colspan="11" class="league" style="padding-left: 20px;">
                        PORTUGAL SUPERLIGA
                    </td>
                </tr>
                <tr bgcolor="#faf9ee" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#faf9ee'">
                    <td class="w-order">
                        108
                    </td>
                    <td class="c bl_time">
                        <font color="red">LIVE</font> 12:00AM
                    </td>
                    <td style="white-space: nowrap;">
                        Nacional da Madeira -vs- Academica Coimbra
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=644552&bettype=1&type=BettypeMatch">
                            142</a>
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                        <a href="javascript:openForecast('644552','1')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                </tr>
                <tr bgcolor="#F6F8F9" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#F6F8F9'">
                    <td class="w-order">
                        109
                    </td>
                    <td class="c bl_time">
                        <font color="red">LIVE</font> 12:00AM
                    </td>
                    <td style="white-space: nowrap;">
                        Uniao Leiria -vs- Belenenses
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=644553&bettype=1&type=BettypeMatch">
                            <font color='#eb6003'>-93</font></a>
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                        <a href="javascript:openForecast('644553','1')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                </tr>
                <tr bgcolor="#faf9ee" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#faf9ee'">
                    <td class="w-order">
                        110
                    </td>
                    <td class="c bl_time">
                        <font color="red">LIVE</font> 12:00AM
                    </td>
                    <td style="white-space: nowrap;">
                        Vitoria de Setubal -vs- Maritimo
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=644554&bettype=1&type=BettypeMatch">
                            <font color='#eb6003'>-175</font></a>
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                        <a href="javascript:openForecast('644554','1')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                </tr>
                <tr bgcolor="#F6F8F9" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#F6F8F9'">
                    <td class="w-order">
                        111
                    </td>
                    <td class="c bl_time">
                        <font color="red">LIVE@RTPI</font> 04:15AM
                    </td>
                    <td style="white-space: nowrap;">
                        Benfica -vs- Porto
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=644556&bettype=1&type=BettypeMatch">
                            <font color='#eb6003'>-177</font></a>
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                        <a href="javascript:openForecast('644556','1')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=644556&bettype=3&type=BettypeMatch">
                            3</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('644556','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                </tr>
                <tr class="c">
                    <td colspan="11" class="league" style="padding-left: 20px;">
                        Spain Segunda Division
                    </td>
                </tr>
                <tr bgcolor="#faf9ee" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#faf9ee'">
                    <td class="w-order">
                        112
                    </td>
                    <td class="c bl_time">
                        <font color="red">LIVE</font> 12:00AM
                    </td>
                    <td style="white-space: nowrap;">
                        S.D. Huesca -vs- CD Castellon
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=642835&bettype=1&type=BettypeMatch">
                            37</a>
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                        <a href="javascript:openForecast('642835','1')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=642835&bettype=3&type=BettypeMatch">
                            <font color='#eb6003'>-2</font></a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('642835','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=642835&bettype=8&type=BettypeMatch">
                            1</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('642835','8')" class="btnInfo"></a>
                    </td>
                </tr>
                <tr bgcolor="#F6F8F9" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#F6F8F9'">
                    <td class="w-order">
                        113
                    </td>
                    <td class="c bl_time">
                        <font color="red">LIVE</font> 12:00AM
                    </td>
                    <td style="white-space: nowrap;">
                        Gimnastic Tarragona -vs- Villarreal CF B
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=642831&bettype=1&type=BettypeMatch">
                            <font color='#eb6003'>-57</font></a>
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                        <a href="javascript:openForecast('642831','1')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=642831&bettype=3&type=BettypeMatch">
                            <font color='#eb6003'>-2</font></a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('642831','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=642831&bettype=8&type=BettypeMatch">
                            2</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('642831','8')" class="btnInfo"></a>
                    </td>
                </tr>
                <tr bgcolor="#faf9ee" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#faf9ee'">
                    <td class="w-order">
                        114
                    </td>
                    <td class="c bl_time">
                        <font color="red">LIVE</font> 12:00AM
                    </td>
                    <td style="white-space: nowrap;">
                        Real Murcia -vs- Cadiz
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=642821&bettype=1&type=BettypeMatch">
                            <font color='#eb6003'>-114</font></a>
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                        <a href="javascript:openForecast('642821','1')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=642821&bettype=3&type=BettypeMatch">
                            <font color='#eb6003'>-2</font></a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('642821','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=642821&bettype=8&type=BettypeMatch">
                            1</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('642821','8')" class="btnInfo"></a>
                    </td>
                </tr>
                <tr bgcolor="#F6F8F9" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#F6F8F9'">
                    <td class="w-order">
                        115
                    </td>
                    <td class="c bl_time">
                        <font color="red">LIVE</font> 12:00AM
                    </td>
                    <td style="white-space: nowrap;">
                        Girona -vs- Elche
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=642815&bettype=1&type=BettypeMatch">
                            <font color='#eb6003'>-4</font></a>
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                        <a href="javascript:openForecast('642815','1')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=642815&bettype=3&type=BettypeMatch">
                            <font color='#eb6003'>-2</font></a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('642815','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=642815&bettype=8&type=BettypeMatch">
                            2</a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('642815','8')" class="btnInfo"></a>
                    </td>
                </tr>
                <tr class="c">
                    <td colspan="11" class="league" style="padding-left: 20px;">
                        TURKEY SUPER LEAGUE
                    </td>
                </tr>
                <tr bgcolor="#faf9ee" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#faf9ee'">
                    <td class="w-order">
                        116
                    </td>
                    <td class="c bl_time">
                        <font color="red">LIVE</font> 02:00AM
                    </td>
                    <td style="white-space: nowrap;">
                        Trabzonspor -vs- Fenerbahce
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=644718&bettype=1&type=BettypeMatch">
                            <font color='#eb6003'>-90</font></a>
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                        <a href="javascript:openForecast('644718','1')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                </tr>
                <tr class="c">
                    <td colspan="11" class="league" style="padding-left: 20px;">
                        GREECE SUPER LEAGUE
                    </td>
                </tr>
                <tr bgcolor="#F6F8F9" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#F6F8F9'">
                    <td class="w-order">
                        117
                    </td>
                    <td class="c bl_time">
                        <font color="red">LIVE</font> 08:30PM
                    </td>
                    <td style="white-space: nowrap;">
                        Panthrakikos -vs- Atromitos
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=645527&bettype=3&type=BettypeMatch">
                            <font color='#eb6003'>-5</font></a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('645527','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                </tr>
                <tr bgcolor="#faf9ee" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#faf9ee'">
                    <td class="w-order">
                        118
                    </td>
                    <td class="c bl_time">
                        <font color="red">LIVE</font> 08:30PM
                    </td>
                    <td style="white-space: nowrap;">
                        Panionios -vs- Nea Kavala
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=645528&bettype=1&type=BettypeMatch">
                            <font color='#eb6003'>-15</font></a>
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                        <a href="javascript:openForecast('645528','1')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=645528&bettype=3&type=BettypeMatch">
                            <font color='#eb6003'>-1</font></a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('645528','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                </tr>
                <tr bgcolor="#F6F8F9" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#F6F8F9'">
                    <td class="w-order">
                        119
                    </td>
                    <td class="c bl_time">
                        <font color="red">LIVE</font> 10:45PM
                    </td>
                    <td style="white-space: nowrap;">
                        Asteras Tripolis -vs- AEK Athens
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=645529&bettype=1&type=BettypeMatch">
                            <font color='#eb6003'>-109</font></a>
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                        <a href="javascript:openForecast('645529','1')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                </tr>
                <tr bgcolor="#faf9ee" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#faf9ee'">
                    <td class="w-order">
                        120
                    </td>
                    <td class="c bl_time">
                        <font color="red">LIVE</font> 01:00AM
                    </td>
                    <td style="white-space: nowrap;">
                        Aris Thessaloniki -vs- Olympiakos
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=645531&bettype=1&type=BettypeMatch">
                            <font color='#eb6003'>-1</font></a>
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                        <a href="javascript:openForecast('645531','1')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                </tr>
                <tr class="c">
                    <td colspan="11" class="league" style="padding-left: 20px;">
                        Italy Lega Pro 1A
                    </td>
                </tr>
                <tr bgcolor="#F6F8F9" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#F6F8F9'">
                    <td class="w-order">
                        121
                    </td>
                    <td class="c bl_time">
                        <font color="red">LIVE</font> 09:30PM
                    </td>
                    <td style="white-space: nowrap;">
                        Alessandria -vs- Sorrento Calcio
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=644995&bettype=1&type=BettypeMatch">
                            <font color='#eb6003'>-1</font></a>
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                        <a href="javascript:openForecast('644995','1')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                </tr>
                <tr bgcolor="#faf9ee" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#faf9ee'">
                    <td class="w-order">
                        122
                    </td>
                    <td class="c bl_time">
                        12/20 09:30PM
                    </td>
                    <td style="white-space: nowrap;">
                        Benevento -vs- Foligno
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=644998&bettype=1&type=BettypeMatch">
                            <font color='#eb6003'>-1</font></a>
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                        <a href="javascript:openForecast('644998','1')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                </tr>
                <tr bgcolor="#F6F8F9" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#F6F8F9'">
                    <td class="w-order">
                        123
                    </td>
                    <td class="c bl_time">
                        <font color="red">LIVE</font> 09:30PM
                    </td>
                    <td style="white-space: nowrap;">
                        Esperia Viareggio -vs- Cremonese
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=645002&bettype=1&type=BettypeMatch">
                            1</a>
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                        <a href="javascript:openForecast('645002','1')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                </tr>
                <tr bgcolor="#faf9ee" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#faf9ee'">
                    <td class="w-order">
                        124
                    </td>
                    <td class="c bl_time">
                        12/20 09:30PM
                    </td>
                    <td style="white-space: nowrap;">
                        Novara -vs- AS Figline
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=644999&bettype=1&type=BettypeMatch">
                            <font color='#eb6003'>-1</font></a>
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                        <a href="javascript:openForecast('644999','1')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                </tr>
                <tr bgcolor="#F6F8F9" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#F6F8F9'">
                    <td class="w-order">
                        125
                    </td>
                    <td class="c bl_time">
                        12/20 09:30PM
                    </td>
                    <td style="white-space: nowrap;">
                        Paganese -vs- Lecco
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=645000&bettype=1&type=BettypeMatch">
                            0</a>
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                        <a href="javascript:openForecast('645000','1')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                </tr>
                <tr bgcolor="#faf9ee" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#faf9ee'">
                    <td class="w-order">
                        126
                    </td>
                    <td class="c bl_time">
                        <font color="red">LIVE</font> 09:30PM
                    </td>
                    <td style="white-space: nowrap;">
                        Perugia -vs- Varese
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=644993&bettype=1&type=BettypeMatch">
                            <font color='#eb6003'>-1</font></a>
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                        <a href="javascript:openForecast('644993','1')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                </tr>
                <tr class="c">
                    <td colspan="11" class="league" style="padding-left: 20px;">
                        Italy Lega Pro 1B
                    </td>
                </tr>
                <tr bgcolor="#F6F8F9" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#F6F8F9'">
                    <td class="w-order">
                        127
                    </td>
                    <td class="c bl_time">
                        12/20 09:30PM
                    </td>
                    <td style="white-space: nowrap;">
                        Cavese -vs- Pescina VG
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=645025&bettype=1&type=BettypeMatch">
                            <font color='#eb6003'>-1</font></a>
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                        <a href="javascript:openForecast('645025','1')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                </tr>
                <tr bgcolor="#faf9ee" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#faf9ee'">
                    <td class="w-order">
                        128
                    </td>
                    <td class="c bl_time">
                        12/20 09:30PM
                    </td>
                    <td style="white-space: nowrap;">
                        Cosenza -vs- Spal 1907
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=645017&bettype=1&type=BettypeMatch">
                            <font color='#eb6003'>-1</font></a>
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                        <a href="javascript:openForecast('645017','1')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                </tr>
                <tr bgcolor="#F6F8F9" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#F6F8F9'">
                    <td class="w-order">
                        129
                    </td>
                    <td class="c bl_time">
                        12/20 09:30PM
                    </td>
                    <td style="white-space: nowrap;">
                        Potenza -vs- Giulianova
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=645033&bettype=1&type=BettypeMatch">
                            <font color='#eb6003'>-1</font></a>
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                        <a href="javascript:openForecast('645033','1')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                </tr>
                <tr bgcolor="#faf9ee" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#faf9ee'">
                    <td class="w-order">
                        130
                    </td>
                    <td class="c bl_time">
                        12/20 09:30PM
                    </td>
                    <td style="white-space: nowrap;">
                        Real Marcianise -vs- Taranto
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=645036&bettype=1&type=BettypeMatch">
                            <font color='#eb6003'>-1</font></a>
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                        <a href="javascript:openForecast('645036','1')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                </tr>
                <tr bgcolor="#F6F8F9" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#F6F8F9'">
                    <td class="w-order">
                        131
                    </td>
                    <td class="c bl_time">
                        <font color="red">LIVE</font> 09:30PM
                    </td>
                    <td style="white-space: nowrap;">
                        Rimini -vs- Pescara
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=645021&bettype=1&type=BettypeMatch">
                            <font color='#eb6003'>-1</font></a>
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                        <a href="javascript:openForecast('645021','1')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                </tr>
                <tr bgcolor="#faf9ee" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#faf9ee'">
                    <td class="w-order">
                        132
                    </td>
                    <td class="c bl_time">
                        12/20 09:30PM
                    </td>
                    <td style="white-space: nowrap;">
                        Ternana -vs- Andria BAT
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=645015&bettype=1&type=BettypeMatch">
                            <font color='#eb6003'>-1</font></a>
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                        <a href="javascript:openForecast('645015','1')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                </tr>
                <tr bgcolor="#F6F8F9" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#F6F8F9'">
                    <td class="w-order">
                        133
                    </td>
                    <td class="c bl_time">
                        12/20 09:30PM
                    </td>
                    <td style="white-space: nowrap;">
                        Virtus Lanciano -vs- Reggiana
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=645024&bettype=1&type=BettypeMatch">
                            <font color='#eb6003'>-1</font></a>
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                        <a href="javascript:openForecast('645024','1')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                </tr>
                <tr class="c">
                    <td colspan="11" class="league" style="padding-left: 20px;">
                        Portugal Liga Vitalis
                    </td>
                </tr>
                <tr bgcolor="#faf9ee" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#faf9ee'">
                    <td class="w-order">
                        134
                    </td>
                    <td class="c bl_time">
                        <font color="red">LIVE</font> 11:00PM
                    </td>
                    <td style="white-space: nowrap;">
                        Beira Mar -vs- CD Aves
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=645558&bettype=1&type=BettypeMatch">
                            <font color='#eb6003'>-1</font></a>
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                        <a href="javascript:openForecast('645558','1')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                </tr>
                <tr bgcolor="#F6F8F9" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#F6F8F9'">
                    <td class="w-order">
                        135
                    </td>
                    <td class="c bl_time">
                        <font color="red">LIVE</font> 11:30PM
                    </td>
                    <td style="white-space: nowrap;">
                        Freamunde -vs- AD Carregado
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=645560&bettype=1&type=BettypeMatch">
                            <font color='#eb6003'>-1</font></a>
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                        <a href="javascript:openForecast('645560','1')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                </tr>
                <tr bgcolor="#faf9ee" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#faf9ee'">
                    <td class="w-order">
                        136
                    </td>
                    <td class="c bl_time">
                        <font color="red">LIVE</font> 12:00AM
                    </td>
                    <td style="white-space: nowrap;">
                        Trofense -vs- Penafiel
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=645561&bettype=1&type=BettypeMatch">
                            <font color='#eb6003'>-1</font></a>
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                        <a href="javascript:openForecast('645561','1')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                </tr>
                <tr bgcolor="#F6F8F9" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#F6F8F9'">
                    <td class="w-order">
                        137
                    </td>
                    <td class="c bl_time">
                        <font color="red">LIVE</font> 12:00AM
                    </td>
                    <td style="white-space: nowrap;">
                        Chaves -vs- SC Covilha
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=645562&bettype=1&type=BettypeMatch">
                            <font color='#eb6003'>-1</font></a>
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                        <a href="javascript:openForecast('645562','1')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                </tr>
                <tr bgcolor="#faf9ee" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#faf9ee'">
                    <td class="w-order">
                        138
                    </td>
                    <td class="c bl_time">
                        <font color="red">LIVE</font> 01:00AM
                    </td>
                    <td style="white-space: nowrap;">
                        CD Santa Clara -vs- Gil Vicente
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=645563&bettype=1&type=BettypeMatch">
                            <font color='#eb6003'>-1</font></a>
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                        <a href="javascript:openForecast('645563','1')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                </tr>
                <tr class="c">
                    <td colspan="11" class="league" style="padding-left: 20px;">
                        CYPRUS 1ST DIVISION
                    </td>
                </tr>
                <tr bgcolor="#F6F8F9" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#F6F8F9'">
                    <td class="w-order">
                        139
                    </td>
                    <td class="c bl_time">
                        <font color="red">LIVE</font> 11:00PM
                    </td>
                    <td style="white-space: nowrap;">
                        Apollon Limassol -vs- Enosis Neon Paralimni
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=645569&bettype=1&type=BettypeMatch">
                            <font color='#eb6003'>-1</font></a>
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                        <a href="javascript:openForecast('645569','1')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                </tr>
                <tr bgcolor="#faf9ee" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#faf9ee'">
                    <td class="w-order">
                        140
                    </td>
                    <td class="c bl_time">
                        <font color="red">LIVE</font> 12:00AM
                    </td>
                    <td style="white-space: nowrap;">
                        APOEL Nicosia -vs- APOP Kinyras Peyias
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=645570&bettype=1&type=BettypeMatch">
                            <font color='#eb6003'>-1</font></a>
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                        <a href="javascript:openForecast('645570','1')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                </tr>
                <tr class="c">
                    <td colspan="11" class="league" style="padding-left: 20px;">
                        Israel Premier League
                    </td>
                </tr>
                <tr bgcolor="#F6F8F9" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#F6F8F9'">
                    <td class="w-order">
                        141
                    </td>
                    <td class="c bl_time">
                        <font color="red">LIVE</font> 02:00AM
                    </td>
                    <td style="white-space: nowrap;">
                        Maccabi Haifa -vs- Bnei Yehuda Tel Aviv
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=650012&bettype=1&type=BettypeMatch">
                            <font color='#eb6003'>-1</font></a>
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                        <a href="javascript:openForecast('650012','1')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                </tr>
                <tr class="c">
                    <td colspan="11" class="league" style="padding-left: 20px;">
                        Qatar League
                    </td>
                </tr>
                <tr bgcolor="#faf9ee" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#faf9ee'">
                    <td class="w-order">
                        142
                    </td>
                    <td class="c bl_time">
                        <font color="red">LIVE</font> 10:30PM
                    </td>
                    <td style="white-space: nowrap;">
                        Al Rayyan -vs- Al Shamal
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=649971&bettype=1&type=BettypeMatch">
                            <font color='#eb6003'>-1</font></a>
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                        <a href="javascript:openForecast('649971','1')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                </tr>
                <tr bgcolor="#F6F8F9" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#F6F8F9'">
                    <td class="w-order">
                        143
                    </td>
                    <td class="c bl_time">
                        12/21 12:30AM
                    </td>
                    <td style="white-space: nowrap;">
                        Qatar SC -vs- Al Kharitiyath
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=650446&bettype=1&type=BettypeMatch">
                            <font color='#eb6003'>-1</font></a>
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                        <a href="javascript:openForecast('650446','1')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                </tr>
                <tr class="c">
                    <td colspan="11" class="league" style="padding-left: 20px;">
                        Morocco GNEF 1
                    </td>
                </tr>
                <tr bgcolor="#faf9ee" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#faf9ee'">
                    <td class="w-order">
                        144
                    </td>
                    <td class="c bl_time">
                        <font color="red">LIVE</font> 02:00AM
                    </td>
                    <td style="white-space: nowrap;">
                        Kawkab Marrakech -vs- Jeunesse Sportive El Massira
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=650002&bettype=1&type=BettypeMatch">
                            <font color='#eb6003'>-1</font></a>
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                        <a href="javascript:openForecast('650002','1')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                </tr>
                <tr bgcolor="#F6F8F9" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#F6F8F9'">
                    <td class="w-order">
                        145
                    </td>
                    <td class="c bl_time">
                        <font color="red">LIVE</font> 04:00AM
                    </td>
                    <td style="white-space: nowrap;">
                        Difaa Hassani Jadidi -vs- FUS Rabat
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=650003&bettype=1&type=BettypeMatch">
                            <font color='#eb6003'>-1</font></a>
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                        <a href="javascript:openForecast('650003','1')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                </tr>
                <tr class="c">
                    <td colspan="11" class="league" style="padding-left: 20px;">
                        Turkey U18 League
                    </td>
                </tr>
                <tr bgcolor="#faf9ee" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#faf9ee'">
                    <td class="w-order">
                        146
                    </td>
                    <td class="c bl_time">
                        12/20 08:00PM
                    </td>
                    <td style="white-space: nowrap;">
                        Adanaspor U18 -vs- Malatyaspor U18
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=650345&bettype=3&type=BettypeMatch">
                            <font color='#eb6003'>-4</font></a>
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                        <a href="javascript:openForecast('650345','3')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                </tr>
                <tr class="c">
                    <td colspan="11" class="league" style="padding-left: 20px;">
                        Which Team To Kick-Off
                    </td>
                </tr>
                <tr bgcolor="#F6F8F9" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#F6F8F9'">
                    <td class="w-order">
                        147
                    </td>
                    <td class="c bl_time">
                        12/20 09:30PM
                    </td>
                    <td style="white-space: nowrap;">
                        Wolverhampton Wanderers To Kick Off -vs- Burnley To Kick Off
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=644774&bettype=1&type=BettypeMatch">
                            <font color='#eb6003'>-3</font></a>
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                        <a href="javascript:openForecast('644774','1')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                </tr>
                <tr bgcolor="#faf9ee" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#faf9ee'">
                    <td class="w-order">
                        148
                    </td>
                    <td class="c bl_time">
                        12/20 11:00PM
                    </td>
                    <td style="white-space: nowrap;">
                        Everton To Kick Off -vs- Birmingham City To Kick Off
                    </td>
                    <td style="width: 90px;" class="r">
                        <a class="fcnum" href="../BetList/BetList.aspx?matchid=644775&bettype=1&type=BettypeMatch">
                            <font color='#eb6003'>-8</font></a>
                    </td>
                    <td align="center" class="fcbtn" style="width: 16px">
                        <a href="javascript:openForecast('644775','1')" class="btnInfo"></a>
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                    <td style="width: 90px;" class="r">
                    </td>
                    <td class="fcbtn" align="center" style="width: 16px">
                    </td>
                </tr>
            </table>
        </div>
    </div>
</body>
</html>

