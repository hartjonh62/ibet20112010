<%@ Page Language="C#" AutoEventWireup="true" Inherits="Info_creditbalance" Codebehind="EditMaster.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<title>Home</title>
<meta name="keywords" content="sportsbook, agency, agent, betting" />
<meta name="description" content="online betting sportsbook agency system" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<link href='../App_Themes/AgencyV2/common.css' type='text/css' rel='stylesheet' /><link href='../App_Themes/AgencyV2/main.css' type='text/css' rel='stylesheet' />
<script type='text/javascript' src='../Js/opt/Core.js?v=20091230' ></script>
<script type='text/javascript' src='../Js/Common.js?v=20091230' ></script>

<link href='../App_Themes/AgencyV2/PopUpMessage.css' type='text/css' rel='stylesheet' />
<script type="text/javascript" src="../Js/IBCWnd/IBCWnd.js?v=20091230"></script>

<script type="text/javascript">
    function OpenDiv(d)
	{
	    var popH = 340, popW = 429;
	    if(navigator.appName == "Netscape" && parseInt(navigator.appVersion) >= 3 )             
        {
            popW=424;
        }			
		var url = "../SourceFlash.aspx?d=" + d;
		//url, title, left, top, width, height			
		ibcWnd.open(url, '', 20, 70 , popW, popH, 'clssBoder', 'clssBackground');
	}	  
</script>

		

</head>
<body>
<div id="page_main"><div id="header_main"> 
<asp:Label ID="lblBalance" runat="server" Text="Balance"></asp:Label>
</div><div id="sContent"><table width="420" border="0" cellpadding="0" cellspacing="1" class="tblRpt"><tr><td colspan="2" class="RptHeader">Agent Balance Information:&nbsp; SMQQ02</td></tr><tr class="bg_eb"><td>Cash Balance</td><td class="l"><font class="positive">Yen 0.00</font></td></tr ><tr class="bg_eb"><td>Yesterday Cash Balance</td><td class="l"><font class="positive">Yen 0.00</font></td></tr><tr class="bg_eb"><td>Total Balance</td><td class="l"><font class="positive">Yen 0.00</font></td>
</tr class="bg_eb"><tr class="bg_eb"><td>Yesterday Total Balance</td><td class="l">
<font class="positive">Yen 0.00</font></td></tr><tr class="bg_eb"><td>Agent Outstanding</td>
<td class="l"><font class="positive">Yen 0.00</font></td></tr><tr class="bg_eb"><td>Total Outstanding</td>
<td class="l"><font class="positive">Yen 0.00</font></td></tr><tr class="bg_eb"><td>Agent Credit</td><td class="l"><font class="positive">Yen 0.00</font></td></tr><tr class="bg_eb"><td>Total Member Credit</td><td class="l"><font class="positive">Yen 0.00</font></td></tr><tr class="bg_eb"><td>Total Member active/closed/suspended</td><td class="b l"><font color="#003366">0</font>/<font color="#d12320">0</font>/<font color="#d45f12">0</font></td></tr></table></div><style type="text/css">.cssNoel{position:absolute;float:right;bottom:1px;z-index:1;right:1px;}
</style><script>function showFlashNoel(canDisplay, divContentId) {if (canDisplay == 'True') {if (!hasCookieName(divContentId, 2050492, 0)) {showDivPopup(divContentId);setFlashCookie('flashLaterNoel', true, 2050492, 0);;return 1;}}return 0;}window.onload = function Loaded() {showFlashNoel('True', 'flashLaterNoel');}</script>

<div id="flashLaterNoel" style="display:none; width:730px; height:323px;" class="cssNoel"><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,0,0" allowscriptaccess="always" id="menu" width="100%" align="right" height="100%"><param name="movie" value="../flash/xmas/flashNoel_en-US.swf"><param name="quality" value="high"><param name="wmode" value="transparent"><embed src="../flash/xmas/flashNoel_en-US.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" wmode="transparent" name="menu" width="100%" align="right" height="100%"></object>
</div><input type="hidden" id="hddate" name="hddate" value="0" />
</body>
</html>
