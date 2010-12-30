<%@ Page Language="C#" AutoEventWireup="true" Inherits="Header" CodeBehind="Header.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <title>Home</title>
    <meta name="keywords" content="sportsbook, agency, agent, betting" />
    <meta name="description" content="online betting sportsbook agency system" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href='App_Themes/AgencyV2/common.css' type='text/css' rel='stylesheet' />
    <link href='App_Themes/AgencyV2/header.css' type='text/css' rel='stylesheet' />

    <script type='text/javascript' src='Js/opt/Core.js?v=20091230'></script>

    <script type='text/javascript' src='Js/Common.js?v=20091230'></script>

    <script type="text/javascript" src="Js/opt/jx.js?v=20091230"></script>

    <script type="text/javascript" src="Js/header.js?v=20091230"></script>

    <script type="text/javascript" src="js/snowstorm.js"></script>

</head>
<body>
    <form id="form1" runat="server">
    <style type="text/css">
        body
        {
            background: url(App_Themes/AgencyV2/Images/bgtop_f2.jpg) repeat-x top;
        }
        #Popup_top
        {
            color: #000000;
            background-color: #ffffde;
            position: absolute;
            width: 420px;
            height: 48px;
            z-index: 1;
            left: 620px;
            top: 10px;
            border: 1px solid #ae5f27;
            padding: 1px 1px 5px 1px;
            filter: alpha(opacity=95);
            -moz-opacity: 0.95;
            -khtml-opacity: 0.95;
            opacity: 0.95;
            display: none;
        }
        #Popup_line
        {
            float: left;
            height: 52px;
            width: 14px;
            background: repeat-x top #511900;
        }
        #Popup_contents
        {
            font-size: 11px;
            font-weight: normal;
            line-height: 15px;
            text-align: left;
            background-color: #ffffde;
            padding-left: 10px;
            text-indent: 7px;
            color: #03C;
        }
        .Popup_textconts
        {
            color: #ed2024;
            display: block;
            text-decoration: none;
            text-indent: 10px;
            border-bottom: dotted 1px #000000;
            padding: 3px 0px 7px 0px;
        }
    </style>
    <div id="accinfosup" style="display: none; width: 560px; height: 310px;">
        <div style="position: absolute; right: 1px; top: 1px;" onclick="this.parentNode.style.display='none';">
            <img style="cursor: pointer;" src="App_Themes/Agencyv2/Images/x.jpg" alt="close"
                title="Close" />
        </div>
        <center>
            <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="https://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0"
                width="560" height="310" title="Welcome" id="Object1" />
            <param name="movie" value="Flash/AccInfo/accinfosup_en-US.swf" />
            <param name="quality" value="high" />
            <param name="wmode" value="transparent" />
            <embed src="Flash/AccInfo/accinfosup_en-US.swf" quality="high" pluginspage="https://www.macromedia.com/go/getflashplayer"
                type="application/x-shockwave-flash" width="560" height="310" wmode="transparent"></embed></object></center>
        <div style="position: absolute; bottom: 3px; right: 5px; font-size: 9px; color: #7D2D2E;">
            <input type="checkbox" onclick="javascript:setFlashCookie(this.parentNode.parentNode.id, this.checked, 2050492, 0);" />Do
            not show again
        </div>
    </div>
    <div id="banner_main">
        <div id="logo" style="background: url(App_Themes/AgencyV2/Images/icon_user.gif?v=20091230) no-repeat top left;">
            <div id="text_logo">
                Welcome SMQQ02<br />
            </div>
        </div>
        <div id="banner" style="background: url(App_Themes/AgencyV2/Images/bg_banner2.jpg?v=20091230) no-repeat top left;">
            <div id="language">
                <div id="language_box">
                    <img src="App_Themes/Login/flag_E.png" width="24" height="18" hspace="7" align="left"
                        nowrap />
                    <asp:DropDownList ID="ddlselectLanguage" runat="server" onchange="ChangeLang(this.value);"
                        Style="height: 19px; width: 75px;">
                        <asp:ListItem Value="en-US">English</asp:ListItem>
                        <asp:ListItem Value="zh-TW">繁體中文</asp:ListItem>
                        <asp:ListItem Value="zh-CN">简体中文</asp:ListItem>
                        <asp:ListItem Value="ja-JP">日本語</asp:ListItem>
                        <asp:ListItem Value="th-TH">ภาษาไทย</asp:ListItem>
                        <asp:ListItem Value="ko-KR">한국어</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <div id="button">
                <div id="g_left">
                    &nbsp;</div>
                <div id="g_right">
                    &nbsp;</div>
                <div id="button_main">
                    <div id="Popup_top">
                        <div id="Popup_line">
                            <a onclick="javascript:closePopUpTop(1)" style="cursor: pointer;">
                                <img src="App_Themes/icon_close.jpg" alt="close" width="14px" height="14px" border="0"
                                    title="close" /></a></div>
                        <div style="overflow: auto; height: 52px; width: auto;">
                            <div id="Popup_contents">
                            </div>
                        </div>
                    </div>
                    <li><a id="balance" href="#" onclick="change2Menu('Info/CreditBalance.aspx'); this.className='current';"
                        class="current" title="">Balance</a></li><li><a id="transfer" href="#" onclick="change2Menu('Transfer/MultipleTransfer.aspx'); this.className='current';"
                            title="">Transfer</a></li><li><a id="changepass" href="#" onclick="change2Menu('Info/ChangePass.aspx'); this.className='current';"
                                title="">Change Password</a></li><li><a id="logout" href="#" onclick="change2Menu('Authorization/Logout.ashx'); this.className='current';"
                                    title="">Log Out</a></li><div id="clock">
                                    </div>
                </div>
                <div id="news_main">
                    <div id="button_top">
                        <a id="privateMsgLnk" class="b_top" href="#" onclick="javascript:privateMsgLink('Info/NewMessageForm.aspx?pageQuery=private')">
                            Personal Msg(0)</a></div>
                    <div id="text_news_out" onclick="change2Menu('Info/NewMessageForm.aspx?pageQuery=normal')">
                        <div id="text_news" style="overflow: hidden; position: relative">
                            <div id="scroller" style="position: absolute; left: 960px; white-space: nowrap;">
                                <a id="topnews" style="overflow: hidden; position: relative" href="#">Attn:[Soccer]The
                                    match between "Fulham -vs- Swindon Town" [ENGLAND FA CUP - 2/1*Live*], we faced
                                    disruption in our broadcast from 2/1 11:16:22 PM - 11:20:17 PM. As a result tickets
                                    placed during the disrupted period were rejected. Sorry for the inconveniences caused!
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <input type="hidden" id="showFlashAccInfo" value="1" /><input type="hidden" id="ctime"
        value="12-21-10-PM" /><input type="hidden" id="cdate" value="Jan 03,2010 GMT+8" /><input
            type="hidden" id="hdSecondMsg" value="" /><input type="hidden" id="userid" value="2050492" /><input
                type="hidden" id="subaccid" value="0" /><input type="hidden" id="roleid" value="2" />
</form>
</body>
</html>

<script type="text/javascript">

Language='en-US';
OnUserID='527098173';
ShowLetter='False';
strMonth= new Array('Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sept', 'Oct', 'Nov', 'Dec');
year='2010';
month='1';
day='3';
hrs='0';
min='21';
sec='10';
currentLanguage='en-US';
PM='PM';
AM='AM';

</script>

