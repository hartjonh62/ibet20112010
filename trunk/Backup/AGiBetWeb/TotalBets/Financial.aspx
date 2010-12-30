<%@ Page Language="C#" AutoEventWireup="true" Inherits="TotalBets_Financial" CodeBehind="Financial.aspx.cs" %>

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

    <script type="text/javascript">
    function ViewBetList(mId, btype, type) {
        var strBetListUrl = "../BetList/BetList.aspx?";
        strBetListUrl += "matchid=" + mId + "&bettype=" + btype + "&type=" + type;
        window.location.href = strBetListUrl;
    }

    window.onload = function() {
        setTimeout("location = location.href;", 30000);
    }
    </script>

</head>
<body>
    <form id="form1" runat="server">
    <div id="page_main">
        <div id="header_main">
            <asp:Label ID="lblFinance" runat="server" Text="Finance"></asp:Label>
        </div>
        <div id="sContent">
            <table class="tblRpt" cellpading="0" cellspacing="1" border="0" style="width: 650px;">
                <tr class="RptHeader">
                    <td rowspan="2" style="width: 2%;">
                        #
                    </td>
                    <td rowspan="2" style="width: 16%;">
                        Time Range
                    </td>
                    <td colspan="2">
                        Over/Under
                    </td>
                    <td colspan="2">
                        Odd/Even
                    </td>
                </tr>
                <tr class="RptHeader02">
                    <td style="width: 11%">
                        Turnover
                    </td>
                    <td style="width: 11%">
                        Win Loss
                    </td>
                    <td style="width: 11%">
                        Turnover
                    </td>
                    <td style="width: 11%">
                        Win Loss
                    </td>
                </tr>
                <tr class="bg_white c">
                    <td colspan="6" class="nobold">
                        No information is available
                    </td>
                </tr>
            </table>
        </div>
    </div>
    </form>
</body>
</html>
