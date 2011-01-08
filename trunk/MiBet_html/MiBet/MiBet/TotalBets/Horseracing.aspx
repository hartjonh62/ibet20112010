<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Horseracing.aspx.cs" Inherits="TotalBets_Horseracing" %>

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

<script type="text/javascript">
    var timer = setTimeout("location = location.href;", 30000);

    function ViewBetList(matchid, bettype, type) {
        var linkUrl = "../BetList/BetList.aspx?matchid=" + matchid + "&bettype=" + bettype + "&type=" + type;
        window.location.href = linkUrl;
    }
</script>

</head>
<body>
<div id="page_main"><div id="header_main">Horse Racing</div><div id="sContent"><table class="tblRpt" cellpading="0" cellspacing="1" border="0" style="width: 860px;"><tr class="RptHeader"><td rowspan="3" style="width: 7%;">Race </td><td rowspan="3" style="width: 6%;" class="nowrap">Horse No</td><td rowspan="3" style="width: 21%;">Horse</td><td colspan="6">Tote</td></tr><tr class="RptHeader"><td colspan="2">Win</td><td colspan="2">Place</td><td colspan="2">Win Place</td></tr><tr class="RptHeader02"><td class="nowrap" style="width: 5%">Total</td><td class="nowrap" style="width: 6%">Win Loss</td><td class="nowrap" style="width: 5%">Total</td><td class="nowrap" style="width: 6%">Win Loss</td><td class="nowrap" style="width: 5%">Total</td><td class="nowrap" style="width: 6%">Win Loss</td></tr><tr><td colspan="15" class="bg_white c nobold">No information is available</td></tr></table></div></div>

</body>
</html>
