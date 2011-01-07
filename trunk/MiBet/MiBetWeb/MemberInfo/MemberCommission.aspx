<%@ Page Language="C#" AutoEventWireup="true" Inherits="MemberInfo_MemberCommission" Codebehind="MemberCommission.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<titlHome</title>
<meta name="keywords" content="sportsbook, agency, agent, betting" />
<meta name="description" content="online betting sportsbook agency system" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<link href='../App_Themes/AgencyV2/common.css' type='text/css' rel='stylesheet' /><link href='../App_Themes/AgencyV2/main.css' type='text/css' rel='stylesheet' />
<script type='text/javascript' src='../Js/opt/Core.js?v=20091230' ></script>
<script type='text/javascript' src='../Js/Common.js?v=20091230' ></script>

<script type="text/javascript" src="../Js/MemberInfo/MemberCommission.js?v=20091230"></script></head>

<body>
    <form id="frm" runat="server">
    <div id="page_main"><div id="header_main">Member Commission</div><table border="0" cellpadding="0" cellspacing="0" width="100%"><tr><td><div id="box_header" style="width:97%"><table border="0" cellpadding="0" cellspacing="1" style="width:100%"><tr><td><table border="0" cellspacing="0" cellpadding="0"><tr><td style="padding-left:20px;">
        <asp:Label ID="Label1" runat="server" Text="SelectAgent"></asp:Label>
        t</td><td id="selagent" name="selagent" >
            <asp:DropDownList ID="dllselAg" runat="server">
            </asp:DropDownList>
        </td><td><div id="loading" class="" style=" width:24px; height:24px; float:left;padding-left:5px;"></div></td></tr></table></td></tr><tr><td style="text-align: left" class="warning"><ul><li>
			&nbsp;<asp:Label ID="Label2" runat="server" 
                Text="Commission 1(Comm 1) applies to ALL types of Asian Handicap, Over Under and Odd Even bets. "></asp:Label>
					</li>
        <li>
			<asp:Label ID="Label3" runat="server" 
                Text="Commission 2(Comm 2) applies to ALL types of 1x2 bets. "></asp:Label>
					</li>
<li>
		&nbsp;<asp:Label ID="Label4" runat="server" 
            Text="Commission 3(Comm 3) applies to ALL types of Other bets. "></asp:Label>
		</li><li>
            <asp:Label ID="Label5" runat="server" Text="M = Master, A = Agent, P = Member"></asp:Label>
        </li></ul></td></tr></table></div></td><tr><td><div id="tbl-container" style="width:97%"><div id="boderRight"><table id="tbl-rpt" class="tblRpt nowrap r" cellpadding="0" cellspacing="1" style="width:100%;"><thead><tr ><td class="RptHeader" colspan="5">&nbsp;</td><td class="RptHeader" colspan="3">
            <asp:Label ID="Label6" runat="server" Text="Comm 1(%)"></asp:Label>
            </td><td class="RptHeader" colspan="3">
                <asp:Label ID="Label7" runat="server" Text="Comm 2(%)"></asp:Label>
            </td><td class="RptHeader" colspan="3">
                <asp:Label ID="Label8" runat="server" Text="Comm 3(%)"></asp:Label>
            </td><td class="RptHeader nowrap" colspan="3">
                <asp:Label ID="Label9" runat="server" Text="Finance(%)"></asp:Label>
            </td><td class="RptHeader" colspan="3">
                <asp:Label ID="Label10" runat="server" Text="HR Tote(%)"></asp:Label>
            </td><td class="RptHeader" colspan="2">&nbsp;</td></tr><tr class="c"><td class="RptHeader02" style="width: 25px;">#</td><td class="RptHeader02">
            <asp:Label ID="Label16" runat="server" Text="User Name"></asp:Label>
            </td><td class="RptHeader02">
                <asp:Label ID="Label15" runat="server" Text="First Name"></asp:Label>
            </td><td class="RptHeader02">
                <asp:Label ID="Label14" runat="server" Text="Last Name"></asp:Label>
            </td><td class="RptHeader02">
                <asp:Label ID="Label13" runat="server" Text="Group"></asp:Label>
            </td><td class="colHdr2" title="M = Master">M</td><td class="colHdr2" title="A = Agent">A</td><td class="colHdr2" title="P = Member">P</td><td class="colHdr" title="M = Master">M</td><td class="colHdr" title="A = Agent">A</td><td class="colHdr" title="P = Member">P</td><td class="colHdr2" title="M = Master">M</td><td class="colHdr2" title="A = Agent">A</td><td class="colHdr2" title="P = Member">P</td><td class="colHdr" title="M = Master">M</td><td class="colHdr" title="A = Agent">A</td><td class="colHdr" title="P = Member">P</td><td class="colHdr2" title="M = Master">M</td><td class="colHdr2" title="A = Agent">A</td><td class="colHdr2" title="P = Member">P</td><td class="RptHeader02">
            <asp:Label ID="Label11" runat="server" Text="Credit"></asp:Label>
            </td><td class="RptHeader02">
                <asp:Label ID="Label12" runat="server" Text="User Name"></asp:Label>
            </td></tr></thead><tbody><tr class="bg_white c"><td colspan="25" class="nobold">No information is available</td></tr></tbody></table></div></div></td></tr></table></div><input type="hidden" id="rowcount" name="rowcount" value="0" />
    </form>

</body>
</html>
