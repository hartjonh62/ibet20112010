<%@ Page Language="C#" AutoEventWireup="true" Inherits="Popup_EditSubAcc" CodeBehind="EditSubAcc.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <title>Home</title>
    <meta name="keywords" content="sportsbook, agency, agent, betting" />
    <meta name="description" content="online betting sportsbook agency system" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href='../App_Themes/AgencyV2/common.css' type='text/css' rel='stylesheet' />
    <link href='../App_Themes/AgencyV2/popup.css' type='text/css' rel='stylesheet' />
    <link href='../App_Themes/AgencyV2/PopUpMessage.css' type='text/css' rel='stylesheet' />

    <script type='text/javascript' src='../Js/opt/Core.js?v=20091230'></script>

    <script type='text/javascript' src='../Js/Common.js?v=20091230'></script>

    <script type="text/javascript">

function formvalidation()
{				
	if ($("NewPassword").value=="" || $("ConfirmPassword").value=="") 
	{
	    Err($("alertPasswordEmpty").value);
	    $("NewPassword").focus();
        AddHeight(50);	

        return false;
	}
	else if ($("NewPassword").value != $("ConfirmPassword").value) 
	{
	    Err($("alertErrorConfirm").value); 
	    $("ConfirmPassword").focus();
        AddHeight(50);
		return false;
	}	
	else
	{											
		var str = $("NewPassword").value;					
		var numbers = "0123456789";
		if(str.length < 6)
		{
		    Err($("alertPasswordRequire").value); 
            AddHeight(60);		

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
            $("NewPassword").focus();
            AddHeight(50);

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


    </script>

</head>
<body>
    <form id="form1" runat="server">
    <div id="page_popup">
        <table border="0" cellpadding="0" cellspacing="0" width="95%" align="center">
            <tr>
                <td align="left">
                    <table border="0" cellpadding="0" cellspacing="0" width="99%" id="diverrmsg" style="display: none;">
                        <tr>
                            <td class="emsg_1_1">
                                &nbsp;
                            </td>
                            <td class="emsg_1_2">
                                &nbsp;
                            </td>
                            <td class="emsg_1_3">
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td valign="top" class="emsg_2_1">
                                &nbsp;
                            </td>
                            <td valign="top" id="spmsgerr" class="msgerr">
                            </td>
                            <td class="emsg_2_2">
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="emsg_3_1">
                                &nbsp;
                            </td>
                            <td class="emsg_3_2">
                                &nbsp;
                            </td>
                            <td class="emsg_3_3">
                                &nbsp;
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="l">
                    <div id="header_popup">
                        <asp:Label ID="lblEditSubAccount" runat="server" Text="Edit Sub Account"></asp:Label>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <table width="100%" align="left" class="tblPop" cellspacing="1" cellpadding="0" border="0">
                        <tr class="bg_eb2">
                            <td class="r b">
                                <asp:Label ID="lblUserName" runat="server" Text="User Name"></asp:Label>
                            </td>
                            <td>
                                SMQQ02Sub01
                            </td>
                        </tr>
                        <tr class="bg_eb2">
                            <td class="r b">
                                <asp:Label ID="lblFirstName" runat="server" Text="First Name"></asp:Label>
                            </td>
                            <td class="l">
                                <asp:TextBox ID="txtFistName" runat="server"></asp:TextBox>
                                &nbsp;
                            </td>
                        </tr>
                        <tr class="bg_eb2">
                            <td class="r b">
                                <asp:Label ID="lblLastName" runat="server" Text="Last Name"></asp:Label>
                            </td>
                            <td class="l">
                                <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                                &nbsp;
                            </td>
                        </tr>
                        <tr class="bg_eb2">
                            <td class="r b">
                                <asp:Label ID="lblStatusClosed" runat="server" Text="Status-Closed"></asp:Label>
                            </td>
                            <td class="l">
                                <asp:CheckBox ID="cbkStatus" runat="server" />
                            </td>
                        </tr>
                        <tr class="bg_eb2">
                            <td>
                            </td>
                            <td class="l">
                                <asp:Button ID="btnUpdate" runat="server" Text="Update" class="btn" />
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        <input type="hidden" value="{errMsgRequire}" id="lblPasswordRequire" /><input id="alertPasswordEmpty"
            name="alertPasswordEmpty" type="hidden" value="{errMsgEmpty}" /><input id="alertPasswordRequire"
                name="alertPasswordRequire" type="hidden" value="{errMsgRequire}" /><input id="alertErrorConfirm"
                    name="alertErrorConfirm" type="hidden" value="{alertErrorConfirm}" /></div>
    </form>
    <style type="text/css">
        html
        {
            overflow: none;
        }
    </style>

    <script type="text/javascript">document.body.scroll = "no";document.body.style.overflow = "hidden";</script>

</body>
</html>
