<%@ Page Language="C#" AutoEventWireup="true" Inherits="UserMaster_AddNewAgent" Codebehind="AddNewAgent.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <link href='../App_Themes/AgencyV2/main.css' type='text/css' rel='stylesheet' />
    <link href='../App_Themes/AgencyV2/newagent.css' type='text/css' rel='stylesheet' />
    <style type="text/css">
        SPAN.mp  FONT-WEIGHT: bold; FONT-SIZE: 8pt; COLOR: #ffffff }
        body
		
			margin : 0px 0px 0px 0px;
            padding: 0px 0px 0px 0px;
		}
	</style>
	
    <script type="text/javascript" src="../Js/opt/Core.js?v=20091230"></script>

    <script type="text/javascript" src="../Js/Common.js?v=20091230"></script>
    <script type="text/javascript" src="../Js/Customer.js?v=20091230"></script>
    <script type="text/javascript" src="../Js/AddNewAgent.js?v=20091230"></script>

    <script type="text/javascript">
		
		function BtnAddCSClick()
		
		    $('hidCS').value = 'true';
		    var isOK = BtnOnClick();

		    if(isOK)
		    
		        var btnAddCS = $("btnAddCS");
		        btnAddCS.style.color="#cccccc";					
		        btnAddCS.disabled=true;	
		        btnAddCS.onclick = ";";
		    }
		}

		_FocusEl = 'number1';
    </script>
    
    <script language='javascript'>
 var alertcredit='Incorrect Agent Maximum Credit';
 var alertMinbet='Incorrect Min Bet'; 
 var alertMaxbet='Incorrect Max Bet';
 var alertMaxpermatch='Incorrect Max Per Match';
 var alertCompare3='Min Bet cannot be greater than Max Bet'; 
 var alertCompare='Max Bet can not be greater than Max Per Match'; 
 var alertminbetC='Min Bet must be greater than or equal to';
 var alertMaxbetC='Max Bet must be less than or equal to';
 var alertMaxpermatchC='Max Per Match must be less than or equal to 1}.';
 var alertMaxpermatchCMin='Max Bet Match must be more than or equal to';
 var alertMaxpermatchCMax='Max Bet Match must be less than or equal to';
 var alertUserName='Please Enter User name!';
 var lblPasswordRequire='Password must have at least 6 characters, including at least 2 letters and at least 2 digits. (e.g:pass22)';
 var alertPasswordEmpty='Sorry, password can not be empty!!!';
 var alertIncorrectCredit='Incorrect Agent Max Credit';
 var lblChooseDaily='Please choose Daily instead of 7 days.';
 var lblChooseOneDay='Please select at least one day.';
 var alertMemberCreditInvalid='Member Max Credit must be between 1} and 2}';
 var alertCreditInvalid='Agent Max Credit must be between 1} and 2}';
 var alertLessthanMinPT='Master Preset and Super Preset must not be less than ';
</script>
</head>

