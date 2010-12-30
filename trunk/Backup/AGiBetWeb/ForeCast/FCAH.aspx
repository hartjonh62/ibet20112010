<%@ Page Language="C#" AutoEventWireup="true" Inherits="ForeCast_FCAH" CodeBehind="FCAH.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <title>Home</title>
    <meta name="keywords" content="sportsbook, agency, agent, betting" />
    <meta name="description" content="online betting sportsbook agency system" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href='../App_Themes/AgencyV2/common.css' type='text/css' rel='stylesheet' />
    <link href='../App_Themes/AgencyV2/popup.css' type='text/css' rel='stylesheet' />
    <link href='../App_Themes/AgencyV2/PopUpMessage.css' type='text/css' rel='stylesheet' />

    <script type='text/javascript' src='../Js/opt/Core.js?v=20091218'></script>

    <script type='text/javascript' src='../Js/Common.js?v=20091218'></script>

    <script type="text/javascript" src="../Js/opt/jx.js?v=20091218"></script>

    <script type="text/javascript">

function GetFCAH(matchid,score,bettype) 
{
    var data = '';
    if($('data') != null)
    {
        data = $('data').value;
    }
    
    Ajax.Request("../Handlers/FCAH.ashx",{
        asynchronous:true,
        method:'get',        
        parameters:'matchid=' + matchid + '&score=' + score + "&b=" + bettype + "&d=" + data,
        onComplete:BindFCAH
    });
}

function BindFCAH(rs) {    
    $('sContent').innerHTML = rs.responseText;    
}

var timer = "";

function UpdateFCAH()
{
    var matchid = $('matchid_vl').value;
    var score = $('score_vl').value;
    var bettype = $('bettype_vl').value;

    GetFCAH(matchid,score,bettype);   
}

var timer = setInterval("UpdateFCAH()", 15000);

window.onload = function()
{
    var ibcWnd = parent.ibcWnd;
    if(typeof ibcWnd == 'undefined')
    {
        return;
    }
    
    var h = 210;
    var w = 550;
    
    if($('bettype_vl').value == '22')
    {
        h = 170;
        w = 440;
    }
    
    if(ibcWnd.loaded)
    {
        ibcWnd.setRect(ibcWnd.left, ibcWnd.top, w, h);
    }
} 


    </script>

</head>
<body>
    <div id="sContent" style="padding: 5px;">
        <table class="tblRpt" cellpadding="0" cellspacing="1" border="0" style="width: 520px;">
            <tr class="RptHeader">
                <td>
                    Team
                </td>
                <td>
                    Score
                </td>
            </tr>
            <tr class="even_row c">
                <td>
                    Everton -vs- Birmingham City
                </td>
                <td>
                    1 : 1
                </td>
            </tr>
        </table>
        <br />
        <table class="tblRpt" cellpadding="0" cellspacing="1" border="0" style="width: 520px;">
            <tr class="even_row" align="center">
                <td bgcolor="#cccccc">
                    <b>Handicap</b>
                </td>
                <td colspan="4">
                    <a href='javascript:GetFCAH("637947","5","1")'>5</a> &nbsp;<a href='javascript:GetFCAH("637947","4","1")'>4</a>
                    &nbsp;<a href='javascript:GetFCAH("637947","3","1")'>3</a> &nbsp;<a href='javascript:GetFCAH("637947","2","1")'>2</a>
                    &nbsp;<a href='javascript:GetFCAH("637947","1","1")'>1</a> &nbsp;<a href='javascript:GetFCAH("637947","0","1")'><span
                        style='text-decoration: none; color: #FF0000; font-weight: bold;'>0</span></a>
                    &nbsp;<a href='javascript:GetFCAH("637947","-1","1")'>-1</a> &nbsp;<a href='javascript:GetFCAH("637947","-2","1")'>-2</a>
                    &nbsp;<a href='javascript:GetFCAH("637947","-3","1")'>-3</a> &nbsp;<a href='javascript:GetFCAH("637947","-4","1")'>-4</a>
                    &nbsp;<a href='javascript:GetFCAH("637947","-5","1")'>-5</a> &nbsp;
                </td>
            </tr>
            <tr class="even_row" align="center">
                <td>
                    2
                </td>
                <td>
                    1
                </td>
                <td>
                    0
                </td>
                <td>
                    -1
                </td>
                <td>
                    -2
                </td>
            </tr>
            <tr class="even_row" align="center">
                <td style='color: #ff0000;'>
                    510.00
                </td>
                <td style='color: #ff0000;'>
                    737.00
                </td>
                <td>
                    -609.00
                </td>
                <td>
                    -612.00
                </td>
                <td>
                    -612.00
                </td>
            </tr>
            <tr class="even_row">
                <td align="left" class="informal">
                    <asp:HyperLink ID="HyperLinkBetList" runat="server" NavigateUrl="../BetList/BetList.aspx?matchid=637947&bettype=1&type=BettypeMatch">Bet List</asp:HyperLink>
                </td>
                <td align="right" colspan="4" class="informal">
                    <asp:HyperLink ID="HyperLinkView" NavigateUrl='javascript:GetFCAH("637947","0","3")'
                        runat="server">View Over Under Forecast</asp:HyperLink>
                </td>
            </tr>
        </table>
        <input type="hidden" id="home_vl" value="Everton" /><input type="hidden" id="away_vl"
            value="Birmingham City" /><input type="hidden" id="matchid_vl" value="637947" /><input
                type="hidden" id="bettype_vl" value="1" /><input type="hidden" id="score_vl" value="0" /></div>
</body>
</html>
