<%@ Page Language="C#" AutoEventWireup="true" Inherits="TotalBets_NextGoal" CodeBehind="NextGoal.aspx.cs" %>

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

function GetNextGoal() {
    Ajax.Request("../Handlers/NextGoalData.ashx",{
        asynchronous:true,
        method:'get',        
        onComplete:BindNextGoal
    });    
}

function BindNextGoal(rs) {    
    $('sContent').innerHTML = rs.responseText;
}

function openForecast(matchid, bettype, data)
{
    ibcWnd.open('../ForeCast/FCAH.aspx?matchid=' + matchid + '&b=' + bettype, '', 70, 50, 440, 170, 'class1', 'class2');
}
var timer = setTimeout("GetNextGoal()", 90000);
    </script>

</head>
<body>
    <div id="page_main">
        <div id="header_main">
            <asp:Label ID="lblNextGoal" runat="server" Text="Next Goal"></asp:Label></div>
        <div id="sContent">
            <table class="tblRpt" cellpadding="0" cellspacing="1" border="0">
                <tr class="RptHeader">
                    <td style="width: 20px">
                        #
                    </td>
                    <td style="width: 80px">
                        Time
                    </td>
                    <td style="width: 120px">
                        Event
                    </td>
                    <td colspan="5" style="width: 140px">
                        Turnover/Winlost
                    </td>
                </tr>
                <tr>
                    <td colspan="8" class="bg_white c nobold">
                        No information is available
                    </td>
                </tr>
            </table>
        </div>
    </div>
</body>
</html>
