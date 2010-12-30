<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ForeCast1X2.aspx.cs" Inherits="ForeCast_ForeCast1X2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <title>Home</title>
    <meta name="keywords" content="sportsbook, agency, agent, betting" />
    <meta name="description" content="online betting sportsbook agency system" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href='../App_Themes/AgencyV2/common.css' type='text/css' rel='stylesheet' />
    <link href='../App_Themes/AgencyV2/main.css' type='text/css' rel='stylesheet' />

    <script type='text/javascript' src='../Js/opt/Core.js?v=20091218'></script>

    <script type='text/javascript' src='../Js/Common.js?v=20091218'></script>

    <script type="text/javascript" src="../Js/opt/jx.js?v=20091218"></script>

    <script type="text/javascript" src="../Js/IBCWnd/IBCWnd.js?v=20091218"></script>

    <script type="text/javascript">
function openForecast(matchid, bettype)
{
    if(bettype == 1)
    {
        location.href='../BetList/BetList.aspx?matchid=' + matchid + '&bettype=5&type=BettypeMatch';
    }
    else
    {
        location.href='../BetList/BetList.aspx?matchid=' + matchid + '&bettype=15&type=BettypeMatch';
    }
} 

function SelectedLeague()
{ 
    GetForecast();
}

function GetForecast()
{           
    var leagueid ="";
    var index=0;    
    if($('ddlLeague'))
    {
        leagueid =$('ddlLeague').value;
        index=$('ddlLeague').selectedIndex;
        $('leagueName').innerHTML=$('ddlLeague')[index].text;
    }
    if (leagueid)
    {
        Ajax.Request("../Handlers/Forecast.ashx",{
        asynchronous:true,
        method:'get',        
        parameters:'leagueid=' + leagueid + '&sta=1',
        onComplete:function(rs)
        {
           $('divContent').innerHTML =rs.responseText; 
        }
    });
    }    
    clearTimeout(timer);
    timer = "";
    timer = setTimeout("GetForecast()",15000);       
}
var timer = setTimeout("GetForecast()",15000);

window.onload = function()
{
    if($('ddlLeague')) $('ddlLeague').selectedIndex=0;
} 
    </script>

</head>
<body>
    <form id="form1" runat="server">
    <div id="page_main">
        <div id="header_main">
            <span id="leagueName">
                <asp:Label ID="lblLeague" runat="server" Text="*ENGLISH PREMIER LEAGUE"></asp:Label></span>&nbsp;&nbsp;&nbsp;&nbsp;</div>
        <table border="0" cellpadding="0" cellspacing="0">
            <tr>
                <td>
                    <div id="box_header" style="width: 600px">
                        <table border="0" cellpadding="0" cellspacing="1">
                            <tr>
                                <td>
                                    <table align="left" border="0" cellpadding="0" cellspacing="0">
                                        <tr>
                                            <td>
                                                &nbsp;League &nbsp;League
                                            </td>
                                            <td id="selLeague" width="300">
                                                <asp:DropDownList ID="ddlLeague" runat="server" onchange='SelectedLeague();'>
                                                    <asp:ListItem>*ENGLISH PREMIER LEAGUE</asp:ListItem>
                                                    <asp:ListItem>*ITALY SERIE A</asp:ListItem>
                                                    <asp:ListItem>GREMANY-BUNDESLIGA I</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                            <td>
                                                <div id="loading" class="loading">
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div id="divContent">
                        <table class="tblRpt" cellpadding="0" cellspacing="1" border="0" style="width: 600px">
                            <tr class="RptHeader">
                                <td colspan="2" width="240">
                                    Team
                                </td>
                                <td colspan="3" width="180">
                                    1 X 2
                                </td>
                            </tr>
                            <tr align="center">
                                <td class="l pad73 league" colspan="8" style="padding-left: 20px;">
                                    <asp:Label ID="lbl" runat="server" Text=" Everton-vs-Birmingham City"></asp:Label>
                                </td>
                            </tr>
                            <tr class="even_row" align="center">
                                <td colspan="2" class="informal" style="height: 20px">
                                    <span id="showtime_637947">1 - 1&nbsp;&nbsp;&nbsp;&nbsp;<i><font style='color: red;'>Live!</font></i></span>
                                </td>
                                <td width="60" class="bold">
                                    <span id="hdpos_m1_637947">1</span>
                                </td>
                                <td width="60" class="bold" bgcolor="#FFEFDE">
                                    <span id="hdpos_base_637947">x</span>
                                </td>
                                <td width="60" class="bold">
                                    <span id="hdpos_p1_637947">2</span>
                                </td>
                            </tr>
                            <tr class="even_row" align="center">
                                <td style="height: 25px">
                                    <font color="#38536A">Full Time</font>
                                </td>
                                <td align="center" valign="middle" style="width: 17px">
                                    <a href="javascript:openForecast('637947','1')" class="btnInfo"></a>
                                </td>
                                <td class="bold">
                                    <span id="m1hdp_637947">0</span>
                                </td>
                                <td class="bold">
                                    <span id="basehdp_637947">0</span>
                                </td>
                                <td class="bold">
                                    <span id="p1hdp_637947">0</span>
                                </td>
                            </tr>
                            <tr class="even_row" align="center">
                                <td style="height: 25px">
                                    <font color="#38536A">Half Time</font>
                                </td>
                                <td align="center" valign="middle" style="width: 17px">
                                    <a href="javascript:openForecast('637947','7')" class="btnInfo"></a>
                                </td>
                                <td class="bold">
                                    <span id="htm1hdp_637947"><font style='color: red'>1</font></span>
                                </td>
                                <td class="bold">
                                    <span id="htbasehdp_637947">0</span>
                                </td>
                                <td class="bold">
                                    <span id="htp1hdp_637947"><font style='color: red'>4</font></span>
                                </td>
                            </tr>
                        </table>
                    </div>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
