<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MemberCommission.aspx.cs" Inherits="MemberInfo_MemberCommission" %>

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

<script type="text/javascript" src="../Js/MemberInfo/MemberCommission.js?v=20091230"></script></head>

<body>
<form id="frm" method="get"><div id="page_main"><div id="header_main">Member Commission</div><table border="0" cellpadding="0" cellspacing="0" width="100%"><tr><td><div id="box_header" style="width:97%"><table border="0" cellpadding="0" cellspacing="1" style="width:100%"><tr><td><table border="0" cellspacing="0" cellpadding="0"><tr><td style="padding-left:20px;">Select Agent</td><td id="selagent" name="selagent" ><select id="selAg" name="selAg" onchange="DisablePage(); show_data_com();"><option value="2012586" >SMQQ01</option><option value="2050492" >SMQQ02</option></select></td><td><div id="loading" class="" style=" width:24px; height:24px; float:left;padding-left:5px;"></div></td></tr></table></td></tr><tr><td style="text-align: left" class="warning"><ul><li>
			Commission 1(Comm 1) applies to ALL types of Asian Handicap, Over Under and Odd Even bets.
					</li>
		<li>
		Commission 2(Comm 2) applies to ALL types of 1x2 bets.  
		</li>
<li>
		Commission 3(Comm 3) applies to ALL types of Other bets.  
		</li><li>M = Master, A = Agent, P = Member</li></ul></td></tr></table></div></td><tr><tr><td><div id="tbl-container" style="width:97%"><div id="boderRight"><table id="tbl-rpt" class="tblRpt nowrap r" cellpadding="0" cellspacing="1" style="width:100%;"><thead><tr ><td class="RptHeader" colspan="5">&nbsp;</td><td class="RptHeader" colspan="3">Comm 1(%)</td><td class="RptHeader" colspan="3">Comm 2(%)</td><td class="RptHeader" colspan="3">Comm 3(%)</td><td class="RptHeader nowrap" colspan="3">Finance(%)</td><td class="RptHeader" colspan="3">HR Tote(%)</td><td class="RptHeader" colspan="2">&nbsp;</td></tr><tr class="c"><td class="RptHeader02" style="width: 25px;">#</td><td class="RptHeader02">User Name</td><td class="RptHeader02">First Name</td><td class="RptHeader02">Last Name</td><td class="RptHeader02">Group</td><td class="colHdr2" title="M = Master">M</td><td class="colHdr2" title="A = Agent">A</td><td class="colHdr2" title="P = Member">P</td><td class="colHdr" title="M = Master">M</td><td class="colHdr" title="A = Agent">A</td><td class="colHdr" title="P = Member">P</td><td class="colHdr2" title="M = Master">M</td><td class="colHdr2" title="A = Agent">A</td><td class="colHdr2" title="P = Member">P</td><td class="colHdr" title="M = Master">M</td><td class="colHdr" title="A = Agent">A</td><td class="colHdr" title="P = Member">P</td><td class="colHdr2" title="M = Master">M</td><td class="colHdr2" title="A = Agent">A</td><td class="colHdr2" title="P = Member">P</td><td class="RptHeader02">Credit</td><td class="RptHeader02">User Name</td></tr></thead><tbody><tr class="bg_white c"><td colspan="25" class="nobold">No information is available</td></tr></tbody></table></div></div></td></tr></table></div><input type="hidden" id="rowcount" name="rowcount" value="0" /></form>

</body>
</html>
