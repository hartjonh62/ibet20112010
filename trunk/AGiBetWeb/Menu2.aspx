﻿<%@ Page Language="C#" AutoEventWireup="true" Inherits="Menu2" CodeBehind="Menu2.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <title>Home</title>
    <meta name="keywords" content="sportsbook, agency, agent, betting" />
    <meta name="description" content="online betting sportsbook agency system" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href='App_Themes/AgencyV2/common.css' type='text/css' rel='stylesheet' />
    <link href='App_Themes/AgencyV2/leftMenu.css' type='text/css' rel='stylesheet' />

    <script type='text/javascript' src='Js/opt/Core.js?v=20091230'></script>

    <script type='text/javascript' src='Js/Common.js?v=20091230'></script>

    <script>
 function reloadMenuUsrInfo() {
    //do nothing here
 }
    </script>

    <style type="text/css">
        .Bleft_Sub, .Bleft_Sub_2, .Bleft_ParentAc, .Bleft_Parent
        {
            font-weight: bold;
        }
    </style>
</head>
<body>
    <div id="leftpanewrapper">
        <div id="tab_menu">
            <div id="tab_menu_m">
                <a class="tab_menu01AC" style="cursor: default;">
                    <asp:Label ID="lblMainenu" runat="server" Text="Main menu"></asp:Label></a></div>
            <div id="tab_menu_L" onmouseover="stopBlickAccInfoTab();">
                <a id="lnkAccInfo" class="tab_menu02" target="menu" onclick="showFlashAccInfoMaster();"
                    href="MenuUsrInfo.aspx"><span id="lblAccInfo">Account Info</span></a><script>slide_down();</script></div>
        </div>
        <div id="leftpane">
            <div id="top_left">
                <img src="App_Themes/AgencyV2/Images/dot.gif" width="202px" height="6" /></div>
            <div id="button_left">
                <div class="Bleft_Parent0">
                    <a class="Bleft_ParentAc" href="#" onclick="menu_toggle('0'); return false;"><span
                        id="menu-0" class="Bleft_Parent">
                        <asp:Label ID="lblTotalBets" runat="server" Text="Total Bets"></asp:Label></span></a><div id="div-0" style="display: none">
                            <div class="left_line">
                                <img name="" src="App_Themes/AgencyV2/Images/dot.gif" width="1" height="1" alt="" /></div>
                            <div class="Bleft_Sub0">
                                <a id="menuitem0" onclick="menu_select(0);" href="TotalBets/HDPOU.aspx" target="main"
                                    class="Bleft_Sub">Handicap/Over Under/Live</a><a id="menuitem1" onclick="menu_select(1);"
                                        href="TotalBets/MoneyLine.aspx" target="main" class="Bleft_Sub">Money Line</a><a
                                            id="menuitem2" onclick="menu_select(2);" href="TotalBets/OddEven1x2.aspx" target="main"
                                            class="Bleft_Sub">Odd/Even + 1x2</a><a id="menuitem3" onclick="menu_select(3);" href="BetList/BetList.aspx?bettype=4&type=Bettype"
                                                target="main" class="Bleft_Sub">Correct Score</a><a id="menuitem4" onclick="menu_select(4);"
                                                    href="TotalBets/TotalGoal.aspx" target="main" class="Bleft_Sub">Total Goal</a><a
                                                        id="menuitem5" onclick="menu_select(5);" href="BetList/BetList.aspx?type=MixParlay"
                                                        target="main" class="Bleft_Sub">Mix Parlay</a><a id="menuitem6" onclick="menu_select(6);"
                                                            href="TotalBets/OutRight.aspx" target="main" class="Bleft_Sub">Outright</a><a id="menuitem7"
                                                                onclick="menu_select(7);" href="TotalBets/HTFT.aspx" target="main" class="Bleft_Sub">HT/FT</a><a
                                                                    id="menuitem8" onclick="menu_select(8);" href="TotalBets/FGLG.aspx" target="main"
                                                                    class="Bleft_Sub">FG/LG</a><a id="menuitem9" onclick="menu_select(9);" href="TotalBets/NextGoal.aspx"
                                                                        target="main" class="Bleft_Sub">Next Goal</a><a id="menuitem10" onclick="menu_select(10);"
                                                                            href="TotalBets/Financial.aspx" target="main" class="Bleft_Sub">Finance</a><a id="menuitem11"
                                                                                onclick="menu_select(11);" href="TotalBets/Horseracing.aspx" target="main" class="Bleft_Sub">Horse
                                                                                Racing</a></div>
                        </div>
                </div>
            </div>
            <div id="button_left">
                <div class="Bleft_Parent0">
                    <a class="Bleft_ParentAc" href="#" onclick="menu_toggle('1'); return false;"><span
                        id="menu-1" class="Bleft_Parent">
                        <asp:Label ID="lblForecast" runat="server" Text="Forecast"></asp:Label></span></a><div id="div-1" style="display: none">
                            <div class="left_line">
                                <img name="" src="App_Themes/AgencyV2/Images/dot.gif" width="1" height="1" alt="" /></div>
                            <div class="Bleft_Sub0">
                                <a id="menuitem12" onclick="menu_select(12);" href="Forecast/MasterForecast.aspx"
                                    target="main" class="Bleft_Sub">Handicap/Over Under/Live</a><a id="menuitem13" onclick="menu_select(13);"
                                        href="Forecast/ForeCast1X2.aspx" target="main" class="Bleft_Sub">1 X 2</a></div>
                        </div>
                </div>
            </div>
            <div id="button_left">
                <div class="Bleft_Parent0">
                    <a class="Bleft_ParentAc" href="#" onclick="menu_toggle('2'); return false;"><span
                        id="menu-2" class="Bleft_Parent">
                        <asp:Label ID="lblReports" runat="server" Text="Reports"></asp:Label></span></a><div id="div-2" style="display: none">
                            <div class="left_line">
                                <img name="" src="App_Themes/AgencyV2/Images/dot.gif" width="1" height="1" alt="" /></div>
                            <div class="Bleft_Sub0">
                                <a id="menuitem14" onclick="menu_select(14);" href="Report/MatchResultEntered.aspx"
                                    target="main" class="Bleft_Sub">Member Win Loss</a><a id="menuitem15" onclick="menu_select(15);"
                                        href="Report/WinLossDetailAgent.aspx" target="main" class="Bleft_Sub">Member Win
                                        Loss Detail</a><a id="menuitem16" onclick="menu_select(16);" href="Report/MemberMiscInfo.aspx"
                                            target="main" class="Bleft_Sub">Member Outstanding</a><a id="menuitem17" onclick="menu_select(17);"
                                                href="Report/MatchWinLossAgent.aspx" target="main" class="Bleft_Sub">Match Win Loss</a><a
                                                    id="menuitem18" onclick="menu_select(18);" href="Report/MatchWinLossDetail.aspx"
                                                    target="main" class="Bleft_Sub">Match Win Loss Detail</a><a id="menuitem19" onclick="menu_select(19);"
                                                        href="Report/WinLossByBettype.aspx" target="main" class="Bleft_Sub">Win Loss By
                                                        Bet Type</a><a id="menuitem20" onclick="menu_select(20);" href="Report/CommissionByBettype.aspx"
                                                            target="main" class="Bleft_Sub">Commission By Bet Type</a><a id="menuitem21" onclick="menu_select(21);"
                                                                href="Report/CommissionByFinance.aspx" target="main" class="Bleft_Sub">Finance Commission</a><a
                                                                    id="menuitem22" onclick="menu_select(22);" href="Report/RptCommissionHR.aspx"
                                                                    target="main" class="Bleft_Sub">Horse Racing Commission</a><a id="menuitem23" onclick="menu_select(23);"
                                                                        href="Report/CancelBetList.aspx" target="main" class="Bleft_Sub">Cancelled Bets</a><a
                                                                            id="menuitem24" onclick="menu_select(24);" href="Report/Statement.aspx" target="main"
                                                                            class="Bleft_Sub">Statement</a><a id="menuitem25" onclick="menu_select(25);" href="Report/Result.aspx"
                                                                                target="main" class="Bleft_Sub">Results</a></div>
                        </div>
                </div>
            </div>
            <div id="button_left">
                <div class="Bleft_Parent0">
                    <a class="Bleft_ParentAc" href="#" onclick="menu_toggle('3'); return false;"><span
                        id="menu-3" class="Bleft_ParentAc"><asp:Label ID="lblMEMBERINFORMATION" runat="server" Text="MEMBER INFORMATION"></asp:Label></span></a><div id="div-3" style="display: block">
                            <div class="left_line">
                                <img name="" src="App_Themes/AgencyV2/Images/dot.gif" width="1" height="1" alt="" /></div>
                            <div class="Bleft_Sub0">
                                <a id="menuitem26" onclick="menu_select(26);" href="UserAgent/AddNewMemberSingle.aspx"
                                    target="main" class="Bleft_Sub">New Member</a><a id="menuitem27" onclick="menu_select(27);"
                                        href="MemberInfo/SubAccList.aspx" target="main" class="Bleft_Sub">Sub Account</a><a
                                            id="menuitem28" onclick="menu_select(28);" href="MemberInfo/DownlineList.aspx"
                                            target="main" class="Bleft_Sub">Customer List</a><a id="menuitem29" onclick="menu_select(29);"
                                                href="MemberInfo/CreditBalance.aspx" target="main" class="Bleft_Sub">Credit/Balance</a><a
                                                    id="menuitem30" onclick="menu_select(30);" href="MemberInfo/PositionTaking.aspx"
                                                    target="main" class="Bleft_Sub">Position Taking (%)</a><a id="menuitem31" onclick="menu_select(31);"
                                                        href="MemberInfo/MemberCommission.aspx" target="main" class="Bleft_Sub">Member Commission</a></div>
                        </div>
                </div>
            </div>
            <div align="center" style="width: 200px; height: 110px; margin-right: 20px; padding-top: 10px;
                cursor: pointer" onmousedown="OpenPage('Ad1.aspx?fn=casinoGuide2_en-US&fw=980&fh=610', 1000, 615); return false;">
                <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="https://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0"
                    width="174" title="" height="110" id="Object1" />
                <param name="movie" value="Flash/casinoAd_en-US.swf" />
                <param name="quality" value="high" />
                <param name="wmode" value="transparent" />
                <embed style="cursor: pointer" src="Flash/casinoAd_en-US.swf" quality="high" pluginspage="https://www.macromedia.com/go/getflashplayer"
                    type="application/x-shockwave-flash" width="174" height="110" wmode="transparent"></embed></object></div>
            <div align="center" style="width: 200px; height: 110px; margin-right: 20px; padding-top: 10px;
                cursor: pointer" onmousedown="OpenUserGuide(); return false;">
                <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="https://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0"
                    width="174" title="WAP service is now available" height="110" id="Object4" />
                <param name="movie" value="Flash/3.swf" />
                <param name="quality" value="high" />
                <param name="wmode" value="transparent" />
                <embed style="cursor: pointer" src="Flash/3.swf" quality="high" pluginspage="https://www.macromedia.com/go/getflashplayer"
                    type="application/x-shockwave-flash" width="174" height="110" wmode="transparent"></embed></object></div>
            <div align="center" style="width: 200px; height: 132px; margin-right: 20px; padding-top: 10px;
                cursor: pointer">
                <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="https://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0"
                    width="173" height="132" title="Welcome" id="Object2" />
                <param name="movie" value="Flash/CasinoOpen_en-US.swf" />
                <param name="quality" value="high" />
                <param name="wmode" value="transparent" />
                <embed src="Flash/CasinoOpen_en-US.swf" quality="high" pluginspage="https://www.macromedia.com/go/getflashplayer"
                    type="application/x-shockwave-flash" width="173" height="132" wmode="transparent"></embed></object></div>
        </div>
    </div>
</body>
</html>

<script type="text/javascript">

RoleId=2;

</script>

