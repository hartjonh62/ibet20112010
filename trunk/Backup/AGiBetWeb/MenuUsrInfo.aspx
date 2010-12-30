<%@ Page Language="C#" AutoEventWireup="true" Inherits="MenuUsrInfo" CodeBehind="MenuUsrInfo.aspx.cs" %>

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

    <script type="text/javascript" src="Js/opt/jx.js?v=20091230"></script>

    <script type="text/javascript" src="Js/AutoComplete/autocomplete.js?v=20091230"></script>

    <script type="text/javascript" src="Js/MenuUsrInfo.js?v=20091230"></script>

    <link href='Js/AutoComplete/styles.css' type='text/css' rel='stylesheet' />
</head>
<body>
    <form id="form1" runat="server">
    <div id="leftpanewrapper" style="display: none">
        <div id="tab_menu">
            <div id="tab_menu_m">
                <a class="tab_menu01" target="menu" href="Menu2.aspx">
                    <asp:Label ID="lblMainmenu" runat="server" Text="Main menu"></asp:Label></a></div>
            <div id="tab_menu_L">
                <a class="tab_menu02AC" style="cursor: default;">
                    <asp:Label ID="lblAccountInfo" runat="server" Text="Account Info"></asp:Label></a></div>
        </div>
        <div id="clear0" />
        <div id="leftpane02">
            <div id="button_left02">
                <div id="Bleft_Parent02">
                    <div id="left_submenu">
                        <div id="left_line02">
                            <img height="1" width="1" alt="" src="App_Themes/AgencyV2/Images/dot.gif" name="" /></div>
                        <div class="Bleft_Sub02">
                            <div id="from_tab">
                                <asp:TextBox ID="txtUsername" runat="server" onkeydown="if (this.value=='Username or Nickname') {this.className='text_f'; this.value='';}"
                                    onclick="if (this.value=='Username or Nickname') {this.className='text_f'; this.value='';}"
                                    onblur="if (this.value=='') {this.className='text_f1'; this.value='Username or Nickname';}"
                                    value="smqq02" Style="width: 145px;" class="text_f"></asp:TextBox>
                            </div>
                            <div id="b_serachL">
                                <a id="lnkSearch" class="imaLink img" href="#" onclick="javascript:checkAndSubmitUI();">
                                    <img height="18" width="21" alt="Search" title="Search" border="0" nowap="nowap"
                                        src="App_Themes/AgencyV2/Images/icon_search.jpg" /></a></div>
                            <br />
                            <div class="line_info">
                                <img height="9" width="1" alt="" src="App_Themes/AgencyV2/Images/dot.gif" name="" /></div>
                            <table width="100%" cellspacing="0" cellpadding="0" border="0">
                                <tbody>
                                    <tr>
                                        <td>
                                            <asp:Label ID="lblAgent" runat="server" Text="Agent:"></asp:Label>
                                        </td>
                                        <td align="right" class="text_org">
                                            <asp:Label ID="lblSMQQ02" runat="server" Text="SMQQ02"></asp:Label>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div id="button_nLeft01">
                    <a class="b_nleft" onclick="clearTopMenu(); clearCurrentLeftMenu();" target="main"
                        href="MemberInfo/DownlineList.aspx?act=MemberList&custid=2050492">
                        <asp:Label ID="lblCustomerList" runat="server" Text="Customer List"></asp:Label></a></div>
                <div id="button_nLeft02">
                    <a class="b_nleft" onclick="clearTopMenu(); clearCurrentLeftMenu();" target="main"
                        href="Report/Statement.aspx?custid=2050492&site=Agent">
                        <asp:Label ID="lblStatement" runat="server" Text="Statement"></asp:Label></a></div>
                <div id="clear02">
                    <img height="5" width="1" alt="" src="App_Themes/AgencyV2/Images/dot.gif" name="" /></div>
            </div>
            <br />
        </div>
        <div id="disabledStatusPop" class="popupsetting" style="display: none;">
            <b><span id="lblEnableStatus">Enable Status</span></b><br />
            <input type="checkbox" name="chkEnabled" onclick="allowSubmit(this);" id="chkEnabled" />Agent<span
                id="spanChkEnabledDL"><br />
                <input type="checkbox" name="chkEnabledDL" id="chkEnabledDL" disabled="" /><span
                    id="lbldownline">Downlines</span></span><br />
            <center>
                <input id="btnUptStatus" type="button" class="btn2" disabled="true" onclick="" value="Update" />&nbsp;<input
                    type="button" class="btn" onclick="closeDivPopup();" value="Cancel" /></center>
            <input id="hdnTypeStatus" type="hidden" value="" /><input id="hdnOldFIStatus" type="hidden"
                value="1" /><input id="hdnOldFIDownlineStatus" type="hidden" value="0" /><input id="hdnOldHRStatus"
                    type="hidden" value="1" /><input id="hdnOldHRDownlineStatus" type="hidden" value="0" /><input
                        id="hdnOldCSStatus" type="hidden" value="1" /><input id="hdnOldCSDownlineStatus"
                            type="hidden" value="0" /></div>
        <iframe id="frmUpdate" name="frmUpdate" frameborder="0" height="0" width="0"></iframe>
        <div class="shadow" id="shadow" />
        <div class="output" id="output" />

        <script type="text/javascript">IBC.addEvent(window, 'load', function(){initAutoComplete('txtUsername', 'Handlers/QueryUsrname.ashx?userid=2050492');$('leftpanewrapper').style.display = 'block';});</script>

    </div>
    </form>
