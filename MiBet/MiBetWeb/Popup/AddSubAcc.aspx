﻿<%@ Page Language="C#" AutoEventWireup="true" Inherits="Popup_AddSubAcc" Codebehind="AddSubAcc.aspx.cs" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<title>Home</title>
<meta name="keywords" content="sportsbook, agency, agent, betting" />
<meta name="description" content="online betting sportsbook agency system" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<link href='../App_Themes/AgencyV2/common.css' type='text/css' rel='stylesheet' /><link href='../App_Themes/AgencyV2/popup.css' type='text/css' rel='stylesheet' /><link href='../App_Themes/AgencyV2/PopUpMessage.css' type='text/css' rel='stylesheet' />
<script type='text/javascript' src='../Js/opt/Core.js?v=20091230' ></script>
<script type='text/javascript' src='../Js/Common.js?v=20091230' ></script>

<script type="text/javascript">

function formvalidation()
{				
	if ($("password").value=="") 
	{
	    Err($("alertPasswordEmpty").value); 
	    $("password").focus();
        AddHeight(50);
		return false;
	}
	else
	{											
		var str = $("password").value;					
		var numbers = "0123456789";
		if(str.length < 6)
		{
		    Err($("alertPasswordRequire").value); 
		    $("password").focus();
	        AddHeight(80);
			return false;
		}
		var i = 0;
		var nCount = 0;
		while(i < str.length)
		{								
			if(numbers.indexOf(str.substring(i,i+1)) >= 0)
			{							
				nCount ++;
			}
			i++;
		}					
		if(nCount == str.length || nCount < 2)
		{
	        Err($("alertPasswordRequire").value); 
	        $("password").focus();
	        AddHeight(80);
			return false;
		}
	}										
	return true;
}

function Err(msg)
{
    $('spmsgerr').innerHTML = msg; 
    $('diverrmsg').style.display = window.attachEvent? 'block':'table';
}

var ibcWnd = false;

if(!parent.IBCWnd._preHeight)
{
    parent.IBCWnd._preHeight = 0;
}

function AddHeight(h)
{
    if(!ibcWnd)
    {
        ibcWnd = parent.ibcWnd;
        if( typeof ibcWnd == 'undefined') return;

        if(parent.IBCWnd._preHeight == 0)
        {
            parent.IBCWnd._preHeight = ibcWnd.height;
        }
    }
    
    ibcWnd.setRect(ibcWnd.left, ibcWnd.top, ibcWnd.width, parent.IBCWnd._preHeight + h);
}

function SetValueCHK(obj){
    if (obj.checked){
	    obj.value = 1;
    }else{
	    obj.value = 0;
    }
}

</script>

</head>
<body>
    <form id="form1" runat="server">
    <div id="page_popup">
        <table align="center" width="95%" cellspacing="0" cellpadding="0" border="0">
            <tr>
                <td class="l">
                    <table border="0" cellpadding="0" cellspacing="0" width="99%" id="diverrmsg" style="display: none;">
                        <tr>
                            <td class="emsg_1_1">&nbsp;</td><td class="emsg_1_2">&nbsp;</td>
                            <td class="emsg_1_3">&nbsp;</td>
                        </tr>
                        <tr>
                            <td valign="top" class="emsg_2_1">&nbsp;</td>
                            <td valign="top" id="spmsgerr" class="msgerr"></td>
                            <td class="emsg_2_2">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="emsg_3_1">&nbsp;</td>
                            <td class="emsg_3_2">&nbsp;</td>
                            <td class="emsg_3_3">&nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="l">
                    <div id="header_popup">Add Sub Account</div>
                </td>
            </tr>
            <tr>
                <td align="center">
                    <table align="left" width="100%" class="tblPop" cellspacing="1" cellpadding="0" border="0">
                        <tr class="bg_eb2">
                            <td width="30%" class="r b">User Name</td>
                            <td class="l">SMQQSub
                                <asp:DropDownList ID="ddlNumber1" runat="server">
                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                    <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>6</asp:ListItem>
                                    <asp:ListItem>7</asp:ListItem>
                                    <asp:ListItem>8</asp:ListItem>
                                    <asp:ListItem>9</asp:ListItem>
                                    <asp:ListItem>0</asp:ListItem>
                                </asp:DropDownList>
                                <asp:DropDownList ID="ddlNumber2" runat="server">
                                    <asp:ListItem Value="1"></asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                    <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>6</asp:ListItem>
                                    <asp:ListItem>7</asp:ListItem>
                                    <asp:ListItem>8</asp:ListItem>
                                    <asp:ListItem>9</asp:ListItem>
                                    <asp:ListItem>0</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr class="bg_eb2">
                            <td class="r b">Password</td>
                            <td id="td_pass" class="l" title="Password must have at least 6 characters, including at least 2 letters and at least 2 digits. (e.g:pass22)">
                                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" onkeyup="return checkpass(this,'td_pass');"></asp:TextBox>
                            </td>
                        </tr>
                        <tr class="bg_eb2">
                            <td class="r b">First Name</td>
                            <td id="td_fname" class="l">
                                <asp:TextBox ID="txtFname" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr class="bg_eb2"><td class="r b">Last Name</td>
                            <td id="td_lname" class="l">
                                <asp:TextBox ID="txtLname" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr class="bg_eb2"><td colspan="2" class="l b">* Account Permission</td>
                        </tr>
                        <tr class="bg_eb2">
                            <td colspan="2" class="c" valign="middle">
                                <asp:CheckBox ID="ckbviewTotalBets" runat="server" Text="Total Bets" /> &nbsp;
                                <asp:CheckBox ID="ckbviewReports" runat="server" Text="Reports" /> &nbsp;
                                <asp:CheckBox ID="ckbCreateAcc" runat="server" Text="Create Account" /> &nbsp;
                                <asp:CheckBox ID="ckbUpdateAcc" runat="server" Text="Update Account" /> &nbsp;
                                <asp:CheckBox ID="ckbTransfer" runat="server" Text="Transfer" /> &nbsp;
                            </td>
                        </tr>
                        <tr class="bg_eb2">
                            <td class="c" colspan="2">
                                <asp:Button ID="btnApply" runat="server" Text="Add" CssClass="btn" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        <input type="hidden" value="Password must have at least 6 characters, including at least 2 letters and at least 2 digits. (e.g:pass22)" id="lblPasswordRequire" />
        <input id="alertPasswordEmpty" name="alertPasswordEmpty" type="hidden" value="Sorry, password can not be empty!!!" />
        <input id="alertPasswordRequire" name="alertPasswordRequire" type="hidden" value="Password must have at least 6 characters, including at least 2 letters and at least 2 digits. (e.g:pass22)" />
    </div>
    </form>
</body>
</html>
