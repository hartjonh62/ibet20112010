<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ResetPass.aspx.cs" Inherits="AGiBetWeb.Popup.ResetPass" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">


#page_popup
{
	padding-top: 5px;
}
td, span, div, a
{
	font-family: Tahoma,Arial ,helvetica ,sans-serif;
	font-size: 11px;
}
td
{
	padding-left: 2px;
	padding-right: 2px;
}
.emsg_1_1
{
	background: url('../App_Themes/AgencyV2/Images/emsg_1_1.gif') no-repeat right bottom;
	width: 11px;
	height: 9px;
}
.emsg_1_2
{
	background: url('../App_Themes/AgencyV2/Images/emsg_1_2.gif') repeat-x left bottom;
        }
.emsg_1_3
{
	background: url('../App_Themes/AgencyV2/Images/emsg_1_3.gif') no-repeat left bottom;
	width: 9px;
}
.emsg_2_1
{
	background: url('../App_Themes/AgencyV2/Images/emsg_2_1.gif') repeat-y right top;
        }
.msgerr
{
	background: url('../App_Themes/AgencyV2/Images/error-icon.gif') no-repeat left top;
	padding: 1px 0px 4px 30px;
	margin-left: 5px;
	list-style: none;
	vertical-align: middle;
	text-align: left;
	color: #df2267;
	height: 24px;
}
.emsg_2_2
{
	background: url('../App_Themes/AgencyV2/Images/emsg_2_2.gif') repeat-y left top;
        }
.emsg_3_1
{
	background: url('../App_Themes/AgencyV2/Images/emsg_3_1.gif') no-repeat right top;
	height: 8px;
}
.emsg_3_2
{
	background: url('../App_Themes/AgencyV2/Images/emsg_3_2.gif') repeat-x left top;
        }
.emsg_3_3
{
	background: url('../App_Themes/AgencyV2/Images/emsg_3_3.gif') no-repeat left top;
        }
.l
{
	text-align: left;
}
#header_popup
{
	color: #862626;
	background: url('../App_Themes/AgencyV2/Images/icon_pop.jpg') no-repeat left 50%;
	padding-left: 20px;
	font-weight: bold;
	font-size: 11px;
	line-height: 25px;
}
table.tblPop
{
	background-color: #cdcdcd;
}
table.tblPop tr
{
	height: 20px;
}

.bg_eb2
{
	background-color: #faf9ee;
}
table.tblPop td
{
	padding: 0 2px;
	height: 24px;
}
.b
{
	font-weight: bold;
}
.r
{
	text-align: right;
}
input
{
	font-family: Tahoma, sans-serif;
	font-weight: normal;
	font-size: 1em;
}

.btn
{
	background: url('../App_Themes/AgencyV2/Images/bg_buttonsite.jpg') repeat-x 50% top;
	height: 19px;
	border: 1px #4d4d4d solid;
	cursor: pointer;
	padding-bottom: 3px;
}
.btn
{
	background: url('../App_Themes/AgencyV2/Images/bg_buttonsite.jpg') repeat-x 50% top;
	height: 19px;
	border: 1px #4d4d4d solid;
	cursor: pointer;
	padding-bottom: 2px;
	font-size: 11px;
	line-height: 15px;
            padding-left: 5px;
            padding-right: 5px;
            padding-top: 0;
        }
    </style>
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
                        <asp:Label ID="lblEditSubAccount" runat="server" Text="Change Password"></asp:Label>
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
                                <asp:Label ID="lblUserNameValue" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr class="bg_eb2">
                            <td class="r b">
                                <asp:Label ID="lblPassword" runat="server" Text="New Password"></asp:Label>
                            </td>
                            <td class="l">
                                <asp:TextBox ID="txtNewPassword" runat="server" TextMode="Password"></asp:TextBox>
                                &nbsp;
                            </td>
                        </tr>
                        <tr class="bg_eb2">
                            <td>
                            </td>
                            <td class="l">
                                <asp:Button ID="btnUpdate" runat="server" 
                                    Text="Update" class="btn" onclick="btnUpdate_Click" />
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        </div>
    </form>
</body>
</html>