<body onload="selectTranferTime();">    
    <iframe id="frInsert" name="frInsert" style="display: none"></iframe>
    <form id="form" runat="server">
        <input type="hidden" name="roleId" id="roleId" value="3" />
        <input name="isAllowUpd" type="hidden" id="isAllowUpd" value="1" />
        <input name="dirMaster" type="hidden" id="dirMaster" value="1" />
        <div id="page_main"><div id="header_main">Add New Agent <span class="hide" id="abc123"></span></div>
        <table cellspacing="0" cellpadding="0" border="0" style="width: 800px;">
            <tr>
                <td align="left" style="text-align: left" colspan="2">
                    <table border="0" cellpadding="0" cellspacing="0" width="100%" id="diverr" style="display: none">
                        <tr>
                            <td class="emsg_1_1">&nbsp;</td>
                            <td class="emsg_1_2">&nbsp;</td>
                            <td class="emsg_1_3">&nbsp;</td>
                        </tr>
                        <tr>
                            <td valign="top" class="emsg_2_1">&nbsp;</td>
                            <td valign="middle" class="Enrich" id="err"></td>
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
        </table>
        <div class="sptPT" style="width: 860px;">
            <table class="tblRpt" width="100%" border="1">
                <tr>
                    <td colspan="4" class="">
                        <div class="b_add">
                            <li>
                                <asp:LinkButton ID="btnAdd" runat="server" OnClientClick="BtnOnClick();" PostBackUrl="javascript:;"><span>Add</span></asp:LinkButton>
                            </li>
                        </div>
                    </td>
                </tr>
            <tr class="bg_eb">
                <td width='25%' class="r">User Name</td>
                <td width='25%' class="l">SMQQ
                    <asp:DropDownList ID="ddlNumbeq" runat="server">
                        <asp:ListItem Selected="True">0</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>A</asp:ListItem>
                        <asp:ListItem>B</asp:ListItem>
                        <asp:ListItem>D</asp:ListItem>
                        <asp:ListItem>E</asp:ListItem>
                        <asp:ListItem>F</asp:ListItem>
                        <asp:ListItem>G</asp:ListItem>
                        <asp:ListItem>H</asp:ListItem>
                        <asp:ListItem>I</asp:ListItem>
                        <asp:ListItem>J</asp:ListItem>
                        <asp:ListItem>K</asp:ListItem>
                        <asp:ListItem>L</asp:ListItem>
                        <asp:ListItem>M</asp:ListItem>
                        <asp:ListItem>N</asp:ListItem>
                        <asp:ListItem>O</asp:ListItem>
                        <asp:ListItem>P</asp:ListItem>
                        <asp:ListItem>Q</asp:ListItem>
                        <asp:ListItem>R</asp:ListItem>
                        <asp:ListItem>S</asp:ListItem>
                        <asp:ListItem>T</asp:ListItem>
                        <asp:ListItem>U</asp:ListItem>
                        <asp:ListItem>V</asp:ListItem>
                        <asp:ListItem>W</asp:ListItem>
                        <asp:ListItem>X</asp:ListItem>
                        <asp:ListItem>Y</asp:ListItem>
                        <asp:ListItem>Z</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="ddlNumber2" runat="server">
                        <asp:ListItem Selected="True">0</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>A</asp:ListItem>
                        <asp:ListItem>B</asp:ListItem>
                        <asp:ListItem>D</asp:ListItem>
                        <asp:ListItem>E</asp:ListItem>
                        <asp:ListItem>F</asp:ListItem>
                        <asp:ListItem>G</asp:ListItem>
                        <asp:ListItem>H</asp:ListItem>
                        <asp:ListItem>I</asp:ListItem>
                        <asp:ListItem>J</asp:ListItem>
                        <asp:ListItem>K</asp:ListItem>
                        <asp:ListItem>L</asp:ListItem>
                        <asp:ListItem>M</asp:ListItem>
                        <asp:ListItem>N</asp:ListItem>
                        <asp:ListItem>O</asp:ListItem>
                        <asp:ListItem>P</asp:ListItem>
                        <asp:ListItem>Q</asp:ListItem>
                        <asp:ListItem>R</asp:ListItem>
                        <asp:ListItem>S</asp:ListItem>
                        <asp:ListItem>T</asp:ListItem>
                        <asp:ListItem>U</asp:ListItem>
                        <asp:ListItem>V</asp:ListItem>
                        <asp:ListItem>W</asp:ListItem>
                        <asp:ListItem>X</asp:ListItem>
                        <asp:ListItem>Y</asp:ListItem>
                        <asp:ListItem>Z</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td width='25%' class="r">
                    Password
                </td>
                <td width='25%' id="td_pass" class="l" nowrap="yes">
                    <asp:TextBox ID="txtPwd" runat="server" Width="122" onkeyup="return checkpass(this);"></asp:TextBox>
                </td>
            </tr>
                <tr class="bg_eb">
                    <td class="r" width="25%">
                        First Name
                    </td>
                    <td class="l" width="25%">
                        <asp:TextBox ID="txtFName" Width="122" maxlength="32" runat="server"></asp:TextBox>
                    </td>
                    <td class="r" width="25%">
                        Last Name
                    </td>
                    <td class="l" width="25%">
                        <asp:TextBox ID="txtLName" Width="122" maxlength="32"  runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr class="bg_eb">
                    <td class="r">
                        Phone
                    </td>
                    <td class="l">
                        <asp:TextBox ID="txtPhone" Width="122" maxlength="32"  runat="server"></asp:TextBox>
                    </td>
                    <td class="r">
                        Mobile Phone
                    </td>
                    <td class="l">
                        <asp:TextBox ID="txtMobile" Width="122" maxlength="32"  runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr class="bg_eb">
                    <td class="r">
                        Agent Max Credit
                    </td>
                    <td class="l" nowrap="yes">
                        <asp:TextBox ID="txtCredit" runat="server" maxlength="14" onkeypress="return CheckDecNumber(event);" onchange="if($('lblMaxCredit'))if(this.value=='') $('lblMaxCredit').innerHTML=0; this.value=0;} else $('lblMaxCredit').innerHTML=this.value;}"></asp:TextBox>
                        <span class="hidden">&gt;=<span id="txtCreditMin">credit-min</span>&nbsp;and</span><span class="minmaxbet">&lt;=<span id="txtCreditMax">0</span></span>
                    </td>
                    <td class="r">
                        Fax
                    </td>
                    <td class="l">
                        <asp:TextBox ID="txtFax" Width="122" maxlength="32"  runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr class="bg_eb">
                    <td class="r">
                        Member Max Credit
                    </td>
                    <td class="l">
                        <asp:TextBox ID="txtMaxCredit" Width="122" maxlength="14"  runat="server" onkeypress="return CheckDecNumber(event);"></asp:TextBox>
                            <span class="hidden">&gt;=<span id="lblMinCredit">member-credit-min}</span>&nbsp;and</span><span class="minmaxbet">&lt;=<span id="lblMaxCredit">0</span></span>
                        <script type="text/javascript">IBC.addEvent(window, "load", function ()  $('lblMaxCredit').innerHTML = $('txtCredit').value });</script>
                    </td>
                    <td colspan="2">
                    </td>
                </tr>
                <tr>
                    <td class="r">
                        Suspended
                    </td>
                    <td class="l">
                        <asp:CheckBox ID="ckbSuspended" runat="server" />
                    </td>
                    <td colspan="2"></td>
                </tr>
            </table>
            <table class="tblRpt" width="100%" border="1"><tr class="RptHeader">
                <td colspan="4">Commission</td></tr><tr class="bg_eb"><td colspan="4">
                    <div id="divUpdComm" name="divUpdComm">Group A&nbsp;
                        <asp:DropDownList ID="ddlGroupa" runat="server">
                            <asp:ListItem Selected="True">0.0025</asp:ListItem>
                            <asp:ListItem>0.002</asp:ListItem>
                            <asp:ListItem>0.0015</asp:ListItem>
                            <asp:ListItem>0.001</asp:ListItem>
                            <asp:ListItem>0.0005</asp:ListItem>
                            <asp:ListItem>0</asp:ListItem>
                        </asp:DropDownList>
                       &nbsp;&nbsp;&nbsp;Group B&nbsp;
                        <asp:DropDownList ID="ddlGroupb" runat="server">
                            <asp:ListItem Selected="True">0.005</asp:ListItem>
                            <asp:ListItem>0.0045</asp:ListItem>
                            <asp:ListItem >0.0035</asp:ListItem>
                            <asp:ListItem>0.003</asp:ListItem>
                            <asp:ListItem>0.0025</asp:ListItem>
                            <asp:ListItem>0.002</asp:ListItem>
                            <asp:ListItem>0.0015</asp:ListItem>
                            <asp:ListItem>0.001</asp:ListItem>
                            <asp:ListItem>0.0005</asp:ListItem>
                            <asp:ListItem>0</asp:ListItem>
                        </asp:DropDownList>
                        &nbsp;&nbsp;&nbsp;Group C&nbsp;
                        <asp:DropDownList ID="ddlGroupc" runat="server">
                            <asp:ListItem Selected="True">0.0075</asp:ListItem>
                            <asp:ListItem>0.007</asp:ListItem>
                            <asp:ListItem>0.006</asp:ListItem>
                            <asp:ListItem>0.0055</asp:ListItem>
                            <asp:ListItem>0.005</asp:ListItem>
                            <asp:ListItem>0.0045</asp:ListItem>
                            <asp:ListItem >0.0035</asp:ListItem>
                            <asp:ListItem>0.003</asp:ListItem>
                            <asp:ListItem>0.0025</asp:ListItem>
                            <asp:ListItem>0.002</asp:ListItem>
                            <asp:ListItem>0.0015</asp:ListItem>
                            <asp:ListItem>0.001</asp:ListItem>
                            <asp:ListItem>0.0005</asp:ListItem>
                            <asp:ListItem>0</asp:ListItem>
                        </asp:DropDownList>
                        &nbsp;&nbsp;&nbsp;Group D&nbsp;
                        <asp:DropDownList ID="ddlGroupd" runat="server">
                            <asp:ListItem Selected="True">0.01</asp:ListItem>
                            <asp:ListItem>0.0095</asp:ListItem>
                            <asp:ListItem>0.009</asp:ListItem>
                            <asp:ListItem>0.0085</asp:ListItem>
                            <asp:ListItem>0.008</asp:ListItem>
                            <asp:ListItem>0.0075</asp:ListItem>
                            <asp:ListItem>0.007</asp:ListItem>
                            <asp:ListItem>0.006</asp:ListItem>
                            <asp:ListItem>0.0055</asp:ListItem>
                            <asp:ListItem>0.005</asp:ListItem>
                            <asp:ListItem>0.0045</asp:ListItem>
                            <asp:ListItem >0.0035</asp:ListItem>
                            <asp:ListItem>0.003</asp:ListItem>
                            <asp:ListItem>0.0025</asp:ListItem>
                            <asp:ListItem>0.002</asp:ListItem>
                            <asp:ListItem>0.0015</asp:ListItem>
                            <asp:ListItem>0.001</asp:ListItem>
                            <asp:ListItem>0.0005</asp:ListItem>
                            <asp:ListItem>0</asp:ListItem>
                        </asp:DropDownList>
                        &nbsp;&nbsp;&nbsp;1x2 Comm&nbsp;
                        <asp:DropDownList ID="ddldiscount1x2" runat="server">
                            <asp:ListItem Selected="True">0.0025</asp:ListItem>
                            <asp:ListItem>0.002</asp:ListItem>
                            <asp:ListItem>0.0015</asp:ListItem>
                            <asp:ListItem>0.001</asp:ListItem>
                            <asp:ListItem>0.0005</asp:ListItem>
                            <asp:ListItem>0</asp:ListItem>
                        </asp:DropDownList>
                        &nbsp;&nbsp;&nbsp;Others Comm&nbsp;
                        <asp:DropDownList ID="ddldiscountcs" runat="server">
                            <asp:ListItem Selected="True">0.01</asp:ListItem>
                            <asp:ListItem>0.0095</asp:ListItem>
                            <asp:ListItem>0.009</asp:ListItem>
                            <asp:ListItem>0.0085</asp:ListItem>
                            <asp:ListItem>0.008</asp:ListItem>
                            <asp:ListItem>0.0075</asp:ListItem>
                            <asp:ListItem>0.007</asp:ListItem>
                            <asp:ListItem>0.006</asp:ListItem>
                            <asp:ListItem>0.0055</asp:ListItem>
                            <asp:ListItem>0.005</asp:ListItem>
                            <asp:ListItem>0.0045</asp:ListItem>
                            <asp:ListItem >0.0035</asp:ListItem>
                            <asp:ListItem>0.003</asp:ListItem>
                            <asp:ListItem>0.0025</asp:ListItem>
                            <asp:ListItem>0.002</asp:ListItem>
                            <asp:ListItem>0.0015</asp:ListItem>
                            <asp:ListItem>0.001</asp:ListItem>
                            <asp:ListItem>0.0005</asp:ListItem>
                            <asp:ListItem>0</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </td>
            </tr>
        </table>
    </div>
    <div class="sptPT" style="width: 860px">
        <table width="100%" border="1" class="tblRpt">
            <tr class="RptHeader">
                <td>Account Balance Transfer Condition</td>
            </tr>
            <tr class="bg_eb">
                <td width="30%" class="paddleft200">
                    <asp:RadioButton ID="rdbDaily" runat="server" Checked  onclick="selectTranferTime(this);" Text="Daily" />
                </td>
            </tr>
            <tr class="bg_eb">
                <td class="paddleft200" id="alldays">
                    <asp:RadioButton ID="rdbWeekly" runat="server" Checked  onclick="selectTranferTime(this);" Text="Weekly" />&nbsp;
                    <asp:CheckBox ID="ckbMon" runat="server"  onclick="return ChooseDate();" Text="Mon" />&nbsp;
                    <asp:CheckBox ID="ckbTue" runat="server"  onclick="return ChooseDate();" Text="Tue" />&nbsp;
                    <asp:CheckBox ID="ckbWed" runat="server"  onclick="return ChooseDate();" Text="Wed" />&nbsp;    
                    <asp:CheckBox ID="ckbThurs" runat="server"  onclick="return ChooseDate();" Text="Thurs" />&nbsp;
                    <asp:CheckBox ID="ckbFri" runat="server"  onclick="return ChooseDate();" Text="Fri" />&nbsp;
                    <asp:CheckBox ID="ckbSat" runat="server"  onclick="return ChooseDate();" Text="Sat" />&nbsp;
                    <asp:CheckBox ID="ckbSun" runat="server"  onclick="return ChooseDate();" Text="Sun" />
                </td>
            </tr>
        </table>
    </div>
        <input type="hidden" name="from" id="from" value="linkfrom}" />
        <input type="hidden" id="hdAllowedCurr" name="hdAllowedCurr" value="1" />
        <input type="hidden" id="IsSuspended" name="IsSuspended" value="0" />
        <input type="hidden" id="UplineSuspended" name="UplineSuspended" value="UplineSuspended" />
        <!--</div>--><style type="text/css">divclear:both;</style>
    <div class="none-copy}">
        <div class="l"><input type='checkbox' id="chkCopyAll" disable_chkall onclick="CopyAllPT(this);" name="chkCopyAll" /><b>
        <span style="cursor: pointer;" onclick="$('chkCopyAll').click();">Copy all Bet Setting and Position Taking from Soccer Handicap</span></b>
        </div>
    </div>
    <br />
    <div class="l" id="linkSoccer" onclick="OpenPanelEdit('panelSoccer'); togglePTmenu('bullet1')">
        <div class="button_cont">
            <div class="menu_content"><ul><li><a id="bullet1" class="md2" href="#1">Soccer</a></li></ul></div>
        </div>
    </div>
    <div id="panelSoccer">
            <div class="l">
            <table style="width:80%;" class="sptPT">
                <tr>
                    <td>
                        <div id="divUpdInfo1" name="divUpdInfo1">
                            <table border="0" width="100%" class="tblRpt">
                                <tr class="tblTitleCenter">
                                    <td colspan="3">
                                        Bet Setting
                                    </td>
                                </tr>
                                <tr class="bg_eb">
                                    <td class="c tdPT1" width="30%">
                                        Min Bet&nbsp;
                                        <asp:TextBox ID="txtMinbet1" maxlength="14" runat="server" Text="5"></asp:TextBox>
                                        <span class="minmaxbet">&gt;=<span id="txtMinbet_Min1">5</span></span>
                                    </td>
                                    <td class="c" width="30%">
                                        Max Bet&nbsp;
                                        <asp:TextBox ID="txtMaxbet1" maxlength="14" runat="server" Text="35,000"></asp:TextBox>
                                        <span id="txtMaxbet_Max1">35,000</span></span>
                                    </td>
                                    <td class="c">
                                        Max Per Match&nbsp;
                                        <asp:TextBox ID="txtMaxPerMatch1" maxlength="14" runat="server" Text="200,000"></asp:TextBox>
                                        <span class="hidden">&gt;=<span id="txtMaxPerMatch_Min1">0</span>and</span>
                                        <span class="minmaxbet">&lt;=<span id="txtMaxPerMatch_Max1">200,000</span></span>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div id="divUpdPT1" name="divUpdPT1">
                            <table border="1" class="tblRpt" width="100%">
                                <tr class="tblTitleCenter">
                                    <td colspan="12">
                                        Position Taking (%)
                                    </td>
                                </tr>
                                <tr class="bg_eb">
                                    <td colspan="2">
                                    </td>
                                    <td>
                                        Handicap/Next Goal
                                    </td>
                                    <td>
                                        Over/Under
                                    </td>
                                    <td>
                                        1st Hdp
                                    </td>
                                    <td>
                                        1st OU
                                    </td>
                                    <td>
                                        Odd/Even
                                    </td>
                                    <td>
                                        1 X 2
                                    </td>
                                    <td>
                                        Correct Score
                                    </td>
                                    <td>
                                        Total Goal
                                    </td>
                                    <td>
                                        Mix Parlay
                                    </td>
                                    <td>
                                        Outright
                                    </td>
                                </tr>
                                <tr class="bg_eb">
                                    <td rowspan="5">
                                        Dead ball
                                    </td>
                                    <td class="r">
                                        Agent Position
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="ddllistM1HdpD" runat="server" onchange="SelectOnChange('ddllistM1HdpD');">
                                        <asp:ListItem Selected="True">0</asp:ListItem>
                                        </asp:DropDownList>
                                        <a class="imaLink img" href="javascript:ReducePT('listM1HdpD',1)">
                                            <img class="hand" hspace="1" id="btnReduce1" name="btnReduce1" src="../App_Themes/AgencyV2/Images/b_down.jpg" />
                                        </a>
                                        <a class="imaLink img" href="javascript:IncreasePT('listM1HdpD',1)">
                                            <img class="hand" hspace="1" id="btnIncrease1" name="btnIncrease1" src="../App_Themes/AgencyV2/Images/b_up.jpg" />
                                        </a>
                                        <a class="imaLink img" href="javascript:ReducePT('listM1HdpD',10)">
                                            <img class="hand" hspace="1" id="btnReduce10" name="btnReduce10" src="../App_Themes/AgencyV2/Images/b_sub.jpg" />
                                        </a>
                                        <a class="imaLink img" href="javascript:IncreasePT('listM1HdpD',10)">
                                            <img class="hand" hspace="1" id="btnIncrease10" name="btnIncrease10" src="../App_Themes/AgencyV2/Images/b_add.jpg" />
                                        </a>
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="ddllistM1OUD" runat="server" onchange="SelectOnChange('ddllistM1OUD');">
                                            <asp:ListItem Selected="True">0</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="ddllistM11stHdpD" runat="server" onchange="SelectOnChange('ddllistM11stHdpD');">
                                            <asp:ListItem Selected="True">0</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="ddllistM11stOUD" runat="server" onchange="SelectOnChange('ddllistM11stOUD');">
                                            <asp:ListItem Selected="True">0</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="ddllistM1OE" runat="server" onchange="SelectOnChange('ddllistM1OE');">
                                            <asp:ListItem Selected="True">0</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="ddllistM11x2" runat="server" onchange="SelectOnChange('ddllistM11x2');">
                                            <asp:ListItem Selected="True">0</asp:ListItem>
                                        </asp:DropDownList>
                                        
                                        <a class="imaLink img" href="javascript:ReducePT('listM11x2',1)">
                                            <img class="hand" hspace="1" id="btnReduce1" name="btnReduce1" src="../App_Themes/AgencyV2/Images/b_down.jpg" />
                                        </a>
                                        <a class="imaLink img" href="javascript:IncreasePT('listM11x2',1)">
                                            <img class="hand" hspace="1" id="btnIncrease1" name="btnIncrease1" src="../App_Themes/AgencyV2/Images/b_up.jpg"/>
                                        </a>
                                        <a class="imaLink img" href="javascript:ReducePT('listM11x2',10)">
                                            <img class="hand" hspace="1" id="btnReduce10" name="btnReduce10" src="../App_Themes/AgencyV2/Images/b_sub.jpg"/>
                                        </a>
                                        <a class="imaLink img" href="javascript:IncreasePT('listM11x2',10)">
                                            <img class="hand" hspace="1" id="btnIncrease10" name="btnIncrease10" src="../App_Themes/AgencyV2/Images/b_add.jpg"/></a></td><td><select id="listM1CS" name="listM1CS"onChange="SelectOnChange('listM1CS');" ><option selected='true' value='0'>0</option></select></td><td><select id="listM1TG" name="listM1TG"onChange="SelectOnChange('listM1TG');" ><option selected='true' value='0'>0</option></select></td><td><select id="listM1MP" name="listM1MP"onChange="SelectOnChange('listM1MP');" ><option selected='true' value='0'>0</option></select></td><td><select id="listM1OR" name="listM1OR"onChange="SelectOnChange('listM1OR');" ><option selected='true' value='0'>0</option></select></td></tr><tr class="bg_eb"><td class="r">Master Preset</td><td><select id="listS1HdpD" name="listS1HdpD"onChange="SelectOnChange('listS1HdpD');" ><option selected='true' value='0'>0</option></select><a class="imaLink img" href="javascript:ReducePT('listS1HdpD',1)"><img class="hand" hspace="1" id="btnReduce1" name="btnReduce1" src="../App_Themes/AgencyV2/Images/b_down.jpg" /></a><a class="imaLink img" href="javascript:IncreasePT('listS1HdpD',1)"><img class="hand" hspace="1" id="btnIncrease1" name="btnIncrease1" src="../App_Themes/AgencyV2/Images/b_up.jpg"/></a><a class="imaLink img" href="javascript:ReducePT('listS1HdpD',10)"><img class="hand" hspace="1" id="btnReduce10" name="btnReduce10" src="../App_Themes/AgencyV2/Images/b_sub.jpg"/></a><a class="imaLink img" href="javascript:IncreasePT('listS1HdpD',10)"><img class="hand" hspace="1" id="btnIncrease10" name="btnIncrease10" src="../App_Themes/AgencyV2/Images/b_add.jpg"/></a></td><td><select id="listS1OUD" name="listS1OUD"onChange="SelectOnChange('listS1OUD');" ><option selected='true' value='0'>0</option></select></td><td><select id="listS11stHdpD" name="listS11stHdpD"onChange="SelectOnChange('listS11stHdpD');" ><option selected='true' value='0'>0</option></select></td><td><select id="listS11stOUD" name="listS11stOUD"onChange="SelectOnChange('listS11stOUD');" ><option selected='true' value='0'>0</option></select></td><td><select id="listS1OE" name="listS1OE"onChange="SelectOnChange('listS1OE');" ><option selected='true' value='0'>0</option></select></td><td><select id="listS11x2" name="listS11x2"onChange="SelectOnChange('listS11x2');" ><option selected='true' value='0'>0</option></select><a class="imaLink img" href="javascript:ReducePT('listS11x2',1)"><img class="hand" hspace="1" id="btnReduce1" name="btnReduce1" src="../App_Themes/AgencyV2/Images/b_down.jpg" />
                                        </a>
                                        <a class="imaLink img" href="javascript:IncreasePT('listS11x2',1)">
                                            <img class="hand" hspace="1" id="btnIncrease1" name="btnIncrease1" src="../App_Themes/AgencyV2/Images/b_up.jpg"/></a><a class="imaLink img" href="javascript:ReducePT('listS11x2',10)"><img class="hand" hspace="1" id="btnReduce10" name="btnReduce10" src="../App_Themes/AgencyV2/Images/b_sub.jpg"/></a><a class="imaLink img" href="javascript:IncreasePT('listS11x2',10)"><img class="hand" hspace="1" id="btnIncrease10" name="btnIncrease10" src="../App_Themes/AgencyV2/Images/b_add.jpg"/>
                                        </a>
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="ddllistS1CS" runat="server" onchange="SelectOnChange('ddllistS1CS');">
                                            <asp:ListItem Selected="True">0</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="ddllistS1TG" runat="server" onchange="SelectOnChange('ddllistS1TG');">
                                            <asp:ListItem Selected="True">0</asp:ListItem>
                                        </asp:DropDownList>
                                        
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="ddllistS1MP" runat="server" onchange="SelectOnChange('ddllistS1MP');">
                                            <asp:ListItem Selected="True">0</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="ddllistS1OR" runat="server" onchange="SelectOnChange('ddllistS1OR');">
                                            <asp:ListItem Selected="True">0</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr class="bg_eb ">
                                    <td rowspan="2" class="r">Auto Master Preset</td>
                                    <td>
                                        <asp:CheckBox ID="ckbAuto1HdpD" runat="server" onclick="CheckAutoPreset(this)" />
                                    </td>
                                    <td>
                                        <asp:CheckBox ID="ckbAuto1OUD" runat="server" onclick="CheckAutoPreset(this,'chkCopy1HdpDeadball')" />
                                    </td>
                                    <td>
                                        <asp:CheckBox ID="ckbAuto11stHdpD" runat="server" onclick="CheckAutoPreset(this,'chkCopy1HdpDeadball')" />
                                        
                                    </td>
                                    <td>
                                        <asp:CheckBox ID="ckbAuto11stOUD" runat="server" onclick="CheckAutoPreset(this,'chkCopy1HdpDeadball')" />
                                        
                                    </td>
                                    <td>
                                        <asp:CheckBox ID="ckbAuto1OE" runat="server" onclick="CheckAutoPreset(this,'chkCopy1HdpDeadball')"  />
                                    </td>
                                    <td>
                                        <asp:CheckBox ID="ckbAuto11x2" runat="server" onclick="CheckAutoPreset(this)" />
                                        
                                    </td>
                                    <td>
                                        <asp:CheckBox ID="ckbAuto1CS" runat="server" onclick="CheckAutoPreset(this,'chkCopy11x2')" />
                                    </td>
                                    <td>
                                        <asp:CheckBox ID="ckbAuto11R" runat="server" onclick="CheckAutoPreset(this)" />
                                        <asp:CheckBox ID="ckbAuto1TG" runat="server" onclick="CheckAutoPreset(this,'chkCopy11x2')" />
                                        
                                        
                                    </td>
                                    <td>
                                        <asp:CheckBox ID="ckbAuto1MP" runat="server" onclick="CheckAutoPreset(this,'chkCopy11x2')" />
                                        
                                    </td>
                                    <td>
                                        <asp:CheckBox ID="ckbAuto1OR" runat="server" onclick="CheckAutoPreset(this,'chkCopy11x2')" />
                                        
                                    </td>
                                </tr>
                                <tr class="bg_eb " style="border:solid 0px #fff;">
                                    <td>
                                        <asp:DropDownList ID="ddlautoS1HdpD" runat="server" disabled onChange="SelectOnChange('ddlautoS1HdpD');">
                                            <asp:ListItem Selected="True">0</asp:ListItem>
                                        </asp:DropDownList>
                                       
                                        <a class="imaLink img" href="javascript:ReducePT('autoS1HdpD',1)">
                                            <img class="hand" hspace="1" id="btnReduce1" name="btnReduce1" src="../App_Themes/AgencyV2/Images/b_down.jpg" />
                                        </a>
                                        <a class="imaLink img" href="javascript:IncreasePT('autoS1HdpD',1)">
                                            <img class="hand" hspace="1" id="btnIncrease1" name="btnIncrease1" src="../App_Themes/AgencyV2/Images/b_up.jpg"/>
                                        </a>
                                        <a class="imaLink img" href="javascript:ReducePT('autoS1HdpD',10)">
                                            <img class="hand" hspace="1" id="btnReduce10" name="btnReduce10" src="../App_Themes/AgencyV2/Images/b_sub.jpg"/>
                                        </a>
                                        <a class="imaLink img" href="javascript:IncreasePT('autoS1HdpD',10)">
                                            <img class="hand" hspace="1" id="btnIncrease10" name="btnIncrease10" src="../App_Themes/AgencyV2/Images/b_add.jpg"/>
                                        </a>
                                    </td>
                                    <td>
                                         <asp:DropDownList ID="ddlautoS1OUD" runat="server" disabled onChange="SelectOnChange('ddlautoS1OUD');">
                                            <asp:ListItem Selected="True">0</asp:ListItem>
                                        </asp:DropDownList>
                                       
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="ddlautoS11stHdpD" runat="server" disabled onChange="SelectOnChange('ddlautoS11stHdpD');">
                                            <asp:ListItem Selected="True">0</asp:ListItem>
                                        </asp:DropDownList>
                                        
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="ddlautoS11stOUD" runat="server" disabled onChange="SelectOnChange('ddlautoS11stOUD');">
                                            <asp:ListItem Selected="True">0</asp:ListItem>
                                        </asp:DropDownList>
                                    
                                    </td><td>
                                        <asp:DropDownList ID="ddlautoS1OE" runat="server" disabled onChange="SelectOnChange('ddlautoS1OE');">
                                            <asp:ListItem Selected="True">0</asp:ListItem>
                                        </asp:DropDownList>
                                        
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="ddlautoS11x2" runat="server" disabled onChange="SelectOnChange('ddlautoS11x2');">
                                            <asp:ListItem Selected="True">0</asp:ListItem>
                                        </asp:DropDownList>
                                        
                                        <a class="imaLink img" href="javascript:ReducePT('autoS11x2',1)">
                                            <img class="hand" hspace="1" id="btnReduce1" name="btnReduce1" src="../App_Themes/AgencyV2/Images/b_down.jpg" />
                                        </a>
                                        <a class="imaLink img" href="javascript:IncreasePT('autoS11x2',1)">
                                            <img class="hand" hspace="1" id="btnIncrease1" name="btnIncrease1" src="../App_Themes/AgencyV2/Images/b_up.jpg"/>
                                        </a>
                                        <a class="imaLink img" href="javascript:ReducePT('autoS11x2',10)">
                                            <img class="hand" hspace="1" id="btnReduce10" name="btnReduce10" src="../App_Themes/AgencyV2/Images/b_sub.jpg"/>
                                        </a>
                                        <a class="imaLink img" href="javascript:IncreasePT('autoS11x2',10)">
                                            <img class="hand" hspace="1" id="btnIncrease10" name="btnIncrease10" src="../App_Themes/AgencyV2/Images/b_add.jpg"/>
                                        </a>
                                    </td>
                                    <td>
                                         <asp:DropDownList ID="ddlautoS1CS" runat="server" disabled onChange="SelectOnChange('ddlautoS1CS');">
                                            <asp:ListItem Selected="True">0</asp:ListItem>
                                        </asp:DropDownList>
                                        
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="ddlautoS1TG" runat="server" disabled onChange="SelectOnChange('ddlautoS1TG');">
                                            <asp:ListItem Selected="True">0</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="ddlautoS1MP" runat="server" disabled onChange="SelectOnChange('ddlautoS1MP');">
                                            <asp:ListItem Selected="True">0</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="ddlautoS1OR" runat="server" disabled onChange="SelectOnChange('ddlautoS1OR');">
                                            <asp:ListItem Selected="True">0</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr class="bg_eb">
                                    <td></td>
                                    <td colspan="5" class="l">
                                        <asp:CheckBox ID="chkCopy1HdpDeadball" runat="server" onclick="CheckCopyPT(this,arr1Super1,arr1Master1,'chkAuto1HdpD');" />
                                        
                                        Copy From Handicap
                                    </td>
                                    <td colspan="5" class="l">
                                        <asp:CheckBox ID="CheckBox1" runat="server" onclick="CheckCopyPT(this,arr2Super1,arr2Master1,'chkAuto11x2');" />
                                        
                                        Copy From 1x2
                                    </td>
                                </tr>
                                <tr class="bg_eb">
                                    <td rowspan="4">
                                        Live!
                                    </td>
                                    <td class="r">
                                        Agent Position
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="ddllistM1HdpL" runat="server" onchange="SelectOnChange('ddllistM1HdpL');">
                                            <asp:ListItem Selected="True">0</asp:ListItem>
                                        </asp:DropDownList>
                                       
                                        <a class="imaLink img" href="javascript:ReducePT('listM1HdpL',1)">
                                            <img class="hand" hspace="1" id="btnReduce1" name="btnReduce1" src="../App_Themes/AgencyV2/Images/b_down.jpg" />
                                         </a>
                                         <a class="imaLink img" href="javascript:IncreasePT('listM1HdpL',1)"><img class="hand" hspace="1" id="btnIncrease1" name="btnIncrease1" src="../App_Themes/AgencyV2/Images/b_up.jpg" /></a>
                                         <a class="imaLink img" href="javascript:ReducePT('listM1HdpL',10)"><img class="hand" hspace="1" id="btnReduce10" name="btnReduce10" src="../App_Themes/AgencyV2/Images/b_sub.jpg" /></a>
                                         <a class="imaLink img" href="javascript:IncreasePT('listM1HdpL',10)"><img class="hand" hspace="1" id="btnIncrease10" name="btnIncrease10" src="../App_Themes/AgencyV2/Images/b_add.jpg" /></a>
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="ddllistM1OUL" runat="server" onchange="SelectOnChange('ddllistM1OUL');">
                                            <asp:ListItem Selected="True">0</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="ddllistM11stHdpL" runat="server" onchange="SelectOnChange('ddllistM11stHdpL');">
                                            <asp:ListItem Selected="True">0</asp:ListItem>
                                        </asp:DropDownList>
                                        
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="ddllistM11stOUL" runat="server" onchange="SelectOnChange('ddllistM11stOUL');">
                                            <asp:ListItem Selected="True">0</asp:ListItem>
                                        </asp:DropDownList>
                                        
                                    </td>
                                    <td colspan="6" rowspan="4" class="l">
                                        <asp:CheckBox ID="chkCopy1HdpLive" runat="server" onclick="CheckCopyPT(this,arr3Super1,arr3Master1,'chkAuto1HdpL');" />
                                        Copy
                                        From Handicap
                                    </td>
                                </tr>
                                <tr class="bg_eb">
                                    <td class="r">
                                        Master Preset
                                    </td>
                                    <td>
                                         <asp:DropDownList ID="ddllistS1HdpL" runat="server" onchange="SelectOnChange('ddllistS1HdpL');">
                                            <asp:ListItem Selected="True">0</asp:ListItem>
                                        </asp:DropDownList>
                                        <a class="imaLink img" href="javascript:ReducePT('listS1HdpL',1)"><img class="hand" hspace="1" id="btnReduce1" name="btnReduce1" src="../App_Themes/AgencyV2/Images/b_down.jpg" /></a>
                                        <a class="imaLink img" href="javascript:IncreasePT('listS1HdpL',1)"><img class="hand" hspace="1" id="btnIncrease1" name="btnIncrease1" src="../App_Themes/AgencyV2/Images/b_up.jpg" /></a>
                                        <a class="imaLink img" href="javascript:ReducePT('listS1HdpL',10)"><img class="hand" hspace="1" id="btnReduce10" name="btnReduce10" src="../App_Themes/AgencyV2/Images/b_sub.jpg" /></a>
                                        <a class="imaLink img" href="javascript:IncreasePT('listS1HdpL',10)"><img class="hand" hspace="1" id="btnIncrease10" name="btnIncrease10" src="../App_Themes/AgencyV2/Images/b_add.jpg" /></a>
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="ddllistS1OUL" runat="server" onchange="SelectOnChange('ddllistS1OUL');">
                                            <asp:ListItem Selected="True">0</asp:ListItem>
                                        </asp:DropDownList>
                                        
                                    </td>
                                    <td>
                                         <asp:DropDownList ID="ddllistS11stHdpL" runat="server" onchange="SelectOnChange('ddllistS11stHdpL');">
                                            <asp:ListItem Selected="True">0</asp:ListItem>
                                        </asp:DropDownList>
                                        
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="ddllistS11stOUL" runat="server" onchange="SelectOnChange('ddllistS11stOUL');">
                                            <asp:ListItem Selected="True">0</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr class="bg_eb ">
                                    <td rowspan="2" class="r">
                                        Auto Master Preset
                                    </td>
                                    <td>
                                        <asp:CheckBox ID="chkAuto1HdpL" onclick="CheckAutoPreset(this)" runat="server" checked-lhdp />
                                       
                                    </td>
                                    <td>
                                        <asp:CheckBox ID="chkAuto1OUL" runat="server" onclick="CheckAutoPreset(this,'chkCopy1HdpLive')" name="chkAuto1OUL" checked-lou />
                                        
                                    </td>
                                    <td>
                                        <asp:CheckBox ID="chkAuto11stHdpL" runat="server" onclick="CheckAutoPreset(this,'chkCopy1HdpLive')" checked-l1sthdp />
                                        
                                    </td>
                                    <td>
                                        <asp:CheckBox ID="chkAuto11stOUL" runat="server" onclick="CheckAutoPreset(this,'chkCopy1HdpLive')" checked-L1stOU />
                                        
                                    </td>
                                </tr>
                                <tr class="bg_eb ">
                                    <td>
                                        <select id="autoS1HdpL" name="autoS1HdpL" disabled onChange="SelectOnChange('autoS1HdpL');">
                                            <option selected='true' value='0'>0</option>
                                        </select>
                                        <a class="imaLink img" href="javascript:ReducePT('autoS1HdpL',1)">
                                            <img class="hand" hspace="1" id="btnReduce1" name="btnReduce1" src="../App_Themes/AgencyV2/Images/b_down.jpg" />
                                        </a>
                                        <a class="imaLink img" href="javascript:IncreasePT('autoS1HdpL',1)">
                                            <img class="hand" hspace="1" id="btnIncrease1" name="btnIncrease1" src="../App_Themes/AgencyV2/Images/b_up.jpg"/>
                                        </a>
                                        <a class="imaLink img" href="javascript:ReducePT('autoS1HdpL',10)">
                                            <img class="hand" hspace="1" id="btnReduce10" name="btnReduce10" src="../App_Themes/AgencyV2/Images/b_sub.jpg"/>
                                        </a>
                                        <a class="imaLink img" href="javascript:IncreasePT('autoS1HdpL',10)">
                                            <img class="hand" hspace="1" id="btnIncrease10" name="btnIncrease10" src="../App_Themes/AgencyV2/Images/b_add.jpg"/>
                                        </a>
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="ddlautoS1OUL" runat="server" disabled onchange="SelectOnChange('ddlautoS1OUL');">
                                            <asp:ListItem Selected="True">0</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="ddlautoS11stHdpL" runat="server" disabled onchange="SelectOnChange('ddlautoS11stHdpL');">
                                            <asp:ListItem Selected="True">0</asp:ListItem>
                                        </asp:DropDownList>
                          
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="ddlautoS11stOUL" runat="server" disabled onchange="SelectOnChange('ddlautoS11stOUL');">
                                            <asp:ListItem Selected="True">0</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </td>
                </tr>
            </table>
        </div>
    </div>
    <div class="{none-copy}">
    <div class="l"><br />
        <asp:CheckBox ID="chkCopyBasket" runat="server" disable_chkbasket onclick="CopyBasketPT(this);" name="chkCopyBasket" />
        <b><span style="cursor: pointer;" disable_chkbasket onclick="$('chkCopyBasket').click();">
            Copy all Bet Setting and Position Taking from Basketball Handicap</span>
        </b>
    </div>
    </div>
            <div class="l" id="linkBasket" onclick="OpenPanelEdit('panelBasket'); togglePTmenu('bullet2')">
                <div class="button_cont">
                    <div class="menu_content">
                        <ul>
                            <li><a id="bullet2" class="md2_on" href="#1">Basketball</a> </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div style="display: none" id="panelBasket">
                <div class="l">
                    <table class="sptPT" style="width: 75%">
                        <tr>
                            <td>
                                <div id="divUpdInfo2" name="divUpdInfo2">
                                    <table border="0" width="100%" class="tblRpt">
                                        <tr class="tblTitleCenter">
                                            <td colspan="3">
                                                Bet Setting
                                            </td>
                                        </tr>
                                        <tr class="bg_eb">
                                            <td class="c tdPT1">
                                                Min Bet&nbsp;
                                                <input type="text" maxlength="14" id="txtMinbet2" name="txtMinbet2" value="5" /><span
                                                    class="minmaxbet">&gt;= <span id="txtMinbet_Min2">5</span></span>
                                            </td>
                                            <td class="c">
                                                Max Bet&nbsp;
                                                <input type="text" maxlength="14" id="txtMaxbet2" name="txtMaxbet2" value="35,000" />
                                                <span class="minmaxbet">&lt;= <span id="txtMaxbet_Max2">35,000</span></span>
                                            </td>
                                            <td class="c">
                                                Max Per Match&nbsp;
                                                <input type="text" maxlength="14" id="txtMaxPerMatch2" name="txtMaxPerMatch2" value="200,000" />
                                                <span class="hidden">&gt;=<span id="txtMaxPerMatch_Min2"> 0</span> and </span><span
                                                    class="minmaxbet">&lt;=<span id="txtMaxPerMatch_Max2">200,000</span></span>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div id="divUpdPT2" name="divUpdPT2">
                                    <table border="1" width="100%" class="tblRpt">
                                        <tr class="tblTitleCenter">
                    <td colspan="7">
                        Position Taking (%)
                    </td>
                </tr>
                <tr class="bg_eb">
                    <td>
                    </td>
                    <td>
                        Handicap
                    </td>
                <td>
                    Over/Under
                </td>
                <td>
                    Odd/Even
                </td>
                <td>
                    Mix Parlay
                </td>
                <td>
                    Money Line
                </td>
                <td>
                </td>
            </tr>
            <tr class="bg_eb"><td class="r">Agent Position</td>
                <td>
                    <select id="listM2Hdp" name="listM2Hdp" onchange="SelectOnChange('listM2Hdp');">
                        <option selected='true' value='0'>0</option>
                    </select>
                    <a class="imaLink img" href="javascript:ReducePT('listM2Hdp',1)">
                        <img class="hand" hspace="1" id="btnReduce1" name="btnReduce1" src="../App_Themes/AgencyV2/Images/b_down.jpg" /></a>
                    <a class="imaLink img" href="javascript:IncreasePT('listM2Hdp',1)">
                        <img class="hand" hspace="1" id="btnIncrease1" name="btnIncrease1" src="../App_Themes/AgencyV2/Images/b_up.jpg" /></a><a
                            class="imaLink img" href="javascript:ReducePT('listM2Hdp',10)"><img class="hand"
                                hspace="1" id="btnReduce10" name="btnReduce10" src="../App_Themes/AgencyV2/Images/b_sub.jpg" /></a><a
                                    class="imaLink img" href="javascript:IncreasePT('listM2Hdp',10)"><img class="hand"
                                        hspace="1" id="btnIncrease10" name="btnIncrease10" src="../App_Themes/AgencyV2/Images/b_add.jpg" /></a>
                </td>
                <td>
                    <select id="listM2OU" name="listM2OU" onchange="SelectOnChange('listM2OU');">
                        <option selected='true' value='0'>0</option>
                    </select>
                </td>
                <td>
                    <select id="listM2OE" name="listM2OE" onchange="SelectOnChange('listM2OE');">
                        <option selected='true' value='0'>0</option>
                    </select>
                </td>
                <td>
                    <select id="listM2MP" name="listM2MP" onchange="SelectOnChange('listM2MP');">
                        <option selected='true' value='0'>0</option>
                    </select>
                </td>
                <td>
                    <select id="listM2ML" name="listM2ML" onchange="SelectOnChange('listM2ML');">
                        <option selected='true' value='0'>0</option>
                    </select>
                </td>
                <td rowspan="2" class="l">
                    <input type="checkbox" id="chkCopy2Hdp" name="chkCopy2Hdp" onclick="CheckCopyPT(this,arrSuper2,arrMaster2,'chkAuto2Hdp');" />Copy
                    From Handicap
                </td>
            </tr>
            <tr class="bg_eb">
                <td class="r">
                    Master Preset
                </td>
                <td>
                    <select id="listS2Hdp" name="listS2Hdp" onchange="SelectOnChange('listS2Hdp');">
                        <option selected='true' value='0'>0</option>
                    </select>
                    <a class="imaLink img" href="javascript:ReducePT('listS2Hdp',1)"><img class="hand"
                        hspace="1" id="btnReduce1" name="btnReduce1" src="../App_Themes/AgencyV2/Images/b_down.jpg" />
                    </a>
                    <a class="imaLink img" href="javascript:IncreasePT('listS2Hdp',1)">
                        <img class="hand" hspace="1" id="btnIncrease1" name="btnIncrease1" src="../App_Themes/AgencyV2/Images/b_up.jpg" /></a>
                    <a class="imaLink img" href="javascript:ReducePT('listS2Hdp',10)">
                        <img class="hand" hspace="1" id="btnReduce10" name="btnReduce10" src="../App_Themes/AgencyV2/Images/b_sub.jpg" /></a>
                    <a class="imaLink img" href="javascript:IncreasePT('listS2Hdp',10)">
                        <img class="hand" hspace="1" id="btnIncrease10" name="btnIncrease10" src="../App_Themes/AgencyV2/Images/b_add.jpg" /></a>
                </td>
                <td>
                    <select id="listS2OU" name="listS2OU" onchange="SelectOnChange('listS2OU');">
                        <option selected='true' value='0'>0</option>
                    </select>
                </td>
                <td>
                    <select id="listS2OE" name="listS2OE" onchange="SelectOnChange('listS2OE');">
                        <option selected='true' value='0'>0</option>
                    </select>
                </td>
                <td>
                    <select id="listS2MP" name="listS2MP" onchange="SelectOnChange('listS2MP');">
                        <option selected='true' value='0'>0</option>
                    </select>
                </td>
                <td>
                    <select id="listS2ML" name="listS2ML" onchange="SelectOnChange('listS2ML');">
                        <option selected='true' value='0'>0</option>
                    </select>
                </td>
            </tr>
                                        <tr class="bg_eb ">
                                            <td rowspan="2" class="r">
                                                Auto Master Preset
                                            </td>
                                            <td>
                                                <input type="checkbox" onclick="CheckAutoPreset(this)" id="chkAuto2Hdp" name="chkAuto2Hdp" />
                                            </td>
                                            <td>
                                                <input type="checkbox" onclick="CheckAutoPreset(this,'chkCopy2Hdp')" id="chkAuto2OU"
                                                    name="chkAuto2OU" />
                                            </td>
                                            <td>
                                                <input type="checkbox" onclick="CheckAutoPreset(this,'chkCopy2Hdp')" id="chkAuto2OE"
                                                    name="chkAuto2OE" />
                                            </td>
                                            <td>
                                                <input type="checkbox" onclick="CheckAutoPreset(this,'chkCopy2Hdp')" id="chkAuto2MP"
                                                    name="chkAuto2MP" />
                                            </td>
                                            <td>
                                                <input type="checkbox" onclick="CheckAutoPreset(this,'chkCopy2Hdp')" id="chkAuto2ML"
                                                    name="chkAuto2ML" />
                                            </td>
                                        </tr>
                                        <tr class="bg_eb ">
                                            <td>
                                                <select id="autoS2Hdp" name="autoS2Hdp" disabled onchange="SelectOnChange('autoS2Hdp');">
                                                    <option selected='true' value='0'>0</option>
                                                </select><a class="imaLink img" href="javascript:ReducePT('autoS2Hdp',1)"><img class="hand"
                                                    hspace="1" id="btnReduce1" name="btnReduce1" src="../App_Themes/AgencyV2/Images/b_down.jpg" /></a><a
                                                        class="imaLink img" href="javascript:IncreasePT('autoS2Hdp',1)"><img class="hand"
                                                            hspace="1" id="btnIncrease1" name="btnIncrease1" src="../App_Themes/AgencyV2/Images/b_up.jpg" /></a><a
                                                                class="imaLink img" href="javascript:ReducePT('autoS2Hdp',10)"><img class="hand"
                                                                    hspace="1" id="btnReduce10" name="btnReduce10" src="../App_Themes/AgencyV2/Images/b_sub.jpg" /></a><a
                                                                        class="imaLink img" href="javascript:IncreasePT('autoS2Hdp',10)"><img class="hand"
                                                                            hspace="1" id="btnIncrease10" name="btnIncrease10" src="../App_Themes/AgencyV2/Images/b_add.jpg" /></a>
                                            </td>
                                            <td>
                                                <select id="autoS2OU" name="autoS2OU" disabled onchange="SelectOnChange('autoS2OU');">
                                                    <option selected='true' value='0'>0</option>
                                                </select>
                                            </td>
                                            <td>
                                                <select id="autoS2OE" name="autoS2OE" disabled onchange="SelectOnChange('autoS2OE');">
                                                    <option selected='true' value='0'>0</option>
                                                </select>
                                            </td>
                                            <td>
                                                <select id="autoS2MP" name="autoS2MP" disabled onchange="SelectOnChange('autoS2MP');">
                                                    <option selected='true' value='0'>0</option>
                                                </select>
                                            </td>
                                            <td>
                                                <select id="autoS2ML" name="autoS2ML" disabled onchange="SelectOnChange('autoS2ML');">
                                                    <option selected='true' value='0'>0</option>
                                                </select>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
            <div class="l" id="linkFootball" onclick="OpenPanelEdit('panelFootball'); togglePTmenu('bullet3')">
                <div class="button_cont">
                    <div class="menu_content">
                        <ul>
                            <li><a id="bullet3" class="md2_on" href="#1">Football</a></li></ul>
                    </div>
                </div>
            </div>
            <div style="display: none" id="panelFootball">
                <div class="l">
                    <table class="sptPT" style="width: 75%">
                        <tr>
                            <td>
                                <div id="divUpdInfo3" name="divUpdInfo3">
                                    <table width="100%" class="tblRpt">
                                        <tr class="tblTitleCenter">
                                            <td colspan="3">
                                                Bet Setting
                                            </td>
                                        </tr>
                                        <tr class="bg_eb">
                                            <td class="c tdPT1">
                                                Min Bet&nbsp;<input type="text" maxlength="14" id="txtMinbet3" name="txtMinbet3"
                                                    value="5" /><span class="minmaxbet">&gt;=<span id="txtMinbet_Min3">5</span></span>
                                            </td>
                                            <td class="c">
                                                Max Bet&nbsp;<input type="text" maxlength="14" id="txtMaxbet3" name="txtMaxbet3"
                                                    value="35,000" /><span class="minmaxbet">&lt;=<span id="txtMaxbet_Max3">35,000</span></span>
                                            </td>
                                            <td class="c">
                                                Max Per Match&nbsp;<input type="text" maxlength="14" id="txtMaxPerMatch3" name="txtMaxPerMatch3"
                                                    value="200,000" /><span class="hidden">&gt;=<span id="txtMaxPerMatch_Min3">0</span>
                                                        and</span><span class="minmaxbet">&lt;=<span id="txtMaxPerMatch_Max3">200,000</span></span>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div id="divUpdPT3" name="divUpdPT3">
                                    <table width="100%" border="1" class="tblRpt">
                                        <tr class="tblTitleCenter">
                                            <td colspan="6">
                                                Position Taking (%)
                                            </td>
                                        </tr>
                                        <tr class="bg_eb">
                                            <td>
                                            </td>
                                            <td>
                                                Handicap
                                            </td>
                                            <td>
                                                Over/Under
                                            </td>
                                            <td>
                                                Odd/Even
                                            </td>
                                            <td>
                                                Money Line
                                            </td>
                                            <td>
                                            </td>
                                        </tr>
                                        <tr class="bg_eb">
                                            <td class="r">
                                                Agent Position
                                            </td>
                                            <td>
                                                <select id="listM3Hdp" name="listM3Hdp" onchange="SelectOnChange('listM3Hdp');">
                                                    <option selected='true' value='0'>0</option>
                                                </select><a class="imaLink img" href="javascript:ReducePT('listM3Hdp',1)"><img class="hand"
                                                    hspace="1" id="btnReduce1" name="btnReduce1" src="../App_Themes/AgencyV2/Images/b_down.jpg" /></a><a
                                                        class="imaLink img" href="javascript:IncreasePT('listM3Hdp',1)"><img class="hand"
                                                            hspace="1" id="btnIncrease1" name="btnIncrease1" src="../App_Themes/AgencyV2/Images/b_up.jpg" /></a><a
                                                                class="imaLink img" href="javascript:ReducePT('listM3Hdp',10)"><img class="hand"
                                                                    hspace="1" id="btnReduce10" name="btnReduce10" src="../App_Themes/AgencyV2/Images/b_sub.jpg" /></a><a
                                                                        class="imaLink img" href="javascript:IncreasePT('listM3Hdp',10)"><img class="hand"
                                                                            hspace="1" id="btnIncrease10" name="btnIncrease10" src="../App_Themes/AgencyV2/Images/b_add.jpg" /></a>
                                            </td>
                                            <td>
                                                <select id="listM3OU" name="listM3OU" onchange="SelectOnChange('listM3OU');">
                                                    <option selected='true' value='0'>0</option>
                                                </select>
                                            </td>
                                            <td>
                                                <select id="listM3OE" name="listM3OE" onchange="SelectOnChange('listM3OE');">
                                                    <option selected='true' value='0'>0</option>
                                                </select>
                                            </td>
                                            <td>
                                                <select id="listM3ML" name="listM3ML" onchange="SelectOnChange('listM3ML');">
                                                    <option selected='true' value='0'>0</option>
                                                </select>
                                            </td>
                                            <td rowspan="2" class="l">
                                                <input type="checkbox" id="chkCopy3Hdp" name="chkCopy3Hdp" onclick="CheckCopyPT(this,arrSuper3,arrMaster3,'chkAuto3Hdp');" />Copy
                                                From Handicap
                                            </td>
                                        </tr>
                                        <tr class="bg_eb">
                                            <td class="r">
                                                Master Preset
                                            </td>
                                            <td>
                                                <select id="listS3Hdp" name="listS3Hdp" onchange="SelectOnChange('listS3Hdp');">
                                                    <option selected='true' value='0'>0</option>
                                                </select><a class="imaLink img" href="javascript:ReducePT('listS3Hdp',1)"><img class="hand"
                                                    hspace="1" id="btnReduce1" name="btnReduce1" src="../App_Themes/AgencyV2/Images/b_down.jpg" /></a><a
                                                        class="imaLink img" href="javascript:IncreasePT('listS3Hdp',1)"><img class="hand"
                                                            hspace="1" id="btnIncrease1" name="btnIncrease1" src="../App_Themes/AgencyV2/Images/b_up.jpg" /></a><a
                                                                class="imaLink img" href="javascript:ReducePT('listS3Hdp',10)"><img class="hand"
                                                                    hspace="1" id="btnReduce10" name="btnReduce10" src="../App_Themes/AgencyV2/Images/b_sub.jpg" /></a><a
                                                                        class="imaLink img" href="javascript:IncreasePT('listS3Hdp',10)"><img class="hand"
                                                                            hspace="1" id="btnIncrease10" name="btnIncrease10" src="../App_Themes/AgencyV2/Images/b_add.jpg" /></a>
                                            </td>
                                            <td>
                                                <select id="listS3OU" name="listS3OU" onchange="SelectOnChange('listS3OU');">
                                                    <option selected='true' value='0'>0</option>
                                                </select>
                                            </td>
                                            <td>
                                                <select id="listS3OE" name="listS3OE" onchange="SelectOnChange('listS3OE');">
                                                    <option selected='true' value='0'>0</option>
                                                </select>
                                            </td>
                                            <td>
                                                <select id="listS3ML" name="listS3ML" onchange="SelectOnChange('listS3ML');">
                                                    <option selected='true' value='0'>0</option>
                                                </select>
                                            </td>
                                        </tr>
                                        <tr class="bg_eb ">
                                            <td rowspan="2" class="r">
                                                Auto Master Preset
                                            </td>
                                            <td>
                                                <input type="checkbox" onclick="CheckAutoPreset(this)" id="chkAuto3Hdp" name="chkAuto3Hdp" />
                                            </td>
                                            <td>
                                                <input type="checkbox" onclick="CheckAutoPreset(this,'chkCopy3Hdp')" id="chkAuto3OU"
                                                    name="chkAuto3OU" />
                                            </td>
                                            <td>
                                                <input type="checkbox" onclick="CheckAutoPreset(this,'chkCopy3Hdp')" id="chkAuto3OE"
                                                    name="chkAuto3OE" />
                                            </td>
                                            <td>
                                                <input type="checkbox" onclick="CheckAutoPreset(this,'chkCopy3Hdp')" id="chkAuto3ML"
                                                    name="chkAuto3ML" />
                                            </td>
                                        </tr>
                                        <tr class="bg_eb ">
                                            <td>
                                                <select id="autoS3Hdp" name="autoS3Hdp" disabled onchange="SelectOnChange('autoS3Hdp');">
                                                    <option selected='true' value='0'>0</option>
                                                </select><a class="imaLink img" href="javascript:ReducePT('autoS3Hdp',1)"><img class="hand"
                                                    hspace="1" id="btnReduce1" name="btnReduce1" src="../App_Themes/AgencyV2/Images/b_down.jpg" /></a><a
                                                        class="imaLink img" href="javascript:IncreasePT('autoS3Hdp',1)"><img class="hand"
                                                            hspace="1" id="btnIncrease1" name="btnIncrease1" src="../App_Themes/AgencyV2/Images/b_up.jpg" /></a><a
                                                                class="imaLink img" href="javascript:ReducePT('autoS3Hdp',10)"><img class="hand"
                                                                    hspace="1" id="btnReduce10" name="btnReduce10" src="../App_Themes/AgencyV2/Images/b_sub.jpg" /></a><a
                                                                        class="imaLink img" href="javascript:IncreasePT('autoS3Hdp',10)"><img class="hand"
                                                                            hspace="1" id="btnIncrease10" name="btnIncrease10" src="../App_Themes/AgencyV2/Images/b_add.jpg" /></a>
                                            </td>
                                            <td>
                                                <select id="autoS3OU" name="autoS3OU" disabled onchange="SelectOnChange('autoS3OU');">
                                                    <option selected='true' value='0'>0</option>
                                                </select>
                                            </td>
                                            <td>
                                                <select id="autoS3OE" name="autoS3OE" disabled onchange="SelectOnChange('autoS3OE');">
                                                    <option selected='true' value='0'>0</option>
                                                </select>
                                            </td>
                                            <td>
                                                <select id="autoS3ML" name="autoS3ML" disabled onchange="SelectOnChange('autoS3ML');">
                                                    <option selected='true' value='0'>0</option>
                                                </select>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
            <div class="l" id="linkTennis" onclick="OpenPanelEdit('panelTennis'); togglePTmenu('bullet4')">
                <div class="button_cont">
                    <div class="menu_content">
                        <ul>
                            <li><a id="bullet4" class="md2_on" href="#1">Tennis</a></li></ul>
                    </div>
                </div>
            </div>
            <div style="display: none" id="panelTennis">
                <div class="l">
                    <table class="sptPT" style="width: 75%">
                        <tr>
                            <td>
                                <div id="divUpdInfo5" name="divUpdInfo5">
                                    <table width="100%" class="tblRpt">
                                        <tr class="tblTitleCenter">
                                            <td colspan="3">
                                                Bet Setting
                                            </td>
                                        </tr>
                                        <tr class="bg_eb">
                                            <td class="c tdPT1">
                                                Min Bet&nbsp;<input type="text" maxlength="14" id="txtMinbet5" name="txtMinbet5"
                                                    value="5" /><span class="minmaxbet">&gt;=<span id="txtMinbet_Min5">5</span></span>
                                            </td>
                                            <td class="c">
                                                Max Bet&nbsp;<input type="text" maxlength="14" id="txtMaxbet5" name="txtMaxbet5"
                                                    value="35,000" /><span class="minmaxbet">&lt;=<span id="txtMaxbet_Max5">35,000</span></span>
                                            </td>
                                            <td class="c">
                                                Max Per Match&nbsp;<input type="text" maxlength="14" id="txtMaxPerMatch5" name="txtMaxPerMatch5"
                                                    value="200,000" /><span class="hidden">&gt;=<span id="txtMaxPerMatch_Min5">0</span>
                                                        and</span><span class="minmaxbet">&lt;=<span id="txtMaxPerMatch_Max5">200,000</span></span>
                                            </td>
                                        </tr>
                                    </table></div></td></tr><tr><td ><div id="divUpdPT5" name="divUpdPT5"><table border="1" width="100%" class="tblRpt"><tr class="tblTitleCenter"><td colspan="6">Position Taking (%)</td></tr><tr class="bg_eb"><td></td>
                                        <td>
                                            Handicap
                                        </td>
                                        <td>
                                            Over/Under
                                        </td>
                                        <td>
                                            Odd/Even
                                        </td>
                                        <td>
                                            Money Line
                                        </td>
                                        <td>
                                        </td>
                                    </tr>
                                        <tr class="bg_eb">
                                            <td class="r">
                                                Agent Position
                                            </td>
                                            <td>
                                                <select id="listM5Hdp" name="listM5Hdp" onchange="SelectOnChange('listM5Hdp');">
                                                    <option selected='true' value='0'>0</option>
                                                </select><a class="imaLink img" href="javascript:ReducePT('listM5Hdp',1)"><img class="hand"
                                                    hspace="1" id="btnReduce1" name="btnReduce1" src="../App_Themes/AgencyV2/Images/b_down.jpg" /></a><a
                                                        class="imaLink img" href="javascript:IncreasePT('listM5Hdp',1)"><img class="hand"
                                                            hspace="1" id="btnIncrease1" name="btnIncrease1" src="../App_Themes/AgencyV2/Images/b_up.jpg" /></a><a
                                                                class="imaLink img" href="javascript:ReducePT('listM5Hdp',10)"><img class="hand"
                                                                    hspace="1" id="btnReduce10" name="btnReduce10" src="../App_Themes/AgencyV2/Images/b_sub.jpg" /></a><a
                                                                        class="imaLink img" href="javascript:IncreasePT('listM5Hdp',10)"><img class="hand"
                                                                            hspace="1" id="btnIncrease10" name="btnIncrease10" src="../App_Themes/AgencyV2/Images/b_add.jpg" /></a>
                                            </td>
                                            <td>
                                                <select id="listM5OU" name="listM5OU" onchange="SelectOnChange('listM5OU');">
                                                    <option selected='true' value='0'>0</option>
                                                </select>
                                            </td>
                                            <td>
                                                <select id="listM5OE" name="listM5OE" onchange="SelectOnChange('listM5OE');">
                                                    <option selected='true' value='0'>0</option>
                                                </select>
                                            </td>
                                            <td>
                                                <select id="listM5ML" name="listM5ML" onchange="SelectOnChange('listM5ML');">
                                                    <option selected='true' value='0'>0</option>
                                                </select>
                                            </td>
                                            <td rowspan="2" class="l">
                                                <input type="checkbox" id="chkCopy5Hdp" name="chkCopy5Hdp" onclick="CheckCopyPT(this,arrSuper5,arrMaster5,'chkAuto5Hdp');" />Copy
                                                From Handicap
                                            </td>
                                        </tr>
                                        <tr class="bg_eb">
                                            <td class="r">
                                                Master Preset
                                            </td>
                                            <td>
                                                <select id="listS5Hdp" name="listS5Hdp" onchange="SelectOnChange('listS5Hdp');">
                                                    <option selected='true' value='0'>0</option>
                                                </select><a class="imaLink img" href="javascript:ReducePT('listS5Hdp',1)"><img class="hand"
                                                    hspace="1" id="btnReduce1" name="btnReduce1" src="../App_Themes/AgencyV2/Images/b_down.jpg" /></a><a
                                                        class="imaLink img" href="javascript:IncreasePT('listS5Hdp',1)"><img class="hand"
                                                            hspace="1" id="btnIncrease1" name="btnIncrease1" src="../App_Themes/AgencyV2/Images/b_up.jpg" /></a><a
                                                                class="imaLink img" href="javascript:ReducePT('listS5Hdp',10)"><img class="hand"
                                                                    hspace="1" id="btnReduce10" name="btnReduce10" src="../App_Themes/AgencyV2/Images/b_sub.jpg" /></a><a
                                                                        class="imaLink img" href="javascript:IncreasePT('listS5Hdp',10)"><img class="hand"
                                                                            hspace="1" id="btnIncrease10" name="btnIncrease10" src="../App_Themes/AgencyV2/Images/b_add.jpg" /></a>
                                            </td>
                                            <td>
                                                <select id="listS5OU" name="listS5OU" onchange="SelectOnChange('listS5OU');">
                                                    <option selected='true' value='0'>0</option>
                                                </select>
                                            </td>
                                            <td>
                                                <select id="listS5OE" name="listS5OE" onchange="SelectOnChange('listS5OE');">
                                                    <option selected='true' value='0'>0</option>
                                                </select>
                                            </td>
                                            <td>
                                                <select id="listS5ML" name="listS5ML" onchange="SelectOnChange('listS5ML');">
                                                    <option selected='true' value='0'>0</option>
                                                </select>
                                            </td>
                                        </tr>
                                        <tr class="bg_eb ">
                                            <td rowspan="2" class="r">
                                                Auto Master Preset
                                            </td>
                                            <td>
                                                <input type="checkbox" onclick="CheckAutoPreset(this)" id="chkAuto5Hdp" name="chkAuto5Hdp" />
                                            </td>
                                            <td>
                                                <input type="checkbox" onclick="CheckAutoPreset(this,'chkCopy5Hdp')" id="chkAuto5OU"
                                                    name="chkAuto5OU" />
                                            </td>
                                            <td>
                                                <input type="checkbox" onclick="CheckAutoPreset(this,'chkCopy5Hdp')" id="chkAuto5OE"
                                                    name="chkAuto5OE" />
                                            </td>
                                            <td>
                                                <input type="checkbox" onclick="CheckAutoPreset(this,'chkCopy5Hdp')" id="chkAuto5ML"
                                                    name="chkAuto5ML" />
                                            </td>
                                        </tr>
                                        <tr class="bg_eb ">
                                            <td>
                                                <select id="autoS5Hdp" name="autoS5Hdp" disabled onchange="SelectOnChange('autoS5Hdp');">
                                                    <option selected='true' value='0'>0</option>
                                                </select><a class="imaLink img" href="javascript:ReducePT('autoS5Hdp',1)"><img class="hand"
                                                    hspace="1" id="btnReduce1" name="btnReduce1" src="../App_Themes/AgencyV2/Images/b_down.jpg" /></a><a
                                                        class="imaLink img" href="javascript:IncreasePT('autoS5Hdp',1)"><img class="hand"
                                                            hspace="1" id="btnIncrease1" name="btnIncrease1" src="../App_Themes/AgencyV2/Images/b_up.jpg" /></a><a
                                                                class="imaLink img" href="javascript:ReducePT('autoS5Hdp',10)"><img class="hand"
                                                                    hspace="1" id="btnReduce10" name="btnReduce10" src="../App_Themes/AgencyV2/Images/b_sub.jpg" /></a><a
                                                                        class="imaLink img" href="javascript:IncreasePT('autoS5Hdp',10)"><img class="hand"
                                                                            hspace="1" id="btnIncrease10" name="btnIncrease10" src="../App_Themes/AgencyV2/Images/b_add.jpg" /></a>
                                            </td>
                                            <td>
                                                <select id="autoS5OU" name="autoS5OU" disabled onchange="SelectOnChange('autoS5OU');">
                                                    <option selected='true' value='0'>0</option>
                                                </select>
                                            </td>
                                            <td>
                                                <select id="autoS5OE" name="autoS5OE" disabled onchange="SelectOnChange('autoS5OE');">
                                                    <option selected='true' value='0'>0</option>
                                                </select>
                                            </td>
                                            <td>
                                                <select id="autoS5ML" name="autoS5ML" disabled onchange="SelectOnChange('autoS5ML');">
                                                    <option selected='true' value='0'>0</option>
                                                </select>
                                            </td>
                                        </tr>
                                    </table>
                                    </div>
                                    </td>
                                    </tr>
                    </table>
                </div>
            </div>
            <div class="l" id="linkBaseball" onclick="OpenPanelEdit('panelBaseball'); togglePTmenu('bullet5')">
                <div class="button_cont">
                    <div class="menu_content">
                        <ul>
                            <li><a id="bullet5" class="md2_on" href="#1">Baseball</a></li></ul>
                    </div>
                </div>
            </div>
            <div style="display: none" id="panelBaseball">
                <div class="l">
                    <table class="sptPT" style="width: 75%">
                        <tr>
                            <td>
                                <div id="divUpdInfo8" name="divUpdInfo8">
                                    <table width="100%" class="tblRpt">
                                        <tr class="tblTitleCenter">
                                            <td colspan="3">
                                                Bet Setting
                                            </td>
                                        </tr>
                                        <tr class="bg_eb">
                                            <td class="c tdPT1">
                                                Min Bet&nbsp;<input type="text" maxlength="14" id="txtMinbet8" name="txtMinbet8"
                                                    value="5" /><span class="minmaxbet">&gt;=<span id="txtMinbet_Min8">5</span></span>
                                            </td>
                                            <td class="c">
                                                Max Bet&nbsp;<input type="text" maxlength="14" id="txtMaxbet8" name="txtMaxbet8"
                                                    value="35,000" /><span class="minmaxbet">&lt;=<span id="txtMaxbet_Max8">35,000</span></span>
                                            </td>
                                            <td class="c">
                                                Max Per Match&nbsp;<input type="text" maxlength="14" id="txtMaxPerMatch8" name="txtMaxPerMatch8"
                                                    value="200,000" /><span class="hidden">&gt;=<span id="txtMaxPerMatch_Min8">0</span>
                                                        and</span><span class="minmaxbet">&lt;=<span id="txtMaxPerMatch_Max8">200,000</span></span>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div id="divUpdPT8" name="divUpdPT8">
                                    <table border="1" width="100%" class="tblRpt">
                                        <tr class="tblTitleCenter">
                                            <td colspan="5">
                                                Position Taking (%)
                                            </td>
                                        </tr>
                                        <tr class="bg_eb">
                                            <td>
                                            </td>
                                            <td>
                                                Handicap
                                            </td>
                                            <td>
                                                Over/Under
                                            </td>
                                            <td>
                                                Money Line
                                            </td>
                                            <td>
                                            </td>
                                        </tr>
                                        <tr class="bg_eb">
                                            <td class="r">
                                                Agent Position
                                            </td>
                                            <td>
                                                <select id="listM8Hdp" name="listM8Hdp" onchange="SelectOnChange('listM8Hdp');">
                                                    <option selected='true' value='0'>0</option>
                                                </select><a class="imaLink img" href="javascript:ReducePT('listM8Hdp',1)"><img class="hand"
                                                    hspace="1" id="btnReduce1" name="btnReduce1" src="../App_Themes/AgencyV2/Images/b_down.jpg" /></a><a
                                                        class="imaLink img" href="javascript:IncreasePT('listM8Hdp',1)"><img class="hand"
                                                            hspace="1" id="btnIncrease1" name="btnIncrease1" src="../App_Themes/AgencyV2/Images/b_up.jpg" /></a><a
                                                                class="imaLink img" href="javascript:ReducePT('listM8Hdp',10)"><img class="hand"
                                                                    hspace="1" id="btnReduce10" name="btnReduce10" src="../App_Themes/AgencyV2/Images/b_sub.jpg" /></a><a
                                                                        class="imaLink img" href="javascript:IncreasePT('listM8Hdp',10)"><img class="hand"
                                                                            hspace="1" id="btnIncrease10" name="btnIncrease10" src="../App_Themes/AgencyV2/Images/b_add.jpg" /></a>
                                            </td>
                                            <td>
                                                <select id="listM8OU" name="listM8OU" onchange="SelectOnChange('listM8OU');">
                                                    <option selected='true' value='0'>0</option>
                                                </select>
                                            </td>
                                            <td>
                                                <select id="listM8ML" name="listM8ML" onchange="SelectOnChange('listM8ML');">
                                                    <option selected='true' value='0'>0</option>
                                                </select>
                                            </td>
                                            <td rowspan="2" class="l">
                                                <input type="checkbox" id="chkCopy8Hdp" name="chkCopy8Hdp" onclick="CheckCopyPT(this,arrSuper8,arrMaster8,'chkAuto8Hdp');" />Copy
                                                From Handicap
                                            </td>
                                        </tr>
                                        <tr class="bg_eb">
                                            <td class="r">
                                                Master Preset
                                            </td>
                                            <td>
                                                <select id="listS8Hdp" name="listS8Hdp" onchange="SelectOnChange('listS8Hdp');">
                                                    <option selected='true' value='0'>0</option>
                                                </select><a class="imaLink img" href="javascript:ReducePT('listS8Hdp',1)"><img class="hand"
                                                    hspace="1" id="btnReduce1" name="btnReduce1" src="../App_Themes/AgencyV2/Images/b_down.jpg" /></a><a
                                                        class="imaLink img" href="javascript:IncreasePT('listS8Hdp',1)"><img class="hand"
                                                            hspace="1" id="btnIncrease1" name="btnIncrease1" src="../App_Themes/AgencyV2/Images/b_up.jpg" /></a><a
                                                                class="imaLink img" href="javascript:ReducePT('listS8Hdp',10)"><img class="hand"
                                                                    hspace="1" id="btnReduce10" name="btnReduce10" src="../App_Themes/AgencyV2/Images/b_sub.jpg" /></a><a
                                                                        class="imaLink img" href="javascript:IncreasePT('listS8Hdp',10)"><img class="hand"
                                                                            hspace="1" id="btnIncrease10" name="btnIncrease10" src="../App_Themes/AgencyV2/Images/b_add.jpg" /></a>
                                            </td>
                                            <td>
                                                <select id="listS8OU" name="listS8OU" onchange="SelectOnChange('listS8OU');">
                                                    <option selected='true' value='0'>0</option>
                                                </select>
                                            </td>
                                            <td>
                                                <select id="listS8ML" name="listS8ML" onchange="SelectOnChange('listS8ML');">
                                                    <option selected='true' value='0'>0</option>
                                                </select>
                                            </td>
                                        </tr>
                                        <tr class="bg_eb ">
                                            <td rowspan="2" class="r">
                                                Auto Master Preset
                                            </td>
                                            <td>
                                                <input type="checkbox" onclick="CheckAutoPreset(this)" id="chkAuto8Hdp" name="chkAuto8Hdp" />
                                            </td>
                                            <td>
                                                <input type="checkbox" onclick="CheckAutoPreset(this,'chkCopy8Hdp')" id="chkAuto8OU"
                                                    name="chkAuto8OU" />
                                            </td>
                                            <td>
                                                <input type="checkbox" onclick="CheckAutoPreset(this,'chkCopy8Hdp')" id="chkAuto8ML"
                                                    name="chkAuto8ML" />
                                            </td>
                                        </tr>
                                        <tr class="bg_eb ">
                                            <td>
                                                <select id="autoS8Hdp" name="autoS8Hdp" disabled onchange="SelectOnChange('autoS8Hdp');">
                                                    <option selected='true' value='0'>0</option>
                                                </select><a class="imaLink img" href="javascript:ReducePT('autoS8Hdp',1)"><img class="hand"
                                                    hspace="1" id="btnReduce1" name="btnReduce1" src="../App_Themes/AgencyV2/Images/b_down.jpg" /></a><a
                                                        class="imaLink img" href="javascript:IncreasePT('autoS8Hdp',1)"><img class="hand"
                                                            hspace="1" id="btnIncrease1" name="btnIncrease1" src="../App_Themes/AgencyV2/Images/b_up.jpg" /></a><a
                                                                class="imaLink img" href="javascript:ReducePT('autoS8Hdp',10)"><img class="hand"
                                                                    hspace="1" id="btnReduce10" name="btnReduce10" src="../App_Themes/AgencyV2/Images/b_sub.jpg" /></a><a
                                                                        class="imaLink img" href="javascript:IncreasePT('autoS8Hdp',10)"><img class="hand"
                                                                            hspace="1" id="btnIncrease10" name="btnIncrease10" src="../App_Themes/AgencyV2/Images/b_add.jpg" /></a>
                                            </td>
                                            <td>
                                                <select id="autoS8OU" name="autoS8OU" disabled onchange="SelectOnChange('autoS8OU');">
                                                    <option selected='true' value='0'>0</option>
                                                </select>
                                            </td>
                                            <td>
                                                <select id="autoS8ML" name="autoS8ML" disabled onchange="SelectOnChange('autoS8ML');">
                                                    <option selected='true' value='0'>0</option>
                                                </select>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
            <div class="l" id="linkGolf" onclick="OpenPanelEdit('panelGolf'); togglePTmenu('bullet6')">
                <div class="button_cont">
                    <div class="menu_content">
                        <ul>
                            <li><a id="bullet6" class="md2_on" href="#1">Golf</a></li></ul>
                    </div>
                </div>
            </div>
            <div style="display: none" id="panelGolf">
                <div class="l">
                    <table class="sptPT" style="width: 75%">
                        <tr>
                            <td>
                                <div id="divUpdInfo10" name="divUpdInfo10">
                                    <table width="100%" class="tblRpt">
                                        <tr class="tblTitleCenter">
                                            <td colspan="3">
                                                Bet Setting
                                            </td>
                                        </tr>
                                        <tr class="bg_eb">
                                            <td class="c tdPT1">
                                                Min Bet&nbsp;<input type="text" maxlength="14" id="txtMinbet10" name="txtMinbet10"
                                                    value="5" /><span class="minmaxbet">&gt;=<span id="txtMinbet_Min10">5</span></span>
                                            </td>
                                            <td class="c">
                                                Max Bet&nbsp;<input type="text" maxlength="14" id="txtMaxbet10" name="txtMaxbet10"
                                                    value="35,000" /><span class="minmaxbet">&lt;=<span id="txtMaxbet_Max10">35,000</span></span>
                                            </td>
                                            <td class="c">
                                                Max Per Match&nbsp;<input type="text" maxlength="14" id="txtMaxPerMatch10" name="txtMaxPerMatch10"
                                                    value="200,000" /><span class="hidden">&gt;=<span id="txtMaxPerMatch_Min10">0</span>
                                                        and</span><span class="minmaxbet">&lt;=<span id="txtMaxPerMatch_Max10">200,000</span></span>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div id="divUpdPT10" name="divUpdPT10">
                                    <table border="1" width="100%" class="tblRpt">
                                        <tr class="tblTitleCenter">
                                            <td colspan="6">
                                                Position Taking (%)
                                            </td>
                                        </tr>
                                        <tr class="bg_eb">
                                            <td>
                                            </td>
                                            <td>
                                                Handicap
                                            </td>
                                            <td>
                                                Over/Under
                                            </td>
                                            <td>
                                                Odd/Even
                                            </td>
                                            <td>
                                                Money Line
                                            </td>
                                            <td>
                                            </td>
                                        </tr>
                                        <tr class="bg_eb">
                                            <td class="r">
                                                Agent Position
                                            </td>
                                            <td>
                                                <select id="listM10Hdp" name="listM10Hdp" onchange="SelectOnChange('listM10Hdp');">
                                                    <option selected='true' value='0'>0</option>
                                                </select><a class="imaLink img" href="javascript:ReducePT('listM10Hdp',1)"><img class="hand"
                                                    hspace="1" id="btnReduce1" name="btnReduce1" src="../App_Themes/AgencyV2/Images/b_down.jpg" /></a><a
                                                        class="imaLink img" href="javascript:IncreasePT('listM10Hdp',1)"><img class="hand"
                                                            hspace="1" id="btnIncrease1" name="btnIncrease1" src="../App_Themes/AgencyV2/Images/b_up.jpg" /></a><a
                                                                class="imaLink img" href="javascript:ReducePT('listM10Hdp',10)"><img class="hand"
                                                                    hspace="1" id="btnReduce10" name="btnReduce10" src="../App_Themes/AgencyV2/Images/b_sub.jpg" /></a><a
                                                                        class="imaLink img" href="javascript:IncreasePT('listM10Hdp',10)"><img class="hand"
                                                                            hspace="1" id="btnIncrease10" name="btnIncrease10" src="../App_Themes/AgencyV2/Images/b_add.jpg" /></a>
                                            </td>
                                            <td>
                                                <select id="listM10OU" name="listM10OU" onchange="SelectOnChange('listM10OU');">
                                                    <option selected='true' value='0'>0</option>
                                                </select>
                                            </td>
                                            <td>
                                                <select id="listM10OE" name="listM10OE" onchange="SelectOnChange('listM10OE');">
                                                    <option selected='true' value='0'>0</option>
                                                </select>
                                            </td>
                                            <td>
                                                <select id="listM10ML" name="listM10ML" onchange="SelectOnChange('listM10ML');">
                                                    <option selected='true' value='0'>0</option>
                                                </select>
                                            </td>
                                            <td rowspan="2" class="l">
                                                <input type="checkbox" id="chkCopy10Hdp" name="chkCopy10Hdp" onclick="CheckCopyPT(this,arrSuper10,arrMaster10,'chkAuto10Hdp');" />Copy
                                                From Handicap
                                            </td>
                                        </tr>
                                        <tr class="bg_eb">
                                            <td class="r">
                                                Master Preset
                                            </td>
                                            <td>
                                                <select id="listS10Hdp" name="listS10Hdp" onchange="SelectOnChange('listS10Hdp');">
                                                    <option selected='true' value='0'>0</option>
                                                </select><a class="imaLink img" href="javascript:ReducePT('listS10Hdp',1)"><img class="hand"
                                                    hspace="1" id="btnReduce1" name="btnReduce1" src="../App_Themes/AgencyV2/Images/b_down.jpg" /></a><a
                                                        class="imaLink img" href="javascript:IncreasePT('listS10Hdp',1)"><img class="hand"
                                                            hspace="1" id="btnIncrease1" name="btnIncrease1" src="../App_Themes/AgencyV2/Images/b_up.jpg" /></a><a
                                                                class="imaLink img" href="javascript:ReducePT('listS10Hdp',10)"><img class="hand"
                                                                    hspace="1" id="btnReduce10" name="btnReduce10" src="../App_Themes/AgencyV2/Images/b_sub.jpg" /></a><a
                                                                        class="imaLink img" href="javascript:IncreasePT('listS10Hdp',10)"><img class="hand"
                                                                            hspace="1" id="btnIncrease10" name="btnIncrease10" src="../App_Themes/AgencyV2/Images/b_add.jpg" /></a>
                                            </td>
                                            <td>
                                                <select id="listS10OU" name="listS10OU" onchange="SelectOnChange('listS10OU');">
                                                    <option selected='true' value='0'>0</option>
                                                </select>
                                            </td>
                                            <td>
                                                <select id="listS10OE" name="listS10OE" onchange="SelectOnChange('listS10OE');">
                                                    <option selected='true' value='0'>0</option>
                                                </select>
                                            </td>
                                            <td>
                                                <select id="listS10ML" name="listS10ML" onchange="SelectOnChange('listS10ML');">
                                                    <option selected='true' value='0'>0</option>
                                                </select>
                                            </td>
                                        </tr>
                                        <tr class="bg_eb ">
                                            <td rowspan="2" class="r">
                                                Auto Master Preset
                                            </td>
                                            <td>
                                                <input type="checkbox" onclick="CheckAutoPreset(this)" id="chkAuto10Hdp" name="chkAuto10Hdp" />
                                            </td>
                                            <td>
                                                <input type="checkbox" onclick="CheckAutoPreset(this,'chkCopy10Hdp')" id="chkAuto10OU"
                                                    name="chkAuto10OU" />
                                            </td>
                                            <td>
                                                <input type="checkbox" onclick="CheckAutoPreset(this,'chkCopy10Hdp')" id="chkAuto10OE"
                                                    name="chkAuto10OE" />
                                            </td>
                                            <td>
                                                <input type="checkbox" onclick="CheckAutoPreset(this,'chkCopy10Hdp')" id="chkAuto10ML"
                                                    name="chkAuto10ML" />
                                            </td>
                                        </tr>
                                        <tr class="bg_eb ">
                                            <td>
                                                <select id="autoS10Hdp" name="autoS10Hdp" disabled onchange="SelectOnChange('autoS10Hdp');">
                                                    <option selected='true' value='0'>0</option>
                                                </select><a class="imaLink img" href="javascript:ReducePT('autoS10Hdp',1)"><img class="hand"
                                                    hspace="1" id="btnReduce1" name="btnReduce1" src="../App_Themes/AgencyV2/Images/b_down.jpg" /></a><a
                                                        class="imaLink img" href="javascript:IncreasePT('autoS10Hdp',1)"><img class="hand"
                                                            hspace="1" id="btnIncrease1" name="btnIncrease1" src="../App_Themes/AgencyV2/Images/b_up.jpg" /></a><a
                                                                class="imaLink img" href="javascript:ReducePT('autoS10Hdp',10)"><img class="hand"
                                                                    hspace="1" id="btnReduce10" name="btnReduce10" src="../App_Themes/AgencyV2/Images/b_sub.jpg" /></a><a
                                                                        class="imaLink img" href="javascript:IncreasePT('autoS10Hdp',10)"><img class="hand"
                                                                            hspace="1" id="btnIncrease10" name="btnIncrease10" src="../App_Themes/AgencyV2/Images/b_add.jpg" /></a>
                                            </td>
                                            <td>
                                                <select id="autoS10OU" name="autoS10OU" disabled onchange="SelectOnChange('autoS10OU');">
                                                    <option selected='true' value='0'>0</option>
                                                </select>
                                            </td>
                                            <td>
                                                <select id="autoS10OE" name="autoS10OE" disabled onchange="SelectOnChange('autoS10OE');">
                                                    <option selected='true' value='0'>0</option>
                                                </select>
                                            </td>
                                            <td>
                                                <select id="autoS10ML" name="autoS10ML" disabled onchange="SelectOnChange('autoS10ML');">
                                                    <option selected='true' value='0'>0</option>
                                                </select>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
            <div class="l" id="linkMoto" onclick="OpenPanelEdit('panelMoto'); togglePTmenu('bullet7')">
                <div class="button_cont">
                    <div class="menu_content">
                        <ul>
                            <li><a id="bullet7" class="md2_on" href="#1">Motor Sports</a></li></ul>
                    </div>
                </div>
            </div>
            <div style="display: none" id="panelMoto">
                <div class="l">
                    <table class="sptPT" style="width: 75%">
                        <tr>
                            <td>
                                <div id="divUpdInfo11" name="divUpdInfo11">
                                    <table width="100%" class="tblRpt">
                                        <tr class="tblTitleCenter">
                                            <td colspan="3">
                                                Bet Setting
                                            </td>
                                        </tr>
                                        <tr class="bg_eb">
                                            <td class="c tdPT1">
                                                Min Bet&nbsp;<input type="text" maxlength="14" id="txtMinbet11" name="txtMinbet11"
                                                    value="5" /><span class="minmaxbet">&gt;=<span id="txtMinbet_Min11">5</span></span>
                                            </td>
                                            <td class="c">
                                                Max Bet&nbsp;<input type="text" maxlength="14" id="txtMaxbet11" name="txtMaxbet11"
                                                    value="35,000" /><span class="minmaxbet">&lt;=<span id="txtMaxbet_Max11">35,000</span></span>
                                            </td>
                                            <td class="c">
                                                Max Per Match&nbsp;<input type="text" maxlength="14" id="txtMaxPerMatch11" name="txtMaxPerMatch11"
                                                    value="200,000" /><span class="hidden">&gt;=<span id="txtMaxPerMatch_Min11">0</span>
                                                        and</span><span class="minmaxbet">&lt;=<span id="txtMaxPerMatch_Max11">200,000</span></span>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div id="divUpdPT11" name="divUpdPT11">
                                    <table border="1" width="100%" class="tblRpt">
                                        <tr class="tblTitleCenter">
                                            <td colspan="4">
                                                Position Taking (%)
                                            </td>
                                        </tr>
                                        <tr class="bg_eb">
                                            <td>
                                            </td>
                                            <td>
                                                Handicap
                                            </td>
                                            <td>
                                                Money Line
                                            </td>
                                            <td>
                                            </td>
                                        </tr>
                                        <tr class="bg_eb">
                                            <td class="r">
                                                Agent Position
                                            </td>
                                            <td>
                                                <select id="listM11Hdp" name="listM11Hdp" onchange="SelectOnChange('listM11Hdp');">
                                                    <option selected='true' value='0'>0</option>
                                                </select><a class="imaLink img" href="javascript:ReducePT('listM11Hdp',1)"><img class="hand"
                                                    hspace="1" id="btnReduce1" name="btnReduce1" src="../App_Themes/AgencyV2/Images/b_down.jpg" /></a><a
                                                        class="imaLink img" href="javascript:IncreasePT('listM11Hdp',1)"><img class="hand"
                                                            hspace="1" id="btnIncrease1" name="btnIncrease1" src="../App_Themes/AgencyV2/Images/b_up.jpg" /></a><a
                                                                class="imaLink img" href="javascript:ReducePT('listM11Hdp',10)"><img class="hand"
                                                                    hspace="1" id="btnReduce10" name="btnReduce10" src="../App_Themes/AgencyV2/Images/b_sub.jpg" /></a><a
                                                                        class="imaLink img" href="javascript:IncreasePT('listM11Hdp',10)"><img class="hand"
                                                                            hspace="1" id="btnIncrease10" name="btnIncrease10" src="../App_Themes/AgencyV2/Images/b_add.jpg" /></a>
                                            </td>
                                            <td>
                                                <select id="listM11ML" name="listM11ML" onchange="SelectOnChange('listM11ML');">
                                                    <option selected='true' value='0'>0</option>
                                                </select>
                                            </td>
                                            <td rowspan="2" class="l">
                                                <input type="checkbox" id="chkCopy11Hdp" name="chkCopy11Hdp" onclick="CheckCopyPT(this,arrSuper11,arrMaster11,'chkAuto11Hdp');" />Copy
                                                From Handicap
                                            </td>
                                        </tr>
                                        <tr class="bg_eb">
                                            <td class="r">
                                                Master Preset
                                            </td>
                                            <td>
                                                <select id="listS11Hdp" name="listS11Hdp" onchange="SelectOnChange('listS11Hdp');">
                                                    <option selected='true' value='0'>0</option>
                                                </select><a class="imaLink img" href="javascript:ReducePT('listS11Hdp',1)"><img class="hand"
                                                    hspace="1" id="btnReduce1" name="btnReduce1" src="../App_Themes/AgencyV2/Images/b_down.jpg" /></a><a
                                                        class="imaLink img" href="javascript:IncreasePT('listS11Hdp',1)"><img class="hand"
                                                            hspace="1" id="btnIncrease1" name="btnIncrease1" src="../App_Themes/AgencyV2/Images/b_up.jpg" /></a><a
                                                                class="imaLink img" href="javascript:ReducePT('listS11Hdp',10)"><img class="hand"
                                                                    hspace="1" id="btnReduce10" name="btnReduce10" src="../App_Themes/AgencyV2/Images/b_sub.jpg" /></a><a
                                                                        class="imaLink img" href="javascript:IncreasePT('listS11Hdp',10)"><img class="hand"
                                                                            hspace="1" id="btnIncrease10" name="btnIncrease10" src="../App_Themes/AgencyV2/Images/b_add.jpg" /></a>
                                            </td>
                                            <td>
                                                <select id="listS11ML" name="listS11ML" onchange="SelectOnChange('listS11ML');">
                                                    <option selected='true' value='0'>0</option>
                                                </select>
                                            </td>
                                        </tr>
                                        <tr class="bg_eb ">
                                            <td rowspan="2" class="r">
                                                Auto Master Preset
                                            </td>
                                            <td>
                                                <input type="checkbox" onclick="CheckAutoPreset(this)" id="chkAuto11Hdp" name="chkAuto11Hdp" />
                                            </td>
                                            <td>
                                                <input type="checkbox" onclick="CheckAutoPreset(this,'chkCopy11Hdp')" id="chkAuto11ML"
                                                    name="chkAuto11ML" />
                                            </td>
                                        </tr>
                                        <tr class="bg_eb ">
                                            <td>
                                                <select id="autoS11Hdp" name="autoS11Hdp" disabled onchange="SelectOnChange('autoS11Hdp');">
                                                    <option selected='true' value='0'>0</option>
                                                </select><a class="imaLink img" href="javascript:ReducePT('autoS11Hdp',1)"><img class="hand"
                                                    hspace="1" id="btnReduce1" name="btnReduce1" src="../App_Themes/AgencyV2/Images/b_down.jpg" /></a><a
                                                        class="imaLink img" href="javascript:IncreasePT('autoS11Hdp',1)"><img class="hand"
                                                            hspace="1" id="btnIncrease1" name="btnIncrease1" src="../App_Themes/AgencyV2/Images/b_up.jpg" /></a><a
                                                                class="imaLink img" href="javascript:ReducePT('autoS11Hdp',10)"><img class="hand"
                                                                    hspace="1" id="btnReduce10" name="btnReduce10" src="../App_Themes/AgencyV2/Images/b_sub.jpg" /></a><a
                                                                        class="imaLink img" href="javascript:IncreasePT('autoS11Hdp',10)"><img class="hand"
                                                                            hspace="1" id="btnIncrease10" name="btnIncrease10" src="../App_Themes/AgencyV2/Images/b_add.jpg" /></a>
                                            </td>
                                            <td>
                                                <select id="autoS11ML" name="autoS11ML" disabled onchange="SelectOnChange('autoS11ML');">
                                                    <option selected='true' value='0'>0</option>
                                                </select>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
            <div class="l" id="linkOther" onclick="OpenPanelEdit('panelOtherSports'); togglePTmenu('bullet9')">
                <div class="button_cont">
                    <div class="menu_content">
                        <ul>
                            <li><a id="bullet9" class="md2_on" href="#1">Other Sports</a></li></ul>
                    </div>
                </div>
            </div>
            <div style="display: none" id="panelOtherSports">
                <div class="l">
                    <table class="sptPT" style="width: 75%">
                        <tr>
                            <td>
                                <div id="divUpdInfo99" name="divUpdInfo99">
                                    <table width="100%" class="tblRpt">
                                        <tr class="tblTitleCenter">
                                            <td colspan="3">
                                                Bet Setting
                                            </td>
                                        </tr>
                                        <tr class="bg_eb">
                                            <td class="c tdPT1">
                                                Min Bet&nbsp;<input type="text" maxlength="14" id="txtMinbet99" name="txtMinbet99"
                                                    value="5" /><span class="minmaxbet">&gt;=<span id="txtMinbet_Min99">5</span></span>
                                            </td>
                                            <td class="c">
                                                Max Bet&nbsp;<input type="text" maxlength="14" id="txtMaxbet99" name="txtMaxbet99"
                                                    value="35,000" /><span class="minmaxbet">&lt;=<span id="txtMaxbet_Max99">35,000</span></span>
                                            </td>
                                            <td class="c">
                                                Max Per Match&nbsp;<input type="text" maxlength="14" id="txtMaxPerMatch99" name="txtMaxPerMatch99"
                                                    value="200,000" /><span class="hidden">&gt;=<span id="txtMaxPerMatch_Min99">0</span>
                                                        and</span><span class="minmaxbet">&lt;=<span id="txtMaxPerMatch_Max99">200,000</span></span>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div id="divUpdPT99" name="divUpdPT99">
                                    <table border="1" width="100%" class="tblRpt">
                                        <tr class="tblTitleCenter">
                                            <td colspan="6">
                                                Position Taking (%)
                                            </td>
                                        </tr>
                                        <tr class="bg_eb">
                                            <td>
                                            </td>
                                            <td>
                                                Handicap
                                            </td>
                                            <td>
                                                Over/Under
                                            </td>
                                            <td>
                                                Odd/Even
                                            </td>
                                            <td>
                                                Money Line
                                            </td>
                                            <td>
                                            </td>
                                        </tr>
                                        <tr class="bg_eb">
                                            <td class="r">
                                                Agent Position
                                            </td>
                                            <td>
                                                <select id="listM99Hdp" name="listM99Hdp" onchange="SelectOnChange('listM99Hdp');">
                                                    <option selected='true' value='0'>0</option>
                                                </select><a class="imaLink img" href="javascript:ReducePT('listM99Hdp',1)"><img class="hand"
                                                    hspace="1" id="btnReduce1" name="btnReduce1" src="../App_Themes/AgencyV2/Images/b_down.jpg" /></a><a
                                                        class="imaLink img" href="javascript:IncreasePT('listM99Hdp',1)"><img class="hand"
                                                            hspace="1" id="btnIncrease1" name="btnIncrease1" src="../App_Themes/AgencyV2/Images/b_up.jpg" /></a><a
                                                                class="imaLink img" href="javascript:ReducePT('listM99Hdp',10)"><img class="hand"
                                                                    hspace="1" id="btnReduce10" name="btnReduce10" src="../App_Themes/AgencyV2/Images/b_sub.jpg" /></a><a
                                                                        class="imaLink img" href="javascript:IncreasePT('listM99Hdp',10)"><img class="hand"
                                                                            hspace="1" id="btnIncrease10" name="btnIncrease10" src="../App_Themes/AgencyV2/Images/b_add.jpg" /></a>
                                            </td>
                                            <td>
                                                <select id="listM99OU" name="listM99OU" onchange="SelectOnChange('listM99OU');">
                                                    <option selected='true' value='0'>0</option>
                                                </select>
                                            </td>
                                            <td>
                                                <select id="listM99OE" name="listM99OE" onchange="SelectOnChange('listM99OE');">
                                                    <option selected='true' value='0'>0</option>
                                                </select>
                                            </td>
                                            <td>
                                                <select id="listM99ML" name="listM99ML" onchange="SelectOnChange('listM99ML');">
                                                    <option selected='true' value='0'>0</option>
                                                </select>
                                            </td>
                                            <td rowspan="2" class="l">
                                                <input type="checkbox" id="chkCopy99Hdp" name="chkCopy99Hdp" onclick="CheckCopyPT(this,arrSuper99,arrMaster99,'chkAuto99Hdp');" />Copy
                                                From Handicap
                                            </td>
                                        </tr>
                                        <tr class="bg_eb">
                                            <td class="r">
                                                Master Preset
                                            </td>
                                            <td>
                                                <select id="listS99Hdp" name="listS99Hdp" onchange="SelectOnChange('listS99Hdp');">
                                                    <option selected='true' value='0'>0</option>
                                                </select><a class="imaLink img" href="javascript:ReducePT('listS99Hdp',1)"><img class="hand"
                                                    hspace="1" id="btnReduce1" name="btnReduce1" src="../App_Themes/AgencyV2/Images/b_down.jpg" /></a><a
                                                        class="imaLink img" href="javascript:IncreasePT('listS99Hdp',1)"><img class="hand"
                                                            hspace="1" id="btnIncrease1" name="btnIncrease1" src="../App_Themes/AgencyV2/Images/b_up.jpg" /></a><a
                                                                class="imaLink img" href="javascript:ReducePT('listS99Hdp',10)"><img class="hand"
                                                                    hspace="1" id="btnReduce10" name="btnReduce10" src="../App_Themes/AgencyV2/Images/b_sub.jpg" /></a><a
                                                                        class="imaLink img" href="javascript:IncreasePT('listS99Hdp',10)"><img class="hand"
                                                                            hspace="1" id="btnIncrease10" name="btnIncrease10" src="../App_Themes/AgencyV2/Images/b_add.jpg" /></a>
                                            </td>
                                            <td>
                                                <select id="listS99OU" name="listS99OU" onchange="SelectOnChange('listS99OU');">
                                                    <option selected='true' value='0'>0</option>
                                                </select>
                                            </td>
                                            <td>
                                                <select id="listS99OE" name="listS99OE" onchange="SelectOnChange('listS99OE');">
                                                    <option selected='true' value='0'>0</option>
                                                </select>
                                            </td>
                                            <td>
                                                <select id="listS99ML" name="listS99ML" onchange="SelectOnChange('listS99ML');">
                                                    <option selected='true' value='0'>0</option>
                                                </select>
                                            </td>
                                        </tr>
                                        <tr class="bg_eb ">
                                            <td rowspan="2" class="r">
                                                Auto Master Preset
                                            </td>
                                            <td>
                                                <input type="checkbox" onclick="CheckAutoPreset(this)" id="chkAuto99Hdp" name="chkAuto99Hdp" />
                                            </td>
                                            <td>
                                                <input type="checkbox" onclick="CheckAutoPreset(this,'chkCopy99Hdp')" id="chkAuto99OU"
                                                    name="chkAuto99OU" />
                                            </td>
                                            <td>
                                                <input type="checkbox" onclick="CheckAutoPreset(this,'chkCopy99Hdp')" id="chkAuto99OE"
                                                    name="chkAuto99OE" />
                                            </td>
                                            <td>
                                                <input type="checkbox" onclick="CheckAutoPreset(this,'chkCopy99Hdp')" id="chkAuto99ML"
                                                    name="chkAuto99ML" />
                                            </td>
                                        </tr>
                                        <tr class="bg_eb ">
                                            <td>
                                                <select id="autoS99Hdp" name="autoS99Hdp" disabled onchange="SelectOnChange('autoS99Hdp');">
                                                    <option selected='true' value='0'>0</option>
                                                </select><a class="imaLink img" href="javascript:ReducePT('autoS99Hdp',1)"><img class="hand"
                                                    hspace="1" id="btnReduce1" name="btnReduce1" src="../App_Themes/AgencyV2/Images/b_down.jpg" /></a><a
                                                        class="imaLink img" href="javascript:IncreasePT('autoS99Hdp',1)"><img class="hand"
                                                            hspace="1" id="btnIncrease1" name="btnIncrease1" src="../App_Themes/AgencyV2/Images/b_up.jpg" /></a><a
                                                                class="imaLink img" href="javascript:ReducePT('autoS99Hdp',10)"><img class="hand"
                                                                    hspace="1" id="btnReduce10" name="btnReduce10" src="../App_Themes/AgencyV2/Images/b_sub.jpg" /></a><a
                                                                        class="imaLink img" href="javascript:IncreasePT('autoS99Hdp',10)"><img class="hand"
                                                                            hspace="1" id="btnIncrease10" name="btnIncrease10" src="../App_Themes/AgencyV2/Images/b_add.jpg" /></a>
                                            </td>
                                            <td>
                                                <select id="autoS99OU" name="autoS99OU" disabled onchange="SelectOnChange('autoS99OU');">
                                                    <option selected='true' value='0'>0</option>
                                                </select>
                                            </td>
                                            <td>
                                                <select id="autoS99OE" name="autoS99OE" disabled onchange="SelectOnChange('autoS99OE');">
                                                    <option selected='true' value='0'>0</option>
                                                </select>
                                            </td>
                                            <td>
                                                <select id="autoS99ML" name="autoS99ML" disabled onchange="SelectOnChange('autoS99ML');">
                                                    <option selected='true' value='0'>0</option>
                                                </select>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
            <div>
                <div class="l" valign="top">
                    <div class="b_add" style="min-width: 64px">
                        <li><a id="btnAdd" onclick="BtnOnClick();" href="javascript:;"><span>Add</span></a></li></div>
                </div>
            </div>
            <input id="hidSynCS" name="hidSynCS" type="hidden" value="hidSynCS" /><br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <script type="text/javascript" src="../Js/wz_tooltip/wz_tooltip.js"></script>
            <script type="text/javascript" src="../Js/wz_tooltip/tip_centerwindow.js"></script>
            <script type="text/javascript" src="../Js/wz_tooltip/tip_balloon.js"></script>
            <input type="hidden" id="maxA1OR" name="maxA1OR" value="0" /><input type="hidden"
                id="maxA1HdpL" name="maxA1HdpL" value="0" /><input type="hidden" id="maxM11stHdpD"
                    name="maxM11stHdpD" value="0" /><input type="hidden" id="maxA1CS" name="maxA1CS"
                        value="0" /><input type="hidden" id="maxM1HdpD" name="maxM1HdpD" value="0" /><input
                            type="hidden" id="minM11stHdpL" name="minM11stHdpL" value="0" /><input type="hidden"
                                id="maxA1HdpD" name="maxA1HdpD" value="0" /><input type="hidden" id="maxM1HdpL" name="maxM1HdpL"
                                    value="0" /><input type="hidden" id="minM1MP" name="minM1MP" value="0" /><input type="hidden"
                                        id="maxA1OUD" name="maxA1OUD" value="0" /><input type="hidden" id="maxA11x2" name="maxA11x2"
                                            value="0" /><input type="hidden" id="maxM1MP" name="maxM1MP" value="0" /><input type="hidden"
                                                id="maxA1OE" name="maxA1OE" value="0" /><input type="hidden" id="maxM1TG" name="maxM1TG"
                                                    value="0" /><input type="hidden" id="minM11x2" name="minM11x2" value="0" /><input
                                                        type="hidden" id="minM1OUL" name="minM1OUL" value="0" /><input type="hidden" id="maxM1OUL"
                                                            name="maxM1OUL" value="0" /><input type="hidden" id="minM11stHdpD" name="minM11stHdpD"
                                                                value="0" /><input type="hidden" id="minM11stOUD" name="minM11stOUD" value="0" /><input
                                                                    type="hidden" id="maxM11x2" name="maxM11x2" value="0" /><input type="hidden" id="maxA1OUL"
                                                                        name="maxA1OUL" value="0" /><input type="hidden" id="minM1CS" name="minM1CS" value="0" /><input
                                                                            type="hidden" id="maxM1OR" name="maxM1OR" value="0" /><input type="hidden" id="minM1OUD"
                                                                                name="minM1OUD" value="0" /><input type="hidden" id="maxM1CS" name="maxM1CS" value="0" /><input
                                                                                    type="hidden" id="maxM1OUD" name="maxM1OUD" value="0" /><input type="hidden" id="minM11stOUL"
                                                                                        name="minM11stOUL" value="0" /><input type="hidden" id="minM1OR" name="minM1OR" value="0" /><input
                                                                                            type="hidden" id="maxA11stOUL" name="maxA11stOUL" value="0" /><input type="hidden"
                                                                                                id="minM1TG" name="minM1TG" value="0" /><input type="hidden" id="minM1OE" name="minM1OE"
                                                                                                    value="0" /><input type="hidden" id="minM1HdpD" name="minM1HdpD" value="0" /><input
                                                                                                        type="hidden" id="maxM11stOUL" name="maxM11stOUL" value="0" /><input type="hidden"
                                                                                                            id="maxM1OE" name="maxM1OE" value="0" /><input type="hidden" id="minM1HdpL" name="minM1HdpL"
                                                                                                                value="0" /><input type="hidden" id="maxA1MP" name="maxA1MP" value="0" /><input type="hidden"
                                                                                                                    id="maxM11stHdpL" name="maxM11stHdpL" value="0" /><input type="hidden" id="maxA1TG"
                                                                                                                        name="maxA1TG" value="0" /><input type="hidden" id="maxA11stHdpD" name="maxA11stHdpD"
                                                                                                                            value="0" /><input type="hidden" id="maxA11stHdpL" name="maxA11stHdpL" value="0" /><input
                                                                                                                                type="hidden" id="maxA11stOUD" name="maxA11stOUD" value="0" /><input type="hidden"
                                                                                                                                    id="maxM11stOUD" name="maxM11stOUD" value="0" /><input type="hidden" id="minM2OU"
                                                                                                                                        name="minM2OU" value="0" /><input type="hidden" id="maxM2Hdp" name="maxM2Hdp" value="0" /><input
                                                                                                                                            type="hidden" id="maxM2MP" name="maxM2MP" value="0" /><input type="hidden" id="maxA2Hdp"
                                                                                                                                                name="maxA2Hdp" value="0" /><input type="hidden" id="minM2Hdp" name="minM2Hdp" value="0" /><input
                                                                                                                                                    type="hidden" id="maxM2ML" name="maxM2ML" value="0" /><input type="hidden" id="maxM2OU"
                                                                                                                                                        name="maxM2OU" value="0" /><input type="hidden" id="maxM2OE" name="maxM2OE" value="0" />
            <input type="hidden" id="minM2ML" name="minM2ML" value="0" /><input type="hidden"
                id="maxA2ML" name="maxA2ML" value="0" /><input type="hidden" id="maxA2OE" name="maxA2OE"
                    value="0" /><input type="hidden" id="minM2OE" name="minM2OE" value="0" /><input type="hidden"
                        id="maxA2MP" name="maxA2MP" value="0" /><input type="hidden" id="minM2MP" name="minM2MP"
                            value="0" /><input type="hidden" id="maxA2OU" name="maxA2OU" value="0" /><input type="hidden"
                                id="maxM3Hdp" name="maxM3Hdp" value="0" /><input type="hidden" id="maxA3Hdp" name="maxA3Hdp"
                                    value="0" /><input type="hidden" id="minM3Hdp" name="minM3Hdp" value="0" /><input
                                        type="hidden" id="maxM3OU" name="maxM3OU" value="0" /><input type="hidden" id="maxM3OE"
                                            name="maxM3OE" value="0" /><input type="hidden" id="minM3ML" name="minM3ML" value="0" /><input
                                                type="hidden" id="maxA3ML" name="maxA3ML" value="0" /><input type="hidden" id="maxA3OE"
                                                    name="maxA3OE" value="0" /><input type="hidden" id="minM3OE" name="minM3OE" value="0" /><input
                                                        type="hidden" id="maxM3ML" name="maxM3ML" value="0" /><input type="hidden" id="maxA3OU"
                                                            name="maxA3OU" value="0" /><input type="hidden" id="minM3OU" name="minM3OU" value="0" /><input
                                                                type="hidden" id="maxA5Hdp" name="maxA5Hdp" value="0" /><input type="hidden" id="minM5Hdp"
                                                                    name="minM5Hdp" value="0" /><input type="hidden" id="maxM5OU" name="maxM5OU" value="0" /><input
                                                                        type="hidden" id="maxM5OE" name="maxM5OE" value="0" /><input type="hidden" id="minM5ML"
                                                                            name="minM5ML" value="0" /><input type="hidden" id="maxA5ML" name="maxA5ML" value="0" /><input
                                                                                type="hidden" id="maxA5OE" name="maxA5OE" value="0" /><input type="hidden" id="minM5OE"
                                                                                    name="minM5OE" value="0" /><input type="hidden" id="maxM5ML" name="maxM5ML" value="0" /><input
                                                                                        type="hidden" id="maxA5OU" name="maxA5OU" value="0" /><input type="hidden" id="minM5OU"
                                                                                            name="minM5OU" value="0" /><input type="hidden" id="maxM5Hdp" name="maxM5Hdp" value="0" /><input
                                                                                                type="hidden" id="minM8Hdp" name="minM8Hdp" value="0" /><input type="hidden" id="maxM8OU"
                                                                                                    name="maxM8OU" value="0" /><input type="hidden" id="maxA8ML" name="maxA8ML" value="0" /><input
                                                                                                        type="hidden" id="maxA8Hdp" name="maxA8Hdp" value="0" /><input type="hidden" id="maxM8ML"
                                                                                                            name="maxM8ML" value="0" /><input type="hidden" id="maxA8OU" name="maxA8OU" value="0" /><input
                                                                                                                type="hidden" id="minM8OU" name="minM8OU" value="0" /><input type="hidden" id="maxM8Hdp"
                                                                                                                    name="maxM8Hdp" value="0" /><input type="hidden" id="minM8ML" name="minM8ML" value="0" /><input
                                                                                                                        type="hidden" id="maxM10OU" name="maxM10OU" value="0" /><input type="hidden" id="minM10OU"
                                                                                                                            name="minM10OU" value="0" /><input type="hidden" id="minM10ML" name="minM10ML" value="0" /><input
                                                                                                                                type="hidden" id="maxM10Hdp" name="maxM10Hdp" value="0" /><input type="hidden" id="maxA10ML"
                                                                                                                                    name="maxA10ML" value="0" /><input type="hidden" id="maxA10Hdp" name="maxA10Hdp"
                                                                                                                                        value="0" /><input type="hidden" id="minM10Hdp" name="minM10Hdp" value="0" /><input
                                                                                                                                            type="hidden" id="maxA10OU" name="maxA10OU" value="0" /><input type="hidden" id="maxA10OE"
                                                                                                                                                name="maxA10OE" value="0" /><input type="hidden" id="maxM10OE" name="maxM10OE" value="0" /><input
                                                                                                                                                    type="hidden" id="minM10OE" name="minM10OE" value="0" /><input type="hidden" id="maxM10ML"
                                                                                                                                                        name="maxM10ML" value="0" /><input type="hidden" id="maxM11Hdp" name="maxM11Hdp"
                                                                                                                                                            value="0" /><input type="hidden" id="minM11Hdp" name="minM11Hdp" value="0" /><input
                                                                                                                                                                type="hidden" id="maxM11ML" name="maxM11ML" value="0" /><input type="hidden" id="maxA11Hdp"
                                                                                                                                                                    name="maxA11Hdp" value="0" /><input type="hidden" id="minM11ML" name="minM11ML" value="0" /><input
                                                                                                                                                                        type="hidden" id="maxA11ML" name="maxA11ML" value="0" /><input type="hidden" id="minM99OU"
                                                                                                                                                                            name="minM99OU" value="0" /><input type="hidden" id="minM99ML" name="minM99ML" value="0" /><input
                                                                                                                                                                                type="hidden" id="maxM99OU" name="maxM99OU" value="0" /><input type="hidden" id="maxA99OU"
                                                                                                                                                                                    name="maxA99OU" value="0" /><input type="hidden" id="maxM99Hdp" name="maxM99Hdp"
                                                                                                                                                                                        value="0" /><input type="hidden" id="maxM99ML" name="maxM99ML" value="0" /><input
                                                                                                                                                                                            type="hidden" id="maxA99Hdp" name="maxA99Hdp" value="0" /><input type="hidden" id="maxA99ML"
                                                                                                                                                                                                name="maxA99ML" value="0" /><input type="hidden" id="minM99OE" name="minM99OE" value="0" /><input
                                                                                                                                                                                                    type="hidden" id="minM99Hdp" name="minM99Hdp" value="0" /><input type="hidden" id="maxA99OE"
                                                                                                                                                                                                        name="maxA99OE" value="0" /><input type="hidden" id="maxM99OE" name="maxM99OE" value="0" />

    </form>
    
</body>
</html>