</body>
</html>

<script type="text/javascript">

isCustSync='0';
usernamerequired='Username or Nickname is required!';
invalidvalue='Invalid value';
lblMemberMax='Mem. Max Credit';
lblMemberMaxCredit='Member Max Credit';
lblAgOutst='Ag. Outstanding';
lblAgentOutstanding='Agent Outstanding';
confirmSuspendDownline='Are you sure you want to change Suspend status for this customer? \n Warning, all members under this agent can\'t place bet!';
confirmSuspendMem='Are you sure you want to change Suspend status for this customer?';
alertCloseCustDownline='Are you sure you want to close this customer and all downlines?';
confirmCloseMem='Are you sure you want to change Close status for this customer?';
confirmAllowOutright='Are you sure you want to allow outright betting for this customer?';
confirmDisableOutright='Are you sure you want to disallow outright betting for this customer?\nWarning, all members under this agent can\'t place outright bet!';
confirmDisableOutright_Member='Are you sure you want to disallow outright betting for this customer?';
confirmDisableMAutoPT='Are you sure you want to disable auto position taking feature of this master?';
confirmEnableMAutoPT='Are you sure you want to enable auto position taking feature of this master?';
enablehr='Enable HR';
downlines='Downlines';
lblAlertDisableHR='WARNING!!! \n\n Are you sure you want to disable Horse Racing on this customer and all downlines?';
lblAlertDisableHRMember='WARNING!!! \n\n Are you sure you want to disable Horse Racing on this customer?';
lblAlertEnableHR='Are you sure you want to enable Horse Racing on this customer?';
lblenableFI='Enable Finance';
lblAlertDisalbeFI='WARNING!!! \n\n Are you sure you want to disable Finance on this customer and all downlines?';
lblAlertDisalbeFIMember='Are you sure you want to disable Finance on this customer?';
lblAlertEnableFIMember='Are you sure you want to enable Finance on this customer?';
lblEnableCS='Enable Casino';
casinodownlines='Previous enabled downlines';
strConfirmDisableCS='WARNING!!! \n\n Are you sure you want to disable Casino on this customer and all downlines?';
lblAlertDisableCSMember='Are you sure you want to disable Casino on this customer?';
strConfirmEnableCS='Do you want to enable Casino for all customer\'s downlines also?';
UserId=2050492;
CustRoleId=2;

</script>

