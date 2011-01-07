<%@ Page Language="C#" AutoEventWireup="true" Inherits="BetList_BetSlip" Codebehind="BetSlip.aspx.cs" %>

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

<style type="text/css">
        
    .tblRpt td
    {
        text-align: center;
    }
    @media print
    {
	    body
	    {
		    font-family: Tahoma;
		    font-size: 8px;
		    color: #000000;
		    background: #ffffff;
		    width: 650px;
	    }	    
	    .btn, .noprint
	    {
		    display: none;
	    }
	    /* don't print button */
	    .RptHeader, tr.RptTitle, td.RptTitle
	    {
		    color: #000000;
		    background: gray;
	    }
    }
</style>

<script type="text/javascript">

    IBC.addEvent(window, "load", resizeTbl);

    function resizeTbl()
    {
        var ibcWnd = parent.ibcWnd;
        var tbl2 = $('tbl2');
        var tbl1 = $('tbl1');
        var tbl0 = $('tbl0');
        if(typeof ibcWnd == 'undefined')
        {
            tbl2.width = tbl0.width = '650px';
            tbl2.align = tbl0.align = 'left';
            tbl1.width = '100%';
        }
        else
        {
            if(tbl1) tbl1.width = '99%';
        }
        
        if(tbl1) tbl1.style.display = window.attachEvent?'block':'table';
    } 
</script></head>
<body>
    <form id="form1" runat="server">
    <div id="page_main">
        <div id="header_main">
            <b>Bet Slip</b></div>
        <table id="tbl1" align="center" border="0" cellpadding="2" cellspacing="0" style="display: none">
            <tr>
                <td>
                    <table id="tbl0" cellpadding="0" cellspacing="0" border="0" width="630px">
                        <tr class="b c blue">
                            <td align="center" colspan="2">
                                User Name: SM5B01023&nbsp;&nbsp;&nbsp;REF NO: 1257837807
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td align="left">
                    <table id="tbl2" border="1" cellpadding="2" cellspacing="0" style="width: 630px;
                        float: left; border-collapse: collapse; border: solid 1px #DBD9D3" bordercolor="#DBD9D3">
                        <tr class="RptHeader">
                            <td style="width: 70px;">
                                Bet ID
                            </td>
                            <td style="width: 70px;">
                                Trans.Time
                            </td>
                            <td style="width: 50px;">
                                Code
                            </td>
                            <td>
                                Match
                            </td>
                            <td style="width: 60px;">
                                Choice
                            </td>
                            <td style="width: 50px;">
                                Hdp
                            </td>
                            <td style="width: 50px;">
                                Odds
                            </td>
                            <td style="width: 50px;">
                                Stake
                            </td>
                            <td style="width: 65px;">
                                Status
                            </td>
                        </tr>
                        <tr align="center" onmouseout="this.className='even_row'" onmouseover="this.className='c live_row'"
                            class="even_row">
                            <td class="informal">
                                <asp:Label ID="lblBetid" runat="server" Text="1257837807"></asp:Label>
                            </td>
                            <td class="bl_time">
                                <asp:Label ID="lbltime_d" runat="server" Text="12/20/2009"></asp:Label>
                                <br />
                                <asp:Label ID="lbltime_h" runat="server" Text="10:33:03 AM"></asp:Label>
                            </td>
                            <td class="informal">
                                <asp:Label ID="lblCode" runat="server" Text="4651"></asp:Label>
                            </td>
                            <td style="font-size: 11px;" style="width:200px;">
                                <font class=""> 
                                    <asp:Label ID="lblMatch_1" runat="server" Text="Juventus"></asp:Label>
                                </font>-vs-
                                <font class="b">
                                    <asp:Label ID="lblMatch_2" runat="server" Text="Catania"></asp:Label>
                                </font>
                            </td>
                            <td>
                                <asp:Label ID="lblChoice" runat="server" Text="x"></asp:Label>
                            </td>
                            <td class="bl_underdog">
                                <asp:Label ID="lblHdp" runat="server" Text="--"></asp:Label>
                            </td>
                            <td class="bl_underdog" style="white-space: normal;">
                                <asp:Label ID="lblOdds" runat="server" Text="3.2"></asp:Label><br />
                            </td>
                            <td class="bl_underdog">
                                <asp:Label ID="lblStake" runat="server" Text="5"></asp:Label>
                            </td>
                            <td class="bl_status">
                                <asp:Label ID="lblStatus" runat="server" Text="Running"></asp:Label>
                            </td>
                        </tr>
                        <tr class="RptHeader">
                            <td colspan="2">
                                Potential Winning
                            </td>
                            <td colspan="1">
                                Winning
                            </td>
                            <td colspan="2">
                                Live Betting
                            </td>
                            <td colspan="2">
                                Result Time
                            </td>
                            <td colspan="2">
                                Final Score
                            </td>
                        </tr>
                        <tr align="center" onmouseout="this.className='even_row'" onmouseover="this.className='c live_row'"
                            class="even_row">
                            <td colspan="2" class="bl_underdog">
                               <asp:Label ID="lblPotential" runat="server" Text="16"></asp:Label>
                            </td>
                            <td class="bl_underdog">
                                <asp:Label ID="lblWinning" runat="server" Text="0"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblLiveBetting_1" runat="server" Text="True"></asp:Label>
                            </td>
                            <td class="bl_underdog">
                                <asp:Label ID="lblLiveBetting_2" runat="server" Text="0 - 1"></asp:Label>
                            </td>
                            <td colspan="2" class="bl_time">
                                <asp:Label ID="lblTime" runat="server" Text="12/20/2009 11:39:50 AM"></asp:Label>
                                12/20/2009 11:39:50 AM
                            </td>
                            <td colspan="2" class="bl_underdog">
                                <asp:Label ID="lblFinalScore" runat="server" Text="-"></asp:Label>
                            </td>
                        </tr>
                        <tr align="center" onmouseout="this.className='even_row'" onmouseover="this.className='c live_row'"
                            class="even_row">
                            <td colspan="9" class="informal">
                                <asp:Label ID="lblEven" runat="server" Text="3DE89A517500377A2A838C182BB573"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="l" style="padding-top: 5px;">
                    <asp:Button ID="btnBlack" runat="server" Text="Back" CssClass="btn" OnClientClick="javascript:history.back();"  />&nbsp;
                    <asp:Button ID="btnPrint" runat="server" Text="Print" CssClass="btn" OnClientClick="javascript:window.print();" />
                </td>
            </tr>
        </table>
    </div>
    </form>

</body>
</html>
