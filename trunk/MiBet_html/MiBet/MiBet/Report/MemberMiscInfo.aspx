<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MemberMiscInfo.aspx.cs" Inherits="Report_MemberMiscInfo" %>
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

<script type="text/javascript" src="../Js/excel.js?v=20091230"></script>

<script type="text/javascript" src="../Js/opt/jx.js?v=20091230"></script>
<script type="text/javascript">
function doViewDownline(custid, act)//ViewDownline
{
    var url = 'MemberMiscInfo.aspx?custid=' + custid + '&act=' + act;
    window.location.href = url;
}
function VBL_SB(custid,username,type)//ViewBetList for Sport Book
{
    var url = 'OutstandingAgentDetail.aspx?custid=' + custid + '&username=' + username + '&type=' + type + '&ShowSB=1&showHR=1&showFI=1'; 
    window.location.href = url;
}
function VBL_Casino(custid,username,type)//ViewBetList for Casino
{
    var url = 'OutstandingAgentDetail.aspx?custid=' + custid + '&username=' + username + '&type=' + type + '&ShowCasino=1' + '&ShowSB=0'; 
    window.location.href = url;
}
function FormReload(custid,act)
{
    var url = 'MemberMiscInfo.aspx?custid=' + custid + '&act=' + act;
    window.location.href = url;
}    
</script>
</head>
<body>
<div id="page_main"><div id="header_main" style="width:97%"><div class="divBoxRight"><input type="checkbox" id="chk_rpt_bold" checked='checked' onclick="boldTable(this.checked);" /><span style="color:#999; text-transform:none;">Bold</span></div>Agent Outstanding</div><table border="0" cellpadding="0" cellspacing="0"><tr><td><div><table class="tblRpt boldrow r" width="100%" border="0" cellpadding="0" cellspacing="1" id="tbl-rpt"><tr class="RptHeader"><td width="100px" rowspan="2">User Name</td><td colspan="2">Sport Book</td></tr><tr class="RptHeader02"><td width="120px">Outstanding</td><td width="120px">Master Position</td></tr><tr><td class="c bg_white" colspan="3" style="font-weight: normal;">No information is available</td></tr></table></div></td></tr></table></div>
</body>
</html>
