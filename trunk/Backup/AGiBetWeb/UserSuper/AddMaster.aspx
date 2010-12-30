<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddMaster.aspx.cs" Inherits="UserSuper_AddMaster" %>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {

    }
</script>

<html>
<head>
    <title></title>
    <link type="text/css" href="../App_Themes/AgencyV2/main.css" rel="Stylesheet" />
    <link href="../App_Themes/AgencyV2/newagent.css" type="text/css" rel="stylesheet" />
    <style type="text/css">
        .right
        {
            text-align: right;
        }
        span.mp
        {
            color: #ffffff;
            font-size: 8pt;
            font-weight: bold;
        }
        body
        {
            margin: 0 0 0 0;
            padding: 0 0 0 0;
        }
    </style>

    <script type="text/javascript" src="../Js/opt/Core.js?v=20091218"></script>

    <script type="text/javascript" src="../Js/Common.js?v=20091218"></script>

    <script type="text/javascript" src="../Js/AddNewMaster.js?v=20091218"></script>

    <script type="text/javascript" src="../Js/EditMaster.js?v=20091218"></script>

    <script type="text/javascript" src="../Js/Customer.js?v=20091218"></script>

    <script language='javascript'>
 var alertcredit='Incorrect Agent Maximum Credit';
 var alertMinbet='Incorrect Min Bet'; 
 var alertMaxbet='Incorrect Max Bet';
 var alertMaxpermatch='Incorrect Max Per Match';
 var alertCompare3='Min Bet cannot be greater than Max Bet'; 
 var alertCompare='Max Bet can not be greater than Max Per Match'; 
 var alertminbetC='Min Bet must be greater than or equal to';
 var alertMaxbetC='Max Bet must be less than or equal to';
 var alertMaxpermatchC='Max Per Match must be less than or equal to {1}.';
 var alertMaxpermatchCMin='Max Bet Match must be more than or equal to';
 var alertMaxpermatchCMax='Max Bet Match must be less than or equal to';
 var alertUserName='Please Enter User name!';
 var lblPasswordRequire='Password must have at least 6 characters, including at least 2 letters and at least 2 digits. (e.g:pass22)';
 var alertPasswordEmpty='Sorry, password can not be empty!!!';
 var alertIncorrectCredit='Incorrect Master Max Credit';
 var lblChooseDaily='Please choose Daily instead of 7 days.';
 var lblChooseOneDay='Please select at least one day.';
 var alertCreditInvalid='Master Max Credit must be between {1} and {2}';
 var alertLessthanMinPT='Master Preset and Super Preset must not be less than ';
    </script>

    <script type="text/javascript">			
		var errMsgMinPT=alertLessthanMinPT;
		var flag=false;		
		
	    function BtnAddCSClick()
	    {
	        $('hidCS').value = 'true';
	        var isOK = BtnOnClick();

	        if(isOK)
	        {
	            var btnAddCS = $("btnAddCS");
	            btnAddCS.style.color="#cccccc";					
	            btnAddCS.disabled=true;	
	            btnAddCS.onclick = ";";
	        }			
	    }
		
		function BtnOnClick()			
		{	
			var arrAcc;
			var arrPAcc;
			var arrMin;
				
			if(!CheckInfoValue(false)) return false;
			if(!CheckTime()) return false;	
			if(!CheckLimitMinMaxBet(1)) return false;	
					
			if($("chkCopyAll").checked) //this case for Copy All from Soccer
			{
				$("btnAdd").disabled=true;
				DelayReloadPage(null, 300000);
				enabledBtn(false);
				document.form.submit();
				return true;  
			}
			
			//Begin check min Position taking for Basketball 
			if(!CheckLimitMinMaxBet(2)) return false;					
			
			if($("chkCopyBasket").checked) //this case for Copy All from Basket ball
			{
				$("btnAdd").disabled=true;
				DelayReloadPage(null, 300000);
				enabledBtn(false);
				document.form.submit();
				return true;  
			} 
			
			//Begin check min Position taking for Football 
			if(!CheckLimitMinMaxBet(3)) return false;						
			
			//Begin check min Position taking for Tennis
			if(!CheckLimitMinMaxBet(5)) return false; 						
			
			//Begin check min Position taking for Baseball
			if(!CheckLimitMinMaxBet(8)) return false;				
			
			//Begin check min Position taking for Golf 
			if(!CheckLimitMinMaxBet(10)) return false;					
			
			//Begin check min Position taking for MotoSports
			if(!CheckLimitMinMaxBet(11)) return false;			
			
			//Begin check min Position taking for Other Sports 
			if(!CheckLimitMinMaxBet(99)) return false;		
				
			$("btnAdd").disabled=true;
			
			DelayReloadPage(null, 300000);
			enabledBtn(false);
			document.form.submit();			
			
			return true;
		}
		
		IBC.addEvent(window, 'load', selectTranferTime);
		_FocusEl = 'number1';
		
    </script>

</head>
<body>
    <iframe name="InsertData" id="InsertData" style="display: none"></iframe>
    <form id="form" runat="server">
    <div id="page_main"><div id="header_main">Add New Master <span class="hide" id="abc123"></span></div><table cellspacing="0" cellpadding="0" border="0" style="width: 800px;"><tr><td align="left" style="text-align: left" colspan="2"><table border="0" cellpadding="0" cellspacing="0" width="100%" id="diverr" style="display: none"><tr><td class="emsg_1_1">&nbsp;</td><td class="emsg_1_2">&nbsp;</td><td class="emsg_1_3">&nbsp;</td></tr>
<tr><td valign="top" class="emsg_2_1">&nbsp;</td><td valign="middle" class="Enrich" id="err"></td><td class="emsg_2_2">&nbsp;</td></tr><tr><td class="emsg_3_1">&nbsp;</td><td class="emsg_3_2">&nbsp;</td><td class="emsg_3_3">&nbsp;</td></tr></table></td></tr></table><div class="sptPT" style="width: 860px;"><table class="tblRpt" width="100%" border="1"><tr><td colspan="4" class=""><div class="b_add"><li><a id="btnAdd" onclick="BtnOnClick();" href="javascript:;">
<span>Add</span></a></li></div></td></tr><tr class="bg_eb"><td width='25%' class="r">
    <asp:Label ID="lblUserName" runat="server" Text="User Name"></asp:Label></td><td width='25%' class="l">SM<asp:DropDownList ID="dllNumber1" runat="server">
            <asp:ListItem Selected="true" Value="0">0</asp:ListItem>
            <asp:ListItem Value="1">1</asp:ListItem>
            <asp:ListItem Value="2">2</asp:ListItem>
            <asp:ListItem Value="3">3</asp:ListItem>
            <asp:ListItem Value="4">4</asp:ListItem>
            <asp:ListItem Value="5">5</asp:ListItem>
            <asp:ListItem Value="6">6</asp:ListItem>
            <asp:ListItem Value="7">7</asp:ListItem>
            <asp:ListItem Value="8">8</asp:ListItem>
            <asp:ListItem Value="9">9</asp:ListItem>
            <asp:ListItem Value="A">A</asp:ListItem>
            <asp:ListItem Value="B">B</asp:ListItem>
            <asp:ListItem Value="C">C</asp:ListItem>
            <asp:ListItem Value="D">D</asp:ListItem>
            <asp:ListItem Value="E">E</asp:ListItem>
            <asp:ListItem Value="F">F</asp:ListItem>
            <asp:ListItem Value="G">G</asp:ListItem>
            <asp:ListItem Value="H">H</asp:ListItem>
            <asp:ListItem Value="I">I</asp:ListItem>
            <asp:ListItem Value="J">J</asp:ListItem>
            <asp:ListItem Value="K">K</asp:ListItem>
            <asp:ListItem Value="L">L</asp:ListItem>
            <asp:ListItem Value="M">M</asp:ListItem>
            <asp:ListItem Value="N">N</asp:ListItem>
            <asp:ListItem Value="O">O</asp:ListItem>
            <asp:ListItem Value="P">P</asp:ListItem>
            <asp:ListItem Value="Q">Q</asp:ListItem>
            <asp:ListItem Value="R">R</asp:ListItem>
            <asp:ListItem Value="S">S</asp:ListItem>
            <asp:ListItem Value="T">T</asp:ListItem>
            <asp:ListItem Value="U">U</asp:ListItem>
            <asp:ListItem Value="V">V</asp:ListItem>
            <asp:ListItem Value="W">W</asp:ListItem>
            <asp:ListItem Value="X">X</asp:ListItem>
            <asp:ListItem Value="Y">Y</asp:ListItem>
            <asp:ListItem Value="Z">Z</asp:ListItem>
        </asp:DropDownList>
                        <asp:DropDownList ID="dllNumber2" runat="server">
                            <asp:ListItem Value='0'>0</asp:ListItem>
                            <asp:ListItem Value='1' Selected='true'>1</asp:ListItem>
                            <asp:ListItem Value='2'>2</asp:ListItem>
                            <asp:ListItem Value='3'>3</asp:ListItem>
                            <asp:ListItem Value='4'>4</asp:ListItem>
                            <asp:ListItem Value='5'>5</asp:ListItem>
                            <asp:ListItem Value='6'>6</asp:ListItem>
                            <asp:ListItem Value='7'>7</asp:ListItem>
                            <asp:ListItem Value='8'>8</asp:ListItem>
                            <asp:ListItem Value='9'>9</asp:ListItem>
                            <asp:ListItem Value='A'>A</asp:ListItem>
                            <asp:ListItem Value='B'>B</asp:ListItem>
                            <asp:ListItem Value='C'>C</asp:ListItem>
                            <asp:ListItem Value='D'>D</asp:ListItem>
                            <asp:ListItem Value='E'>E</asp:ListItem>
                            <asp:ListItem Value='F'>F</asp:ListItem>
                            <asp:ListItem Value='G'>G</asp:ListItem>
                            <asp:ListItem Value='H'>H</asp:ListItem>
                            <asp:ListItem Value='I'>I</asp:ListItem>
                            <asp:ListItem Value='J'>J</asp:ListItem>
                            <asp:ListItem Value='K'>K</asp:ListItem>
                            <asp:ListItem Value='L'>L</asp:ListItem>
                            <asp:ListItem Value='M'>M</asp:ListItem>
                            <asp:ListItem Value='N'>N</asp:ListItem>
                            <asp:ListItem Value='O'>O</asp:ListItem>
                            <asp:ListItem Value='P'>P</asp:ListItem>
                            <asp:ListItem Value='Q'>Q</asp:ListItem>
                            <asp:ListItem Value='R'>R</asp:ListItem>
                            <asp:ListItem Value='S'>S</asp:ListItem>
                            <asp:ListItem Value='T'>T</asp:ListItem>
                            <asp:ListItem Value='U'>U</asp:ListItem>
                            <asp:ListItem Value='V'>V</asp:ListItem>
                            <asp:ListItem Value='W'>W</asp:ListItem>
                            <asp:ListItem Value='X'>X</asp:ListItem>
                            <asp:ListItem Value='Y'>Y</asp:ListItem>
                            <asp:ListItem Value='Z'>Z</asp:ListItem>
                        </asp:DropDownList>
                    </td><td width='25%' class="r">
                        <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label></td>
<td width='25%' id="td_pass" class="l" nowrap="yes">
    <asp:TextBox style="width: 122px" maxlength="32" id="txtPassword" runat="server"></asp:TextBox></td></tr><tr class="bg_eb"><td class="r" width="25%">
        <asp:Label ID="lblFirstName" runat="server" Text="First Name"></asp:Label></td><td class="l" width="25%">
    <asp:TextBox style="width: 122px" maxlength="32" id="txtFName" runat="server"></asp:TextBox></td><td class="r" width="25%">
                            <asp:Label ID="lblLastName" runat="server" Text="Last Name"></asp:Label>
                        </td><td class="l" width="25%">
    <asp:TextBox style="width: 122px" maxlength="32" id="txtLName" runat="server"></asp:TextBox></td></tr><tr class="bg_eb"><td class="r">
        <asp:Label ID="lblPhone" runat="server" Text="Phone"></asp:Label></td><td class="l">
    <asp:TextBox style="width: 122px" maxlength="32" id="txtPhone" runat="server"></asp:TextBox></td><td class="r">
                            <asp:Label ID="lblMobilePhone" runat="server" Text="Mobile Phone"></asp:Label>
                        </td><td class="l">
    <asp:TextBox style="width: 122px" maxlength="32" id="txtMobilePhone" runat="server"></asp:TextBox></td></tr><tr class="bg_eb">
                        <td class="r">
        <asp:Label ID="lblMasterMaxCredit" runat="server" Text="Master Max Credit"></asp:Label></td>
<td class="1"><asp:TextBox style="width:122px" maxlength="14" onchange="if($('lblMaxCredit')){if(this.value==''){ $('lblMaxCredit').innerHTML=0; this.value=0;} else $('lblMaxCredit').innerHTML=this.value;}" id="txtCredit" value="0" onkeypress="return CheckDecNumber(event);"  runat="server"></asp:TextBox>
&nbsp;<span class="hidden">&gt;=<span id="txtCreditMin">{credit-min}</span>&nbsp;and</span><span class="minmaxbet">&lt;=<span id="txtCreditMax">13,840,001</span></span></td>
<td class="r">
    <asp:Label ID="lblFax" runat="server" Text="Fax"></asp:Label>
                            </td><td class="left">
    <asp:TextBox style="width: 122px" maxlength="32" id="txtFax" runat="server"></asp:TextBox></td></tr><tr><td class="r">
        <asp:Label ID="txtSuspended" runat="server" Text="Suspended"></asp:Label></td><td class="l"><asp:CheckBox
                ID="chkSuspended" runat="server" /></td><td class="r">
                            <asp:Label ID="lblAllowAutoPT" runat="server" Text="Allow Auto PT"></asp:Label>
                            </td><td class="l">
                                <asp:CheckBox ID="chkallowAutoMPT" Checked runat="server" />
&nbsp;</td></tr></table><table class="tblRpt" width="100%" border="1"><tr class="RptHeader"><td colspan="4">Commission</td>
</tr><tr class="bg_eb"><td colspan="4"><div id="divUpdComm" name="divUpdComm">Group A&nbsp;&nbsp;
    <asp:DropDownList ID="ddlgroupa" runat="server" Height="16px" Width="61px">
        <asp:ListItem Selected="True">0.0025</asp:ListItem>
        <asp:ListItem>0.002</asp:ListItem>
        <asp:ListItem>0.0015</asp:ListItem>
        <asp:ListItem>0.001</asp:ListItem>
        <asp:ListItem>0.0005</asp:ListItem>
        <asp:ListItem>0</asp:ListItem>
    </asp:DropDownList>
&nbsp;&nbsp;&nbsp;Group B&nbsp;<asp:DropDownList ID="ddlgroupb" runat="server">
                                <asp:ListItem Selected="True">0.005</asp:ListItem>
                                <asp:ListItem >0.0045</asp:ListItem>
                             <asp:ListItem >0.004</asp:ListItem>
                              <asp:ListItem >0.0035</asp:ListItem>
                               <asp:ListItem >0.002</asp:ListItem>
                                 <asp:ListItem >0.001</asp:ListItem>
                                <asp:ListItem >0.0005</asp:ListItem>
                                  <asp:ListItem >0</asp:ListItem>
                            </asp:DropDownList>
                                                &nbsp;&nbsp;&nbsp;Group C<asp:DropDownList 
                    ID="ddlgropc" runat="server">
                                <asp:ListItem Selected="True">0.0075</asp:ListItem>
                                <asp:ListItem >0.007</asp:ListItem>
                                <asp:ListItem >0.0065</asp:ListItem>
                                <asp:ListItem >0.006</asp:ListItem>
                                <asp:ListItem >0.0055</asp:ListItem>
                                <asp:ListItem >0.005</asp:ListItem>
                                <asp:ListItem >0.0045</asp:ListItem>
                             <asp:ListItem >0.004</asp:ListItem>
                              <asp:ListItem >0.0035</asp:ListItem>
                               <asp:ListItem >0.002</asp:ListItem>
                                 <asp:ListItem >0.001</asp:ListItem>
                                <asp:ListItem >0.0005</asp:ListItem>
                                  <asp:ListItem >0</asp:ListItem>
                            </asp:DropDownList>
                                                &nbsp;&nbsp;&nbsp;&nbsp;Group D<asp:DropDownList 
                    ID="ddlgropd" runat="server">
                                <asp:ListItem Selected="True">0.01</asp:ListItem>
                                <asp:ListItem >0.0095</asp:ListItem>
                                <asp:ListItem >0.009</asp:ListItem>
                                <asp:ListItem >0.0085</asp:ListItem>
                                <asp:ListItem >0.008</asp:ListItem>
                                <asp:ListItem >0.0075</asp:ListItem>
                                <asp:ListItem >0.007</asp:ListItem>
                                <asp:ListItem >0.0065</asp:ListItem>
                                <asp:ListItem >0.006</asp:ListItem>
                                <asp:ListItem >0.0055</asp:ListItem>
                                <asp:ListItem >0.005</asp:ListItem>
                                <asp:ListItem >0.0045</asp:ListItem>
                             <asp:ListItem >0.004</asp:ListItem>
                              <asp:ListItem >0.0035</asp:ListItem>
                               <asp:ListItem >0.002</asp:ListItem>
                                 <asp:ListItem >0.001</asp:ListItem>
                                <asp:ListItem >0.0005</asp:ListItem>
                                  <asp:ListItem >0</asp:ListItem>
                            </asp:DropDownList>
                                                &nbsp;&nbsp;&nbsp;&nbsp;1x2 Comm&nbsp;<asp:DropDownList 
                    ID="ddl1x2" runat="server" Height="16px" Width="61px">
        <asp:ListItem Selected="True">0.0025</asp:ListItem>
        <asp:ListItem>0.002</asp:ListItem>
        <asp:ListItem>0.0015</asp:ListItem>
        <asp:ListItem>0.001</asp:ListItem>
        <asp:ListItem>0.0005</asp:ListItem>
        <asp:ListItem>0</asp:ListItem>
    </asp:DropDownList>
                &nbsp;&nbsp;&nbsp;Others Comm&nbsp;<asp:DropDownList 
                    ID="ddlothers" runat="server">
                                <asp:ListItem Selected="True">0.01</asp:ListItem>
                                <asp:ListItem >0.0095</asp:ListItem>
                                <asp:ListItem >0.009</asp:ListItem>
                                <asp:ListItem >0.0085</asp:ListItem>
                                <asp:ListItem >0.008</asp:ListItem>
                                <asp:ListItem >0.0075</asp:ListItem>
                                <asp:ListItem >0.007</asp:ListItem>
                                <asp:ListItem >0.0065</asp:ListItem>
                                <asp:ListItem >0.006</asp:ListItem>
                                <asp:ListItem >0.0055</asp:ListItem>
                                <asp:ListItem >0.005</asp:ListItem>
                                <asp:ListItem >0.0045</asp:ListItem>
                             <asp:ListItem >0.004</asp:ListItem>
                              <asp:ListItem >0.0035</asp:ListItem>
                               <asp:ListItem >0.002</asp:ListItem>
                                 <asp:ListItem >0.001</asp:ListItem>
                                <asp:ListItem >0.0005</asp:ListItem>
                                  <asp:ListItem >0</asp:ListItem>
                            </asp:DropDownList>
                                                </div></td></tr></table></div><div class="sptPT" style="width: 860px"><table width="100%" border="1" class="tblRpt"><tr class="RptHeader"><td>Account Balance Transfer Condition</td></tr><tr class="bg_eb"><td width="30%" class="paddleft200">
                                                
                                                    <asp:RadioButton checked onclick="selectTranferTime(this);" name="tranfer" 
                                                        id="rdDaily" value="daily" runat="server" GroupName="rdWeekly" />Daily</td>
</tr><tr class="bg_eb"><td class="paddleft200" id="alldays">
                        <asp:RadioButton  onclick="selectTranferTime(this);"  id="rdWeekly" value="weekly" runat="server" />
                        Weekly &nbsp;<asp:CheckBox 
                            id="chkMon"  onclick="return ChooseDate();" runat="server" />
                        Mon&nbsp;<asp:CheckBox 
                            id="tue"  onclick="return ChooseDate();" runat="server" />
                        Tue&nbsp;<asp:CheckBox 
                            id="chkWeb"  onclick="return ChooseDate();" runat="server" />
                        Wed&nbsp;<asp:CheckBox 
                            id="chkThurs"  onclick="return ChooseDate();" runat="server" />
                        Thurs&nbsp;<asp:CheckBox 
                            id="chkFri"  onclick="return ChooseDate();" runat="server" />
                        Fri&nbsp;<asp:CheckBox 
                            id="chkSat"  onclick="return ChooseDate();" runat="server" />
                        Sat&nbsp;
                        <asp:CheckBox id="chkSun"  onclick="return ChooseDate();" runat="server"></asp:CheckBox>
                        Sun</td></tr></table></div><input type="hidden" name="from" id="from" value="{linkfrom}" /><input type="hidden" id="hdAllowedCurr" name="hdAllowedCurr" value="1" /><input type="hidden" id="IsSuspended" name="IsSuspended" value="0" /><input type="hidden" id="UplineSuspended" name="UplineSuspended" value="{UplineSuspended}" /><!--</div>--><style type="text/css">div{clear:both;}
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       </style><div class="{none-copy}"><div class="l">
                <asp:CheckBox id="chkCopyAll"  onclick="CopyAllPT(this);"  runat="server" />
                <b><span style="cursor: pointer;" onclick="$('chkCopyAll').click();">Copy all Bet Setting and Position Taking from Soccer Handicap</span>
</b></div></div><br /><div class="l" id="linkSoccer" onclick="OpenPanelEdit('panelSoccer'); togglePTmenu('bullet1')"><div class="button_cont"><div class="menu_content"><ul><li><a id="bullet1" class="md2" href="#1">Soccer</a></li></ul></div></div></div><div id="panelSoccer"><div class="l"><table style="width:80%;" class="sptPT"><tr><td><div id="divUpdInfo1" name="divUpdInfo1"><table border="0" width="100%" class="tblRpt"><tr class="tblTitleCenter"><td colspan="3">Bet Setting</td></tr><tr class="bg_eb"><td class="c tdPT1" width="30%">Min Bet&nbsp;<span class="minmaxbet"><asp:TextBox 
            style="width: 122px" maxlength="14" value="4" id="txtMinBet" runat="server"></asp:TextBox>&gt;=<span id="txtMinbet_Min1">5</span></span></td><td class="c" width="30%">Max Bet&nbsp;<asp:TextBox 
                                                    style="width: 122px" maxlength="14" id="txtMaxBet" value="35,000" runat="server"></asp:TextBox>&nbsp;<span class="minmaxbet">&lt;=<span id="txtMaxbet_Max1">35,000</span></span></td><td class="c">Max Per Match&nbsp;<asp:TextBox value="200,000"
                ID="txtMaxperMatch" runat="server"></asp:TextBox>
            <span class="hidden"><asp:TextBox 
                style="width: 122px" maxlength="32" id="txtMaxPer" value="200,000" runat="server"></asp:TextBox>&gt;=<span id="txtMaxPerMatch_Min1">0</span>and</span><span class="minmaxbet">&lt;=<span id="txtMaxPerMatch_Max1">200,000</span></span></td></tr></table></div></td></tr><tr><td><div id="divUpdPT1" name="divUpdPT1"><table border="1" class="tblRpt" width="100%"><tr class="tblTitleCenter"><td colspan="12">Position Taking</td></tr><tr class="bg_eb"><td colspan="2">
</td><td>Handicap/Next Goal</td><td>Over/Under</td>
<td>1st Hdp</td><td>1st OU</td><td>Odd/Even</td><td>1 X 2</td><td>Correct Score</td><td>Total Goal</td><td>Mix Parlay</td><td>Outright</td></tr><tr class="bg_eb"><td rowspan="5">Dead ball</td><td class="r">Master Preset</td><td>
    <asp:DropDownList ID="ddllistM1HdpD" runat="server" onChange="SelectOnChange('listM1HdpD')">
      <asp:ListItem selected='true' value='0'>0 </asp:ListItem>
    </asp:DropDownList>

<a class="imaLink img" href="javascript:ReducePT('listM1HdpD',1)"><img class="hand" hspace="1" id="btnReduce1" name="btnReduce1" src="../App_Themes/AgencyV2/Images/b_down.jpg" /></a><a class="imaLink img" href="javascript:IncreasePT('listM1HdpD',1)"><img class="hand" hspace="1" id="btnInc?ease1" name="btnIncrease1" src="../App_Themes/AgencyV2/Images/b_up.jpg"/></a><a class="imaLink img" href="javascript:ReducePT('listM1HdpD',10)">
<img class="hand" hspace="1" id="btnReduce10" name="btnReduce10" src="../App_Themes/AgencyV2/Images/b_sub.jpg"/></a><a class="imaLink img" href="javascript:IncreasePT('listM1HdpD',10)"><img class="hand" hspace="1" id="btnIncrease10" name="btnIncrease10" src="../App_Themes/AgencyV2/Images/b_add.jpg"/></a></td><td>
    <asp:DropDownList ID="ddllistM1OU" runat="server">
      <asp:ListItem selected='true' value='0'>0 </asp:ListItem>
    </asp:DropDownList>

                                            </td><td>
    <asp:DropDownList ID="ddllistmm" runat="server">
      <asp:ListItem selected='true' value='0'>0 </asp:ListItem>
    </asp:DropDownList>

                                            </td><td>
    <asp:DropDownList ID="ddllistM1UD" runat="server">
      <asp:ListItem selected='true' value='0'>0 </asp:ListItem>
    </asp:DropDownList>

                                            </td><td>
    <asp:DropDownList ID="ddllistM1OE" runat="server">
      <asp:ListItem selected='true' value='0'>0 </asp:ListItem>
    </asp:DropDownList>

                                            </td><td>
    <asp:DropDownList ID="ddllistM11x2" runat="server">
      <asp:ListItem selected='true' value='0'>0 </asp:ListItem>
    </asp:DropDownList>

                                                <a class="imaLink img" href="javascript:ReducePT('listM11x2',1)"><img class="hand" hspace="1" id="btnReduce1" name="btnReduce1" src="../App_Themes/AgencyV2/Images/b_down.jpg" /></a><a class="imaLink img" href="javascript:IncreasePT('listM11x2',1)"><img class="hand" hspace="1" id="btnIncrease1" name="btnIncrease1" src="../App_Themes/AgencyV2/Images/b_up.jpg"/></a><a class="imaLink img" href="javascript:ReducePT('listM11x2',10)"><img class="hand" hspace="1" id="btnReduce10" name="btnReduce10" src="../App_Themes/AgencyV2/Images/b_sub.jpg"/></a><a class="imaLink img" href="javascript:IncreasePT('listM11x2',10)"><img class="hand" hspace="1" id="btnIncrease10" name="btnIncrease10" src="../App_Themes/AgencyV2/Images/b_add.jpg"/>
</a></td><td>
    <asp:DropDownList ID="ddllistM1CS" runat="server">
      <asp:ListItem selected='true' value='0'>0 </asp:ListItem>
    </asp:DropDownList>

                                            </td><td>
    <asp:DropDownList ID="ddllistM1TG" runat="server">
      <asp:ListItem selected='true' value='0'>0 </asp:ListItem>
    </asp:DropDownList>

                                            </td><td>
    <asp:DropDownList ID="ddllistM1MP" runat="server">
      <asp:ListItem selected='true' value='0'>0 </asp:ListItem>
    </asp:DropDownList>

                                            </td><td>
    <asp:DropDownList ID="ddllistM1OR" runat="server">
      <asp:ListItem selected='true' value='0'>0 </asp:ListItem>
    </asp:DropDownList>

                                            </td></tr><tr class="bg_eb"><td class="r">Super Preset</td><td>
                                                <asp:DropDownList ID="ddlautoS1HdPD" disabled 
                                                onChange="SelectOnChange('autoS1HdPD');" runat="server">                                           
                                             <asp:ListItem Selected="True" value='0.7'>0.7</asp:ListItem>
                                             <asp:ListItem value='0.69'>0.69</asp:ListItem>
                                            <asp:ListItem value='0.68'>0.68</asp:ListItem>
                                             <asp:ListItem value='0.67'>0.67</asp:ListItem>
                                             <asp:ListItem value='0.66'>0.66</asp:ListItem>
                                             <asp:ListItem value='0.65'>0.65</asp:ListItem>
                                             <asp:ListItem value='0.64'>0.64</asp:ListItem>
                                             <asp:ListItem value='0.63'>0.63</asp:ListItem>
                                             <asp:ListItem value='0.62'>0.62</asp:ListItem>
                                             <asp:ListItem value='0.61'>0.61</asp:ListItem>
                                             <asp:ListItem value='0.6'>0.6</asp:ListItem>
                                             <asp:ListItem value='0.59'>0.59</asp:ListItem>
                                             <asp:ListItem value='0.58'>0.58</asp:ListItem>
                                             <asp:ListItem value='0.57'>0.57</asp:ListItem>
                                             <asp:ListItem value='0.56'>0.56</asp:ListItem>
                                             <asp:ListItem value='0.55'>0.55</asp:ListItem>
                                             <asp:ListItem value='0.54'>0.54</asp:ListItem>
                                             <asp:ListItem value='0.53'>0.53</asp:ListItem>
                                             <asp:ListItem value='0.52'>0.52</asp:ListItem>
                                             <asp:ListItem value='0.51'>0.51</asp:ListItem>
                                             <asp:ListItem value='0.5'>0.5</asp:ListItem>
                                             <asp:ListItem value='0.49'>0.49</asp:ListItem>
                                             <asp:ListItem value='0.48'>0.48</asp:ListItem>
                                             <asp:ListItem value='0.47'>0.47</asp:ListItem>
                                             <asp:ListItem value='0.46'>0.46</asp:ListItem>
                                             <asp:ListItem value='0.45'>0.45</asp:ListItem>
                                             <asp:ListItem value='0.44'>0.44</asp:ListItem>
                                             <asp:ListItem value='0.43'>0.43</asp:ListItem>
                                             <asp:ListItem value='0.42'>0.42</asp:ListItem>
                                             <asp:ListItem value='0.41'>0.41</asp:ListItem>
                                             <asp:ListItem value='0.4'>0.4</asp:ListItem>
                                             <asp:ListItem value='0.39'>0.39</asp:ListItem>
                                             <asp:ListItem value='0.38'>0.38</asp:ListItem>
                                             <asp:ListItem value='0.37'>0.37</asp:ListItem>
                                            <asp:ListItem value='0.36'>0.36</asp:ListItem>
                                             <asp:ListItem value='0.35'>0.35</asp:ListItem>
                                             <asp:ListItem value='0.34'>0.34</asp:ListItem>
                                             <asp:ListItem value='0.33'>0.33</asp:ListItem>
                                            <asp:ListItem value='0.32'>0.32</asp:ListItem>
                                            <asp:ListItem value='0.31'>0.31</asp:ListItem>
                                            <asp:ListItem value='0.3'>0.3</asp:ListItem>
                                             <asp:ListItem value='0.29'>0.29</asp:ListItem>
                                             <asp:ListItem value='0.28'>0.28</asp:ListItem>
                                             <asp:ListItem value='0.27'>0.27</asp:ListItem>
                                             <asp:ListItem value='0.26'>0.26</asp:ListItem>
                                             <asp:ListItem value='0.25'>0.25</asp:ListItem>
                                             <asp:ListItem value='0.24'>0.24</asp:ListItem>
                                             <asp:ListItem value='0.23'>0.23</asp:ListItem>
                                            <asp:ListItem value='0.22'>0.22</asp:ListItem>
                                             <asp:ListItem value='0.21'>0.21</asp:ListItem>
                                            <asp:ListItem value='0.2'>0.2</asp:ListItem>
                                             <asp:ListItem value='0.19'>0.19</asp:ListItem>
                                            <asp:ListItem value='0.18'>0.18</asp:ListItem>
                                             <asp:ListItem value='0.17'>0.17</asp:ListItem>
                                            <asp:ListItem value='0.16'>0.16</asp:ListItem>
                                             <asp:ListItem value='0.15'>0.15</asp:ListItem>
                                             <asp:ListItem value='0.14'>0.14</asp:ListItem>
                                             <asp:ListItem value='0.13'>0.13</asp:ListItem>
                                             <asp:ListItem value='0.12'>0.12</asp:ListItem>
                                            <asp:ListItem value='0.11'>0.11</asp:ListItem>
                                             <asp:ListItem value='0.1'>0.1</asp:ListItem>
                                             <asp:ListItem value='0.09'>0.09</asp:ListItem>
                                            <asp:ListItem value='0.08'>0.08</asp:ListItem>
                                             <asp:ListItem value='0.07'>0.07</asp:ListItem>
                                             <asp:ListItem value='0.06'>0.06</asp:ListItem>
                                             <asp:ListItem value='0.05'>0.05</asp:ListItem>
                                             <asp:ListItem value='0.04'>0.04</asp:ListItem>
                                            <asp:ListItem value='0.03'>0.03</asp:ListItem>
                                            <asp:ListItem value='0.02'>0.02</asp:ListItem>
                                             <asp:ListItem value='0.01'>0.01</asp:ListItem>
                                            <asp:ListItem  value='0'>0</asp:ListItem></asp:DropDownList>
                                            <a class="imaLink img" href="javascript:ReducePT('listS1HdpD',1)"><img class="hand" hspace="1" id="btnReduce1" name="btnReduce1" src="../App_Themes/AgencyV2/Images/b_down.jpg" /></a><a class="imaLink img" href="javascript:IncreasePT('listS1HdpD',1)"><img class="hand" hspace="1" id="btnIncrease1" name="btnIncrease1" src="../App_Themes/AgencyV2/Images/b_up.jpg"/></a><a class="imaLink img" href="javascript:ReducePT('listS1HdpD',10)"><img class="hand" hspace="1" id="btnReduce10" name="btnReduce10" src="../App_Themes/AgencyV2/Images/b_sub.jpg"/></a>
<a class="imaLink img" href="javascript:IncreasePT('listS1HdpD',10)"><img class="hand" hspace="1" id="btnIncrease10" name="btnIncrease10" src="../App_Themes/AgencyV2/Images/b_add.jpg"/></a></td><td>
                                                <asp:DropDownList ID="ddlautoS1HdpL2" disabled 
                                                onChange="SelectOnChange('autoS1HdpL1');" runat="server">                                           
                                             <asp:ListItem Selected="True" value='0.7'>0.7</asp:ListItem>
                                             <asp:ListItem value='0.69'>0.69</asp:ListItem>
                                            <asp:ListItem value='0.68'>0.68</asp:ListItem>
                                             <asp:ListItem value='0.67'>0.67</asp:ListItem>
                                             <asp:ListItem value='0.66'>0.66</asp:ListItem>
                                             <asp:ListItem value='0.65'>0.65</asp:ListItem>
                                             <asp:ListItem value='0.64'>0.64</asp:ListItem>
                                             <asp:ListItem value='0.63'>0.63</asp:ListItem>
                                             <asp:ListItem value='0.62'>0.62</asp:ListItem>
                                             <asp:ListItem value='0.61'>0.61</asp:ListItem>
                                             <asp:ListItem value='0.6'>0.6</asp:ListItem>
                                             <asp:ListItem value='0.59'>0.59</asp:ListItem>
                                             <asp:ListItem value='0.58'>0.58</asp:ListItem>
                                             <asp:ListItem value='0.57'>0.57</asp:ListItem>
                                             <asp:ListItem value='0.56'>0.56</asp:ListItem>
                                             <asp:ListItem value='0.55'>0.55</asp:ListItem>
                                             <asp:ListItem value='0.54'>0.54</asp:ListItem>
                                             <asp:ListItem value='0.53'>0.53</asp:ListItem>
                                             <asp:ListItem value='0.52'>0.52</asp:ListItem>
                                             <asp:ListItem value='0.51'>0.51</asp:ListItem>
                                             <asp:ListItem value='0.5'>0.5</asp:ListItem>
                                             <asp:ListItem value='0.49'>0.49</asp:ListItem>
                                             <asp:ListItem value='0.48'>0.48</asp:ListItem>
                                             <asp:ListItem value='0.47'>0.47</asp:ListItem>
                                             <asp:ListItem value='0.46'>0.46</asp:ListItem>
                                             <asp:ListItem value='0.45'>0.45</asp:ListItem>
                                             <asp:ListItem value='0.44'>0.44</asp:ListItem>
                                             <asp:ListItem value='0.43'>0.43</asp:ListItem>
                                             <asp:ListItem value='0.42'>0.42</asp:ListItem>
                                             <asp:ListItem value='0.41'>0.41</asp:ListItem>
                                             <asp:ListItem value='0.4'>0.4</asp:ListItem>
                                             <asp:ListItem value='0.39'>0.39</asp:ListItem>
                                             <asp:ListItem value='0.38'>0.38</asp:ListItem>
                                             <asp:ListItem value='0.37'>0.37</asp:ListItem>
                                            <asp:ListItem value='0.36'>0.36</asp:ListItem>
                                             <asp:ListItem value='0.35'>0.35</asp:ListItem>
                                             <asp:ListItem value='0.34'>0.34</asp:ListItem>
                                             <asp:ListItem value='0.33'>0.33</asp:ListItem>
                                            <asp:ListItem value='0.32'>0.32</asp:ListItem>
                                            <asp:ListItem value='0.31'>0.31</asp:ListItem>
                                            <asp:ListItem value='0.3'>0.3</asp:ListItem>
                                             <asp:ListItem value='0.29'>0.29</asp:ListItem>
                                             <asp:ListItem value='0.28'>0.28</asp:ListItem>
                                             <asp:ListItem value='0.27'>0.27</asp:ListItem>
                                             <asp:ListItem value='0.26'>0.26</asp:ListItem>
                                             <asp:ListItem value='0.25'>0.25</asp:ListItem>
                                             <asp:ListItem value='0.24'>0.24</asp:ListItem>
                                             <asp:ListItem value='0.23'>0.23</asp:ListItem>
                                            <asp:ListItem value='0.22'>0.22</asp:ListItem>
                                             <asp:ListItem value='0.21'>0.21</asp:ListItem>
                                            <asp:ListItem value='0.2'>0.2</asp:ListItem>
                                             <asp:ListItem value='0.19'>0.19</asp:ListItem>
                                            <asp:ListItem value='0.18'>0.18</asp:ListItem>
                                             <asp:ListItem value='0.17'>0.17</asp:ListItem>
                                            <asp:ListItem value='0.16'>0.16</asp:ListItem>
                                             <asp:ListItem value='0.15'>0.15</asp:ListItem>
                                             <asp:ListItem value='0.14'>0.14</asp:ListItem>
                                             <asp:ListItem value='0.13'>0.13</asp:ListItem>
                                             <asp:ListItem value='0.12'>0.12</asp:ListItem>
                                            <asp:ListItem value='0.11'>0.11</asp:ListItem>
                                             <asp:ListItem value='0.1'>0.1</asp:ListItem>
                                             <asp:ListItem value='0.09'>0.09</asp:ListItem>
                                            <asp:ListItem value='0.08'>0.08</asp:ListItem>
                                             <asp:ListItem value='0.07'>0.07</asp:ListItem>
                                             <asp:ListItem value='0.06'>0.06</asp:ListItem>
                                             <asp:ListItem value='0.05'>0.05</asp:ListItem>
                                             <asp:ListItem value='0.04'>0.04</asp:ListItem>
                                            <asp:ListItem value='0.03'>0.03</asp:ListItem>
                                            <asp:ListItem value='0.02'>0.02</asp:ListItem>
                                             <asp:ListItem value='0.01'>0.01</asp:ListItem>
                                            <asp:ListItem  value='0'>0</asp:ListItem></asp:DropDownList>
                                            </td><td>
                                                <asp:DropDownList ID="ddlautoS1stHDP" disabled 
                                                onChange="SelectOnChange('autoS1stHDP');" runat="server">                                           
                                             <asp:ListItem Selected="True" value='0.7'>0.7</asp:ListItem>
                                             <asp:ListItem value='0.69'>0.69</asp:ListItem>
                                            <asp:ListItem value='0.68'>0.68</asp:ListItem>
                                             <asp:ListItem value='0.67'>0.67</asp:ListItem>
                                             <asp:ListItem value='0.66'>0.66</asp:ListItem>
                                             <asp:ListItem value='0.65'>0.65</asp:ListItem>
                                             <asp:ListItem value='0.64'>0.64</asp:ListItem>
                                             <asp:ListItem value='0.63'>0.63</asp:ListItem>
                                             <asp:ListItem value='0.62'>0.62</asp:ListItem>
                                             <asp:ListItem value='0.61'>0.61</asp:ListItem>
                                             <asp:ListItem value='0.6'>0.6</asp:ListItem>
                                             <asp:ListItem value='0.59'>0.59</asp:ListItem>
                                             <asp:ListItem value='0.58'>0.58</asp:ListItem>
                                             <asp:ListItem value='0.57'>0.57</asp:ListItem>
                                             <asp:ListItem value='0.56'>0.56</asp:ListItem>
                                             <asp:ListItem value='0.55'>0.55</asp:ListItem>
                                             <asp:ListItem value='0.54'>0.54</asp:ListItem>
                                             <asp:ListItem value='0.53'>0.53</asp:ListItem>
                                             <asp:ListItem value='0.52'>0.52</asp:ListItem>
                                             <asp:ListItem value='0.51'>0.51</asp:ListItem>
                                             <asp:ListItem value='0.5'>0.5</asp:ListItem>
                                             <asp:ListItem value='0.49'>0.49</asp:ListItem>
                                             <asp:ListItem value='0.48'>0.48</asp:ListItem>
                                             <asp:ListItem value='0.47'>0.47</asp:ListItem>
                                             <asp:ListItem value='0.46'>0.46</asp:ListItem>
                                             <asp:ListItem value='0.45'>0.45</asp:ListItem>
                                             <asp:ListItem value='0.44'>0.44</asp:ListItem>
                                             <asp:ListItem value='0.43'>0.43</asp:ListItem>
                                             <asp:ListItem value='0.42'>0.42</asp:ListItem>
                                             <asp:ListItem value='0.41'>0.41</asp:ListItem>
                                             <asp:ListItem value='0.4'>0.4</asp:ListItem>
                                             <asp:ListItem value='0.39'>0.39</asp:ListItem>
                                             <asp:ListItem value='0.38'>0.38</asp:ListItem>
                                             <asp:ListItem value='0.37'>0.37</asp:ListItem>
                                            <asp:ListItem value='0.36'>0.36</asp:ListItem>
                                             <asp:ListItem value='0.35'>0.35</asp:ListItem>
                                             <asp:ListItem value='0.34'>0.34</asp:ListItem>
                                             <asp:ListItem value='0.33'>0.33</asp:ListItem>
                                            <asp:ListItem value='0.32'>0.32</asp:ListItem>
                                            <asp:ListItem value='0.31'>0.31</asp:ListItem>
                                            <asp:ListItem value='0.3'>0.3</asp:ListItem>
                                             <asp:ListItem value='0.29'>0.29</asp:ListItem>
                                             <asp:ListItem value='0.28'>0.28</asp:ListItem>
                                             <asp:ListItem value='0.27'>0.27</asp:ListItem>
                                             <asp:ListItem value='0.26'>0.26</asp:ListItem>
                                             <asp:ListItem value='0.25'>0.25</asp:ListItem>
                                             <asp:ListItem value='0.24'>0.24</asp:ListItem>
                                             <asp:ListItem value='0.23'>0.23</asp:ListItem>
                                            <asp:ListItem value='0.22'>0.22</asp:ListItem>
                                             <asp:ListItem value='0.21'>0.21</asp:ListItem>
                                            <asp:ListItem value='0.2'>0.2</asp:ListItem>
                                             <asp:ListItem value='0.19'>0.19</asp:ListItem>
                                            <asp:ListItem value='0.18'>0.18</asp:ListItem>
                                             <asp:ListItem value='0.17'>0.17</asp:ListItem>
                                            <asp:ListItem value='0.16'>0.16</asp:ListItem>
                                             <asp:ListItem value='0.15'>0.15</asp:ListItem>
                                             <asp:ListItem value='0.14'>0.14</asp:ListItem>
                                             <asp:ListItem value='0.13'>0.13</asp:ListItem>
                                             <asp:ListItem value='0.12'>0.12</asp:ListItem>
                                            <asp:ListItem value='0.11'>0.11</asp:ListItem>
                                             <asp:ListItem value='0.1'>0.1</asp:ListItem>
                                             <asp:ListItem value='0.09'>0.09</asp:ListItem>
                                            <asp:ListItem value='0.08'>0.08</asp:ListItem>
                                             <asp:ListItem value='0.07'>0.07</asp:ListItem>
                                             <asp:ListItem value='0.06'>0.06</asp:ListItem>
                                             <asp:ListItem value='0.05'>0.05</asp:ListItem>
                                             <asp:ListItem value='0.04'>0.04</asp:ListItem>
                                            <asp:ListItem value='0.03'>0.03</asp:ListItem>
                                            <asp:ListItem value='0.02'>0.02</asp:ListItem>
                                             <asp:ListItem value='0.01'>0.01</asp:ListItem>
                                            <asp:ListItem  value='0'>0</asp:ListItem></asp:DropDownList>
                                            </td><td>
                                                <asp:DropDownList ID="ddlautoS11stOUD" disabled 
                                                onChange="SelectOnChange('autoS11stOUD');" runat="server">                                           
                                             <asp:ListItem Selected="True" value='0.7'>0.7</asp:ListItem>
                                             <asp:ListItem value='0.69'>0.69</asp:ListItem>
                                            <asp:ListItem value='0.68'>0.68</asp:ListItem>
                                             <asp:ListItem value='0.67'>0.67</asp:ListItem>
                                             <asp:ListItem value='0.66'>0.66</asp:ListItem>
                                             <asp:ListItem value='0.65'>0.65</asp:ListItem>
                                             <asp:ListItem value='0.64'>0.64</asp:ListItem>
                                             <asp:ListItem value='0.63'>0.63</asp:ListItem>
                                             <asp:ListItem value='0.62'>0.62</asp:ListItem>
                                             <asp:ListItem value='0.61'>0.61</asp:ListItem>
                                             <asp:ListItem value='0.6'>0.6</asp:ListItem>
                                             <asp:ListItem value='0.59'>0.59</asp:ListItem>
                                             <asp:ListItem value='0.58'>0.58</asp:ListItem>
                                             <asp:ListItem value='0.57'>0.57</asp:ListItem>
                                             <asp:ListItem value='0.56'>0.56</asp:ListItem>
                                             <asp:ListItem value='0.55'>0.55</asp:ListItem>
                                             <asp:ListItem value='0.54'>0.54</asp:ListItem>
                                             <asp:ListItem value='0.53'>0.53</asp:ListItem>
                                             <asp:ListItem value='0.52'>0.52</asp:ListItem>
                                             <asp:ListItem value='0.51'>0.51</asp:ListItem>
                                             <asp:ListItem value='0.5'>0.5</asp:ListItem>
                                             <asp:ListItem value='0.49'>0.49</asp:ListItem>
                                             <asp:ListItem value='0.48'>0.48</asp:ListItem>
                                             <asp:ListItem value='0.47'>0.47</asp:ListItem>
                                             <asp:ListItem value='0.46'>0.46</asp:ListItem>
                                             <asp:ListItem value='0.45'>0.45</asp:ListItem>
                                             <asp:ListItem value='0.44'>0.44</asp:ListItem>
                                             <asp:ListItem value='0.43'>0.43</asp:ListItem>
                                             <asp:ListItem value='0.42'>0.42</asp:ListItem>
                                             <asp:ListItem value='0.41'>0.41</asp:ListItem>
                                             <asp:ListItem value='0.4'>0.4</asp:ListItem>
                                             <asp:ListItem value='0.39'>0.39</asp:ListItem>
                                             <asp:ListItem value='0.38'>0.38</asp:ListItem>
                                             <asp:ListItem value='0.37'>0.37</asp:ListItem>
                                            <asp:ListItem value='0.36'>0.36</asp:ListItem>
                                             <asp:ListItem value='0.35'>0.35</asp:ListItem>
                                             <asp:ListItem value='0.34'>0.34</asp:ListItem>
                                             <asp:ListItem value='0.33'>0.33</asp:ListItem>
                                            <asp:ListItem value='0.32'>0.32</asp:ListItem>
                                            <asp:ListItem value='0.31'>0.31</asp:ListItem>
                                            <asp:ListItem value='0.3'>0.3</asp:ListItem>
                                             <asp:ListItem value='0.29'>0.29</asp:ListItem>
                                             <asp:ListItem value='0.28'>0.28</asp:ListItem>
                                             <asp:ListItem value='0.27'>0.27</asp:ListItem>
                                             <asp:ListItem value='0.26'>0.26</asp:ListItem>
                                             <asp:ListItem value='0.25'>0.25</asp:ListItem>
                                             <asp:ListItem value='0.24'>0.24</asp:ListItem>
                                             <asp:ListItem value='0.23'>0.23</asp:ListItem>
                                            <asp:ListItem value='0.22'>0.22</asp:ListItem>
                                             <asp:ListItem value='0.21'>0.21</asp:ListItem>
                                            <asp:ListItem value='0.2'>0.2</asp:ListItem>
                                             <asp:ListItem value='0.19'>0.19</asp:ListItem>
                                            <asp:ListItem value='0.18'>0.18</asp:ListItem>
                                             <asp:ListItem value='0.17'>0.17</asp:ListItem>
                                            <asp:ListItem value='0.16'>0.16</asp:ListItem>
                                             <asp:ListItem value='0.15'>0.15</asp:ListItem>
                                             <asp:ListItem value='0.14'>0.14</asp:ListItem>
                                             <asp:ListItem value='0.13'>0.13</asp:ListItem>
                                             <asp:ListItem value='0.12'>0.12</asp:ListItem>
                                            <asp:ListItem value='0.11'>0.11</asp:ListItem>
                                             <asp:ListItem value='0.1'>0.1</asp:ListItem>
                                             <asp:ListItem value='0.09'>0.09</asp:ListItem>
                                            <asp:ListItem value='0.08'>0.08</asp:ListItem>
                                             <asp:ListItem value='0.07'>0.07</asp:ListItem>
                                             <asp:ListItem value='0.06'>0.06</asp:ListItem>
                                             <asp:ListItem value='0.05'>0.05</asp:ListItem>
                                             <asp:ListItem value='0.04'>0.04</asp:ListItem>
                                            <asp:ListItem value='0.03'>0.03</asp:ListItem>
                                            <asp:ListItem value='0.02'>0.02</asp:ListItem>
                                             <asp:ListItem value='0.01'>0.01</asp:ListItem>
                                            <asp:ListItem  value='0'>0</asp:ListItem></asp:DropDownList>
                                            </td><td>
                                                <asp:DropDownList ID="ddlautoS1OE" disabled 
                                                onChange="SelectOnChange('autoS1OE');" runat="server">                                           
                                             <asp:ListItem Selected="True" value='0.7'>0.7</asp:ListItem>
                                             <asp:ListItem value='0.69'>0.69</asp:ListItem>
                                            <asp:ListItem value='0.68'>0.68</asp:ListItem>
                                             <asp:ListItem value='0.67'>0.67</asp:ListItem>
                                             <asp:ListItem value='0.66'>0.66</asp:ListItem>
                                             <asp:ListItem value='0.65'>0.65</asp:ListItem>
                                             <asp:ListItem value='0.64'>0.64</asp:ListItem>
                                             <asp:ListItem value='0.63'>0.63</asp:ListItem>
                                             <asp:ListItem value='0.62'>0.62</asp:ListItem>
                                             <asp:ListItem value='0.61'>0.61</asp:ListItem>
                                             <asp:ListItem value='0.6'>0.6</asp:ListItem>
                                             <asp:ListItem value='0.59'>0.59</asp:ListItem>
                                             <asp:ListItem value='0.58'>0.58</asp:ListItem>
                                             <asp:ListItem value='0.57'>0.57</asp:ListItem>
                                             <asp:ListItem value='0.56'>0.56</asp:ListItem>
                                             <asp:ListItem value='0.55'>0.55</asp:ListItem>
                                             <asp:ListItem value='0.54'>0.54</asp:ListItem>
                                             <asp:ListItem value='0.53'>0.53</asp:ListItem>
                                             <asp:ListItem value='0.52'>0.52</asp:ListItem>
                                             <asp:ListItem value='0.51'>0.51</asp:ListItem>
                                             <asp:ListItem value='0.5'>0.5</asp:ListItem>
                                             <asp:ListItem value='0.49'>0.49</asp:ListItem>
                                             <asp:ListItem value='0.48'>0.48</asp:ListItem>
                                             <asp:ListItem value='0.47'>0.47</asp:ListItem>
                                             <asp:ListItem value='0.46'>0.46</asp:ListItem>
                                             <asp:ListItem value='0.45'>0.45</asp:ListItem>
                                             <asp:ListItem value='0.44'>0.44</asp:ListItem>
                                             <asp:ListItem value='0.43'>0.43</asp:ListItem>
                                             <asp:ListItem value='0.42'>0.42</asp:ListItem>
                                             <asp:ListItem value='0.41'>0.41</asp:ListItem>
                                             <asp:ListItem value='0.4'>0.4</asp:ListItem>
                                             <asp:ListItem value='0.39'>0.39</asp:ListItem>
                                             <asp:ListItem value='0.38'>0.38</asp:ListItem>
                                             <asp:ListItem value='0.37'>0.37</asp:ListItem>
                                            <asp:ListItem value='0.36'>0.36</asp:ListItem>
                                             <asp:ListItem value='0.35'>0.35</asp:ListItem>
                                             <asp:ListItem value='0.34'>0.34</asp:ListItem>
                                             <asp:ListItem value='0.33'>0.33</asp:ListItem>
                                            <asp:ListItem value='0.32'>0.32</asp:ListItem>
                                            <asp:ListItem value='0.31'>0.31</asp:ListItem>
                                            <asp:ListItem value='0.3'>0.3</asp:ListItem>
                                             <asp:ListItem value='0.29'>0.29</asp:ListItem>
                                             <asp:ListItem value='0.28'>0.28</asp:ListItem>
                                             <asp:ListItem value='0.27'>0.27</asp:ListItem>
                                             <asp:ListItem value='0.26'>0.26</asp:ListItem>
                                             <asp:ListItem value='0.25'>0.25</asp:ListItem>
                                             <asp:ListItem value='0.24'>0.24</asp:ListItem>
                                             <asp:ListItem value='0.23'>0.23</asp:ListItem>
                                            <asp:ListItem value='0.22'>0.22</asp:ListItem>
                                             <asp:ListItem value='0.21'>0.21</asp:ListItem>
                                            <asp:ListItem value='0.2'>0.2</asp:ListItem>
                                             <asp:ListItem value='0.19'>0.19</asp:ListItem>
                                            <asp:ListItem value='0.18'>0.18</asp:ListItem>
                                             <asp:ListItem value='0.17'>0.17</asp:ListItem>
                                            <asp:ListItem value='0.16'>0.16</asp:ListItem>
                                             <asp:ListItem value='0.15'>0.15</asp:ListItem>
                                             <asp:ListItem value='0.14'>0.14</asp:ListItem>
                                             <asp:ListItem value='0.13'>0.13</asp:ListItem>
                                             <asp:ListItem value='0.12'>0.12</asp:ListItem>
                                            <asp:ListItem value='0.11'>0.11</asp:ListItem>
                                             <asp:ListItem value='0.1'>0.1</asp:ListItem>
                                             <asp:ListItem value='0.09'>0.09</asp:ListItem>
                                            <asp:ListItem value='0.08'>0.08</asp:ListItem>
                                             <asp:ListItem value='0.07'>0.07</asp:ListItem>
                                             <asp:ListItem value='0.06'>0.06</asp:ListItem>
                                             <asp:ListItem value='0.05'>0.05</asp:ListItem>
                                             <asp:ListItem value='0.04'>0.04</asp:ListItem>
                                            <asp:ListItem value='0.03'>0.03</asp:ListItem>
                                            <asp:ListItem value='0.02'>0.02</asp:ListItem>
                                             <asp:ListItem value='0.01'>0.01</asp:ListItem>
                                            <asp:ListItem  value='0'>0</asp:ListItem></asp:DropDownList>
                                            </td><td>
                                                <asp:DropDownList ID="ddlautoS11x2" disabled 
                                                onChange="SelectOnChange('autoS11x2');" runat="server">                                           
                                             <asp:ListItem Selected="True" value='0.7'>0.7</asp:ListItem>
                                             <asp:ListItem value='0.69'>0.69</asp:ListItem>
                                            <asp:ListItem value='0.68'>0.68</asp:ListItem>
                                             <asp:ListItem value='0.67'>0.67</asp:ListItem>
                                             <asp:ListItem value='0.66'>0.66</asp:ListItem>
                                             <asp:ListItem value='0.65'>0.65</asp:ListItem>
                                             <asp:ListItem value='0.64'>0.64</asp:ListItem>
                                             <asp:ListItem value='0.63'>0.63</asp:ListItem>
                                             <asp:ListItem value='0.62'>0.62</asp:ListItem>
                                             <asp:ListItem value='0.61'>0.61</asp:ListItem>
                                             <asp:ListItem value='0.6'>0.6</asp:ListItem>
                                             <asp:ListItem value='0.59'>0.59</asp:ListItem>
                                             <asp:ListItem value='0.58'>0.58</asp:ListItem>
                                             <asp:ListItem value='0.57'>0.57</asp:ListItem>
                                             <asp:ListItem value='0.56'>0.56</asp:ListItem>
                                             <asp:ListItem value='0.55'>0.55</asp:ListItem>
                                             <asp:ListItem value='0.54'>0.54</asp:ListItem>
                                             <asp:ListItem value='0.53'>0.53</asp:ListItem>
                                             <asp:ListItem value='0.52'>0.52</asp:ListItem>
                                             <asp:ListItem value='0.51'>0.51</asp:ListItem>
                                             <asp:ListItem value='0.5'>0.5</asp:ListItem>
                                             <asp:ListItem value='0.49'>0.49</asp:ListItem>
                                             <asp:ListItem value='0.48'>0.48</asp:ListItem>
                                             <asp:ListItem value='0.47'>0.47</asp:ListItem>
                                             <asp:ListItem value='0.46'>0.46</asp:ListItem>
                                             <asp:ListItem value='0.45'>0.45</asp:ListItem>
                                             <asp:ListItem value='0.44'>0.44</asp:ListItem>
                                             <asp:ListItem value='0.43'>0.43</asp:ListItem>
                                             <asp:ListItem value='0.42'>0.42</asp:ListItem>
                                             <asp:ListItem value='0.41'>0.41</asp:ListItem>
                                             <asp:ListItem value='0.4'>0.4</asp:ListItem>
                                             <asp:ListItem value='0.39'>0.39</asp:ListItem>
                                             <asp:ListItem value='0.38'>0.38</asp:ListItem>
                                             <asp:ListItem value='0.37'>0.37</asp:ListItem>
                                            <asp:ListItem value='0.36'>0.36</asp:ListItem>
                                             <asp:ListItem value='0.35'>0.35</asp:ListItem>
                                             <asp:ListItem value='0.34'>0.34</asp:ListItem>
                                             <asp:ListItem value='0.33'>0.33</asp:ListItem>
                                            <asp:ListItem value='0.32'>0.32</asp:ListItem>
                                            <asp:ListItem value='0.31'>0.31</asp:ListItem>
                                            <asp:ListItem value='0.3'>0.3</asp:ListItem>
                                             <asp:ListItem value='0.29'>0.29</asp:ListItem>
                                             <asp:ListItem value='0.28'>0.28</asp:ListItem>
                                             <asp:ListItem value='0.27'>0.27</asp:ListItem>
                                             <asp:ListItem value='0.26'>0.26</asp:ListItem>
                                             <asp:ListItem value='0.25'>0.25</asp:ListItem>
                                             <asp:ListItem value='0.24'>0.24</asp:ListItem>
                                             <asp:ListItem value='0.23'>0.23</asp:ListItem>
                                            <asp:ListItem value='0.22'>0.22</asp:ListItem>
                                             <asp:ListItem value='0.21'>0.21</asp:ListItem>
                                            <asp:ListItem value='0.2'>0.2</asp:ListItem>
                                             <asp:ListItem value='0.19'>0.19</asp:ListItem>
                                            <asp:ListItem value='0.18'>0.18</asp:ListItem>
                                             <asp:ListItem value='0.17'>0.17</asp:ListItem>
                                            <asp:ListItem value='0.16'>0.16</asp:ListItem>
                                             <asp:ListItem value='0.15'>0.15</asp:ListItem>
                                             <asp:ListItem value='0.14'>0.14</asp:ListItem>
                                             <asp:ListItem value='0.13'>0.13</asp:ListItem>
                                             <asp:ListItem value='0.12'>0.12</asp:ListItem>
                                            <asp:ListItem value='0.11'>0.11</asp:ListItem>
                                             <asp:ListItem value='0.1'>0.1</asp:ListItem>
                                             <asp:ListItem value='0.09'>0.09</asp:ListItem>
                                            <asp:ListItem value='0.08'>0.08</asp:ListItem>
                                             <asp:ListItem value='0.07'>0.07</asp:ListItem>
                                             <asp:ListItem value='0.06'>0.06</asp:ListItem>
                                             <asp:ListItem value='0.05'>0.05</asp:ListItem>
                                             <asp:ListItem value='0.04'>0.04</asp:ListItem>
                                            <asp:ListItem value='0.03'>0.03</asp:ListItem>
                                            <asp:ListItem value='0.02'>0.02</asp:ListItem>
                                             <asp:ListItem value='0.01'>0.01</asp:ListItem>
                                            <asp:ListItem  value='0'>0</asp:ListItem></asp:DropDownList>
                                            <a class="imaLink img" href="javascript:ReducePT('listS11x2',1)"><img class="hand" hspace="1" id="btnReduce1" name="btnReduce1" src="../App_Themes/AgencyV2/Images/b_down.jpg" /></a><a class="imaLink img" href="javascript:IncreasePT('listS11x2',1)"><img class="hand" hspace="1" id="btnIncrease1" name="btnIncrease1" src="../App_Themes/AgencyV2/Images/b_up.jpg"/></a><a class="imaLink img" href="javascript:ReducePT('listS11x2',10)"><img class="hand" hspace="1" id="btnReduce10" name="btnReduce10" src="../App_Themes/AgencyV2/Images/b_sub.jpg"/></a><a class="imaLink img" href="javascript:IncreasePT('listS11x2',10)"><img class="hand" hspace="1" id="btnIncrease10" name="btnIncrease10" src="../App_Themes/AgencyV2/Images/b_add.jpg"/></a></td><td>
                                                <asp:DropDownList ID="ddlautoS1CS" disabled 
                                                onChange="SelectOnChange('autoS1CS');" runat="server">                                           
                                             <asp:ListItem Selected="True" value='0.7'>0.7</asp:ListItem>
                                             <asp:ListItem value='0.69'>0.69</asp:ListItem>
                                            <asp:ListItem value='0.68'>0.68</asp:ListItem>
                                             <asp:ListItem value='0.67'>0.67</asp:ListItem>
                                             <asp:ListItem value='0.66'>0.66</asp:ListItem>
                                             <asp:ListItem value='0.65'>0.65</asp:ListItem>
                                             <asp:ListItem value='0.64'>0.64</asp:ListItem>
                                             <asp:ListItem value='0.63'>0.63</asp:ListItem>
                                             <asp:ListItem value='0.62'>0.62</asp:ListItem>
                                             <asp:ListItem value='0.61'>0.61</asp:ListItem>
                                             <asp:ListItem value='0.6'>0.6</asp:ListItem>
                                             <asp:ListItem value='0.59'>0.59</asp:ListItem>
                                             <asp:ListItem value='0.58'>0.58</asp:ListItem>
                                             <asp:ListItem value='0.57'>0.57</asp:ListItem>
                                             <asp:ListItem value='0.56'>0.56</asp:ListItem>
                                             <asp:ListItem value='0.55'>0.55</asp:ListItem>
                                             <asp:ListItem value='0.54'>0.54</asp:ListItem>
                                             <asp:ListItem value='0.53'>0.53</asp:ListItem>
                                             <asp:ListItem value='0.52'>0.52</asp:ListItem>
                                             <asp:ListItem value='0.51'>0.51</asp:ListItem>
                                             <asp:ListItem value='0.5'>0.5</asp:ListItem>
                                             <asp:ListItem value='0.49'>0.49</asp:ListItem>
                                             <asp:ListItem value='0.48'>0.48</asp:ListItem>
                                             <asp:ListItem value='0.47'>0.47</asp:ListItem>
                                             <asp:ListItem value='0.46'>0.46</asp:ListItem>
                                             <asp:ListItem value='0.45'>0.45</asp:ListItem>
                                             <asp:ListItem value='0.44'>0.44</asp:ListItem>
                                             <asp:ListItem value='0.43'>0.43</asp:ListItem>
                                             <asp:ListItem value='0.42'>0.42</asp:ListItem>
                                             <asp:ListItem value='0.41'>0.41</asp:ListItem>
                                             <asp:ListItem value='0.4'>0.4</asp:ListItem>
                                             <asp:ListItem value='0.39'>0.39</asp:ListItem>
                                             <asp:ListItem value='0.38'>0.38</asp:ListItem>
                                             <asp:ListItem value='0.37'>0.37</asp:ListItem>
                                            <asp:ListItem value='0.36'>0.36</asp:ListItem>
                                             <asp:ListItem value='0.35'>0.35</asp:ListItem>
                                             <asp:ListItem value='0.34'>0.34</asp:ListItem>
                                             <asp:ListItem value='0.33'>0.33</asp:ListItem>
                                            <asp:ListItem value='0.32'>0.32</asp:ListItem>
                                            <asp:ListItem value='0.31'>0.31</asp:ListItem>
                                            <asp:ListItem value='0.3'>0.3</asp:ListItem>
                                             <asp:ListItem value='0.29'>0.29</asp:ListItem>
                                             <asp:ListItem value='0.28'>0.28</asp:ListItem>
                                             <asp:ListItem value='0.27'>0.27</asp:ListItem>
                                             <asp:ListItem value='0.26'>0.26</asp:ListItem>
                                             <asp:ListItem value='0.25'>0.25</asp:ListItem>
                                             <asp:ListItem value='0.24'>0.24</asp:ListItem>
                                             <asp:ListItem value='0.23'>0.23</asp:ListItem>
                                            <asp:ListItem value='0.22'>0.22</asp:ListItem>
                                             <asp:ListItem value='0.21'>0.21</asp:ListItem>
                                            <asp:ListItem value='0.2'>0.2</asp:ListItem>
                                             <asp:ListItem value='0.19'>0.19</asp:ListItem>
                                            <asp:ListItem value='0.18'>0.18</asp:ListItem>
                                             <asp:ListItem value='0.17'>0.17</asp:ListItem>
                                            <asp:ListItem value='0.16'>0.16</asp:ListItem>
                                             <asp:ListItem value='0.15'>0.15</asp:ListItem>
                                             <asp:ListItem value='0.14'>0.14</asp:ListItem>
                                             <asp:ListItem value='0.13'>0.13</asp:ListItem>
                                             <asp:ListItem value='0.12'>0.12</asp:ListItem>
                                            <asp:ListItem value='0.11'>0.11</asp:ListItem>
                                             <asp:ListItem value='0.1'>0.1</asp:ListItem>
                                             <asp:ListItem value='0.09'>0.09</asp:ListItem>
                                            <asp:ListItem value='0.08'>0.08</asp:ListItem>
                                             <asp:ListItem value='0.07'>0.07</asp:ListItem>
                                             <asp:ListItem value='0.06'>0.06</asp:ListItem>
                                             <asp:ListItem value='0.05'>0.05</asp:ListItem>
                                             <asp:ListItem value='0.04'>0.04</asp:ListItem>
                                            <asp:ListItem value='0.03'>0.03</asp:ListItem>
                                            <asp:ListItem value='0.02'>0.02</asp:ListItem>
                                             <asp:ListItem value='0.01'>0.01</asp:ListItem>
                                            <asp:ListItem  value='0'>0</asp:ListItem></asp:DropDownList>
                                            </td><td>
                                                <asp:DropDownList ID="ddlautoS1TG" disabled 
                                                onChange="SelectOnChange('autoS1TG');" runat="server">                                           
                                             <asp:ListItem Selected="True" value='0.7'>0.7</asp:ListItem>
                                             <asp:ListItem value='0.69'>0.69</asp:ListItem>
                                            <asp:ListItem value='0.68'>0.68</asp:ListItem>
                                             <asp:ListItem value='0.67'>0.67</asp:ListItem>
                                             <asp:ListItem value='0.66'>0.66</asp:ListItem>
                                             <asp:ListItem value='0.65'>0.65</asp:ListItem>
                                             <asp:ListItem value='0.64'>0.64</asp:ListItem>
                                             <asp:ListItem value='0.63'>0.63</asp:ListItem>
                                             <asp:ListItem value='0.62'>0.62</asp:ListItem>
                                             <asp:ListItem value='0.61'>0.61</asp:ListItem>
                                             <asp:ListItem value='0.6'>0.6</asp:ListItem>
                                             <asp:ListItem value='0.59'>0.59</asp:ListItem>
                                             <asp:ListItem value='0.58'>0.58</asp:ListItem>
                                             <asp:ListItem value='0.57'>0.57</asp:ListItem>
                                             <asp:ListItem value='0.56'>0.56</asp:ListItem>
                                             <asp:ListItem value='0.55'>0.55</asp:ListItem>
                                             <asp:ListItem value='0.54'>0.54</asp:ListItem>
                                             <asp:ListItem value='0.53'>0.53</asp:ListItem>
                                             <asp:ListItem value='0.52'>0.52</asp:ListItem>
                                             <asp:ListItem value='0.51'>0.51</asp:ListItem>
                                             <asp:ListItem value='0.5'>0.5</asp:ListItem>
                                             <asp:ListItem value='0.49'>0.49</asp:ListItem>
                                             <asp:ListItem value='0.48'>0.48</asp:ListItem>
                                             <asp:ListItem value='0.47'>0.47</asp:ListItem>
                                             <asp:ListItem value='0.46'>0.46</asp:ListItem>
                                             <asp:ListItem value='0.45'>0.45</asp:ListItem>
                                             <asp:ListItem value='0.44'>0.44</asp:ListItem>
                                             <asp:ListItem value='0.43'>0.43</asp:ListItem>
                                             <asp:ListItem value='0.42'>0.42</asp:ListItem>
                                             <asp:ListItem value='0.41'>0.41</asp:ListItem>
                                             <asp:ListItem value='0.4'>0.4</asp:ListItem>
                                             <asp:ListItem value='0.39'>0.39</asp:ListItem>
                                             <asp:ListItem value='0.38'>0.38</asp:ListItem>
                                             <asp:ListItem value='0.37'>0.37</asp:ListItem>
                                            <asp:ListItem value='0.36'>0.36</asp:ListItem>
                                             <asp:ListItem value='0.35'>0.35</asp:ListItem>
                                             <asp:ListItem value='0.34'>0.34</asp:ListItem>
                                             <asp:ListItem value='0.33'>0.33</asp:ListItem>
                                            <asp:ListItem value='0.32'>0.32</asp:ListItem>
                                            <asp:ListItem value='0.31'>0.31</asp:ListItem>
                                            <asp:ListItem value='0.3'>0.3</asp:ListItem>
                                             <asp:ListItem value='0.29'>0.29</asp:ListItem>
                                             <asp:ListItem value='0.28'>0.28</asp:ListItem>
                                             <asp:ListItem value='0.27'>0.27</asp:ListItem>
                                             <asp:ListItem value='0.26'>0.26</asp:ListItem>
                                             <asp:ListItem value='0.25'>0.25</asp:ListItem>
                                             <asp:ListItem value='0.24'>0.24</asp:ListItem>
                                             <asp:ListItem value='0.23'>0.23</asp:ListItem>
                                            <asp:ListItem value='0.22'>0.22</asp:ListItem>
                                             <asp:ListItem value='0.21'>0.21</asp:ListItem>
                                            <asp:ListItem value='0.2'>0.2</asp:ListItem>
                                             <asp:ListItem value='0.19'>0.19</asp:ListItem>
                                            <asp:ListItem value='0.18'>0.18</asp:ListItem>
                                             <asp:ListItem value='0.17'>0.17</asp:ListItem>
                                            <asp:ListItem value='0.16'>0.16</asp:ListItem>
                                             <asp:ListItem value='0.15'>0.15</asp:ListItem>
                                             <asp:ListItem value='0.14'>0.14</asp:ListItem>
                                             <asp:ListItem value='0.13'>0.13</asp:ListItem>
                                             <asp:ListItem value='0.12'>0.12</asp:ListItem>
                                            <asp:ListItem value='0.11'>0.11</asp:ListItem>
                                             <asp:ListItem value='0.1'>0.1</asp:ListItem>
                                             <asp:ListItem value='0.09'>0.09</asp:ListItem>
                                            <asp:ListItem value='0.08'>0.08</asp:ListItem>
                                             <asp:ListItem value='0.07'>0.07</asp:ListItem>
                                             <asp:ListItem value='0.06'>0.06</asp:ListItem>
                                             <asp:ListItem value='0.05'>0.05</asp:ListItem>
                                             <asp:ListItem value='0.04'>0.04</asp:ListItem>
                                            <asp:ListItem value='0.03'>0.03</asp:ListItem>
                                            <asp:ListItem value='0.02'>0.02</asp:ListItem>
                                             <asp:ListItem value='0.01'>0.01</asp:ListItem>
                                            <asp:ListItem  value='0'>0</asp:ListItem></asp:DropDownList>
                                            </td><td>
                                                <asp:DropDownList ID="ddlautoS1MD" disabled 
                                                onChange="SelectOnChange('autoS1HdpL1');" runat="server">                                           
                                             <asp:ListItem Selected="True" value='0.7'>0.7</asp:ListItem>
                                             <asp:ListItem value='0.69'>0.69</asp:ListItem>
                                            <asp:ListItem value='0.68'>0.68</asp:ListItem>
                                             <asp:ListItem value='0.67'>0.67</asp:ListItem>
                                             <asp:ListItem value='0.66'>0.66</asp:ListItem>
                                             <asp:ListItem value='0.65'>0.65</asp:ListItem>
                                             <asp:ListItem value='0.64'>0.64</asp:ListItem>
                                             <asp:ListItem value='0.63'>0.63</asp:ListItem>
                                             <asp:ListItem value='0.62'>0.62</asp:ListItem>
                                             <asp:ListItem value='0.61'>0.61</asp:ListItem>
                                             <asp:ListItem value='0.6'>0.6</asp:ListItem>
                                             <asp:ListItem value='0.59'>0.59</asp:ListItem>
                                             <asp:ListItem value='0.58'>0.58</asp:ListItem>
                                             <asp:ListItem value='0.57'>0.57</asp:ListItem>
                                             <asp:ListItem value='0.56'>0.56</asp:ListItem>
                                             <asp:ListItem value='0.55'>0.55</asp:ListItem>
                                             <asp:ListItem value='0.54'>0.54</asp:ListItem>
                                             <asp:ListItem value='0.53'>0.53</asp:ListItem>
                                             <asp:ListItem value='0.52'>0.52</asp:ListItem>
                                             <asp:ListItem value='0.51'>0.51</asp:ListItem>
                                             <asp:ListItem value='0.5'>0.5</asp:ListItem>
                                             <asp:ListItem value='0.49'>0.49</asp:ListItem>
                                             <asp:ListItem value='0.48'>0.48</asp:ListItem>
                                             <asp:ListItem value='0.47'>0.47</asp:ListItem>
                                             <asp:ListItem value='0.46'>0.46</asp:ListItem>
                                             <asp:ListItem value='0.45'>0.45</asp:ListItem>
                                             <asp:ListItem value='0.44'>0.44</asp:ListItem>
                                             <asp:ListItem value='0.43'>0.43</asp:ListItem>
                                             <asp:ListItem value='0.42'>0.42</asp:ListItem>
                                             <asp:ListItem value='0.41'>0.41</asp:ListItem>
                                             <asp:ListItem value='0.4'>0.4</asp:ListItem>
                                             <asp:ListItem value='0.39'>0.39</asp:ListItem>
                                             <asp:ListItem value='0.38'>0.38</asp:ListItem>
                                             <asp:ListItem value='0.37'>0.37</asp:ListItem>
                                            <asp:ListItem value='0.36'>0.36</asp:ListItem>
                                             <asp:ListItem value='0.35'>0.35</asp:ListItem>
                                             <asp:ListItem value='0.34'>0.34</asp:ListItem>
                                             <asp:ListItem value='0.33'>0.33</asp:ListItem>
                                            <asp:ListItem value='0.32'>0.32</asp:ListItem>
                                            <asp:ListItem value='0.31'>0.31</asp:ListItem>
                                            <asp:ListItem value='0.3'>0.3</asp:ListItem>
                                             <asp:ListItem value='0.29'>0.29</asp:ListItem>
                                             <asp:ListItem value='0.28'>0.28</asp:ListItem>
                                             <asp:ListItem value='0.27'>0.27</asp:ListItem>
                                             <asp:ListItem value='0.26'>0.26</asp:ListItem>
                                             <asp:ListItem value='0.25'>0.25</asp:ListItem>
                                             <asp:ListItem value='0.24'>0.24</asp:ListItem>
                                             <asp:ListItem value='0.23'>0.23</asp:ListItem>
                                            <asp:ListItem value='0.22'>0.22</asp:ListItem>
                                             <asp:ListItem value='0.21'>0.21</asp:ListItem>
                                            <asp:ListItem value='0.2'>0.2</asp:ListItem>
                                             <asp:ListItem value='0.19'>0.19</asp:ListItem>
                                            <asp:ListItem value='0.18'>0.18</asp:ListItem>
                                             <asp:ListItem value='0.17'>0.17</asp:ListItem>
                                            <asp:ListItem value='0.16'>0.16</asp:ListItem>
                                             <asp:ListItem value='0.15'>0.15</asp:ListItem>
                                             <asp:ListItem value='0.14'>0.14</asp:ListItem>
                                             <asp:ListItem value='0.13'>0.13</asp:ListItem>
                                             <asp:ListItem value='0.12'>0.12</asp:ListItem>
                                            <asp:ListItem value='0.11'>0.11</asp:ListItem>
                                             <asp:ListItem value='0.1'>0.1</asp:ListItem>
                                             <asp:ListItem value='0.09'>0.09</asp:ListItem>
                                            <asp:ListItem value='0.08'>0.08</asp:ListItem>
                                             <asp:ListItem value='0.07'>0.07</asp:ListItem>
                                             <asp:ListItem value='0.06'>0.06</asp:ListItem>
                                             <asp:ListItem value='0.05'>0.05</asp:ListItem>
                                             <asp:ListItem value='0.04'>0.04</asp:ListItem>
                                            <asp:ListItem value='0.03'>0.03</asp:ListItem>
                                            <asp:ListItem value='0.02'>0.02</asp:ListItem>
                                             <asp:ListItem value='0.01'>0.01</asp:ListItem>
                                            <asp:ListItem  value='0'>0</asp:ListItem></asp:DropDownList>
                                            </td><td>
                                                <asp:DropDownList ID="ddlautoS1OR" disabled 
                                                onChange="SelectOnChange('autoS1OR');" runat="server">                                           
                                             <asp:ListItem Selected="True" value='0.7'>0.7</asp:ListItem>
                                             <asp:ListItem value='0.69'>0.69</asp:ListItem>
                                            <asp:ListItem value='0.68'>0.68</asp:ListItem>
                                             <asp:ListItem value='0.67'>0.67</asp:ListItem>
                                             <asp:ListItem value='0.66'>0.66</asp:ListItem>
                                             <asp:ListItem value='0.65'>0.65</asp:ListItem>
                                             <asp:ListItem value='0.64'>0.64</asp:ListItem>
                                             <asp:ListItem value='0.63'>0.63</asp:ListItem>
                                             <asp:ListItem value='0.62'>0.62</asp:ListItem>
                                             <asp:ListItem value='0.61'>0.61</asp:ListItem>
                                             <asp:ListItem value='0.6'>0.6</asp:ListItem>
                                             <asp:ListItem value='0.59'>0.59</asp:ListItem>
                                             <asp:ListItem value='0.58'>0.58</asp:ListItem>
                                             <asp:ListItem value='0.57'>0.57</asp:ListItem>
                                             <asp:ListItem value='0.56'>0.56</asp:ListItem>
                                             <asp:ListItem value='0.55'>0.55</asp:ListItem>
                                             <asp:ListItem value='0.54'>0.54</asp:ListItem>
                                             <asp:ListItem value='0.53'>0.53</asp:ListItem>
                                             <asp:ListItem value='0.52'>0.52</asp:ListItem>
                                             <asp:ListItem value='0.51'>0.51</asp:ListItem>
                                             <asp:ListItem value='0.5'>0.5</asp:ListItem>
                                             <asp:ListItem value='0.49'>0.49</asp:ListItem>
                                             <asp:ListItem value='0.48'>0.48</asp:ListItem>
                                             <asp:ListItem value='0.47'>0.47</asp:ListItem>
                                             <asp:ListItem value='0.46'>0.46</asp:ListItem>
                                             <asp:ListItem value='0.45'>0.45</asp:ListItem>
                                             <asp:ListItem value='0.44'>0.44</asp:ListItem>
                                             <asp:ListItem value='0.43'>0.43</asp:ListItem>
                                             <asp:ListItem value='0.42'>0.42</asp:ListItem>
                                             <asp:ListItem value='0.41'>0.41</asp:ListItem>
                                             <asp:ListItem value='0.4'>0.4</asp:ListItem>
                                             <asp:ListItem value='0.39'>0.39</asp:ListItem>
                                             <asp:ListItem value='0.38'>0.38</asp:ListItem>
                                             <asp:ListItem value='0.37'>0.37</asp:ListItem>
                                            <asp:ListItem value='0.36'>0.36</asp:ListItem>
                                             <asp:ListItem value='0.35'>0.35</asp:ListItem>
                                             <asp:ListItem value='0.34'>0.34</asp:ListItem>
                                             <asp:ListItem value='0.33'>0.33</asp:ListItem>
                                            <asp:ListItem value='0.32'>0.32</asp:ListItem>
                                            <asp:ListItem value='0.31'>0.31</asp:ListItem>
                                            <asp:ListItem value='0.3'>0.3</asp:ListItem>
                                             <asp:ListItem value='0.29'>0.29</asp:ListItem>
                                             <asp:ListItem value='0.28'>0.28</asp:ListItem>
                                             <asp:ListItem value='0.27'>0.27</asp:ListItem>
                                             <asp:ListItem value='0.26'>0.26</asp:ListItem>
                                             <asp:ListItem value='0.25'>0.25</asp:ListItem>
                                             <asp:ListItem value='0.24'>0.24</asp:ListItem>
                                             <asp:ListItem value='0.23'>0.23</asp:ListItem>
                                            <asp:ListItem value='0.22'>0.22</asp:ListItem>
                                             <asp:ListItem value='0.21'>0.21</asp:ListItem>
                                            <asp:ListItem value='0.2'>0.2</asp:ListItem>
                                             <asp:ListItem value='0.19'>0.19</asp:ListItem>
                                            <asp:ListItem value='0.18'>0.18</asp:ListItem>
                                             <asp:ListItem value='0.17'>0.17</asp:ListItem>
                                            <asp:ListItem value='0.16'>0.16</asp:ListItem>
                                             <asp:ListItem value='0.15'>0.15</asp:ListItem>
                                             <asp:ListItem value='0.14'>0.14</asp:ListItem>
                                             <asp:ListItem value='0.13'>0.13</asp:ListItem>
                                             <asp:ListItem value='0.12'>0.12</asp:ListItem>
                                            <asp:ListItem value='0.11'>0.11</asp:ListItem>
                                             <asp:ListItem value='0.1'>0.1</asp:ListItem>
                                             <asp:ListItem value='0.09'>0.09</asp:ListItem>
                                            <asp:ListItem value='0.08'>0.08</asp:ListItem>
                                             <asp:ListItem value='0.07'>0.07</asp:ListItem>
                                             <asp:ListItem value='0.06'>0.06</asp:ListItem>
                                             <asp:ListItem value='0.05'>0.05</asp:ListItem>
                                             <asp:ListItem value='0.04'>0.04</asp:ListItem>
                                            <asp:ListItem value='0.03'>0.03</asp:ListItem>
                                            <asp:ListItem value='0.02'>0.02</asp:ListItem>
                                             <asp:ListItem value='0.01'>0.01</asp:ListItem>
                                            <asp:ListItem  value='0'>0</asp:ListItem></asp:DropDownList>
                                            </td></tr><tr class="bg_eb {hdauto}"><td rowspan="2" class="r">Auto Super Preset</td><td>
                                            <asp:CheckBox ID="chkAuto1HdpD"  onclick="CheckAutoPreset(this)"  runat="server" />
                                            </td><td>
                                            <asp:CheckBox ID="chkAuto1OUS"  onclick="CheckAutoPreset(this)"  runat="server" />
                                            </td><td>
                                            <asp:CheckBox ID="chkAuto11stHdpD0"  onclick="CheckAutoPreset(this,'chkCopy1HdpDeadball')"  runat="server" />
                                            </td><td>
                                            <asp:CheckBox ID="chkAuto11stOUD"  
                                                    onclick="CheckAutoPreset(this,'chkCopy1HdpDeadball')"  runat="server" />
                                            </td><td>
                                            <asp:CheckBox ID="chkAuto11stOED"  
                                                    onclick="CheckAutoPreset(this,'chkCopy1HdpDeadball')"  runat="server" />
                                            </td><td>
                                                <asp:CheckBox ID="chkauto11x2" onclick="CheckAutoPreset(this)" runat="server" />
&nbsp;</td><td>
    <asp:CheckBox ID="chkauto1CH" onclick="CheckAutoPreset(this,'chkCopy11x2')"  runat="server" /></td><td>
        <asp:CheckBox ID="chkAuto1TG"  onclick="CheckAutoPreset(this,'chkCopy11x2')" runat="server" /></td><td>
        <asp:CheckBox ID="chkAuto1TM"  onclick="CheckAutoPreset(this,'chkCopy11x2')" runat="server" /></td><td>
        <asp:CheckBox ID="chkAuto1OR"  onclick="CheckAutoPreset(this,'chkCopy11x2')" runat="server" /></td></tr><tr class="bg_eb {hdauto}" style="border:solid 0px #fff;"><td>
                                                <asp:DropDownList ID="ddlautoS1HDTP" disabled 
                                                onChange="SelectOnChange('autoS1HDTP');" runat="server">                                           
                                             <asp:ListItem value='0.7'>0.7</asp:ListItem>
                                             <asp:ListItem value='0.69'>0.69</asp:ListItem>
                                            <asp:ListItem value='0.68'>0.68</asp:ListItem>
                                             <asp:ListItem value='0.67'>0.67</asp:ListItem>
                                             <asp:ListItem value='0.66'>0.66</asp:ListItem>
                                             <asp:ListItem value='0.65'>0.65</asp:ListItem>
                                             <asp:ListItem value='0.64'>0.64</asp:ListItem>
                                             <asp:ListItem value='0.63'>0.63</asp:ListItem>
                                             <asp:ListItem value='0.62'>0.62</asp:ListItem>
                                             <asp:ListItem value='0.61'>0.61</asp:ListItem>
                                             <asp:ListItem value='0.6'>0.6</asp:ListItem>
                                             <asp:ListItem value='0.59'>0.59</asp:ListItem>
                                             <asp:ListItem value='0.58'>0.58</asp:ListItem>
                                             <asp:ListItem value='0.57'>0.57</asp:ListItem>
                                             <asp:ListItem value='0.56'>0.56</asp:ListItem>
                                             <asp:ListItem value='0.55'>0.55</asp:ListItem>
                                             <asp:ListItem value='0.54'>0.54</asp:ListItem>
                                             <asp:ListItem value='0.53'>0.53</asp:ListItem>
                                             <asp:ListItem value='0.52'>0.52</asp:ListItem>
                                             <asp:ListItem value='0.51'>0.51</asp:ListItem>
                                             <asp:ListItem value='0.5'>0.5</asp:ListItem>
                                             <asp:ListItem value='0.49'>0.49</asp:ListItem>
                                             <asp:ListItem value='0.48'>0.48</asp:ListItem>
                                             <asp:ListItem value='0.47'>0.47</asp:ListItem>
                                             <asp:ListItem value='0.46'>0.46</asp:ListItem>
                                             <asp:ListItem value='0.45'>0.45</asp:ListItem>
                                             <asp:ListItem value='0.44'>0.44</asp:ListItem>
                                             <asp:ListItem value='0.43'>0.43</asp:ListItem>
                                             <asp:ListItem value='0.42'>0.42</asp:ListItem>
                                             <asp:ListItem value='0.41'>0.41</asp:ListItem>
                                             <asp:ListItem value='0.4'>0.4</asp:ListItem>
                                             <asp:ListItem value='0.39'>0.39</asp:ListItem>
                                             <asp:ListItem value='0.38'>0.38</asp:ListItem>
                                             <asp:ListItem value='0.37'>0.37</asp:ListItem>
                                            <asp:ListItem value='0.36'>0.36</asp:ListItem>
                                             <asp:ListItem value='0.35'>0.35</asp:ListItem>
                                             <asp:ListItem value='0.34'>0.34</asp:ListItem>
                                             <asp:ListItem value='0.33'>0.33</asp:ListItem>
                                            <asp:ListItem value='0.32'>0.32</asp:ListItem>
                                            <asp:ListItem value='0.31'>0.31</asp:ListItem>
                                            <asp:ListItem value='0.3'>0.3</asp:ListItem>
                                             <asp:ListItem value='0.29'>0.29</asp:ListItem>
                                             <asp:ListItem value='0.28'>0.28</asp:ListItem>
                                             <asp:ListItem value='0.27'>0.27</asp:ListItem>
                                             <asp:ListItem value='0.26'>0.26</asp:ListItem>
                                             <asp:ListItem value='0.25'>0.25</asp:ListItem>
                                             <asp:ListItem value='0.24'>0.24</asp:ListItem>
                                             <asp:ListItem value='0.23'>0.23</asp:ListItem>
                                            <asp:ListItem value='0.22'>0.22</asp:ListItem>
                                             <asp:ListItem value='0.21'>0.21</asp:ListItem>
                                            <asp:ListItem value='0.2'>0.2</asp:ListItem>
                                             <asp:ListItem value='0.19'>0.19</asp:ListItem>
                                            <asp:ListItem value='0.18'>0.18</asp:ListItem>
                                             <asp:ListItem value='0.17'>0.17</asp:ListItem>
                                            <asp:ListItem value='0.16'>0.16</asp:ListItem>
                                             <asp:ListItem value='0.15'>0.15</asp:ListItem>
                                             <asp:ListItem value='0.14'>0.14</asp:ListItem>
                                             <asp:ListItem value='0.13'>0.13</asp:ListItem>
                                             <asp:ListItem value='0.12'>0.12</asp:ListItem>
                                            <asp:ListItem value='0.11'>0.11</asp:ListItem>
                                             <asp:ListItem value='0.1'>0.1</asp:ListItem>
                                             <asp:ListItem value='0.09'>0.09</asp:ListItem>
                                            <asp:ListItem value='0.08'>0.08</asp:ListItem>
                                             <asp:ListItem value='0.07'>0.07</asp:ListItem>
                                             <asp:ListItem value='0.06'>0.06</asp:ListItem>
                                             <asp:ListItem value='0.05'>0.05</asp:ListItem>
                                             <asp:ListItem value='0.04'>0.04</asp:ListItem>
                                            <asp:ListItem value='0.03'>0.03</asp:ListItem>
                                            <asp:ListItem value='0.02'>0.02</asp:ListItem>
                                             <asp:ListItem value='0.01'>0.01</asp:ListItem>
                                            <asp:ListItem selected='true' value='0'>0</asp:ListItem></asp:DropDownList>
                                            <a class="imaLink img" href="javascript:ReducePT('autoS1HdpD',1)"><img class="hand" hspace="1" id="btnReduce1" name="btnReduce1" src="../App_Themes/AgencyV2/Images/b_down.jpg" /></a><a class="imaLink img" href="javascript:IncreasePT('autoS1HdpD',1)"><img class="hand" hspace="1" id="btnIncrease1" name="btnIncrease1" src="../App_Themes/AgencyV2/Images/b_up.jpg"/></a><a class="imaLink img" href="javascript:ReducePT('autoS1HdpD',10)"><img class="hand" hspace="1" id="btnReduce10" name="btnReduce10" src="../App_Themes/AgencyV2/Images/b_sub.jpg"/></a>
<a class="imaLink img" href="javascript:IncreasePT('autoS1HdpD',10)"><img class="hand" hspace="1" id="btnIncrease10" name="btnIncrease10" src="../App_Themes/AgencyV2/Images/b_add.jpg"/></a></td><td>
                                                <asp:DropDownList ID="ddlautoS1OUS" disabled 
                                                onChange="SelectOnChange('autoS1OUS');" runat="server">                                           
                                             <asp:ListItem value='0.7'>0.7</asp:ListItem>
                                             <asp:ListItem value='0.69'>0.69</asp:ListItem>
                                            <asp:ListItem value='0.68'>0.68</asp:ListItem>
                                             <asp:ListItem value='0.67'>0.67</asp:ListItem>
                                             <asp:ListItem value='0.66'>0.66</asp:ListItem>
                                             <asp:ListItem value='0.65'>0.65</asp:ListItem>
                                             <asp:ListItem value='0.64'>0.64</asp:ListItem>
                                             <asp:ListItem value='0.63'>0.63</asp:ListItem>
                                             <asp:ListItem value='0.62'>0.62</asp:ListItem>
                                             <asp:ListItem value='0.61'>0.61</asp:ListItem>
                                             <asp:ListItem value='0.6'>0.6</asp:ListItem>
                                             <asp:ListItem value='0.59'>0.59</asp:ListItem>
                                             <asp:ListItem value='0.58'>0.58</asp:ListItem>
                                             <asp:ListItem value='0.57'>0.57</asp:ListItem>
                                             <asp:ListItem value='0.56'>0.56</asp:ListItem>
                                             <asp:ListItem value='0.55'>0.55</asp:ListItem>
                                             <asp:ListItem value='0.54'>0.54</asp:ListItem>
                                             <asp:ListItem value='0.53'>0.53</asp:ListItem>
                                             <asp:ListItem value='0.52'>0.52</asp:ListItem>
                                             <asp:ListItem value='0.51'>0.51</asp:ListItem>
                                             <asp:ListItem value='0.5'>0.5</asp:ListItem>
                                             <asp:ListItem value='0.49'>0.49</asp:ListItem>
                                             <asp:ListItem value='0.48'>0.48</asp:ListItem>
                                             <asp:ListItem value='0.47'>0.47</asp:ListItem>
                                             <asp:ListItem value='0.46'>0.46</asp:ListItem>
                                             <asp:ListItem value='0.45'>0.45</asp:ListItem>
                                             <asp:ListItem value='0.44'>0.44</asp:ListItem>
                                             <asp:ListItem value='0.43'>0.43</asp:ListItem>
                                             <asp:ListItem value='0.42'>0.42</asp:ListItem>
                                             <asp:ListItem value='0.41'>0.41</asp:ListItem>
                                             <asp:ListItem value='0.4'>0.4</asp:ListItem>
                                             <asp:ListItem value='0.39'>0.39</asp:ListItem>
                                             <asp:ListItem value='0.38'>0.38</asp:ListItem>
                                             <asp:ListItem value='0.37'>0.37</asp:ListItem>
                                            <asp:ListItem value='0.36'>0.36</asp:ListItem>
                                             <asp:ListItem value='0.35'>0.35</asp:ListItem>
                                             <asp:ListItem value='0.34'>0.34</asp:ListItem>
                                             <asp:ListItem value='0.33'>0.33</asp:ListItem>
                                            <asp:ListItem value='0.32'>0.32</asp:ListItem>
                                            <asp:ListItem value='0.31'>0.31</asp:ListItem>
                                            <asp:ListItem value='0.3'>0.3</asp:ListItem>
                                             <asp:ListItem value='0.29'>0.29</asp:ListItem>
                                             <asp:ListItem value='0.28'>0.28</asp:ListItem>
                                             <asp:ListItem value='0.27'>0.27</asp:ListItem>
                                             <asp:ListItem value='0.26'>0.26</asp:ListItem>
                                             <asp:ListItem value='0.25'>0.25</asp:ListItem>
                                             <asp:ListItem value='0.24'>0.24</asp:ListItem>
                                             <asp:ListItem value='0.23'>0.23</asp:ListItem>
                                            <asp:ListItem value='0.22'>0.22</asp:ListItem>
                                             <asp:ListItem value='0.21'>0.21</asp:ListItem>
                                            <asp:ListItem value='0.2'>0.2</asp:ListItem>
                                             <asp:ListItem value='0.19'>0.19</asp:ListItem>
                                            <asp:ListItem value='0.18'>0.18</asp:ListItem>
                                             <asp:ListItem value='0.17'>0.17</asp:ListItem>
                                            <asp:ListItem value='0.16'>0.16</asp:ListItem>
                                             <asp:ListItem value='0.15'>0.15</asp:ListItem>
                                             <asp:ListItem value='0.14'>0.14</asp:ListItem>
                                             <asp:ListItem value='0.13'>0.13</asp:ListItem>
                                             <asp:ListItem value='0.12'>0.12</asp:ListItem>
                                            <asp:ListItem value='0.11'>0.11</asp:ListItem>
                                             <asp:ListItem value='0.1'>0.1</asp:ListItem>
                                             <asp:ListItem value='0.09'>0.09</asp:ListItem>
                                            <asp:ListItem value='0.08'>0.08</asp:ListItem>
                                             <asp:ListItem value='0.07'>0.07</asp:ListItem>
                                             <asp:ListItem value='0.06'>0.06</asp:ListItem>
                                             <asp:ListItem value='0.05'>0.05</asp:ListItem>
                                             <asp:ListItem value='0.04'>0.04</asp:ListItem>
                                            <asp:ListItem value='0.03'>0.03</asp:ListItem>
                                            <asp:ListItem value='0.02'>0.02</asp:ListItem>
                                             <asp:ListItem value='0.01'>0.01</asp:ListItem>
                                            <asp:ListItem selected='true' value='0'>0</asp:ListItem></asp:DropDownList>
                                        </td><td>
                                                <asp:DropDownList ID="ddlautoS11stHDpL" disabled 
                                                onChange="SelectOnChange('autoS11stHdpL');" runat="server">                                           
                                             <asp:ListItem value='0.7'>0.7</asp:ListItem>
                                             <asp:ListItem value='0.69'>0.69</asp:ListItem>
                                            <asp:ListItem value='0.68'>0.68</asp:ListItem>
                                             <asp:ListItem value='0.67'>0.67</asp:ListItem>
                                             <asp:ListItem value='0.66'>0.66</asp:ListItem>
                                             <asp:ListItem value='0.65'>0.65</asp:ListItem>
                                             <asp:ListItem value='0.64'>0.64</asp:ListItem>
                                             <asp:ListItem value='0.63'>0.63</asp:ListItem>
                                             <asp:ListItem value='0.62'>0.62</asp:ListItem>
                                             <asp:ListItem value='0.61'>0.61</asp:ListItem>
                                             <asp:ListItem value='0.6'>0.6</asp:ListItem>
                                             <asp:ListItem value='0.59'>0.59</asp:ListItem>
                                             <asp:ListItem value='0.58'>0.58</asp:ListItem>
                                             <asp:ListItem value='0.57'>0.57</asp:ListItem>
                                             <asp:ListItem value='0.56'>0.56</asp:ListItem>
                                             <asp:ListItem value='0.55'>0.55</asp:ListItem>
                                             <asp:ListItem value='0.54'>0.54</asp:ListItem>
                                             <asp:ListItem value='0.53'>0.53</asp:ListItem>
                                             <asp:ListItem value='0.52'>0.52</asp:ListItem>
                                             <asp:ListItem value='0.51'>0.51</asp:ListItem>
                                             <asp:ListItem value='0.5'>0.5</asp:ListItem>
                                             <asp:ListItem value='0.49'>0.49</asp:ListItem>
                                             <asp:ListItem value='0.48'>0.48</asp:ListItem>
                                             <asp:ListItem value='0.47'>0.47</asp:ListItem>
                                             <asp:ListItem value='0.46'>0.46</asp:ListItem>
                                             <asp:ListItem value='0.45'>0.45</asp:ListItem>
                                             <asp:ListItem value='0.44'>0.44</asp:ListItem>
                                             <asp:ListItem value='0.43'>0.43</asp:ListItem>
                                             <asp:ListItem value='0.42'>0.42</asp:ListItem>
                                             <asp:ListItem value='0.41'>0.41</asp:ListItem>
                                             <asp:ListItem value='0.4'>0.4</asp:ListItem>
                                             <asp:ListItem value='0.39'>0.39</asp:ListItem>
                                             <asp:ListItem value='0.38'>0.38</asp:ListItem>
                                             <asp:ListItem value='0.37'>0.37</asp:ListItem>
                                            <asp:ListItem value='0.36'>0.36</asp:ListItem>
                                             <asp:ListItem value='0.35'>0.35</asp:ListItem>
                                             <asp:ListItem value='0.34'>0.34</asp:ListItem>
                                             <asp:ListItem value='0.33'>0.33</asp:ListItem>
                                            <asp:ListItem value='0.32'>0.32</asp:ListItem>
                                            <asp:ListItem value='0.31'>0.31</asp:ListItem>
                                            <asp:ListItem value='0.3'>0.3</asp:ListItem>
                                             <asp:ListItem value='0.29'>0.29</asp:ListItem>
                                             <asp:ListItem value='0.28'>0.28</asp:ListItem>
                                             <asp:ListItem value='0.27'>0.27</asp:ListItem>
                                             <asp:ListItem value='0.26'>0.26</asp:ListItem>
                                             <asp:ListItem value='0.25'>0.25</asp:ListItem>
                                             <asp:ListItem value='0.24'>0.24</asp:ListItem>
                                             <asp:ListItem value='0.23'>0.23</asp:ListItem>
                                            <asp:ListItem value='0.22'>0.22</asp:ListItem>
                                             <asp:ListItem value='0.21'>0.21</asp:ListItem>
                                            <asp:ListItem value='0.2'>0.2</asp:ListItem>
                                             <asp:ListItem value='0.19'>0.19</asp:ListItem>
                                            <asp:ListItem value='0.18'>0.18</asp:ListItem>
                                             <asp:ListItem value='0.17'>0.17</asp:ListItem>
                                            <asp:ListItem value='0.16'>0.16</asp:ListItem>
                                             <asp:ListItem value='0.15'>0.15</asp:ListItem>
                                             <asp:ListItem value='0.14'>0.14</asp:ListItem>
                                             <asp:ListItem value='0.13'>0.13</asp:ListItem>
                                             <asp:ListItem value='0.12'>0.12</asp:ListItem>
                                            <asp:ListItem value='0.11'>0.11</asp:ListItem>
                                             <asp:ListItem value='0.1'>0.1</asp:ListItem>
                                             <asp:ListItem value='0.09'>0.09</asp:ListItem>
                                            <asp:ListItem value='0.08'>0.08</asp:ListItem>
                                             <asp:ListItem value='0.07'>0.07</asp:ListItem>
                                             <asp:ListItem value='0.06'>0.06</asp:ListItem>
                                             <asp:ListItem value='0.05'>0.05</asp:ListItem>
                                             <asp:ListItem value='0.04'>0.04</asp:ListItem>
                                            <asp:ListItem value='0.03'>0.03</asp:ListItem>
                                            <asp:ListItem value='0.02'>0.02</asp:ListItem>
                                             <asp:ListItem value='0.01'>0.01</asp:ListItem>
                                            <asp:ListItem selected='true' value='0'>0</asp:ListItem></asp:DropDownList>
                                        </td><td>
                                                <asp:DropDownList ID="ddlautoS11stOUS" disabled 
                                                onChange="SelectOnChange('autoS1stOUS');" runat="server">                                           
                                             <asp:ListItem value='0.7'>0.7</asp:ListItem>
                                             <asp:ListItem value='0.69'>0.69</asp:ListItem>
                                            <asp:ListItem value='0.68'>0.68</asp:ListItem>
                                             <asp:ListItem value='0.67'>0.67</asp:ListItem>
                                             <asp:ListItem value='0.66'>0.66</asp:ListItem>
                                             <asp:ListItem value='0.65'>0.65</asp:ListItem>
                                             <asp:ListItem value='0.64'>0.64</asp:ListItem>
                                             <asp:ListItem value='0.63'>0.63</asp:ListItem>
                                             <asp:ListItem value='0.62'>0.62</asp:ListItem>
                                             <asp:ListItem value='0.61'>0.61</asp:ListItem>
                                             <asp:ListItem value='0.6'>0.6</asp:ListItem>
                                             <asp:ListItem value='0.59'>0.59</asp:ListItem>
                                             <asp:ListItem value='0.58'>0.58</asp:ListItem>
                                             <asp:ListItem value='0.57'>0.57</asp:ListItem>
                                             <asp:ListItem value='0.56'>0.56</asp:ListItem>
                                             <asp:ListItem value='0.55'>0.55</asp:ListItem>
                                             <asp:ListItem value='0.54'>0.54</asp:ListItem>
                                             <asp:ListItem value='0.53'>0.53</asp:ListItem>
                                             <asp:ListItem value='0.52'>0.52</asp:ListItem>
                                             <asp:ListItem value='0.51'>0.51</asp:ListItem>
                                             <asp:ListItem value='0.5'>0.5</asp:ListItem>
                                             <asp:ListItem value='0.49'>0.49</asp:ListItem>
                                             <asp:ListItem value='0.48'>0.48</asp:ListItem>
                                             <asp:ListItem value='0.47'>0.47</asp:ListItem>
                                             <asp:ListItem value='0.46'>0.46</asp:ListItem>
                                             <asp:ListItem value='0.45'>0.45</asp:ListItem>
                                             <asp:ListItem value='0.44'>0.44</asp:ListItem>
                                             <asp:ListItem value='0.43'>0.43</asp:ListItem>
                                             <asp:ListItem value='0.42'>0.42</asp:ListItem>
                                             <asp:ListItem value='0.41'>0.41</asp:ListItem>
                                             <asp:ListItem value='0.4'>0.4</asp:ListItem>
                                             <asp:ListItem value='0.39'>0.39</asp:ListItem>
                                             <asp:ListItem value='0.38'>0.38</asp:ListItem>
                                             <asp:ListItem value='0.37'>0.37</asp:ListItem>
                                            <asp:ListItem value='0.36'>0.36</asp:ListItem>
                                             <asp:ListItem value='0.35'>0.35</asp:ListItem>
                                             <asp:ListItem value='0.34'>0.34</asp:ListItem>
                                             <asp:ListItem value='0.33'>0.33</asp:ListItem>
                                            <asp:ListItem value='0.32'>0.32</asp:ListItem>
                                            <asp:ListItem value='0.31'>0.31</asp:ListItem>
                                            <asp:ListItem value='0.3'>0.3</asp:ListItem>
                                             <asp:ListItem value='0.29'>0.29</asp:ListItem>
                                             <asp:ListItem value='0.28'>0.28</asp:ListItem>
                                             <asp:ListItem value='0.27'>0.27</asp:ListItem>
                                             <asp:ListItem value='0.26'>0.26</asp:ListItem>
                                             <asp:ListItem value='0.25'>0.25</asp:ListItem>
                                             <asp:ListItem value='0.24'>0.24</asp:ListItem>
                                             <asp:ListItem value='0.23'>0.23</asp:ListItem>
                                            <asp:ListItem value='0.22'>0.22</asp:ListItem>
                                             <asp:ListItem value='0.21'>0.21</asp:ListItem>
                                            <asp:ListItem value='0.2'>0.2</asp:ListItem>
                                             <asp:ListItem value='0.19'>0.19</asp:ListItem>
                                            <asp:ListItem value='0.18'>0.18</asp:ListItem>
                                             <asp:ListItem value='0.17'>0.17</asp:ListItem>
                                            <asp:ListItem value='0.16'>0.16</asp:ListItem>
                                             <asp:ListItem value='0.15'>0.15</asp:ListItem>
                                             <asp:ListItem value='0.14'>0.14</asp:ListItem>
                                             <asp:ListItem value='0.13'>0.13</asp:ListItem>
                                             <asp:ListItem value='0.12'>0.12</asp:ListItem>
                                            <asp:ListItem value='0.11'>0.11</asp:ListItem>
                                             <asp:ListItem value='0.1'>0.1</asp:ListItem>
                                             <asp:ListItem value='0.09'>0.09</asp:ListItem>
                                            <asp:ListItem value='0.08'>0.08</asp:ListItem>
                                             <asp:ListItem value='0.07'>0.07</asp:ListItem>
                                             <asp:ListItem value='0.06'>0.06</asp:ListItem>
                                             <asp:ListItem value='0.05'>0.05</asp:ListItem>
                                             <asp:ListItem value='0.04'>0.04</asp:ListItem>
                                            <asp:ListItem value='0.03'>0.03</asp:ListItem>
                                            <asp:ListItem value='0.02'>0.02</asp:ListItem>
                                             <asp:ListItem value='0.01'>0.01</asp:ListItem>
                                            <asp:ListItem selected='true' value='0'>0</asp:ListItem></asp:DropDownList>
                                        </td><td>
                                                <asp:DropDownList ID="ddlautoS11OE" disabled 
                                                onChange="SelectOnChange('autoS11OE');" runat="server">                                           
                                             <asp:ListItem value='0.7'>0.7</asp:ListItem>
                                             <asp:ListItem value='0.69'>0.69</asp:ListItem>
                                            <asp:ListItem value='0.68'>0.68</asp:ListItem>
                                             <asp:ListItem value='0.67'>0.67</asp:ListItem>
                                             <asp:ListItem value='0.66'>0.66</asp:ListItem>
                                             <asp:ListItem value='0.65'>0.65</asp:ListItem>
                                             <asp:ListItem value='0.64'>0.64</asp:ListItem>
                                             <asp:ListItem value='0.63'>0.63</asp:ListItem>
                                             <asp:ListItem value='0.62'>0.62</asp:ListItem>
                                             <asp:ListItem value='0.61'>0.61</asp:ListItem>
                                             <asp:ListItem value='0.6'>0.6</asp:ListItem>
                                             <asp:ListItem value='0.59'>0.59</asp:ListItem>
                                             <asp:ListItem value='0.58'>0.58</asp:ListItem>
                                             <asp:ListItem value='0.57'>0.57</asp:ListItem>
                                             <asp:ListItem value='0.56'>0.56</asp:ListItem>
                                             <asp:ListItem value='0.55'>0.55</asp:ListItem>
                                             <asp:ListItem value='0.54'>0.54</asp:ListItem>
                                             <asp:ListItem value='0.53'>0.53</asp:ListItem>
                                             <asp:ListItem value='0.52'>0.52</asp:ListItem>
                                             <asp:ListItem value='0.51'>0.51</asp:ListItem>
                                             <asp:ListItem value='0.5'>0.5</asp:ListItem>
                                             <asp:ListItem value='0.49'>0.49</asp:ListItem>
                                             <asp:ListItem value='0.48'>0.48</asp:ListItem>
                                             <asp:ListItem value='0.47'>0.47</asp:ListItem>
                                             <asp:ListItem value='0.46'>0.46</asp:ListItem>
                                             <asp:ListItem value='0.45'>0.45</asp:ListItem>
                                             <asp:ListItem value='0.44'>0.44</asp:ListItem>
                                             <asp:ListItem value='0.43'>0.43</asp:ListItem>
                                             <asp:ListItem value='0.42'>0.42</asp:ListItem>
                                             <asp:ListItem value='0.41'>0.41</asp:ListItem>
                                             <asp:ListItem value='0.4'>0.4</asp:ListItem>
                                             <asp:ListItem value='0.39'>0.39</asp:ListItem>
                                             <asp:ListItem value='0.38'>0.38</asp:ListItem>
                                             <asp:ListItem value='0.37'>0.37</asp:ListItem>
                                            <asp:ListItem value='0.36'>0.36</asp:ListItem>
                                             <asp:ListItem value='0.35'>0.35</asp:ListItem>
                                             <asp:ListItem value='0.34'>0.34</asp:ListItem>
                                             <asp:ListItem value='0.33'>0.33</asp:ListItem>
                                            <asp:ListItem value='0.32'>0.32</asp:ListItem>
                                            <asp:ListItem value='0.31'>0.31</asp:ListItem>
                                            <asp:ListItem value='0.3'>0.3</asp:ListItem>
                                             <asp:ListItem value='0.29'>0.29</asp:ListItem>
                                             <asp:ListItem value='0.28'>0.28</asp:ListItem>
                                             <asp:ListItem value='0.27'>0.27</asp:ListItem>
                                             <asp:ListItem value='0.26'>0.26</asp:ListItem>
                                             <asp:ListItem value='0.25'>0.25</asp:ListItem>
                                             <asp:ListItem value='0.24'>0.24</asp:ListItem>
                                             <asp:ListItem value='0.23'>0.23</asp:ListItem>
                                            <asp:ListItem value='0.22'>0.22</asp:ListItem>
                                             <asp:ListItem value='0.21'>0.21</asp:ListItem>
                                            <asp:ListItem value='0.2'>0.2</asp:ListItem>
                                             <asp:ListItem value='0.19'>0.19</asp:ListItem>
                                            <asp:ListItem value='0.18'>0.18</asp:ListItem>
                                             <asp:ListItem value='0.17'>0.17</asp:ListItem>
                                            <asp:ListItem value='0.16'>0.16</asp:ListItem>
                                             <asp:ListItem value='0.15'>0.15</asp:ListItem>
                                             <asp:ListItem value='0.14'>0.14</asp:ListItem>
                                             <asp:ListItem value='0.13'>0.13</asp:ListItem>
                                             <asp:ListItem value='0.12'>0.12</asp:ListItem>
                                            <asp:ListItem value='0.11'>0.11</asp:ListItem>
                                             <asp:ListItem value='0.1'>0.1</asp:ListItem>
                                             <asp:ListItem value='0.09'>0.09</asp:ListItem>
                                            <asp:ListItem value='0.08'>0.08</asp:ListItem>
                                             <asp:ListItem value='0.07'>0.07</asp:ListItem>
                                             <asp:ListItem value='0.06'>0.06</asp:ListItem>
                                             <asp:ListItem value='0.05'>0.05</asp:ListItem>
                                             <asp:ListItem value='0.04'>0.04</asp:ListItem>
                                            <asp:ListItem value='0.03'>0.03</asp:ListItem>
                                            <asp:ListItem value='0.02'>0.02</asp:ListItem>
                                             <asp:ListItem value='0.01'>0.01</asp:ListItem>
                                            <asp:ListItem selected='true' value='0'>0</asp:ListItem></asp:DropDownList>
                                        </td><td>
                                                <asp:DropDownList ID="ddlautoS1x2" disabled 
                                                onChange="SelectOnChange('autoS1x2');" runat="server">                                           
                                             <asp:ListItem value='0.7'>0.7</asp:ListItem>
                                             <asp:ListItem value='0.69'>0.69</asp:ListItem>
                                            <asp:ListItem value='0.68'>0.68</asp:ListItem>
                                             <asp:ListItem value='0.67'>0.67</asp:ListItem>
                                             <asp:ListItem value='0.66'>0.66</asp:ListItem>
                                             <asp:ListItem value='0.65'>0.65</asp:ListItem>
                                             <asp:ListItem value='0.64'>0.64</asp:ListItem>
                                             <asp:ListItem value='0.63'>0.63</asp:ListItem>
                                             <asp:ListItem value='0.62'>0.62</asp:ListItem>
                                             <asp:ListItem value='0.61'>0.61</asp:ListItem>
                                             <asp:ListItem value='0.6'>0.6</asp:ListItem>
                                             <asp:ListItem value='0.59'>0.59</asp:ListItem>
                                             <asp:ListItem value='0.58'>0.58</asp:ListItem>
                                             <asp:ListItem value='0.57'>0.57</asp:ListItem>
                                             <asp:ListItem value='0.56'>0.56</asp:ListItem>
                                             <asp:ListItem value='0.55'>0.55</asp:ListItem>
                                             <asp:ListItem value='0.54'>0.54</asp:ListItem>
                                             <asp:ListItem value='0.53'>0.53</asp:ListItem>
                                             <asp:ListItem value='0.52'>0.52</asp:ListItem>
                                             <asp:ListItem value='0.51'>0.51</asp:ListItem>
                                             <asp:ListItem value='0.5'>0.5</asp:ListItem>
                                             <asp:ListItem value='0.49'>0.49</asp:ListItem>
                                             <asp:ListItem value='0.48'>0.48</asp:ListItem>
                                             <asp:ListItem value='0.47'>0.47</asp:ListItem>
                                             <asp:ListItem value='0.46'>0.46</asp:ListItem>
                                             <asp:ListItem value='0.45'>0.45</asp:ListItem>
                                             <asp:ListItem value='0.44'>0.44</asp:ListItem>
                                             <asp:ListItem value='0.43'>0.43</asp:ListItem>
                                             <asp:ListItem value='0.42'>0.42</asp:ListItem>
                                             <asp:ListItem value='0.41'>0.41</asp:ListItem>
                                             <asp:ListItem value='0.4'>0.4</asp:ListItem>
                                             <asp:ListItem value='0.39'>0.39</asp:ListItem>
                                             <asp:ListItem value='0.38'>0.38</asp:ListItem>
                                             <asp:ListItem value='0.37'>0.37</asp:ListItem>
                                            <asp:ListItem value='0.36'>0.36</asp:ListItem>
                                             <asp:ListItem value='0.35'>0.35</asp:ListItem>
                                             <asp:ListItem value='0.34'>0.34</asp:ListItem>
                                             <asp:ListItem value='0.33'>0.33</asp:ListItem>
                                            <asp:ListItem value='0.32'>0.32</asp:ListItem>
                                            <asp:ListItem value='0.31'>0.31</asp:ListItem>
                                            <asp:ListItem value='0.3'>0.3</asp:ListItem>
                                             <asp:ListItem value='0.29'>0.29</asp:ListItem>
                                             <asp:ListItem value='0.28'>0.28</asp:ListItem>
                                             <asp:ListItem value='0.27'>0.27</asp:ListItem>
                                             <asp:ListItem value='0.26'>0.26</asp:ListItem>
                                             <asp:ListItem value='0.25'>0.25</asp:ListItem>
                                             <asp:ListItem value='0.24'>0.24</asp:ListItem>
                                             <asp:ListItem value='0.23'>0.23</asp:ListItem>
                                            <asp:ListItem value='0.22'>0.22</asp:ListItem>
                                             <asp:ListItem value='0.21'>0.21</asp:ListItem>
                                            <asp:ListItem value='0.2'>0.2</asp:ListItem>
                                             <asp:ListItem value='0.19'>0.19</asp:ListItem>
                                            <asp:ListItem value='0.18'>0.18</asp:ListItem>
                                             <asp:ListItem value='0.17'>0.17</asp:ListItem>
                                            <asp:ListItem value='0.16'>0.16</asp:ListItem>
                                             <asp:ListItem value='0.15'>0.15</asp:ListItem>
                                             <asp:ListItem value='0.14'>0.14</asp:ListItem>
                                             <asp:ListItem value='0.13'>0.13</asp:ListItem>
                                             <asp:ListItem value='0.12'>0.12</asp:ListItem>
                                            <asp:ListItem value='0.11'>0.11</asp:ListItem>
                                             <asp:ListItem value='0.1'>0.1</asp:ListItem>
                                             <asp:ListItem value='0.09'>0.09</asp:ListItem>
                                            <asp:ListItem value='0.08'>0.08</asp:ListItem>
                                             <asp:ListItem value='0.07'>0.07</asp:ListItem>
                                             <asp:ListItem value='0.06'>0.06</asp:ListItem>
                                             <asp:ListItem value='0.05'>0.05</asp:ListItem>
                                             <asp:ListItem value='0.04'>0.04</asp:ListItem>
                                            <asp:ListItem value='0.03'>0.03</asp:ListItem>
                                            <asp:ListItem value='0.02'>0.02</asp:ListItem>
                                             <asp:ListItem value='0.01'>0.01</asp:ListItem>
                                            <asp:ListItem selected='true' value='0'>0</asp:ListItem></asp:DropDownList>
                                            <a class="imaLink img" href="javascript:ReducePT('autoS11x2',1)"><img class="hand" hspace="1" id="btnReduce1" name="btnReduce1" src="../App_Themes/AgencyV2/Images/b_down.jpg" /></a><a class="imaLink img" href="javascript:IncreasePT('autoS11x2',1)"><img class="hand" hspace="1" id="btnIncrease1" name="btnIncrease1" src="../App_Themes/AgencyV2/Images/b_up.jpg"/></a><a class="imaLink img" href="javascript:ReducePT('autoS11x2',10)"><img class="hand" hspace="1" id="btnReduce10" name="btnReduce10" src="../App_Themes/AgencyV2/Images/b_sub.jpg"/></a><a class="imaLink img" href="javascript:IncreasePT('autoS11x2',10)"><img class="hand" hspace="1" id="btnIncrease10" name="btnIncrease10" src="../App_Themes/AgencyV2/Images/b_add.jpg"/></a></td><td>
                                                <asp:DropDownList ID="ddlauto1CS" disabled 
                                                onChange="SelectOnChange('auto1CS');" runat="server">                                           
                                             <asp:ListItem value='0.7'>0.7</asp:ListItem>
                                             <asp:ListItem value='0.69'>0.69</asp:ListItem>
                                            <asp:ListItem value='0.68'>0.68</asp:ListItem>
                                             <asp:ListItem value='0.67'>0.67</asp:ListItem>
                                             <asp:ListItem value='0.66'>0.66</asp:ListItem>
                                             <asp:ListItem value='0.65'>0.65</asp:ListItem>
                                             <asp:ListItem value='0.64'>0.64</asp:ListItem>
                                             <asp:ListItem value='0.63'>0.63</asp:ListItem>
                                             <asp:ListItem value='0.62'>0.62</asp:ListItem>
                                             <asp:ListItem value='0.61'>0.61</asp:ListItem>
                                             <asp:ListItem value='0.6'>0.6</asp:ListItem>
                                             <asp:ListItem value='0.59'>0.59</asp:ListItem>
                                             <asp:ListItem value='0.58'>0.58</asp:ListItem>
                                             <asp:ListItem value='0.57'>0.57</asp:ListItem>
                                             <asp:ListItem value='0.56'>0.56</asp:ListItem>
                                             <asp:ListItem value='0.55'>0.55</asp:ListItem>
                                             <asp:ListItem value='0.54'>0.54</asp:ListItem>
                                             <asp:ListItem value='0.53'>0.53</asp:ListItem>
                                             <asp:ListItem value='0.52'>0.52</asp:ListItem>
                                             <asp:ListItem value='0.51'>0.51</asp:ListItem>
                                             <asp:ListItem value='0.5'>0.5</asp:ListItem>
                                             <asp:ListItem value='0.49'>0.49</asp:ListItem>
                                             <asp:ListItem value='0.48'>0.48</asp:ListItem>
                                             <asp:ListItem value='0.47'>0.47</asp:ListItem>
                                             <asp:ListItem value='0.46'>0.46</asp:ListItem>
                                             <asp:ListItem value='0.45'>0.45</asp:ListItem>
                                             <asp:ListItem value='0.44'>0.44</asp:ListItem>
                                             <asp:ListItem value='0.43'>0.43</asp:ListItem>
                                             <asp:ListItem value='0.42'>0.42</asp:ListItem>
                                             <asp:ListItem value='0.41'>0.41</asp:ListItem>
                                             <asp:ListItem value='0.4'>0.4</asp:ListItem>
                                             <asp:ListItem value='0.39'>0.39</asp:ListItem>
                                             <asp:ListItem value='0.38'>0.38</asp:ListItem>
                                             <asp:ListItem value='0.37'>0.37</asp:ListItem>
                                            <asp:ListItem value='0.36'>0.36</asp:ListItem>
                                             <asp:ListItem value='0.35'>0.35</asp:ListItem>
                                             <asp:ListItem value='0.34'>0.34</asp:ListItem>
                                             <asp:ListItem value='0.33'>0.33</asp:ListItem>
                                            <asp:ListItem value='0.32'>0.32</asp:ListItem>
                                            <asp:ListItem value='0.31'>0.31</asp:ListItem>
                                            <asp:ListItem value='0.3'>0.3</asp:ListItem>
                                             <asp:ListItem value='0.29'>0.29</asp:ListItem>
                                             <asp:ListItem value='0.28'>0.28</asp:ListItem>
                                             <asp:ListItem value='0.27'>0.27</asp:ListItem>
                                             <asp:ListItem value='0.26'>0.26</asp:ListItem>
                                             <asp:ListItem value='0.25'>0.25</asp:ListItem>
                                             <asp:ListItem value='0.24'>0.24</asp:ListItem>
                                             <asp:ListItem value='0.23'>0.23</asp:ListItem>
                                            <asp:ListItem value='0.22'>0.22</asp:ListItem>
                                             <asp:ListItem value='0.21'>0.21</asp:ListItem>
                                            <asp:ListItem value='0.2'>0.2</asp:ListItem>
                                             <asp:ListItem value='0.19'>0.19</asp:ListItem>
                                            <asp:ListItem value='0.18'>0.18</asp:ListItem>
                                             <asp:ListItem value='0.17'>0.17</asp:ListItem>
                                            <asp:ListItem value='0.16'>0.16</asp:ListItem>
                                             <asp:ListItem value='0.15'>0.15</asp:ListItem>
                                             <asp:ListItem value='0.14'>0.14</asp:ListItem>
                                             <asp:ListItem value='0.13'>0.13</asp:ListItem>
                                             <asp:ListItem value='0.12'>0.12</asp:ListItem>
                                            <asp:ListItem value='0.11'>0.11</asp:ListItem>
                                             <asp:ListItem value='0.1'>0.1</asp:ListItem>
                                             <asp:ListItem value='0.09'>0.09</asp:ListItem>
                                            <asp:ListItem value='0.08'>0.08</asp:ListItem>
                                             <asp:ListItem value='0.07'>0.07</asp:ListItem>
                                             <asp:ListItem value='0.06'>0.06</asp:ListItem>
                                             <asp:ListItem value='0.05'>0.05</asp:ListItem>
                                             <asp:ListItem value='0.04'>0.04</asp:ListItem>
                                            <asp:ListItem value='0.03'>0.03</asp:ListItem>
                                            <asp:ListItem value='0.02'>0.02</asp:ListItem>
                                             <asp:ListItem value='0.01'>0.01</asp:ListItem>
                                            <asp:ListItem selected='true' value='0'>0</asp:ListItem></asp:DropDownList>
                                        </td><td>
                                                <asp:DropDownList ID="ddlauto1TG" disabled 
                                                onChange="SelectOnChange('auto1TG');" runat="server">                                           
                                             <asp:ListItem value='0.7'>0.7</asp:ListItem>
                                             <asp:ListItem value='0.69'>0.69</asp:ListItem>
                                            <asp:ListItem value='0.68'>0.68</asp:ListItem>
                                             <asp:ListItem value='0.67'>0.67</asp:ListItem>
                                             <asp:ListItem value='0.66'>0.66</asp:ListItem>
                                             <asp:ListItem value='0.65'>0.65</asp:ListItem>
                                             <asp:ListItem value='0.64'>0.64</asp:ListItem>
                                             <asp:ListItem value='0.63'>0.63</asp:ListItem>
                                             <asp:ListItem value='0.62'>0.62</asp:ListItem>
                                             <asp:ListItem value='0.61'>0.61</asp:ListItem>
                                             <asp:ListItem value='0.6'>0.6</asp:ListItem>
                                             <asp:ListItem value='0.59'>0.59</asp:ListItem>
                                             <asp:ListItem value='0.58'>0.58</asp:ListItem>
                                             <asp:ListItem value='0.57'>0.57</asp:ListItem>
                                             <asp:ListItem value='0.56'>0.56</asp:ListItem>
                                             <asp:ListItem value='0.55'>0.55</asp:ListItem>
                                             <asp:ListItem value='0.54'>0.54</asp:ListItem>
                                             <asp:ListItem value='0.53'>0.53</asp:ListItem>
                                             <asp:ListItem value='0.52'>0.52</asp:ListItem>
                                             <asp:ListItem value='0.51'>0.51</asp:ListItem>
                                             <asp:ListItem value='0.5'>0.5</asp:ListItem>
                                             <asp:ListItem value='0.49'>0.49</asp:ListItem>
                                             <asp:ListItem value='0.48'>0.48</asp:ListItem>
                                             <asp:ListItem value='0.47'>0.47</asp:ListItem>
                                             <asp:ListItem value='0.46'>0.46</asp:ListItem>
                                             <asp:ListItem value='0.45'>0.45</asp:ListItem>
                                             <asp:ListItem value='0.44'>0.44</asp:ListItem>
                                             <asp:ListItem value='0.43'>0.43</asp:ListItem>
                                             <asp:ListItem value='0.42'>0.42</asp:ListItem>
                                             <asp:ListItem value='0.41'>0.41</asp:ListItem>
                                             <asp:ListItem value='0.4'>0.4</asp:ListItem>
                                             <asp:ListItem value='0.39'>0.39</asp:ListItem>
                                             <asp:ListItem value='0.38'>0.38</asp:ListItem>
                                             <asp:ListItem value='0.37'>0.37</asp:ListItem>
                                            <asp:ListItem value='0.36'>0.36</asp:ListItem>
                                             <asp:ListItem value='0.35'>0.35</asp:ListItem>
                                             <asp:ListItem value='0.34'>0.34</asp:ListItem>
                                             <asp:ListItem value='0.33'>0.33</asp:ListItem>
                                            <asp:ListItem value='0.32'>0.32</asp:ListItem>
                                            <asp:ListItem value='0.31'>0.31</asp:ListItem>
                                            <asp:ListItem value='0.3'>0.3</asp:ListItem>
                                             <asp:ListItem value='0.29'>0.29</asp:ListItem>
                                             <asp:ListItem value='0.28'>0.28</asp:ListItem>
                                             <asp:ListItem value='0.27'>0.27</asp:ListItem>
                                             <asp:ListItem value='0.26'>0.26</asp:ListItem>
                                             <asp:ListItem value='0.25'>0.25</asp:ListItem>
                                             <asp:ListItem value='0.24'>0.24</asp:ListItem>
                                             <asp:ListItem value='0.23'>0.23</asp:ListItem>
                                            <asp:ListItem value='0.22'>0.22</asp:ListItem>
                                             <asp:ListItem value='0.21'>0.21</asp:ListItem>
                                            <asp:ListItem value='0.2'>0.2</asp:ListItem>
                                             <asp:ListItem value='0.19'>0.19</asp:ListItem>
                                            <asp:ListItem value='0.18'>0.18</asp:ListItem>
                                             <asp:ListItem value='0.17'>0.17</asp:ListItem>
                                            <asp:ListItem value='0.16'>0.16</asp:ListItem>
                                             <asp:ListItem value='0.15'>0.15</asp:ListItem>
                                             <asp:ListItem value='0.14'>0.14</asp:ListItem>
                                             <asp:ListItem value='0.13'>0.13</asp:ListItem>
                                             <asp:ListItem value='0.12'>0.12</asp:ListItem>
                                            <asp:ListItem value='0.11'>0.11</asp:ListItem>
                                             <asp:ListItem value='0.1'>0.1</asp:ListItem>
                                             <asp:ListItem value='0.09'>0.09</asp:ListItem>
                                            <asp:ListItem value='0.08'>0.08</asp:ListItem>
                                             <asp:ListItem value='0.07'>0.07</asp:ListItem>
                                             <asp:ListItem value='0.06'>0.06</asp:ListItem>
                                             <asp:ListItem value='0.05'>0.05</asp:ListItem>
                                             <asp:ListItem value='0.04'>0.04</asp:ListItem>
                                            <asp:ListItem value='0.03'>0.03</asp:ListItem>
                                            <asp:ListItem value='0.02'>0.02</asp:ListItem>
                                             <asp:ListItem value='0.01'>0.01</asp:ListItem>
                                            <asp:ListItem selected='true' value='0'>0</asp:ListItem></asp:DropDownList>
                                        </td><td>
                                                <asp:DropDownList ID="ddlauto1TM" disabled 
                                                onChange="SelectOnChange('auto1TM');" runat="server">                                           
                                             <asp:ListItem value='0.7'>0.7</asp:ListItem>
                                             <asp:ListItem value='0.69'>0.69</asp:ListItem>
                                            <asp:ListItem value='0.68'>0.68</asp:ListItem>
                                             <asp:ListItem value='0.67'>0.67</asp:ListItem>
                                             <asp:ListItem value='0.66'>0.66</asp:ListItem>
                                             <asp:ListItem value='0.65'>0.65</asp:ListItem>
                                             <asp:ListItem value='0.64'>0.64</asp:ListItem>
                                             <asp:ListItem value='0.63'>0.63</asp:ListItem>
                                             <asp:ListItem value='0.62'>0.62</asp:ListItem>
                                             <asp:ListItem value='0.61'>0.61</asp:ListItem>
                                             <asp:ListItem value='0.6'>0.6</asp:ListItem>
                                             <asp:ListItem value='0.59'>0.59</asp:ListItem>
                                             <asp:ListItem value='0.58'>0.58</asp:ListItem>
                                             <asp:ListItem value='0.57'>0.57</asp:ListItem>
                                             <asp:ListItem value='0.56'>0.56</asp:ListItem>
                                             <asp:ListItem value='0.55'>0.55</asp:ListItem>
                                             <asp:ListItem value='0.54'>0.54</asp:ListItem>
                                             <asp:ListItem value='0.53'>0.53</asp:ListItem>
                                             <asp:ListItem value='0.52'>0.52</asp:ListItem>
                                             <asp:ListItem value='0.51'>0.51</asp:ListItem>
                                             <asp:ListItem value='0.5'>0.5</asp:ListItem>
                                             <asp:ListItem value='0.49'>0.49</asp:ListItem>
                                             <asp:ListItem value='0.48'>0.48</asp:ListItem>
                                             <asp:ListItem value='0.47'>0.47</asp:ListItem>
                                             <asp:ListItem value='0.46'>0.46</asp:ListItem>
                                             <asp:ListItem value='0.45'>0.45</asp:ListItem>
                                             <asp:ListItem value='0.44'>0.44</asp:ListItem>
                                             <asp:ListItem value='0.43'>0.43</asp:ListItem>
                                             <asp:ListItem value='0.42'>0.42</asp:ListItem>
                                             <asp:ListItem value='0.41'>0.41</asp:ListItem>
                                             <asp:ListItem value='0.4'>0.4</asp:ListItem>
                                             <asp:ListItem value='0.39'>0.39</asp:ListItem>
                                             <asp:ListItem value='0.38'>0.38</asp:ListItem>
                                             <asp:ListItem value='0.37'>0.37</asp:ListItem>
                                            <asp:ListItem value='0.36'>0.36</asp:ListItem>
                                             <asp:ListItem value='0.35'>0.35</asp:ListItem>
                                             <asp:ListItem value='0.34'>0.34</asp:ListItem>
                                             <asp:ListItem value='0.33'>0.33</asp:ListItem>
                                            <asp:ListItem value='0.32'>0.32</asp:ListItem>
                                            <asp:ListItem value='0.31'>0.31</asp:ListItem>
                                            <asp:ListItem value='0.3'>0.3</asp:ListItem>
                                             <asp:ListItem value='0.29'>0.29</asp:ListItem>
                                             <asp:ListItem value='0.28'>0.28</asp:ListItem>
                                             <asp:ListItem value='0.27'>0.27</asp:ListItem>
                                             <asp:ListItem value='0.26'>0.26</asp:ListItem>
                                             <asp:ListItem value='0.25'>0.25</asp:ListItem>
                                             <asp:ListItem value='0.24'>0.24</asp:ListItem>
                                             <asp:ListItem value='0.23'>0.23</asp:ListItem>
                                            <asp:ListItem value='0.22'>0.22</asp:ListItem>
                                             <asp:ListItem value='0.21'>0.21</asp:ListItem>
                                            <asp:ListItem value='0.2'>0.2</asp:ListItem>
                                             <asp:ListItem value='0.19'>0.19</asp:ListItem>
                                            <asp:ListItem value='0.18'>0.18</asp:ListItem>
                                             <asp:ListItem value='0.17'>0.17</asp:ListItem>
                                            <asp:ListItem value='0.16'>0.16</asp:ListItem>
                                             <asp:ListItem value='0.15'>0.15</asp:ListItem>
                                             <asp:ListItem value='0.14'>0.14</asp:ListItem>
                                             <asp:ListItem value='0.13'>0.13</asp:ListItem>
                                             <asp:ListItem value='0.12'>0.12</asp:ListItem>
                                            <asp:ListItem value='0.11'>0.11</asp:ListItem>
                                             <asp:ListItem value='0.1'>0.1</asp:ListItem>
                                             <asp:ListItem value='0.09'>0.09</asp:ListItem>
                                            <asp:ListItem value='0.08'>0.08</asp:ListItem>
                                             <asp:ListItem value='0.07'>0.07</asp:ListItem>
                                             <asp:ListItem value='0.06'>0.06</asp:ListItem>
                                             <asp:ListItem value='0.05'>0.05</asp:ListItem>
                                             <asp:ListItem value='0.04'>0.04</asp:ListItem>
                                            <asp:ListItem value='0.03'>0.03</asp:ListItem>
                                            <asp:ListItem value='0.02'>0.02</asp:ListItem>
                                             <asp:ListItem value='0.01'>0.01</asp:ListItem>
                                            <asp:ListItem selected='true' value='0'>0</asp:ListItem></asp:DropDownList>
                                        </td><td>
                                                <asp:DropDownList ID="ddlauto1OR" disabled 
                                                onChange="SelectOnChange('auto1OR');" runat="server">                                           
                                             <asp:ListItem value='0.7'>0.7</asp:ListItem>
                                             <asp:ListItem value='0.69'>0.69</asp:ListItem>
                                            <asp:ListItem value='0.68'>0.68</asp:ListItem>
                                             <asp:ListItem value='0.67'>0.67</asp:ListItem>
                                             <asp:ListItem value='0.66'>0.66</asp:ListItem>
                                             <asp:ListItem value='0.65'>0.65</asp:ListItem>
                                             <asp:ListItem value='0.64'>0.64</asp:ListItem>
                                             <asp:ListItem value='0.63'>0.63</asp:ListItem>
                                             <asp:ListItem value='0.62'>0.62</asp:ListItem>
                                             <asp:ListItem value='0.61'>0.61</asp:ListItem>
                                             <asp:ListItem value='0.6'>0.6</asp:ListItem>
                                             <asp:ListItem value='0.59'>0.59</asp:ListItem>
                                             <asp:ListItem value='0.58'>0.58</asp:ListItem>
                                             <asp:ListItem value='0.57'>0.57</asp:ListItem>
                                             <asp:ListItem value='0.56'>0.56</asp:ListItem>
                                             <asp:ListItem value='0.55'>0.55</asp:ListItem>
                                             <asp:ListItem value='0.54'>0.54</asp:ListItem>
                                             <asp:ListItem value='0.53'>0.53</asp:ListItem>
                                             <asp:ListItem value='0.52'>0.52</asp:ListItem>
                                             <asp:ListItem value='0.51'>0.51</asp:ListItem>
                                             <asp:ListItem value='0.5'>0.5</asp:ListItem>
                                             <asp:ListItem value='0.49'>0.49</asp:ListItem>
                                             <asp:ListItem value='0.48'>0.48</asp:ListItem>
                                             <asp:ListItem value='0.47'>0.47</asp:ListItem>
                                             <asp:ListItem value='0.46'>0.46</asp:ListItem>
                                             <asp:ListItem value='0.45'>0.45</asp:ListItem>
                                             <asp:ListItem value='0.44'>0.44</asp:ListItem>
                                             <asp:ListItem value='0.43'>0.43</asp:ListItem>
                                             <asp:ListItem value='0.42'>0.42</asp:ListItem>
                                             <asp:ListItem value='0.41'>0.41</asp:ListItem>
                                             <asp:ListItem value='0.4'>0.4</asp:ListItem>
                                             <asp:ListItem value='0.39'>0.39</asp:ListItem>
                                             <asp:ListItem value='0.38'>0.38</asp:ListItem>
                                             <asp:ListItem value='0.37'>0.37</asp:ListItem>
                                            <asp:ListItem value='0.36'>0.36</asp:ListItem>
                                             <asp:ListItem value='0.35'>0.35</asp:ListItem>
                                             <asp:ListItem value='0.34'>0.34</asp:ListItem>
                                             <asp:ListItem value='0.33'>0.33</asp:ListItem>
                                            <asp:ListItem value='0.32'>0.32</asp:ListItem>
                                            <asp:ListItem value='0.31'>0.31</asp:ListItem>
                                            <asp:ListItem value='0.3'>0.3</asp:ListItem>
                                             <asp:ListItem value='0.29'>0.29</asp:ListItem>
                                             <asp:ListItem value='0.28'>0.28</asp:ListItem>
                                             <asp:ListItem value='0.27'>0.27</asp:ListItem>
                                             <asp:ListItem value='0.26'>0.26</asp:ListItem>
                                             <asp:ListItem value='0.25'>0.25</asp:ListItem>
                                             <asp:ListItem value='0.24'>0.24</asp:ListItem>
                                             <asp:ListItem value='0.23'>0.23</asp:ListItem>
                                            <asp:ListItem value='0.22'>0.22</asp:ListItem>
                                             <asp:ListItem value='0.21'>0.21</asp:ListItem>
                                            <asp:ListItem value='0.2'>0.2</asp:ListItem>
                                             <asp:ListItem value='0.19'>0.19</asp:ListItem>
                                            <asp:ListItem value='0.18'>0.18</asp:ListItem>
                                             <asp:ListItem value='0.17'>0.17</asp:ListItem>
                                            <asp:ListItem value='0.16'>0.16</asp:ListItem>
                                             <asp:ListItem value='0.15'>0.15</asp:ListItem>
                                             <asp:ListItem value='0.14'>0.14</asp:ListItem>
                                             <asp:ListItem value='0.13'>0.13</asp:ListItem>
                                             <asp:ListItem value='0.12'>0.12</asp:ListItem>
                                            <asp:ListItem value='0.11'>0.11</asp:ListItem>
                                             <asp:ListItem value='0.1'>0.1</asp:ListItem>
                                             <asp:ListItem value='0.09'>0.09</asp:ListItem>
                                            <asp:ListItem value='0.08'>0.08</asp:ListItem>
                                             <asp:ListItem value='0.07'>0.07</asp:ListItem>
                                             <asp:ListItem value='0.06'>0.06</asp:ListItem>
                                             <asp:ListItem value='0.05'>0.05</asp:ListItem>
                                             <asp:ListItem value='0.04'>0.04</asp:ListItem>
                                            <asp:ListItem value='0.03'>0.03</asp:ListItem>
                                            <asp:ListItem value='0.02'>0.02</asp:ListItem>
                                             <asp:ListItem value='0.01'>0.01</asp:ListItem>
                                            <asp:ListItem selected='true' value='0'>0</asp:ListItem></asp:DropDownList>
                                        </td></tr><tr class="bg_eb"><td></td><td colspan="5" class="l">
    <asp:CheckBox ID="chkCopy1HdpDeadball" onclick="CheckCopyPT(this,arr1Super1,arr1Master1,'chkAuto1HdpD');" runat="server" />Copy From Handicap</td><td colspan="?" class="l">
        <asp:CheckBox ID="chkCopy11x2" onclick="CheckCopyPT(this,arr2Super1,arr2Master1,'chkAuto11x2');"  runat="server" />Copy From 1x2</td></tr><tr class="bg_eb"><td rowspan="4">Live!</td><td class="r">Master Preset</td><td>
    <asp:DropDownList ID="ddllistM1OU0" runat="server">
      <asp:ListItem selected='true' value='0'>0 </asp:ListItem>
    </asp:DropDownList>

                                            <a class="imaLink img" href="javascript:ReducePT('listM1HdpL',1)"><img class="hand" hspace="1" id="btnReduce1" name="btnReduce1" src="../App_Themes/AgencyV2/Images/b_down.jpg" /></a><a class="imaLink img" href="javascript:IncreasePT('listM1HdpL',1)"><img class="hand" hspace="1" id="btnIncrease1" name="btnIncrease1" src="../App_Themes/AgencyV2/Images/b_up.jpg"/></a>
<a class="imaLink img" href="javascript:ReducePT('listM1HdpL',10)"><img class="hand" hspace="1" id="btnReduce10" name="btnReduce10" src="../App_Themes/AgencyV2/Images/b_sub.jpg"/></a><a class="imaLink img" href="javascript:IncreasePT('listM1HdpL',10)"><img class="hand" hspace="1" id="btnIncrease10" name="btnIncrease10" src="../App_Themes/AgencyV2/Images/b_add.jpg"/></a></td><td>
    <asp:DropDownList ID="ddllistM1OUL" runat="server">
      <asp:ListItem selected='true' value='0'>0 </asp:ListItem>
    </asp:DropDownList>

                                            </td><td>
    <asp:DropDownList ID="ddllistM1OU1" runat="server">
      <asp:ListItem selected='true' value='0'>0 </asp:ListItem>
    </asp:DropDownList>

                                            </td><td>
    <asp:DropDownList ID="ddllistM1OU2" runat="server">
      <asp:ListItem selected='true' value='0'>0 </asp:ListItem>
    </asp:DropDownList>

                                            </td><td colspan="6" rowspan="4" class="l">
    <asp:CheckBox ID="chkCopy1HdpLive" onclick="CheckCopyPT(this,arr3Super1,arr3Master1,'chkAuto1HdpL');"  runat="server" />
                                            Copy From Handicap</td></tr><tr class="bg_eb"><td class="r">Super Preset</td><td>
                                                <asp:DropDownList ID="ddlautoS1HdpL1" disabled 
                                                onChange="SelectOnChange('autoS1HdpL1');" runat="server">                                           
                                             <asp:ListItem Selected="True" value='0.7'>0.7</asp:ListItem>
                                             <asp:ListItem value='0.69'>0.69</asp:ListItem>
                                            <asp:ListItem value='0.68'>0.68</asp:ListItem>
                                             <asp:ListItem value='0.67'>0.67</asp:ListItem>
                                             <asp:ListItem value='0.66'>0.66</asp:ListItem>
                                             <asp:ListItem value='0.65'>0.65</asp:ListItem>
                                             <asp:ListItem value='0.64'>0.64</asp:ListItem>
                                             <asp:ListItem value='0.63'>0.63</asp:ListItem>
                                             <asp:ListItem value='0.62'>0.62</asp:ListItem>
                                             <asp:ListItem value='0.61'>0.61</asp:ListItem>
                                             <asp:ListItem value='0.6'>0.6</asp:ListItem>
                                             <asp:ListItem value='0.59'>0.59</asp:ListItem>
                                             <asp:ListItem value='0.58'>0.58</asp:ListItem>
                                             <asp:ListItem value='0.57'>0.57</asp:ListItem>
                                             <asp:ListItem value='0.56'>0.56</asp:ListItem>
                                             <asp:ListItem value='0.55'>0.55</asp:ListItem>
                                             <asp:ListItem value='0.54'>0.54</asp:ListItem>
                                             <asp:ListItem value='0.53'>0.53</asp:ListItem>
                                             <asp:ListItem value='0.52'>0.52</asp:ListItem>
                                             <asp:ListItem value='0.51'>0.51</asp:ListItem>
                                             <asp:ListItem value='0.5'>0.5</asp:ListItem>
                                             <asp:ListItem value='0.49'>0.49</asp:ListItem>
                                             <asp:ListItem value='0.48'>0.48</asp:ListItem>
                                             <asp:ListItem value='0.47'>0.47</asp:ListItem>
                                             <asp:ListItem value='0.46'>0.46</asp:ListItem>
                                             <asp:ListItem value='0.45'>0.45</asp:ListItem>
                                             <asp:ListItem value='0.44'>0.44</asp:ListItem>
                                             <asp:ListItem value='0.43'>0.43</asp:ListItem>
                                             <asp:ListItem value='0.42'>0.42</asp:ListItem>
                                             <asp:ListItem value='0.41'>0.41</asp:ListItem>
                                             <asp:ListItem value='0.4'>0.4</asp:ListItem>
                                             <asp:ListItem value='0.39'>0.39</asp:ListItem>
                                             <asp:ListItem value='0.38'>0.38</asp:ListItem>
                                             <asp:ListItem value='0.37'>0.37</asp:ListItem>
                                            <asp:ListItem value='0.36'>0.36</asp:ListItem>
                                             <asp:ListItem value='0.35'>0.35</asp:ListItem>
                                             <asp:ListItem value='0.34'>0.34</asp:ListItem>
                                             <asp:ListItem value='0.33'>0.33</asp:ListItem>
                                            <asp:ListItem value='0.32'>0.32</asp:ListItem>
                                            <asp:ListItem value='0.31'>0.31</asp:ListItem>
                                            <asp:ListItem value='0.3'>0.3</asp:ListItem>
                                             <asp:ListItem value='0.29'>0.29</asp:ListItem>
                                             <asp:ListItem value='0.28'>0.28</asp:ListItem>
                                             <asp:ListItem value='0.27'>0.27</asp:ListItem>
                                             <asp:ListItem value='0.26'>0.26</asp:ListItem>
                                             <asp:ListItem value='0.25'>0.25</asp:ListItem>
                                             <asp:ListItem value='0.24'>0.24</asp:ListItem>
                                             <asp:ListItem value='0.23'>0.23</asp:ListItem>
                                            <asp:ListItem value='0.22'>0.22</asp:ListItem>
                                             <asp:ListItem value='0.21'>0.21</asp:ListItem>
                                            <asp:ListItem value='0.2'>0.2</asp:ListItem>
                                             <asp:ListItem value='0.19'>0.19</asp:ListItem>
                                            <asp:ListItem value='0.18'>0.18</asp:ListItem>
                                             <asp:ListItem value='0.17'>0.17</asp:ListItem>
                                            <asp:ListItem value='0.16'>0.16</asp:ListItem>
                                             <asp:ListItem value='0.15'>0.15</asp:ListItem>
                                             <asp:ListItem value='0.14'>0.14</asp:ListItem>
                                             <asp:ListItem value='0.13'>0.13</asp:ListItem>
                                             <asp:ListItem value='0.12'>0.12</asp:ListItem>
                                            <asp:ListItem value='0.11'>0.11</asp:ListItem>
                                             <asp:ListItem value='0.1'>0.1</asp:ListItem>
                                             <asp:ListItem value='0.09'>0.09</asp:ListItem>
                                            <asp:ListItem value='0.08'>0.08</asp:ListItem>
                                             <asp:ListItem value='0.07'>0.07</asp:ListItem>
                                             <asp:ListItem value='0.06'>0.06</asp:ListItem>
                                             <asp:ListItem value='0.05'>0.05</asp:ListItem>
                                             <asp:ListItem value='0.04'>0.04</asp:ListItem>
                                            <asp:ListItem value='0.03'>0.03</asp:ListItem>
                                            <asp:ListItem value='0.02'>0.02</asp:ListItem>
                                             <asp:ListItem value='0.01'>0.01</asp:ListItem>
                                            <asp:ListItem  value='0'>0</asp:ListItem></asp:DropDownList>
                                            <a class="imaLink img" href="javascript:ReducePT('listS1HdpL',1)"><img class="hand" hspace="1" id="btnReduce1" name="btnReduce1" src="../App_Themes/AgencyV2/Images/b_down.jpg" /></a><a class="imaLink img" href="javascript:IncreasePT('listS1HdpL',1)"><img class="hand" hspace="1" id="btnIncrease1" name="btnIncrease1" src="../App_Themes/AgencyV2/Images/b_up.jpg"/></a><a class="imaLink img" href="javascript:ReducePT('listS1HdpL',10)"><img class="hand" hspace="1" id="btnReduce10" name="btnReduce10" src="../App_Themes/AgencyV2/Images/b_sub.jpg"/></a><a class="imaLink img" href="javascript:IncreasePT('listS1HdpL',10)"><img class="hand" hspace="1" id="btnIncrease10" name="btnIncrease10" src="../App_Themes/AgencyV2/Images/b_add.jpg"/></a></td><td>
                                                <asp:DropDownList ID="ddlautoSt1OUL" disabled 
                                                onChange="SelectOnChange('autoS1OUL');" runat="server">                                           
                                             <asp:ListItem Selected="True" value='0.7'>0.7</asp:ListItem>
                                             <asp:ListItem value='0.69'>0.69</asp:ListItem>
                                            <asp:ListItem value='0.68'>0.68</asp:ListItem>
                                             <asp:ListItem value='0.67'>0.67</asp:ListItem>
                                             <asp:ListItem value='0.66'>0.66</asp:ListItem>
                                             <asp:ListItem value='0.65'>0.65</asp:ListItem>
                                             <asp:ListItem value='0.64'>0.64</asp:ListItem>
                                             <asp:ListItem value='0.63'>0.63</asp:ListItem>
                                             <asp:ListItem value='0.62'>0.62</asp:ListItem>
                                             <asp:ListItem value='0.61'>0.61</asp:ListItem>
                                             <asp:ListItem value='0.6'>0.6</asp:ListItem>
                                             <asp:ListItem value='0.59'>0.59</asp:ListItem>
                                             <asp:ListItem value='0.58'>0.58</asp:ListItem>
                                             <asp:ListItem value='0.57'>0.57</asp:ListItem>
                                             <asp:ListItem value='0.56'>0.56</asp:ListItem>
                                             <asp:ListItem value='0.55'>0.55</asp:ListItem>
                                             <asp:ListItem value='0.54'>0.54</asp:ListItem>
                                             <asp:ListItem value='0.53'>0.53</asp:ListItem>
                                             <asp:ListItem value='0.52'>0.52</asp:ListItem>
                                             <asp:ListItem value='0.51'>0.51</asp:ListItem>
                                             <asp:ListItem value='0.5'>0.5</asp:ListItem>
                                             <asp:ListItem value='0.49'>0.49</asp:ListItem>
                                             <asp:ListItem value='0.48'>0.48</asp:ListItem>
                                             <asp:ListItem value='0.47'>0.47</asp:ListItem>
                                             <asp:ListItem value='0.46'>0.46</asp:ListItem>
                                             <asp:ListItem value='0.45'>0.45</asp:ListItem>
                                             <asp:ListItem value='0.44'>0.44</asp:ListItem>
                                             <asp:ListItem value='0.43'>0.43</asp:ListItem>
                                             <asp:ListItem value='0.42'>0.42</asp:ListItem>
                                             <asp:ListItem value='0.41'>0.41</asp:ListItem>
                                             <asp:ListItem value='0.4'>0.4</asp:ListItem>
                                             <asp:ListItem value='0.39'>0.39</asp:ListItem>
                                             <asp:ListItem value='0.38'>0.38</asp:ListItem>
                                             <asp:ListItem value='0.37'>0.37</asp:ListItem>
                                            <asp:ListItem value='0.36'>0.36</asp:ListItem>
                                             <asp:ListItem value='0.35'>0.35</asp:ListItem>
                                             <asp:ListItem value='0.34'>0.34</asp:ListItem>
                                             <asp:ListItem value='0.33'>0.33</asp:ListItem>
                                            <asp:ListItem value='0.32'>0.32</asp:ListItem>
                                            <asp:ListItem value='0.31'>0.31</asp:ListItem>
                                            <asp:ListItem value='0.3'>0.3</asp:ListItem>
                                             <asp:ListItem value='0.29'>0.29</asp:ListItem>
                                             <asp:ListItem value='0.28'>0.28</asp:ListItem>
                                             <asp:ListItem value='0.27'>0.27</asp:ListItem>
                                             <asp:ListItem value='0.26'>0.26</asp:ListItem>
                                             <asp:ListItem value='0.25'>0.25</asp:ListItem>
                                             <asp:ListItem value='0.24'>0.24</asp:ListItem>
                                             <asp:ListItem value='0.23'>0.23</asp:ListItem>
                                            <asp:ListItem value='0.22'>0.22</asp:ListItem>
                                             <asp:ListItem value='0.21'>0.21</asp:ListItem>
                                            <asp:ListItem value='0.2'>0.2</asp:ListItem>
                                             <asp:ListItem value='0.19'>0.19</asp:ListItem>
                                            <asp:ListItem value='0.18'>0.18</asp:ListItem>
                                             <asp:ListItem value='0.17'>0.17</asp:ListItem>
                                            <asp:ListItem value='0.16'>0.16</asp:ListItem>
                                             <asp:ListItem value='0.15'>0.15</asp:ListItem>
                                             <asp:ListItem value='0.14'>0.14</asp:ListItem>
                                             <asp:ListItem value='0.13'>0.13</asp:ListItem>
                                             <asp:ListItem value='0.12'>0.12</asp:ListItem>
                                            <asp:ListItem value='0.11'>0.11</asp:ListItem>
                                             <asp:ListItem value='0.1'>0.1</asp:ListItem>
                                             <asp:ListItem value='0.09'>0.09</asp:ListItem>
                                            <asp:ListItem value='0.08'>0.08</asp:ListItem>
                                             <asp:ListItem value='0.07'>0.07</asp:ListItem>
                                             <asp:ListItem value='0.06'>0.06</asp:ListItem>
                                             <asp:ListItem value='0.05'>0.05</asp:ListItem>
                                             <asp:ListItem value='0.04'>0.04</asp:ListItem>
                                            <asp:ListItem value='0.03'>0.03</asp:ListItem>
                                            <asp:ListItem value='0.02'>0.02</asp:ListItem>
                                             <asp:ListItem value='0.01'>0.01</asp:ListItem>
                                            <asp:ListItem  value='0'>0</asp:ListItem></asp:DropDownList>
                                            </td><td>
                                                <asp:DropDownList ID="ddlautoS1stHDPL" disabled 
                                                onChange="SelectOnChange('autoS1stHDPL');" runat="server">                                           
                                             <asp:ListItem Selected="True" value='0.7'>0.7</asp:ListItem>
                                             <asp:ListItem value='0.69'>0.69</asp:ListItem>
                                            <asp:ListItem value='0.68'>0.68</asp:ListItem>
                                             <asp:ListItem value='0.67'>0.67</asp:ListItem>
                                             <asp:ListItem value='0.66'>0.66</asp:ListItem>
                                             <asp:ListItem value='0.65'>0.65</asp:ListItem>
                                             <asp:ListItem value='0.64'>0.64</asp:ListItem>
                                             <asp:ListItem value='0.63'>0.63</asp:ListItem>
                                             <asp:ListItem value='0.62'>0.62</asp:ListItem>
                                             <asp:ListItem value='0.61'>0.61</asp:ListItem>
                                             <asp:ListItem value='0.6'>0.6</asp:ListItem>
                                             <asp:ListItem value='0.59'>0.59</asp:ListItem>
                                             <asp:ListItem value='0.58'>0.58</asp:ListItem>
                                             <asp:ListItem value='0.57'>0.57</asp:ListItem>
                                             <asp:ListItem value='0.56'>0.56</asp:ListItem>
                                             <asp:ListItem value='0.55'>0.55</asp:ListItem>
                                             <asp:ListItem value='0.54'>0.54</asp:ListItem>
                                             <asp:ListItem value='0.53'>0.53</asp:ListItem>
                                             <asp:ListItem value='0.52'>0.52</asp:ListItem>
                                             <asp:ListItem value='0.51'>0.51</asp:ListItem>
                                             <asp:ListItem value='0.5'>0.5</asp:ListItem>
                                             <asp:ListItem value='0.49'>0.49</asp:ListItem>
                                             <asp:ListItem value='0.48'>0.48</asp:ListItem>
                                             <asp:ListItem value='0.47'>0.47</asp:ListItem>
                                             <asp:ListItem value='0.46'>0.46</asp:ListItem>
                                             <asp:ListItem value='0.45'>0.45</asp:ListItem>
                                             <asp:ListItem value='0.44'>0.44</asp:ListItem>
                                             <asp:ListItem value='0.43'>0.43</asp:ListItem>
                                             <asp:ListItem value='0.42'>0.42</asp:ListItem>
                                             <asp:ListItem value='0.41'>0.41</asp:ListItem>
                                             <asp:ListItem value='0.4'>0.4</asp:ListItem>
                                             <asp:ListItem value='0.39'>0.39</asp:ListItem>
                                             <asp:ListItem value='0.38'>0.38</asp:ListItem>
                                             <asp:ListItem value='0.37'>0.37</asp:ListItem>
                                            <asp:ListItem value='0.36'>0.36</asp:ListItem>
                                             <asp:ListItem value='0.35'>0.35</asp:ListItem>
                                             <asp:ListItem value='0.34'>0.34</asp:ListItem>
                                             <asp:ListItem value='0.33'>0.33</asp:ListItem>
                                            <asp:ListItem value='0.32'>0.32</asp:ListItem>
                                            <asp:ListItem value='0.31'>0.31</asp:ListItem>
                                            <asp:ListItem value='0.3'>0.3</asp:ListItem>
                                             <asp:ListItem value='0.29'>0.29</asp:ListItem>
                                             <asp:ListItem value='0.28'>0.28</asp:ListItem>
                                             <asp:ListItem value='0.27'>0.27</asp:ListItem>
                                             <asp:ListItem value='0.26'>0.26</asp:ListItem>
                                             <asp:ListItem value='0.25'>0.25</asp:ListItem>
                                             <asp:ListItem value='0.24'>0.24</asp:ListItem>
                                             <asp:ListItem value='0.23'>0.23</asp:ListItem>
                                            <asp:ListItem value='0.22'>0.22</asp:ListItem>
                                             <asp:ListItem value='0.21'>0.21</asp:ListItem>
                                            <asp:ListItem value='0.2'>0.2</asp:ListItem>
                                             <asp:ListItem value='0.19'>0.19</asp:ListItem>
                                            <asp:ListItem value='0.18'>0.18</asp:ListItem>
                                             <asp:ListItem value='0.17'>0.17</asp:ListItem>
                                            <asp:ListItem value='0.16'>0.16</asp:ListItem>
                                             <asp:ListItem value='0.15'>0.15</asp:ListItem>
                                             <asp:ListItem value='0.14'>0.14</asp:ListItem>
                                             <asp:ListItem value='0.13'>0.13</asp:ListItem>
                                             <asp:ListItem value='0.12'>0.12</asp:ListItem>
                                            <asp:ListItem value='0.11'>0.11</asp:ListItem>
                                             <asp:ListItem value='0.1'>0.1</asp:ListItem>
                                             <asp:ListItem value='0.09'>0.09</asp:ListItem>
                                            <asp:ListItem value='0.08'>0.08</asp:ListItem>
                                             <asp:ListItem value='0.07'>0.07</asp:ListItem>
                                             <asp:ListItem value='0.06'>0.06</asp:ListItem>
                                             <asp:ListItem value='0.05'>0.05</asp:ListItem>
                                             <asp:ListItem value='0.04'>0.04</asp:ListItem>
                                            <asp:ListItem value='0.03'>0.03</asp:ListItem>
                                            <asp:ListItem value='0.02'>0.02</asp:ListItem>
                                             <asp:ListItem value='0.01'>0.01</asp:ListItem>
                                            <asp:ListItem  value='0'>0</asp:ListItem></asp:DropDownList>
                                            </td><td>
                                                <asp:DropDownList ID="ddlautoS11stOUL" disabled 
                                                onChange="SelectOnChange('autoS11stOUL');" runat="server">                                           
                                             <asp:ListItem Selected="True" value='0.7'>0.7</asp:ListItem>
                                             <asp:ListItem value='0.69'>0.69</asp:ListItem>
                                            <asp:ListItem value='0.68'>0.68</asp:ListItem>
                                             <asp:ListItem value='0.67'>0.67</asp:ListItem>
                                             <asp:ListItem value='0.66'>0.66</asp:ListItem>
                                             <asp:ListItem value='0.65'>0.65</asp:ListItem>
                                             <asp:ListItem value='0.64'>0.64</asp:ListItem>
                                             <asp:ListItem value='0.63'>0.63</asp:ListItem>
                                             <asp:ListItem value='0.62'>0.62</asp:ListItem>
                                             <asp:ListItem value='0.61'>0.61</asp:ListItem>
                                             <asp:ListItem value='0.6'>0.6</asp:ListItem>
                                             <asp:ListItem value='0.59'>0.59</asp:ListItem>
                                             <asp:ListItem value='0.58'>0.58</asp:ListItem>
                                             <asp:ListItem value='0.57'>0.57</asp:ListItem>
                                             <asp:ListItem value='0.56'>0.56</asp:ListItem>
                                             <asp:ListItem value='0.55'>0.55</asp:ListItem>
                                             <asp:ListItem value='0.54'>0.54</asp:ListItem>
                                             <asp:ListItem value='0.53'>0.53</asp:ListItem>
                                             <asp:ListItem value='0.52'>0.52</asp:ListItem>
                                             <asp:ListItem value='0.51'>0.51</asp:ListItem>
                                             <asp:ListItem value='0.5'>0.5</asp:ListItem>
                                             <asp:ListItem value='0.49'>0.49</asp:ListItem>
                                             <asp:ListItem value='0.48'>0.48</asp:ListItem>
                                             <asp:ListItem value='0.47'>0.47</asp:ListItem>
                                             <asp:ListItem value='0.46'>0.46</asp:ListItem>
                                             <asp:ListItem value='0.45'>0.45</asp:ListItem>
                                             <asp:ListItem value='0.44'>0.44</asp:ListItem>
                                             <asp:ListItem value='0.43'>0.43</asp:ListItem>
                                             <asp:ListItem value='0.42'>0.42</asp:ListItem>
                                             <asp:ListItem value='0.41'>0.41</asp:ListItem>
                                             <asp:ListItem value='0.4'>0.4</asp:ListItem>
                                             <asp:ListItem value='0.39'>0.39</asp:ListItem>
                                             <asp:ListItem value='0.38'>0.38</asp:ListItem>
                                             <asp:ListItem value='0.37'>0.37</asp:ListItem>
                                            <asp:ListItem value='0.36'>0.36</asp:ListItem>
                                             <asp:ListItem value='0.35'>0.35</asp:ListItem>
                                             <asp:ListItem value='0.34'>0.34</asp:ListItem>
                                             <asp:ListItem value='0.33'>0.33</asp:ListItem>
                                            <asp:ListItem value='0.32'>0.32</asp:ListItem>
                                            <asp:ListItem value='0.31'>0.31</asp:ListItem>
                                            <asp:ListItem value='0.3'>0.3</asp:ListItem>
                                             <asp:ListItem value='0.29'>0.29</asp:ListItem>
                                             <asp:ListItem value='0.28'>0.28</asp:ListItem>
                                             <asp:ListItem value='0.27'>0.27</asp:ListItem>
                                             <asp:ListItem value='0.26'>0.26</asp:ListItem>
                                             <asp:ListItem value='0.25'>0.25</asp:ListItem>
                                             <asp:ListItem value='0.24'>0.24</asp:ListItem>
                                             <asp:ListItem value='0.23'>0.23</asp:ListItem>
                                            <asp:ListItem value='0.22'>0.22</asp:ListItem>
                                             <asp:ListItem value='0.21'>0.21</asp:ListItem>
                                            <asp:ListItem value='0.2'>0.2</asp:ListItem>
                                             <asp:ListItem value='0.19'>0.19</asp:ListItem>
                                            <asp:ListItem value='0.18'>0.18</asp:ListItem>
                                             <asp:ListItem value='0.17'>0.17</asp:ListItem>
                                            <asp:ListItem value='0.16'>0.16</asp:ListItem>
                                             <asp:ListItem value='0.15'>0.15</asp:ListItem>
                                             <asp:ListItem value='0.14'>0.14</asp:ListItem>
                                             <asp:ListItem value='0.13'>0.13</asp:ListItem>
                                             <asp:ListItem value='0.12'>0.12</asp:ListItem>
                                            <asp:ListItem value='0.11'>0.11</asp:ListItem>
                                             <asp:ListItem value='0.1'>0.1</asp:ListItem>
                                             <asp:ListItem value='0.09'>0.09</asp:ListItem>
                                            <asp:ListItem value='0.08'>0.08</asp:ListItem>
                                             <asp:ListItem value='0.07'>0.07</asp:ListItem>
                                             <asp:ListItem value='0.06'>0.06</asp:ListItem>
                                             <asp:ListItem value='0.05'>0.05</asp:ListItem>
                                             <asp:ListItem value='0.04'>0.04</asp:ListItem>
                                            <asp:ListItem value='0.03'>0.03</asp:ListItem>
                                            <asp:ListItem value='0.02'>0.02</asp:ListItem>
                                             <asp:ListItem value='0.01'>0.01</asp:ListItem>
                                            <asp:ListItem  value='0'>0</asp:ListItem></asp:DropDownList>
                                            </td></tr><tr class="bg_eb {hdauto}"><td rowspan="2" class="r">Auto Super Preset</td><td>
                                                <asp:CheckBox onclick="CheckAutoPreset(this,'chkCopy1HdpLive')" 
                                                id="chkAuto1hdpl" runat="server" />
                                            </td><td>
                                                <asp:CheckBox onclick="CheckAutoPreset(this,'chkCopy1HdpLive')" 
                                                id="chkAuto1stOUL" runat="server" />
                                            </td><td>
                                                <asp:CheckBox onclick="CheckAutoPreset(this,'chkCopy1HdpLive')" 
                                                id="chkAuto11sthdpl" runat="server" />
                                            &nbsp;</td><td>
                                                <asp:CheckBox onclick="CheckAutoPreset(this,'chkCopy1HdpLive')" id="chkAuto11stOUL" runat="server" />
                                            </td></tr><tr class="bg_eb {hdauto}"><td>
                                                <asp:DropDownList ID="ddlautoS1HdpL" disabled onChange="SelectOnChange('autoS1HdpL');" runat="server">                                           
                                             <asp:ListItem value='0.7'>0.7</asp:ListItem>
                                             <asp:ListItem value='0.69'>0.69</asp:ListItem>
                                            <asp:ListItem value='0.68'>0.68</asp:ListItem>
                                             <asp:ListItem value='0.67'>0.67</asp:ListItem>
                                             <asp:ListItem value='0.66'>0.66</asp:ListItem>
                                             <asp:ListItem value='0.65'>0.65</asp:ListItem>
                                             <asp:ListItem value='0.64'>0.64</asp:ListItem>
                                             <asp:ListItem value='0.63'>0.63</asp:ListItem>
                                             <asp:ListItem value='0.62'>0.62</asp:ListItem>
                                             <asp:ListItem value='0.61'>0.61</asp:ListItem>
                                             <asp:ListItem value='0.6'>0.6</asp:ListItem>
                                             <asp:ListItem value='0.59'>0.59</asp:ListItem>
                                             <asp:ListItem value='0.58'>0.58</asp:ListItem>
                                             <asp:ListItem value='0.57'>0.57</asp:ListItem>
                                             <asp:ListItem value='0.56'>0.56</asp:ListItem>
                                             <asp:ListItem value='0.55'>0.55</asp:ListItem>
                                             <asp:ListItem value='0.54'>0.54</asp:ListItem>
                                             <asp:ListItem value='0.53'>0.53</asp:ListItem>
                                             <asp:ListItem value='0.52'>0.52</asp:ListItem>
                                             <asp:ListItem value='0.51'>0.51</asp:ListItem>
                                             <asp:ListItem value='0.5'>0.5</asp:ListItem>
                                             <asp:ListItem value='0.49'>0.49</asp:ListItem>
                                             <asp:ListItem value='0.48'>0.48</asp:ListItem>
                                             <asp:ListItem value='0.47'>0.47</asp:ListItem>
                                             <asp:ListItem value='0.46'>0.46</asp:ListItem>
                                             <asp:ListItem value='0.45'>0.45</asp:ListItem>
                                             <asp:ListItem value='0.44'>0.44</asp:ListItem>
                                             <asp:ListItem value='0.43'>0.43</asp:ListItem>
                                             <asp:ListItem value='0.42'>0.42</asp:ListItem>
                                             <asp:ListItem value='0.41'>0.41</asp:ListItem>
                                             <asp:ListItem value='0.4'>0.4</asp:ListItem>
                                             <asp:ListItem value='0.39'>0.39</asp:ListItem>
                                             <asp:ListItem value='0.38'>0.38</asp:ListItem>
                                             <asp:ListItem value='0.37'>0.37</asp:ListItem>
                                            <asp:ListItem value='0.36'>0.36</asp:ListItem>
                                             <asp:ListItem value='0.35'>0.35</asp:ListItem>
                                             <asp:ListItem value='0.34'>0.34</asp:ListItem>
                                             <asp:ListItem value='0.33'>0.33</asp:ListItem>
                                            <asp:ListItem value='0.32'>0.32</asp:ListItem>
                                            <asp:ListItem value='0.31'>0.31</asp:ListItem>
                                            <asp:ListItem value='0.3'>0.3</asp:ListItem>
                                             <asp:ListItem value='0.29'>0.29</asp:ListItem>
                                             <asp:ListItem value='0.28'>0.28</asp:ListItem>
                                             <asp:ListItem value='0.27'>0.27</asp:ListItem>
                                             <asp:ListItem value='0.26'>0.26</asp:ListItem>
                                             <asp:ListItem value='0.25'>0.25</asp:ListItem>
                                             <asp:ListItem value='0.24'>0.24</asp:ListItem>
                                             <asp:ListItem value='0.23'>0.23</asp:ListItem>
                                            <asp:ListItem value='0.22'>0.22</asp:ListItem>
                                             <asp:ListItem value='0.21'>0.21</asp:ListItem>
                                            <asp:ListItem value='0.2'>0.2</asp:ListItem>
                                             <asp:ListItem value='0.19'>0.19</asp:ListItem>
                                            <asp:ListItem value='0.18'>0.18</asp:ListItem>
                                             <asp:ListItem value='0.17'>0.17</asp:ListItem>
                                            <asp:ListItem value='0.16'>0.16</asp:ListItem>
                                             <asp:ListItem value='0.15'>0.15</asp:ListItem>
                                             <asp:ListItem value='0.14'>0.14</asp:ListItem>
                                             <asp:ListItem value='0.13'>0.13</asp:ListItem>
                                             <asp:ListItem value='0.12'>0.12</asp:ListItem>
                                            <asp:ListItem value='0.11'>0.11</asp:ListItem>
                                             <asp:ListItem value='0.1'>0.1</asp:ListItem>
                                             <asp:ListItem value='0.09'>0.09</asp:ListItem>
                                            <asp:ListItem value='0.08'>0.08</asp:ListItem>
                                             <asp:ListItem value='0.07'>0.07</asp:ListItem>
                                             <asp:ListItem value='0.06'>0.06</asp:ListItem>
                                             <asp:ListItem value='0.05'>0.05</asp:ListItem>
                                             <asp:ListItem value='0.04'>0.04</asp:ListItem>
                                            <asp:ListItem value='0.03'>0.03</asp:ListItem>
                                            <asp:ListItem value='0.02'>0.02</asp:ListItem>
                                             <asp:ListItem value='0.01'>0.01</asp:ListItem>
                                            <asp:ListItem selected='true' value='0'>0</asp:ListItem></asp:DropDownList>
<a class="imaLink img" href="javascript:ReducePT('autoS1HdpL',1)"><img class="hand" hspace="1" id="btnReduce1" name="btnReduce1" src="../App_Themes/AgencyV2/Images/b_down.jpg" /></a><a class="imaLink img" href="javascript:IncreasePT('autoS1HdpL',1)"><img class="hand" hspace="1" id="btnIncrease1" name="btnIncrease1" src="../App_Themes/AgencyV2/Images/b_up.jpg"/></a><a class="imaLink img" href="javascript:ReducePT('autoS1HdpL',10)"><img class="hand" hspace="1" id="btnReduce10" name="btnReduce10" src="../App_Themes/AgencyV2/Images/b_sub.jpg"/></a><a class="imaLink im?" href="javascript:IncreasePT('autoS1HdpL',10)"><img class="hand" hspace="1" id="btnIncrease10" name="btnIncrease10" src="../App_Themes/AgencyV2/Images/b_add.jpg"/></a></td><td>
                                                <asp:DropDownList ID="ddlautoS1OUL" disabled 
                        onChange="SelectOnChange('autoS1OUL');" runat="server">                                           
                                             <asp:ListItem value='0.7'>0.7</asp:ListItem>
                                             <asp:ListItem value='0.69'>0.69</asp:ListItem>
                                            <asp:ListItem value='0.68'>0.68</asp:ListItem>
                                             <asp:ListItem value='0.67'>0.67</asp:ListItem>
                                             <asp:ListItem value='0.66'>0.66</asp:ListItem>
                                             <asp:ListItem value='0.65'>0.65</asp:ListItem>
                                             <asp:ListItem value='0.64'>0.64</asp:ListItem>
                                             <asp:ListItem value='0.63'>0.63</asp:ListItem>
                                             <asp:ListItem value='0.62'>0.62</asp:ListItem>
                                             <asp:ListItem value='0.61'>0.61</asp:ListItem>
                                             <asp:ListItem value='0.6'>0.6</asp:ListItem>
                                             <asp:ListItem value='0.59'>0.59</asp:ListItem>
                                             <asp:ListItem value='0.58'>0.58</asp:ListItem>
                                             <asp:ListItem value='0.57'>0.57</asp:ListItem>
                                             <asp:ListItem value='0.56'>0.56</asp:ListItem>
                                             <asp:ListItem value='0.55'>0.55</asp:ListItem>
                                             <asp:ListItem value='0.54'>0.54</asp:ListItem>
                                             <asp:ListItem value='0.53'>0.53</asp:ListItem>
                                             <asp:ListItem value='0.52'>0.52</asp:ListItem>
                                             <asp:ListItem value='0.51'>0.51</asp:ListItem>
                                             <asp:ListItem value='0.5'>0.5</asp:ListItem>
                                             <asp:ListItem value='0.49'>0.49</asp:ListItem>
                                             <asp:ListItem value='0.48'>0.48</asp:ListItem>
                                             <asp:ListItem value='0.47'>0.47</asp:ListItem>
                                             <asp:ListItem value='0.46'>0.46</asp:ListItem>
                                             <asp:ListItem value='0.45'>0.45</asp:ListItem>
                                             <asp:ListItem value='0.44'>0.44</asp:ListItem>
                                             <asp:ListItem value='0.43'>0.43</asp:ListItem>
                                             <asp:ListItem value='0.42'>0.42</asp:ListItem>
                                             <asp:ListItem value='0.41'>0.41</asp:ListItem>
                                             <asp:ListItem value='0.4'>0.4</asp:ListItem>
                                             <asp:ListItem value='0.39'>0.39</asp:ListItem>
                                             <asp:ListItem value='0.38'>0.38</asp:ListItem>
                                             <asp:ListItem value='0.37'>0.37</asp:ListItem>
                                            <asp:ListItem value='0.36'>0.36</asp:ListItem>
                                             <asp:ListItem value='0.35'>0.35</asp:ListItem>
                                             <asp:ListItem value='0.34'>0.34</asp:ListItem>
                                             <asp:ListItem value='0.33'>0.33</asp:ListItem>
                                            <asp:ListItem value='0.32'>0.32</asp:ListItem>
                                            <asp:ListItem value='0.31'>0.31</asp:ListItem>
                                            <asp:ListItem value='0.3'>0.3</asp:ListItem>
                                             <asp:ListItem value='0.29'>0.29</asp:ListItem>
                                             <asp:ListItem value='0.28'>0.28</asp:ListItem>
                                             <asp:ListItem value='0.27'>0.27</asp:ListItem>
                                             <asp:ListItem value='0.26'>0.26</asp:ListItem>
                                             <asp:ListItem value='0.25'>0.25</asp:ListItem>
                                             <asp:ListItem value='0.24'>0.24</asp:ListItem>
                                             <asp:ListItem value='0.23'>0.23</asp:ListItem>
                                            <asp:ListItem value='0.22'>0.22</asp:ListItem>
                                             <asp:ListItem value='0.21'>0.21</asp:ListItem>
                                            <asp:ListItem value='0.2'>0.2</asp:ListItem>
                                             <asp:ListItem value='0.19'>0.19</asp:ListItem>
                                            <asp:ListItem value='0.18'>0.18</asp:ListItem>
                                             <asp:ListItem value='0.17'>0.17</asp:ListItem>
                                            <asp:ListItem value='0.16'>0.16</asp:ListItem>
                                             <asp:ListItem value='0.15'>0.15</asp:ListItem>
                                             <asp:ListItem value='0.14'>0.14</asp:ListItem>
                                             <asp:ListItem value='0.13'>0.13</asp:ListItem>
                                             <asp:ListItem value='0.12'>0.12</asp:ListItem>
                                            <asp:ListItem value='0.11'>0.11</asp:ListItem>
                                             <asp:ListItem value='0.1'>0.1</asp:ListItem>
                                             <asp:ListItem value='0.09'>0.09</asp:ListItem>
                                            <asp:ListItem value='0.08'>0.08</asp:ListItem>
                                             <asp:ListItem value='0.07'>0.07</asp:ListItem>
                                             <asp:ListItem value='0.06'>0.06</asp:ListItem>
                                             <asp:ListItem value='0.05'>0.05</asp:ListItem>
                                             <asp:ListItem value='0.04'>0.04</asp:ListItem>
                                            <asp:ListItem value='0.03'>0.03</asp:ListItem>
                                            <asp:ListItem value='0.02'>0.02</asp:ListItem>
                                             <asp:ListItem value='0.01'>0.01</asp:ListItem>
                                            <asp:ListItem selected='true' value='0'>0</asp:ListItem></asp:DropDownList>
                </td><td>
                                                <asp:DropDownList ID="ddlautoS1THdpL" disabled 
                                                    onChange="SelectOnChange('autoS1THdpL');" runat="server">                                           
                                             <asp:ListItem value='0.7'>0.7</asp:ListItem>
                                             <asp:ListItem value='0.69'>0.69</asp:ListItem>
                                            <asp:ListItem value='0.68'>0.68</asp:ListItem>
                                             <asp:ListItem value='0.67'>0.67</asp:ListItem>
                                             <asp:ListItem value='0.66'>0.66</asp:ListItem>
                                             <asp:ListItem value='0.65'>0.65</asp:ListItem>
                                             <asp:ListItem value='0.64'>0.64</asp:ListItem>
                                             <asp:ListItem value='0.63'>0.63</asp:ListItem>
                                             <asp:ListItem value='0.62'>0.62</asp:ListItem>
                                             <asp:ListItem value='0.61'>0.61</asp:ListItem>
                                             <asp:ListItem value='0.6'>0.6</asp:ListItem>
                                             <asp:ListItem value='0.59'>0.59</asp:ListItem>
                                             <asp:ListItem value='0.58'>0.58</asp:ListItem>
                                             <asp:ListItem value='0.57'>0.57</asp:ListItem>
                                             <asp:ListItem value='0.56'>0.56</asp:ListItem>
                                             <asp:ListItem value='0.55'>0.55</asp:ListItem>
                                             <asp:ListItem value='0.54'>0.54</asp:ListItem>
                                             <asp:ListItem value='0.53'>0.53</asp:ListItem>
                                             <asp:ListItem value='0.52'>0.52</asp:ListItem>
                                             <asp:ListItem value='0.51'>0.51</asp:ListItem>
                                             <asp:ListItem value='0.5'>0.5</asp:ListItem>
                                             <asp:ListItem value='0.49'>0.49</asp:ListItem>
                                             <asp:ListItem value='0.48'>0.48</asp:ListItem>
                                             <asp:ListItem value='0.47'>0.47</asp:ListItem>
                                             <asp:ListItem value='0.46'>0.46</asp:ListItem>
                                             <asp:ListItem value='0.45'>0.45</asp:ListItem>
                                             <asp:ListItem value='0.44'>0.44</asp:ListItem>
                                             <asp:ListItem value='0.43'>0.43</asp:ListItem>
                                             <asp:ListItem value='0.42'>0.42</asp:ListItem>
                                             <asp:ListItem value='0.41'>0.41</asp:ListItem>
                                             <asp:ListItem value='0.4'>0.4</asp:ListItem>
                                             <asp:ListItem value='0.39'>0.39</asp:ListItem>
                                             <asp:ListItem value='0.38'>0.38</asp:ListItem>
                                             <asp:ListItem value='0.37'>0.37</asp:ListItem>
                                            <asp:ListItem value='0.36'>0.36</asp:ListItem>
                                             <asp:ListItem value='0.35'>0.35</asp:ListItem>
                                             <asp:ListItem value='0.34'>0.34</asp:ListItem>
                                             <asp:ListItem value='0.33'>0.33</asp:ListItem>
                                            <asp:ListItem value='0.32'>0.32</asp:ListItem>
                                            <asp:ListItem value='0.31'>0.31</asp:ListItem>
                                            <asp:ListItem value='0.3'>0.3</asp:ListItem>
                                             <asp:ListItem value='0.29'>0.29</asp:ListItem>
                                             <asp:ListItem value='0.28'>0.28</asp:ListItem>
                                             <asp:ListItem value='0.27'>0.27</asp:ListItem>
                                             <asp:ListItem value='0.26'>0.26</asp:ListItem>
                                             <asp:ListItem value='0.25'>0.25</asp:ListItem>
                                             <asp:ListItem value='0.24'>0.24</asp:ListItem>
                                             <asp:ListItem value='0.23'>0.23</asp:ListItem>
                                            <asp:ListItem value='0.22'>0.22</asp:ListItem>
                                             <asp:ListItem value='0.21'>0.21</asp:ListItem>
                                            <asp:ListItem value='0.2'>0.2</asp:ListItem>
                                             <asp:ListItem value='0.19'>0.19</asp:ListItem>
                                            <asp:ListItem value='0.18'>0.18</asp:ListItem>
                                             <asp:ListItem value='0.17'>0.17</asp:ListItem>
                                            <asp:ListItem value='0.16'>0.16</asp:ListItem>
                                             <asp:ListItem value='0.15'>0.15</asp:ListItem>
                                             <asp:ListItem value='0.14'>0.14</asp:ListItem>
                                             <asp:ListItem value='0.13'>0.13</asp:ListItem>
                                             <asp:ListItem value='0.12'>0.12</asp:ListItem>
                                            <asp:ListItem value='0.11'>0.11</asp:ListItem>
                                             <asp:ListItem value='0.1'>0.1</asp:ListItem>
                                             <asp:ListItem value='0.09'>0.09</asp:ListItem>
                                            <asp:ListItem value='0.08'>0.08</asp:ListItem>
                                             <asp:ListItem value='0.07'>0.07</asp:ListItem>
                                             <asp:ListItem value='0.06'>0.06</asp:ListItem>
                                             <asp:ListItem value='0.05'>0.05</asp:ListItem>
                                             <asp:ListItem value='0.04'>0.04</asp:ListItem>
                                            <asp:ListItem value='0.03'>0.03</asp:ListItem>
                                            <asp:ListItem value='0.02'>0.02</asp:ListItem>
                                             <asp:ListItem value='0.01'>0.01</asp:ListItem>
                                            <asp:ListItem selected='true' value='0'>0</asp:ListItem></asp:DropDownList>
                                            </td><td>
                                                <asp:DropDownList ID="ddlautoS10UL" disabled 
                                                    runat="server" Width="50px">                                           
                                             <asp:ListItem value='0.7'>0.7</asp:ListItem>
                                             <asp:ListItem value='0.69'>0.69</asp:ListItem>
                                            <asp:ListItem value='0.68'>0.68</asp:ListItem>
                                             <asp:ListItem value='0.67'>0.67</asp:ListItem>
                                             <asp:ListItem value='0.66'>0.66</asp:ListItem>
                                             <asp:ListItem value='0.65'>0.65</asp:ListItem>
                                             <asp:ListItem value='0.64'>0.64</asp:ListItem>
                                             <asp:ListItem value='0.63'>0.63</asp:ListItem>
                                             <asp:ListItem value='0.62'>0.62</asp:ListItem>
                                             <asp:ListItem value='0.61'>0.61</asp:ListItem>
                                             <asp:ListItem value='0.6'>0.6</asp:ListItem>
                                             <asp:ListItem value='0.59'>0.59</asp:ListItem>
                                             <asp:ListItem value='0.58'>0.58</asp:ListItem>
                                             <asp:ListItem value='0.57'>0.57</asp:ListItem>
                                             <asp:ListItem value='0.56'>0.56</asp:ListItem>
                                             <asp:ListItem value='0.55'>0.55</asp:ListItem>
                                             <asp:ListItem value='0.54'>0.54</asp:ListItem>
                                             <asp:ListItem value='0.53'>0.53</asp:ListItem>
                                             <asp:ListItem value='0.52'>0.52</asp:ListItem>
                                             <asp:ListItem value='0.51'>0.51</asp:ListItem>
                                             <asp:ListItem value='0.5'>0.5</asp:ListItem>
                                             <asp:ListItem value='0.49'>0.49</asp:ListItem>
                                             <asp:ListItem value='0.48'>0.48</asp:ListItem>
                                             <asp:ListItem value='0.47'>0.47</asp:ListItem>
                                             <asp:ListItem value='0.46'>0.46</asp:ListItem>
                                             <asp:ListItem value='0.45'>0.45</asp:ListItem>
                                             <asp:ListItem value='0.44'>0.44</asp:ListItem>
                                             <asp:ListItem value='0.43'>0.43</asp:ListItem>
                                             <asp:ListItem value='0.42'>0.42</asp:ListItem>
                                             <asp:ListItem value='0.41'>0.41</asp:ListItem>
                                             <asp:ListItem value='0.4'>0.4</asp:ListItem>
                                             <asp:ListItem value='0.39'>0.39</asp:ListItem>
                                             <asp:ListItem value='0.38'>0.38</asp:ListItem>
                                             <asp:ListItem value='0.37'>0.37</asp:ListItem>
                                            <asp:ListItem value='0.36'>0.36</asp:ListItem>
                                             <asp:ListItem value='0.35'>0.35</asp:ListItem>
                                             <asp:ListItem value='0.34'>0.34</asp:ListItem>
                                             <asp:ListItem value='0.33'>0.33</asp:ListItem>
                                            <asp:ListItem value='0.32'>0.32</asp:ListItem>
                                            <asp:ListItem value='0.31'>0.31</asp:ListItem>
                                            <asp:ListItem value='0.3'>0.3</asp:ListItem>
                                             <asp:ListItem value='0.29'>0.29</asp:ListItem>
                                             <asp:ListItem value='0.28'>0.28</asp:ListItem>
                                             <asp:ListItem value='0.27'>0.27</asp:ListItem>
                                             <asp:ListItem value='0.26'>0.26</asp:ListItem>
                                             <asp:ListItem value='0.25'>0.25</asp:ListItem>
                                             <asp:ListItem value='0.24'>0.24</asp:ListItem>
                                             <asp:ListItem value='0.23'>0.23</asp:ListItem>
                                            <asp:ListItem value='0.22'>0.22</asp:ListItem>
                                             <asp:ListItem value='0.21'>0.21</asp:ListItem>
                                            <asp:ListItem value='0.2'>0.2</asp:ListItem>
                                             <asp:ListItem value='0.19'>0.19</asp:ListItem>
                                            <asp:ListItem value='0.18'>0.18</asp:ListItem>
                                             <asp:ListItem value='0.17'>0.17</asp:ListItem>
                                            <asp:ListItem value='0.16'>0.16</asp:ListItem>
                                             <asp:ListItem value='0.15'>0.15</asp:ListItem>
                                             <asp:ListItem value='0.14'>0.14</asp:ListItem>
                                             <asp:ListItem value='0.13'>0.13</asp:ListItem>
                                             <asp:ListItem value='0.12'>0.12</asp:ListItem>
                                            <asp:ListItem value='0.11'>0.11</asp:ListItem>
                                             <asp:ListItem value='0.1'>0.1</asp:ListItem>
                                             <asp:ListItem value='0.09'>0.09</asp:ListItem>
                                            <asp:ListItem value='0.08'>0.08</asp:ListItem>
                                             <asp:ListItem value='0.07'>0.07</asp:ListItem>
                                             <asp:ListItem value='0.06'>0.06</asp:ListItem>
                                             <asp:ListItem value='0.05'>0.05</asp:ListItem>
                                             <asp:ListItem value='0.04'>0.04</asp:ListItem>
                                            <asp:ListItem value='0.03'>0.03</asp:ListItem>
                                            <asp:ListItem value='0.02'>0.02</asp:ListItem>
                                             <asp:ListItem value='0.01'>0.01</asp:ListItem>
                                            <asp:ListItem selected='true' value='0'>0</asp:ListItem></asp:DropDownList>
                                            </td></tr></table></div></td></tr></table></div></div><div class="{none-copy}"><div class="l"><br />
            <asp:CheckBox id="chkCopyBasket"  onclick="CopyBasketPT(this);" runat="server" />
&nbsp;<b><span style="cursor: pointer;" {disable_chkbasket} onclick="$('chkCopyBasket').click();">Copy all Bet Setting and Position Taking from Basketball Handicap</span></b></div></div><div class="l" id="linkBasket" onclick="OpenPanelEdi?('panelBasket'); togglePTmenu('bullet2')"><div class="button_cont"><div class="menu_content"><ul><li><a id="bullet2" class="md2_on" href="#1">Basketball</a></li></ul></div></div></div><div style="display: none" id="panelBasket"><div class="l"><table class="sptPT" style="width: 75%"><tr><td><div id="divUpdInfo2" name="divUpdInfo2"><table border="0" width="100%" class="tblRpt"><tr class="tblTitleCenter"><td colspan="3">Bet Setting</td></tr><tr class="bg_eb"><td class="c tdPT1" >Min Bet&nbsp;<input type="text" maxlength="14" id="txtMinbet2" name="txtMinbet2" value="5" /><span class="minmaxbet">&gt;=<span id="txtMinbet_Min2">5</span></span></td><td class="c" >Max Bet&nbsp;<input type="text" maxlength="14" id="txtMaxbet2" name="txtMaxbet2" value="35,000" /><span class="minmaxbet">&lt;=<span id="txtMaxbet_Max2">35,000</span></span></td><td class="c" >Max Per Match&nbsp;<input type="text" maxlength="14" id="txtMaxPerMatch2" name="txtMaxPerMatch2" value="200,000" /><span class="hidden">&gt;=<span id="txtMaxPerMatch_Min2"> 0</span> and </span><span class="minmaxbet">&lt;=<span id="txtMaxPerMatch_Max2">200,000</span></span></td></tr></table></div></td></tr><tr><td><div id="divUpdPT2" name="divUpdPT2"><table border="1" width="100%" class="tblRpt"><tr class="tblTitleCenter"><td colspan="7">Position Taking</td></tr><tr class="bg_eb"><td></td><td>Handicap</td><td>Over/Under</td><td>Odd/Even</td><td>Mix Parlay</td><td>Money Line</td><td></td></tr>
<tr class="bg_eb"><td class="r">Master Preset</td><td><select id="listM2Hdp" name="listM2Hdp"onChange="SelectOnChange('listM2Hdp');" ><option selected='true' value='0'>0</option></select><a class="imaLink img" href="javascript:ReducePT('listM2Hdp',1)"><img class="hand" hspace="1" id="btnReduce1" name="btnReduce1" src="../App_Themes/AgencyV2/Images/b_down.jpg" /></a><a class="imaLink img" href="javascript:IncreasePT('listM2Hdp',1)"><img class="hand" hspace="1" id="btnIncrease1" name="btnIncrease1" src="../App_Themes/AgencyV2/Images/b_up.jpg"/></a><a class="imaLink img" href="javascript:ReducePT('listM2Hdp',10)"><img class="hand" hspace="1" id="btnReduce10" name="btnReduce10" src="../App_Themes/AgencyV2/Images/b_sub.jpg"/></a><a class="imaLink img" href="javascript:IncreasePT('listM2Hdp',10)"><img class="hand" hspace="1" id="btnIncrease10" name="btnIncrease10" src="../App_Themes/AgencyV2/Images/b_add.jpg"/></a></td><td><select id="listM2OU" name="listM2OU"onChange="SelectOnChange('listM2OU');" ><option selected='true' value='0'>0</option></select></td><td><select id="listM2OE" name="listM2OE"onChange="SelectOnChange('listM2OE');" ><option selected='true' value='0'>0</option></select></td><td><select id="listM2MP" name="listM2MP"onChange="SelectOnChange('listM2MP');" ><option selected='true' value='0'>0</option></select></td><td><select id="listM2ML" name="listM2ML"onChange="SelectOnChange('listM2ML');" ><option selected='true' value='0'>0</option></select></td><td rowspan="2" class="l"><input type="checkbox" {chk-hdp} id="chkCopy2Hdp" name="chkCopy2Hdp" onclick="CheckCopyPT(this,arrSuper2,arrMaster2,'chkAuto2Hdp');" />Copy From Handicap</td></tr><tr class="bg_eb"><td class="r">Super Preset</td><td><select id="listS2Hdp" name="listS2Hdp"onChange="SelectOnChange('listS2Hdp');" ><option selected='true' value='0.7'>0.7</option><option value='0.69'>0.69</option><option value='0.68'>0.68</option><option value='0.67'>0.67</option><option value='0.66'>0.66</option><option value='0.65'>0.65</option><option value='0.64'>0.64</option><option value='0.63'>0.63</option><option value='0.62'>0.62</option><option value='0.61'>0.61</option><option value='0.6'>0.6</option><option value='0.59'>0.59</option><option value='0.58'>0.58</option><option value='0.57'>0.57</option><option value='0.56'>0.56</option><option value='0.55'>0.55</option><option value='0.54'>0.54</option><option value='0.53'>0.53</option><option value='0.52'>0.52</option><option value='0.51'>0.51</option><option value='0.5'>0.5</option>
<option value='0.49'>0.49</option><option value='0.48'>0.48</option><option value='0.47'>0.47</option><optio? value='0.46'>0.46</option><option value='0.45'>0.45</option><option value='0.44'>0.44</option><option value='0.43'>0.43</option><option value='0.42'>0.42</option><option value='0.41'>0.41</option><option value='0.4'>0.4</option><option value='0.39'>0.39</option><option value='0.38'>0.38</option><option value='0.37'>0.37</option><option value='0.36'>0.36</option><option value='0.35'>0.35</option><option value='0.34'>0.34</option><option value='0.33'>0.33</option><option value='0.32'>0.32</option><option value='0.31'>0.31</option><option value='0.3'>0.3</option><option value='0.29'>0.29</option><option value='0.28'>0.28</option><option value='0.27'>0.27</option><option value='0.26'>0.26</option><option value='0.25'>0.25</option><option value='0.24'>0.24</option><option value='0.23'>0.23</option><option value='0.22'>0.22</option><option value='0.21'>0.21</option><option value='0.2'>0.2</option><option value='0.19'>0.19</option><option value='0.18'>0.18</option><option value='0.17'>0.17</option><option value='0.16'>0.16</option><option value='0.15'>0.15</option><option value='0.14'>0.14</option><option value='0.13'>0.13</option><option value='0.12'>0.12</option><option value='0.11'>0.11</option><option value='0.1'>0.1</option><option value='0.09'>0.09</option>
<option value='0.08'>0.08</option><option value='0.07'>0.07</option><option value='0.06'>0.06</option><option value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value='0.01'>0.01</option><option value='0'>0</option></select><a class="imaLink img" href="javascript:ReducePT('listS2Hdp',1)"><img class="hand" hspace="1" id="btnReduce1" name="btnReduce1" src="../App_Themes/AgencyV2/Images/b_down.jpg" /></a><a class="imaLink img" href="javascript:IncreasePT('listS2Hdp',1)"><img class="hand" hspace="1" id="btnIncrease1" name="btnIncrease1" src="../App_Themes/AgencyV2/Images/b_up.jpg"/></a><a class="imaLink img" href="javascript:ReducePT('listS2Hdp',10)"><img class="hand" hspace="1" id="btnReduce10" name="btnReduce10" src="../App_Themes/AgencyV2/Images/b_sub.jpg"/></a><a class="imaLink img" href="javascript:IncreasePT('listS2Hdp',10)"><img class="hand" hspace="1" id="btnIncrease10" name="btnIncrease10" src="../App_Themes/AgencyV2/Images/b_add.jpg"/></a></td><td><select id="listS2OU" name="listS2OU"onChange="SelectOnChange('listS2OU');" ><option selected='true' value='0.7'>0.7</option><option value='0.69'>0.69</option><option value='0.68'>0.68</option><option value='0.67'>0.67</option><option value='0.66'>0.66</option><option value='0.65'>0.65</option><option value='0.64'>0.64</option><option value='0.63'>0.63</option><option value='0.62'>0.62</option><option value='0.61'>0.61</option><option value='0.6'>0.6</option><option value='0.59'>0.59</option><option value='0.58'>0.58</option>
<option value='0.57'>0.57</option><option value='0.56'>0.56</option><option value='0.55'>0.55</option><option value='0.54'>0.54</option><option value='0.53'>0.53</option><option value='0.52'>0.52</option><option value='0.51'>0.51</option><option value='0.5'>0.5</option><option value='0.49'>0.49</option><option value='0.48'>0.48</option><option value='0.47'>0.47</option><option value='0.46'>0.46</option><option value='0.45'>0.45</option><option value='0.44'>0.44</option><option value='0.43'>0.43</option><option value='0.42'>0.42</option><option value='0.41'>0.41</option><option value='0.4'>0.4</option><option value='0.39'>0.39</option><option value='0.38'>0.38</option><option value='0.37'>0.37</option><option value='0.36'>0.36</option><option value='0.35'>0.35</option><option value='0.34'>0.34</option><option value='0.33'>0.33</option><option value='0.32'>0.32</option><option value='0.31'>0.31</option><option value='0.3'>0.3</option><option value='0.29'>0.29</option><option value='0.28'>0.28</option><option value='0.27'>0.27</option><option value='0.26'>0.26</option><option value='0.25'>0.25</option><option value='0.24'>0.24</option><option value='0.23'>0.23</option><option value='0.22'>0.22</option><option value=?0.21'>0.21</option><option value='0.2'>0.2</option><option value='0.19'>0.19</option><option value='0.18'>0.18</option><option value='0.17'>0.17</option><option value='0.16'>0.16</option><option value='0.15'>0.15</option><option value='0.14'>0.14</option><option value='0.13'>0.13</option><option value='0.12'>0.12</option><option value='0.11'>0.11</option><option value='0.1'>0.1</option><option value='0.09'>0.09</option><option value='0.08'>0.08</option><option value='0.07'>0.07</option><option value='0.06'>0.06</option><option value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value='0.01'>0.01</option><option value='0'>0</option></select></td><td><select id="listS2OE" name="listS2OE"onChange="SelectOnChange('listS2OE');" ><option selected='true' value='0.7'>0.7</option><option value='0.69'>0.69</option><option value='0.68'>0.68</option>
<option value='0.67'>0.67</option><option value='0.66'>0.66</option><option value='0.65'>0.65</option><option value='0.64'>0.64</option><option value='0.63'>0.63</option><option value='0.62'>0.62</option><option value='0.61'>0.61</option><option value='0.6'>0.6</option><option value='0.59'>0.59</option><option value='0.58'>0.58</option><option value='0.57'>0.57</option><option value='0.56'>0.56</option><option value='0.55'>0.55</option><option value='0.54'>0.54</option><option value='0.53'>0.53</option><option value='0.52'>0.52</option><option value='0.51'>0.51</option><option value='0.5'>0.5</option><option value='0.49'>0.49</option><option value='0.48'>0.48</option><option value='0.47'>0.47</option><option value='0.46'>0.46</option><option value='0.45'>0.45</option><option value='0.44'>0.44</option><option value='0.43'>0.43</option><option value='0.42'>0.42</option><option value='0.41'>0.41</option><option value='0.4'>0.4</option><option value='0.39'>0.39</option><option value='0.38'>0.38</option><option value='0.37'>0.37</option><option value='0.36'>0.36</option><option value='0.35'>0.35</option><option value='0.34'>0.34</option><option value='0.33'>0.33</option><option value='0.32'>0.32</option><option value='0.31'>0.31</option><option value='0.3'>0.3</option><option value='0.29'>0.29</option><option value='0.28'>0.28</option><option value='0.27'>0.27</option><option value='0.26'>0.26</option><option value='0.25'>0.25</option><option value='0.24'>0.24</option><option value='0.23'>0.23</option><option value='0.22'>0.22</option>
<option value='0.21'>0.21</option><option value='0.2'>0.2</option><option value='0.19'>0.19</option><option value='0.18'>0.18</option><option value='0.17'>0.17</option><option value='0.16'>0.16</option><option value='0.15'>0.15</option><option value='0.14'>0.14</option><option value='0.13'>0.13</option><option value='0.12'>0.12</option><option value='0.11'>0.11</option><option value='0.1'>0.1</option><option value='0.09'>0.09</option><option value='0.08'>0.08</option><option value='0.07'>0.07</option><option value='0.06'>0.06</option><option value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value='0.01'>0.01</option><option value='0'>0</option></select></td><td><select id="listS2MP" name="listS2MP"onChange="SelectOnChange('listS2MP');" ><option selected='true' value='0.7'>0.7</option><option value='0.69'>0.69</option><option value='0.68'>0.68</option><option value='0.67'>0.67</option><option value='0.66'>0.66</option><option value='0.65'>0.65</option><option value='0.64'>0.64</option><option value='0.63'>0.63</option><option value='0.62'>0.62</option><option value='0.61'>0.61</option><option value='0.6'>0.6</option><option value='0.59'>0.59</option><option value='0.58'>0.58</option><option value='0.57'>0.57</option><option value='0.56'>0.56</option><option value='0.55'>0.55</option><option value='0.54'>0.54</option><option value='0.53'>0.53</option><option value='0.52'>0.52</option><option value='0.51'>0.51</option><option value='0.5'>0.5</option><option value='0.49'>0.49</option><option valu?='0.48'>0.48</option><option value='0.47'>0.47</option><option value='0.46'>0.46</option><option value='0.45'>0.45</option><option value='0.44'>0.44</option><option value='0.43'>0.43</option><option value='0.42'>0.42</option><option value='0.41'>0.41</option><option value='0.4'>0.4</option><option value='0.39'>0.39</option><option value='0.38'>0.38</option><option value='0.37'>0.37</option><option value='0.36'>0.36</option><option value='0.35'>0.35</option><option value='0.34'>0.34</option><option value='0.33'>0.33</option><option value='0.32'>0.32</option><option value='0.31'>0.31</option><option value='0.3'>0.3</option><option value='0.29'>0.29</option><option value='0.28'>0.28</option><option value='0.27'>0.27</option><option value='0.26'>0.26</option>
<option value='0.25'>0.25</option><option value='0.24'>0.24</option><option value='0.23'>0.23</option><option value='0.22'>0.22</option><option value='0.21'>0.21</option><option value='0.2'>0.2</option><option value='0.19'>0.19</option><option value='0.18'>0.18</option><option value='0.17'>0.17</option><option value='0.16'>0.16</option><option value='0.15'>0.15</option><option value='0.14'>0.14</option><option value='0.13'>0.13</option><option value='0.12'>0.12</option><option value='0.11'>0.11</option><option value='0.1'>0.1</option><option value='0.09'>0.09</option><option value='0.08'>0.08</option><option value='0.07'>0.07</option><option value='0.06'>0.06</option><option value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value='0.01'>0.01</option><option value='0'>0</option></select></td><td><select id="listS2ML" name="listS2ML"onChange="SelectOnChange('listS2ML');" ><option selected='true' value='0.7'>0.7</option><option value='0.69'>0.69</option><option value='0.68'>0.68</option><option value='0.67'>0.67</option><option value='0.66'>0.66</option><option value='0.65'>0.65</option><option value='0.64'>0.64</option><option value='0.63'>0.63</option><option value='0.62'>0.62</option><option value='0.61'>0.61</option><option value='0.6'>0.6</option><option value='0.59'>0.59</option><option value='0.58'>0.58</option>
<option value='0.57'>0.57</option><option value='0.56'>0.56</option><option value='0.55'>0.55</option><option value='0.54'>0.54</option><option value='0.53'>0.53</option><option value='0.52'>0.52</option><option value='0.51'>0.51</option><option value='0.5'>0.5</option><option value='0.49'>0.49</option><option value='0.48'>0.48</option><option value='0.47'>0.47</option><option value='0.46'>0.46</option><option value='0.45'>0.45</option><option value='0.44'>0.44</option><option value='0.43'>0.43</option><option value='0.42'>0.42</option><option value='0.41'>0.41</option><option value='0.4'>0.4</option><option value='0.39'>0.39</option><option value='0.38'>0.38</option><option value='0.37'>0.37</option><option value='0.36'>0.36</option><option value='0.35'>0.35</option><option value='0.34'>0.34</option><option value='0.33'>0.33</option><option value='0.32'>0.32</option><option value='0.31'>0.31</option><option value='0.3'>0.3</option><option value='0.29'>0.29</option><option value='0.28'>0.28</option><option value='0.27'>0.27</option><option value='0.26'>0.26</option><option value='0.25'>0.25</option><option value='0.24'>0.24</option><option value='0.23'>0.23</option><option value='0.22'>0.22</option><option value='0.21'>0.21</option><option value='0.2'>0.2</option><option value='0.19'>0.19</option>
<option value='0.18'>0.18</option><option value='0.17'>0.17</option><option value='0.16'>0.16</option><option value='0.15'>0.15</option><option value='0.14'>0.14</option><option value='0.13'>0.13</option><option value='0.12'>0.12</option><option value='0.11'>0.11</option><option value='0.1'>0.1</option><option value='0.09'>0.09</option><option value='0.08'>0.08</option><option value='0.07'>0.07</option><option value='0.06'>0.06</option><option value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option><option value='0.02'>0.02</option><option val?e='0.01'>0.01</option><option value='0'>0</option></select></td></tr><tr class="bg_eb {hdauto}"><td rowspan="2" class="r">Auto Super Preset</td><td><input type="checkbox" onclick="CheckAutoPreset(this)" id="chkAuto2Hdp" name="chkAuto2Hdp"  /></td><td><input type="checkbox" onclick="CheckAutoPreset(this,'chkCopy2Hdp')" id="chkAuto2OU" name="chkAuto2OU"  /></td><td><input type="checkbox" onclick="CheckAutoPreset(this,'chkCopy2Hdp')" id="chkAuto2OE" name="chkAuto2OE"  /></td><td><input type="checkbox" onclick="CheckAutoPreset(this,'chkCopy2Hdp')" id="chkAuto2MP" name="chkAuto2MP"  /></td><td><input type="checkbox" onclick="CheckAutoPreset(this,'chkCopy2Hdp')" id="chkAuto2ML" name="chkAuto2ML"  /></td></tr><tr class="bg_eb {hdauto}"><td><select id="autoS2Hdp" name="autoS2Hdp" disabled onChange="SelectOnChange('autoS2Hdp');"><option value='0.7'>0.7</option><option value='0.69'>0.69</option><option value='0.68'>0.68</option><option value='0.67'>0.67</option><option value='0.66'>0.66</option><option value='0.65'>0.65</option><option value='0.64'>0.64</option><option value='0.63'>0.63</option><option value='0.62'>0.62</option><option value='0.61'>0.61</option><option value='0.6'>0.6</option>
<option value='0.59'>0.59</option><option value='0.58'>0.58</option><option value='0.57'>0.57</option><option value='0.56'>0.56</option><option value='0.55'>0.55</option><option value='0.54'>0.54</option><option value='0.53'>0.53</option><option value='0.52'>0.52</option><option value='0.51'>0.51</option><option value='0.5'>0.5</option><option value='0.49'>0.49</option><option value='0.48'>0.48</option><option value='0.47'>0.47</option><option value='0.46'>0.46</option><option value='0.45'>0.45</option><option value='0.44'>0.44</option><option value='0.43'>0.43</option><option value='0.42'>0.42</option><option value='0.41'>0.41</option><option value='0.4'>0.4</option><option value='0.39'>0.39</option><option value='0.38'>0.38</option><option value='0.37'>0.37</option><option value='0.36'>0.36</option><option value='0.35'>0.35</option><option value='0.34'>0.34</option><option value='0.33'>0.33</option><option value='0.32'>0.32</option><option value='0.31'>0.31</option><option value='0.3'>0.3</option><option value='0.29'>0.29</option><option value='0.28'>0.28</option><option value='0.27'>0.27</option><option value='0.26'>0.26</option><option value='0.25'>0.25</option><option value='0.24'>0.24</option><option value='0.23'>0.23</option><option value='0.22'>0.22</option><option value='0.21'>0.21</option><option value='0.2'>0.2</option><option value='0.19'>0.19</option><option value='0.18'>0.18</option><option value='0.17'>0.17</option><option value='0.16'>0.16</option><option value='0.15'>0.15</option><option value='0.14'>0.14</option><option value='0.13'>0.13</option><option value='0.12'>0.12</option><option value='0.11'>0.11</option>
<option value='0.1'>0.1</option><option value='0.09'>0.09</option><option value='0.08'>0.08</option><option value='0.07'>0.07</option><option value='0.06'>0.06</option><option value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value='0.01'>0.01</option><option selected='true' value='0'>0</option></select><a class="imaLink img" href="javascript:ReducePT('autoS2Hdp',1)"><img class="hand" hspace="1" id="btnReduce1" name="btnReduce1" src="../App_Themes/AgencyV2/Images/b_down.jpg" /></a><a class="imaLink img" href="javascript:IncreasePT('autoS2Hdp',1)"><img class="hand" hspace="1" id="btnIncrease1" name="btnIncrease1" src="../App_Themes/AgencyV2/Images/b_up.jpg"/></a><a class="imaLink img" href="javascript:ReducePT('autoS2Hdp',10)"><img class="hand" hspace="1" id="btnReduce10" name="btnReduce10" src="../App_Themes/AgencyV2/Images/b_sub.jpg"/></a><a class="imaLink img" href="javascript:IncreasePT('autoS2Hdp',10)"><img class="hand" hspace="1" id="btnIncrease10" name="btnIncrease10" src="../App_Themes/AgencyV2/Images/b_add.jpg"/></a></td><td><select id="autoS2OU" name="autoS2OU" disabled onChange="SelectOnChange('autoS2OU');"><option valu?='0.7'>0.7</option><option value='0.69'>0.69</option><option value='0.68'>0.68</option><option value='0.67'>0.67</option><option value='0.66'>0.66</option><option value='0.65'>0.65</option><option value='0.64'>0.64</option><option value='0.63'>0.63</option><option value='0.62'>0.62</option><option value='0.61'>0.61</option><option value='0.6'>0.6</option><option value='0.59'>0.59</option><option value='0.58'>0.58</option><option value='0.57'>0.57</option><option value='0.56'>0.56</option><option value='0.55'>0.55</option><option value='0.54'>0.54</option>
<option value='0.53'>0.53</option><option value='0.52'>0.52</option><option value='0.51'>0.51</option><option value='0.5'>0.5</option><option value='0.49'>0.49</option><option value='0.48'>0.48</option><option value='0.47'>0.47</option><option value='0.46'>0.46</option><option value='0.45'>0.45</option><option value='0.44'>0.44</option><option value='0.43'>0.43</option><option value='0.42'>0.42</option><option value='0.41'>0.41</option><option value='0.4'>0.4</option><option value='0.39'>0.39</option><option value='0.38'>0.38</option><option value='0.37'>0.37</option><option value='0.36'>0.36</option><option value='0.35'>0.35</option><option value='0.34'>0.34</option><option value='0.33'>0.33</option><option value='0.32'>0.32</option><option value='0.31'>0.31</option><option value='0.3'>0.3</option><option value='0.29'>0.29</option><option value='0.28'>0.28</option><option value='0.27'>0.27</option><option value='0.26'>0.26</option><option value='0.25'>0.25</option><option value='0.24'>0.24</option><option value='0.23'>0.23</option><option value='0.22'>0.22</option><option value='0.21'>0.21</option><option value='0.2'>0.2</option><option value='0.19'>0.19</option><option value='0.18'>0.18</option><option value='0.17'>0.17</option><option value='0.16'>0.16</option><option value='0.15'>0.15</option><option value='0.14'>0.14</option>
<option value='0.13'>0.13</option><option value='0.12'>0.12</option><option value='0.11'>0.11</option><option value='0.1'>0.1</option><option value='0.09'>0.09</option><option value='0.08'>0.08</option><option value='0.07'>0.07</option><option value='0.06'>0.06</option><option value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value='0.01'>0.01</option><option selected='true' value='0'>0</option></select></td><td><select id="autoS2OE" name="autoS2OE" disabled onChange="SelectOnChange('autoS2OE');"><option value='0.7'>0.7</option><option value='0.69'>0.69</option><option value='0.68'>0.68</option><option value='0.67'>0.67</option><option value='0.66'>0.66</option><option value='0.65'>0.65</option><option value='0.64'>0.64</option><option value='0.63'>0.63</option><option value='0.62'>0.62</option><option value='0.61'>0.61</option><option value='0.6'>0.6</option><option value='0.59'>0.59</option><option value='0.58'>0.58</option><option value='0.57'>0.57</option><option value='0.56'>0.56</option><option value='0.55'>0.55</option><option value='0.54'>0.54</option><option value='0.53'>0.53</option><option value='0.52'>0.52</option><option value='0.51'>0.51</option><option value='0.5'>0.5</option><option value='0.49'>0.49</option><option value='0.48'>0.48</option><option value='0.47'>0.47</option><option value='0.46'>0.46</option><option value='0.45'>0.45</option><option value='0.44'>0.44</option><option value='0.43'>0.43</option><option value='0.42'>0.42</option><option value='0.41'>0.41</option><option value='0.4'>0.4</option><option value='0.39'>0.39</option><option value='0.38'>0.38</option>
<option value='0.37'>0.37</option><option value='0.36'>0.36</option><option value='0.35'>0.35</option><option value='0.34'>0.34</option><option value='0.33'>0.33</option><option value='0.32'>0.32</option><option value='0.31'>0.31</option><option value='0.3'>0.3</option><option value='0.29'>0.29</option><option value='0.28'>0.28</option><option value='0.27'>0.27</option><option value='0.26'>0.26</option><option value='0.25'>0.25</option><option value='0.24'>0.24</option><opt?on value='0.23'>0.23</option><option value='0.22'>0.22</option><option value='0.21'>0.21</option><option value='0.2'>0.2</option><option value='0.19'>0.19</option><option value='0.18'>0.18</option><option value='0.17'>0.17</option><option value='0.16'>0.16</option><option value='0.15'>0.15</option><option value='0.14'>0.14</option><option value='0.13'>0.13</option><option value='0.12'>0.12</option><option value='0.11'>0.11</option><option value='0.1'>0.1</option><option value='0.09'>0.09</option><option value='0.08'>0.08</option><option value='0.07'>0.07</option><option value='0.06'>0.06</option><option value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value='0.01'>0.01</option><option selected='true' value='0'>0</option></select></td><td><select id="autoS2MP" name="autoS2MP" disabled onChange="SelectOnChange('autoS2MP');"><option value='0.7'>0.7</option><option value='0.69'>0.69</option><option value='0.68'>0.68</option><option value='0.67'>0.67</option><option value='0.66'>0.66</option><option value='0.65'>0.65</option><option value='0.64'>0.64</option><option value='0.63'>0.63</option><option value='0.62'>0.62</option><option value='0.61'>0.61</option><option value='0.6'>0.6</option><option value='0.59'>0.59</option><option value='0.58'>0.58</option>
<option value='0.57'>0.57</option><option value='0.56'>0.56</option><option value='0.55'>0.55</option><option value='0.54'>0.54</option><option value='0.53'>0.53</option><option value='0.52'>0.52</option><option value='0.51'>0.51</option><option value='0.5'>0.5</option><option value='0.49'>0.49</option><option value='0.48'>0.48</option><option value='0.47'>0.47</option><option value='0.46'>0.46</option><option value='0.45'>0.45</option><option value='0.44'>0.44</option><option value='0.43'>0.43</option><option value='0.42'>0.42</option><option value='0.41'>0.41</option><option value='0.4'>0.4</option><option value='0.39'>0.39</option><option value='0.38'>0.38</option><option value='0.37'>0.37</option><option value='0.36'>0.36</option><option value='0.35'>0.35</option><option value='0.34'>0.34</option><option value='0.33'>0.33</option><option value='0.32'>0.32</option><option value='0.31'>0.31</option><option value='0.3'>0.3</option><option value='0.29'>0.29</option><option value='0.28'>0.28</option><option value='0.27'>0.27</option><option value='0.26'>0.26</option><option value='0.25'>0.25</option><option value='0.24'>0.24</option><option value='0.23'>0.23</option><option value='0.22'>0.22</option><option value='0.21'>0.21</option><option value='0.2'>0.2</option><option value='0.19'>0.19</option><option value='0.18'>0.18</option><option value='0.17'>0.17</option><option value='0.16'>0.16</option><option value='0.15'>0.15</option><option value='0.14'>0.14</option><option value='0.13'>0.13</option><option value='0.12'>0.12</option><option value='0.11'>0.11</option><option value='0.1'>0.1</option><option value='0.09'>0.09</option><option value='0.08'>0.08</option><option value='0.07'>0.07</option><option value='0.06'>0.06</option><option value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value='0.01'>0.01</option><option selected='true' value='0'>0</option></select></td><td><select id="autoS2ML" name="autoS2ML" disabled onChange="SelectOnChange('autoS2ML');"><option value='0.7'>0.7</option><option value='0.69'>0.69</option><option value='0.68'>0.68</option>
<option value='0.67'>0.67</option><option value='0.66'>0.66</option><option value='0.65'>0.65</option>
<option value='0.64'>0.64</option><option value='0.63'>0.63</option><option value='0.62'>0.62</option><option value='0.61'>0.61</option><option value='0.6'>0.6</option><option value='0.59'>0.59</option><option value='0.58'>0.58</option><option value='0.57'>0.57</option><option value='0.56'>0.56</option><option value='0.55'>0.55</option><option value='0.54'>0.54</option><option value='0.53'>0.53</option><option value='0.52'>0.52</option><option value='0?51'>0.51</option><option value='0.5'>0.5</option><option value='0.49'>0.49</option><option value='0.48'>0.48</option><option value='0.47'>0.47</option><option value='0.46'>0.46</option><option value='0.45'>0.45</option><option value='0.44'>0.44</option><option value='0.43'>0.43</option><option value='0.42'>0.42</option><option value='0.41'>0.41</option><option value='0.4'>0.4</option><option value='0.39'>0.39</option><option value='0.38'>0.38</option><option value='0.37'>0.37</option><option value='0.36'>0.36</option><option value='0.35'>0.35</option><option value='0.34'>0.34</option><option value='0.33'>0.33</option><option value='0.32'>0.32</option><option value='0.31'>0.31</option><option value='0.3'>0.3</option><option value='0.29'>0.29</option><option value='0.28'>0.28</option><option value='0.27'>0.27</option><option value='0.26'>0.26</option><option value='0.25'>0.25</option><option value='0.24'>0.24</option><option value='0.23'>0.23</option><option value='0.22'>0.22</option><option value='0.21'>0.21</option><option value='0.2'>0.2</option><option value='0.19'>0.19</option><option value='0.18'>0.18</option><option value='0.17'>0.17</option><option value='0.16'>0.16</option><option value='0.15'>0.15</option><option value='0.14'>0.14</option><option value='0.13'>0.13</option><option value='0.12'>0.12</option><option value='0.11'>0.11</option><option value='0.1'>0.1</option><option value='0.09'>0.09</option><option value='0.08'>0.08</option><option value='0.07'>0.07</option><option value='0.06'>0.06</option>
<option value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value='0.01'>0.01</option><option selected='true' value='0'>0</option></select></td></tr></table></div></td></tr></table></div></div><div class="l" id="linkFootball" onclick="OpenPanelEdit('panelFootball'); togglePTmenu('bullet3')"><div class="button_cont"><div class="menu_content"><ul><li><a id="bullet3" class="md2_on" href="#1">Football</a></li></ul></div></div></div><div style="display: none" id="panelFootball"><div class="l"><table class="sptPT" style="width: 75%"><tr><td><div id="divUpdInfo3" name="divUpdInfo3"><table width="100%" class="tblRpt"><tr class="tblTitleCenter"><td colspan="3">Bet Setting</td></tr><tr class="bg_eb"><td class="c tdPT1">Min Bet&nbsp;<input type="text" maxlength="14" id="txtMinbet3" name="txtMinbet3" value="5" /><span class="minmaxbet">&gt;=<span id="txtMinbet_Min3">5</span></span></td><td class="c">Max Bet&nbsp;<input type="text" maxlength="14" id="txtMaxbet3" name="txtMaxbet3" value="35,000" /><span class="minmaxbet">&lt;=<span id="txtMaxbet_Max3">35,000</span></span></td><td class="c">Max Per Match&nbsp;<input type="text" maxlength="14" id="txtMaxPerMatch3" name="txtMaxPerMatch3" value="200,000" /><span class="hidden">&gt;=<span id="txtMaxPerMatch_Min3">0</span> and</span><span class="minmaxbet">&lt;=<span id="txtMaxPerMatch_Max3">200,000</span></span></td></tr></table></div></td></tr><tr><td><div id="divUpdPT3" name="divUpdPT3"><table width="100%" border="1" class="tblRpt"><tr class="tblTitleCenter"><td colspan="6">Position Taking</td></tr><tr class="bg_eb"><td></td><td>Handicap</td><td>Over/Under</td><td>Odd/Even</td><td>Money Line</td><td></td></tr><tr class="bg_eb"><td class="r">Master Preset</td><td><select id="listM3Hdp" name="listM3Hdp"onChange="SelectOnChange('listM3Hdp');" ><option selected='true' value='0'>0</option></select><a class="imaLink img" href="javascript:ReducePT('listM3Hdp',1)">
<img class="hand" hspace="1" id="btnReduce1" name="btnReduce1" src="../App_Themes/AgencyV2/Images/b_down.jpg" />
</a><a class="imaLink img" href="javascript:IncreasePT('listM3Hdp',1)"><img class="hand" hspace="1" id="btnIncrease1" name="btnIncrease1" src="../App_Themes/AgencyV2/Images/b_up.jpg"/></a><a class="imaLink img" href="javascript:ReducePT('listM3Hdp',10)"><img class="hand" hspace="1" id="btnReduce10" name="btnReduce10" src="../App_Themes/AgencyV2/Images/b_sub.jpg"/></a><a class="imaLink img" href="javascript:IncreasePT('listM3Hdp',10)"?<img class="hand" hspace="1" id="btnIncrease10" name="btnIncrease10" src="../App_Themes/AgencyV2/Images/b_add.jpg"/></a></td><td><select id="listM3OU" name="listM3OU"onChange="SelectOnChange('listM3OU');" ><option selected='true' value='0'>0</option></select></td><td><select id="listM3OE" name="listM3OE"onChange="SelectOnChange('listM3OE');" ><option selected='true' value='0'>0</option></select></td><td><select id="listM3ML" name="listM3ML"onChange="SelectOnChange('listM3ML');" ><option selected='true' value='0'>0</option></select></td><td rowspan="2" class="l"><input type="checkbox" {chk-hdp} id="chkCopy3Hdp" name="chkCopy3Hdp" onclick="CheckCopyPT(this,arrSuper3,arrMaster3,'chkAuto3Hdp');" />Copy From Handicap</td></tr><tr class="bg_eb"><td class="r">Super Preset</td><td><select id="listS3Hdp" name="listS3Hdp"onChange="SelectOnChange('listS3Hdp');" ><option selected='true' value='0.7'>0.7</option><option value='0.69'>0.69</option><option value='0.68'>0.68</option><option value='0.67'>0.67</option><option value='0.66'>0.66</option><option value='0.65'>0.65</option><option value='0.64'>0.64</option>
<option value='0.63'>0.63</option><option value='0.62'>0.62</option><option value='0.61'>0.61</option><option value='0.6'>0.6</option><option value='0.59'>0.59</option><option value='0.58'>0.58</option><option value='0.57'>0.57</option><option value='0.56'>0.56</option><option value='0.55'>0.55</option><option value='0.54'>0.54</option><option value='0.53'>0.53</option><option value='0.52'>0.52</option><option value='0.51'>0.51</option><option value='0.5'>0.5</option><option value='0.49'>0.49</option><option value='0.48'>0.48</option><option value='0.47'>0.47</option><option value='0.46'>0.46</option><option value='0.45'>0.45</option><option value='0.44'>0.44</option><option value='0.43'>0.43</option><option value='0.42'>0.42</option><option value='0.41'>0.41</option><option value='0.4'>0.4</option><option value='0.39'>0.39</option><option value='0.38'>0.38</option><option value='0.37'>0.37</option><option value='0.36'>0.36</option><option value='0.35'>0.35</option><option value='0.34'>0.34</option><option value='0.33'>0.33</option><option value='0.32'>0.32</option><option value='0.31'>0.31</option><option value='0.3'>0.3</option><option value='0.29'>0.29</option><option value='0.28'>0.28</option><option value='0.27'>0.27</option><option value='0.26'>0.26</option><option value='0.25'>0.25</option><option value='0.24'>0.24</option><option value='0.23'>0.23</option><option value='0.22'>0.22</option><option value='0.21'>0.21</option><option value='0.2'>0.2</option><option value='0.19'>0.19</option><option value='0.18'>0.18</option><option value='0.17'>0.17</option><option value='0.16'>0.16</option><option value='0.15'>0.15</option><option value='0.14'>0.14</option><option value='0.13'>0.13</option><option value='0.12'>0.12</option><option value='0.11'>0.11</option>
<option value='0.1'>0.1</option><option value='0.09'>0.09</option><option value='0.08'>0.08</option><option value='0.07'>0.07</option><option value='0.06'>0.06</option><option value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value='0.01'>0.01</option><option value='0'>0</option></select><a class="imaLink img" href="javascript:ReducePT('listS3Hdp',1)"><img class="hand" hspace="1" id="btnReduce1" name="btnReduce1" src="../App_Themes/AgencyV2/Images/b_down.jpg" /></a><a class="imaLink img" href="javascript:IncreasePT('listS3Hdp',1)"><img class="hand" hspace="1" id="btnIncrease1" name="btnIncrease1" src="../App_Themes/AgencyV2/Images/b_up.jpg"/></a><a class="imaLink img" href="javascript:ReducePT('listS3Hdp',10)"><img class="hand" hspace="1" id="btnReduce10" name="btnReduce10" src="../App_Themes/AgencyV2/Images/b_sub.jpg"/></a><a class="imaLink img" href="javascript:IncreasePT('listS3Hdp',10)"><img class="hand" hspace="1" id="btnIncrease10" name="btnIncrease10" src="../App_Themes/AgencyV2/Images/b_add.jpg"/></a></td><td><select id="listS3OU" name="listS3OU"onChange="SelectOnChange('lis?S3OU');" ><option selected='true' value='0.7'>0.7</option><option value='0.69'>0.69</option><option value='0.68'>0.68</option><option value='0.67'>0.67</option><option value='0.66'>0.66</option><option value='0.65'>0.65</option><option value='0.64'>0.64</option><option value='0.63'>0.63</option><option value='0.62'>0.62</option><option value='0.61'>0.61</option><option value='0.6'>0.6</option><option value='0.59'>0.59</option><option value='0.58'>0.58</option><option value='0.57'>0.57</option><option value='0.56'>0.56</option><option value='0.55'>0.55</option><option value='0.54'>0.54</option><option value='0.53'>0.53</option><option value='0.52'>0.52</option><option value='0.51'>0.51</option><option value='0.5'>0.5</option><option value='0.49'>0.49</option><option value='0.48'>0.48</option><option value='0.47'>0.47</option><option value='0.46'>0.46</option><option value='0.45'>0.45</option><option value='0.44'>0.44</option><option value='0.43'>0.43</option><option value='0.42'>0.42</option><option value='0.41'>0.41</option><option value='0.4'>0.4</option><option value='0.39'>0.39</option>
<option value='0.38'>0.38</option><option value='0.37'>0.37</option><option value='0.36'>0.36</option><option value='0.35'>0.35</option><option value='0.34'>0.34</option><option value='0.33'>0.33</option><option value='0.32'>0.32</option><option value='0.31'>0.31</option><option value='0.3'>0.3</option><option value='0.29'>0.29</option><option value='0.28'>0.28</option><option value='0.27'>0.27</option><option value='0.26'>0.26</option><option value='0.25'>0.25</option><option value='0.24'>0.24</option><option value='0.23'>0.23</option><option value='0.22'>0.22</option><option value='0.21'>0.21</option><option value='0.2'>0.2</option><option value='0.19'>0.19</option><option value='0.18'>0.18</option><option value='0.17'>0.17</option><option value='0.16'>0.16</option><option value='0.15'>0.15</option><option value='0.14'>0.14</option><option value='0.13'>0.13</option><option value='0.12'>0.12</option><option value='0.11'>0.11</option><option value='0.1'>0.1</option><option value='0.09'>0.09</option><option value='0.08'>0.08</option><option value='0.07'>0.07</option><option value='0.06'>0.06</option><option value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value='0.01'>0.01</option><option value='0'>0</option></select></td><td><select id="listS3OE" name="listS3OE"onChange="SelectOnChange('listS3OE');" ><option selected='true' value='0.7'>0.7</option>
<option value='0.69'>0.69</option><option value='0.68'>0.68</option><option value='0.67'>0.67</option><option value='0.66'>0.66</option><option value='0.65'>0.65</option><option value='0.64'>0.64</option><option value='0.63'>0.63</option><option value='0.62'>0.62</option><option value='0.61'>0.61</option><option value='0.6'>0.6</option><option value='0.59'>0.59</option><option value='0.58'>0.58</option><option value='0.57'>0.57</option><option value='0.56'>0.56</option><option value='0.55'>0.55</option><option value='0.54'>0.54</option><option value='0.53'>0.53</option><option value='0.52'>0.52</option><option value='0.51'>0.51</option><option value='0.5'>0.5</option><option value='0.49'>0.49</option><option value='0.48'>0.48</option><option value='0.47'>0.47</option><option value='0.46'>0.46</option><option value='0.45'>0.45</option><option value='0.44'>0.44</option><option value='0.43'>0.43</option><option value='0.42'>0.42</option><option value='0.41'>0.41</option><option value='0.4'>0.4</option><option value='0.39'>0.39</option><option value='0.38'>0.38</option><option value='0.37'>0.37</option><option value='0.36'>0.36</option><option value='0.35'>0.35</option><option value='0.34'>0.34</option><option value='0.33'>0.33</option><option value='0.32'>0.32</option><option value='0.31'>0.31</option><option value='0.3'>0.3</option><option value='0.29'>0.29</option><option value='0.28'>0.28</option><option value='0.27'>0.27</option><option value='0.26'>0.26</option><option value='0.25'>0.25</option><option ?alue='0.24'>0.24</option><option value='0.23'>0.23</option><option value='0.22'>0.22</option><option value='0.21'>0.21</option><option value='0.2'>0.2</option><option value='0.19'>0.19</option><option value='0.18'>0.18</option><option value='0.17'>0.17</option><option value='0.16'>0.16</option><option value='0.15'>0.15</option><option value='0.14'>0.14</option><option value='0.13'>0.13</option><option value='0.12'>0.12</option><option value='0.11'>0.11</option><option value='0.1'>0.1</option><option value='0.09'>0.09</option><option value='0.08'>0.08</option><option value='0.07'>0.07</option><option value='0.06'>0.06</option><option value='0.05'>0.05</option><option value='0.04'>0.04</option>
<option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value='0.01'>0.01</option><option value='0'>0</option></select></td><td><select id="listS3ML" name="listS3ML"onChange="SelectOnChange('listS3ML');" ><option selected='true' value='0.7'>0.7</option><option value='0.69'>0.69</option><option value='0.68'>0.68</option><option value='0.67'>0.67</option><option value='0.66'>0.66</option><option value='0.65'>0.65</option><option value='0.64'>0.64</option><option value='0.63'>0.63</option><option value='0.62'>0.62</option><option value='0.61'>0.61</option><option value='0.6'>0.6</option><option value='0.59'>0.59</option><option value='0.58'>0.58</option><option value='0.57'>0.57</option><option value='0.56'>0.56</option><option value='0.55'>0.55</option><option value='0.54'>0.54</option><option value='0.53'>0.53</option><option value='0.52'>0.52</option><option value='0.51'>0.51</option><option value='0.5'>0.5</option><option value='0.49'>0.49</option><option value='0.48'>0.48</option><option value='0.47'>0.47</option><option value='0.46'>0.46</option><option value='0.45'>0.45</option><option value='0.44'>0.44</option><option value='0.43'>0.43</option><option value='0.42'>0.42</option><option value='0.41'>0.41</option><option value='0.4'>0.4</option><option value='0.39'>0.39</option><option value='0.38'>0.38</option><option value='0.37'>0.37</option><option value='0.36'>0.36</option><option value='0.35'>0.35</option><option value='0.34'>0.34</option><option value='0.33'>0.33</option><option value='0.32'>0.32</option><option value='0.31'>0.31</option><option value='0.3'>0.3</option><option value='0.29'>0.29</option><option value='0.28'>0.28</option><option value='0.27'>0.27</option><option value='0.26'>0.26</option><option value='0.25'>0.25</option><option value='0.24'>0.24</option><option value='0.23'>0.23</option><option value='0.22'>0.22</option><option value='0.21'>0.21</option><option value='0.2'>0.2</option><option value='0.19'>0.19</option><option value='0.18'>0.18</option><option value='0.17'>0.17</option><option value='0.16'>0.16</option><option value='0.15'>0.15</option><option value='0.14'>0.14</option>
<option value='0.13'>0.13</option><option value='0.12'>0.12</option><option value='0.11'>0.11</option><option value='0.1'>0.1</option><option value='0.09'>0.09</option><option value='0.08'>0.08</option><option value='0.07'>0.07</option><option value='0.06'>0.06</option><option value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value='0.01'>0.01</option><option value='0'>0</option></select></td></tr><tr class="bg_eb {hdauto}"><td rowspan="2" class="r">Auto Super Preset</td><td><input type="checkbox" onclick="CheckAutoPreset(this)" id="chkAuto3Hdp" name="chkAuto3Hdp"  /></td><td><input type="checkbox" onclick="CheckAutoPreset(this,'chkCopy3Hdp')" id="chkAuto3OU" name="chkAuto3OU"  /></td><td><input type="checkbox" onclick="CheckAutoPreset(this,'chkCopy3Hdp')" id="chkAuto3OE" name="chkAuto3OE"  /></td><td><input type="checkbox" onclick="CheckAutoPreset(this,'chkCopy3Hdp')" id="chkAuto3ML" name="chkAuto3ML"  /></td></tr><tr class="bg_eb {hdauto}"><td><select id="autoS3Hdp" name="autoS3Hdp" disabled onChange="SelectOnChange('autoS3Hdp');"><option value='0.7'>0.7</option><option value='0.69'>0.69</option><option value='0.68'>0.6?</option><option value='0.67'>0.67</option><option value='0.66'>0.66</option><option value='0.65'>0.65</option><option value='0.64'>0.64</option><option value='0.63'>0.63</option><option value='0.62'>0.62</option><option value='0.61'>0.61</option><option value='0.6'>0.6</option><option value='0.59'>0.59</option><option value='0.58'>0.58</option><option value='0.57'>0.57</option><option value='0.56'>0.56</option><option value='0.55'>0.55</option><option value='0.54'>0.54</option><option value='0.53'>0.53</option><option value='0.52'>0.52</option><option value='0.51'>0.51</option><option value='0.5'>0.5</option><option value='0.49'>0.49</option><option value='0.48'>0.48</option><option value='0.47'>0.47</option><option value='0.46'>0.46</option><option value='0.45'>0.45</option><option value='0.44'>0.44</option><option value='0.43'>0.43</option><option value='0.42'>0.42</option><option value='0.41'>0.41</option><option value='0.4'>0.4</option><option value='0.39'>0.39</option><option value='0.38'>0.38</option><option value='0.37'>0.37</option><option value='0.36'>0.36</option>
<option value='0.35'>0.35</option><option value='0.34'>0.34</option><option value='0.33'>0.33</option><option value='0.32'>0.32</option><option value='0.31'>0.31</option><option value='0.3'>0.3</option><option value='0.29'>0.29</option><option value='0.28'>0.28</option><option value='0.27'>0.27</option><option value='0.26'>0.26</option><option value='0.25'>0.25</option><option value='0.24'>0.24</option><option value='0.23'>0.23</option><option value='0.22'>0.22</option><option value='0.21'>0.21</option><option value='0.2'>0.2</option><option value='0.19'>0.19</option><option value='0.18'>0.18</option><option value='0.17'>0.17</option><option value='0.16'>0.16</option><option value='0.15'>0.15</option><option value='0.14'>0.14</option><option value='0.13'>0.13</option><option value='0.12'>0.12</option><option value='0.11'>0.11</option><option value='0.1'>0.1</option><option value='0.09'>0.09</option><option value='0.08'>0.08</option><option value='0.07'>0.07</option><option value='0.06'>0.06</option><option value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value='0.01'>0.01</option><option selected='true' value='0'>0</option></select><a class="imaLink img" href="javascript:ReducePT('autoS3Hdp',1)"><img class="hand" hspace="1" id="btnReduce1" name="btnReduce1" src="../App_Themes/AgencyV2/Images/b_down.jpg" /></a><a class="imaLink img" href="javascript:IncreasePT('autoS3Hdp',1)"><img class="hand" hspace="1" id="btnIncrease1" name="btnIncrease1" src="../App_Themes/AgencyV2/Images/b_up.jpg"/></a><a class="imaLink img" href="javascript:ReducePT('autoS3Hdp',10)"><img class="hand" hspace="1" id="btnReduce10" name="btnReduce10" src="../App_Themes/AgencyV2/Images/b_sub.jpg"/></a><a class="imaLink img" href="javascript:IncreasePT('autoS3Hdp',10)"><img class="hand" hspace="1" id="btnIncrease10" name="btnIncrease10" src="../App_Themes/AgencyV2/Images/b_add.jpg"/></a></td><td><select id="autoS3OU" name="autoS3OU" disabled onChange="SelectOnChange('autoS3OU');">
<option value='0.7'>0.7</option><option value='0.69'>0.69</option><option value='0.68'>0.68</option><option value='0.67'>0.67</option><option value='0.66'>0.66</option><option value='0.65'>0.65</option><option value='0.64'>0.64</option><option value='0.63'>0.63</option><option value='0.62'>0.62</option><option value='0.61'>0.61</option><option value='0.6'>0.6</option><option value='0.59'>0.59</option><option value='0.58'>0.58</option><option value='0.57'>0.57</option><option value='0.56'>0.56</option><option value='0.55'>0.55</option><option value='0.54'>0.54</option><option value='0.53'>0.53</option><option value='0.52'>0.52</option><option value='0.51'>0.51</option><option value='0.5'>0.5</option><option value='0.49'>0.49</option><option value='0.48'>0.48</option><option value='0.47'>0.47</option><option value='0.46'>0.46</option><option value='0.45'>0.45</option><option value='0.44'>0.44</option><option value='0.43'>0.?3</option><option value='0.42'>0.42</option><option value='0.41'>0.41</option><option value='0.4'>0.4</option><option value='0.39'>0.39</option><option value='0.38'>0.38</option><option value='0.37'>0.37</option><option value='0.36'>0.36</option><option value='0.35'>0.35</option><option value='0.34'>0.34</option><option value='0.33'>0.33</option><option value='0.32'>0.32</option><option value='0.31'>0.31</option><option value='0.3'>0.3</option><option value='0.29'>0.29</option><option value='0.28'>0.28</option><option value='0.27'>0.27</option><option value='0.26'>0.26</option><option value='0.25'>0.25</option><option value='0.24'>0.24</option><option value='0.23'>0.23</option><option value='0.22'>0.22</option><option value='0.21'>0.21</option><option value='0.2'>0.2</option><option value='0.19'>0.19</option><option value='0.18'>0.18</option><option value='0.17'>0.17</option><option value='0.16'>0.16</option><option value='0.15'>0.15</option><option value='0.14'>0.14</option><option value='0.13'>0.13</option><option value='0.12'>0.12</option><option value='0.11'>0.11</option><option value='0.1'>0.1</option><option value='0.09'>0.09</option><option value='0.08'>0.08</option><option value='0.07'>0.07</option><option value='0.06'>0.06</option><option value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value='0.01'>0.01</option><option selected='true' value='0'>0</option></select></td><td><select id="autoS3OE" name="autoS3OE" disabled onChange="SelectOnChange('autoS3OE');">
<option value='0.7'>0.7</option><option value='0.69'>0.69</option><option value='0.68'>0.68</option><option value='0.67'>0.67</option><option value='0.66'>0.66</option><option value='0.65'>0.65</option><option value='0.64'>0.64</option><option value='0.63'>0.63</option><option value='0.62'>0.62</option><option value='0.61'>0.61</option><option value='0.6'>0.6</option><option value='0.59'>0.59</option><option value='0.58'>0.58</option><option value='0.57'>0.57</option><option value='0.56'>0.56</option><option value='0.55'>0.55</option><option value='0.54'>0.54</option><option value='0.53'>0.53</option><option value='0.52'>0.52</option><option value='0.51'>0.51</option><option value='0.5'>0.5</option><option value='0.49'>0.49</option><option value='0.48'>0.48</option><option value='0.47'>0.47</option><option value='0.46'>0.46</option><option value='0.45'>0.45</option><option value='0.44'>0.44</option><option value='0.43'>0.43</option><option value='0.42'>0.42</option><option value='0.41'>0.41</option><option value='0.4'>0.4</option><option value='0.39'>0.39</option><option value='0.38'>0.38</option><option value='0.37'>0.37</option><option value='0.36'>0.36</option><option value='0.35'>0.35</option><option value='0.34'>0.34</option><option value='0.33'>0.33</option><option value='0.32'>0.32</option><option value='0.31'>0.31</option><option value='0.3'>0.3</option><option value='0.29'>0.29</option><option value='0.28'>0.28</option><option value='0.27'>0.27</option><option value='0.26'>0.26</option><option value='0.25'>0.25</option><option value='0.24'>0.24</option><option value='0.23'>0.23</option><option value='0.22'>0.22</option><option value='0.21'>0.21</option><option value='0.2'>0.2</option><option value='0.19'>0.19</option><option value='0.18'>0.18</option><option value='0.17'>0.17</option><option value='0.16'>0.16</option><option value='0.15'>0.15</option><option value='0.14'>0.14</option><option value='0.13'>0.13</option><option value='0.12'>0.12</option><option value='0.11'>0.11</option><option value='0.1'>0.1</option>
<option value='0.09'>0.09</option><option value='0.08'>0.08</option><option value='0.07'>0.07</option><option value='0.06'>0.06</option><option value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value='0.01'>0.01</option><option selected='true' value='0'>0</option></select></td><td><select id="autoS3ML" name="autoS3ML" disabled onChange="SelectOnChange('autoS3ML');"><?ption value='0.7'>0.7</option><option value='0.69'>0.69</option><option value='0.68'>0.68</option><option value='0.67'>0.67</option><option value='0.66'>0.66</option><option value='0.65'>0.65</option><option value='0.64'>0.64</option><option value='0.63'>0.63</option><option value='0.62'>0.62</option><option value='0.61'>0.61</option><option value='0.6'>0.6</option><option value='0.59'>0.59</option><option value='0.58'>0.58</option><option value='0.57'>0.57</option><option value='0.56'>0.56</option><option value='0.55'>0.55</option><option value='0.54'>0.54</option><option value='0.53'>0.53</option><option value='0.52'>0.52</option><option value='0.51'>0.51</option><option value='0.5'>0.5</option><option value='0.49'>0.49</option><option value='0.48'>0.48</option><option value='0.47'>0.47</option><option value='0.46'>0.46</option><option value='0.45'>0.45</option><option value='0.44'>0.44</option><option value='0.43'>0.43</option><option value='0.42'>0.42</option><option value='0.41'>0.41</option><option value='0.4'>0.4</option><option value='0.39'>0.39</option><option value='0.38'>0.38</option><option value='0.37'>0.37</option><option value='0.36'>0.36</option><option value='0.35'>0.35</option><option value='0.34'>0.34</option><option value='0.33'>0.33</option><option value='0.32'>0.32</option><option value='0.31'>0.31</option><option value='0.3'>0.3</option><option value='0.29'>0.29</option><option value='0.28'>0.28</option><option value='0.27'>0.27</option><option value='0.26'>0.26</option><option value='0.25'>0.25</option><option value='0.24'>0.24</option><option value='0.23'>0.23</option><option value='0.22'>0.22</option><option value='0.21'>0.21</option><option value='0.2'>0.2</option><option value='0.19'>0.19</option><option value='0.18'>0.18</option><option value='0.17'>0.17</option><option value='0.16'>0.16</option><option value='0.15'>0.15</option><option value='0.14'>0.14</option>
<option value='0.13'>0.13</option><option value='0.12'>0.12</option><option value='0.11'>0.11</option><option value='0.1'>0.1</option><option value='0.09'>0.09</option><option value='0.08'>0.08</option><option value='0.07'>0.07</option><option value='0.06'>0.06</option><option value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value='0.01'>0.01</option><option selected='true' value='0'>0</option></select></td></tr></table></div></td></tr></table></div></div><div class="l" id="linkTennis" onclick="OpenPanelEdit('panelTennis'); togglePTmenu('bullet4')"><div class="button_cont"><div class="menu_content"><ul><li><a id="bullet4" class="md2_on" href="#1">Tennis</a></li></ul></div></div></div><div style="display: none" id="panelTennis"><div class="l"><table class="sptPT" style="width: 75%"><tr><td><div id="divUpdInfo5" name="divUpdInfo5"><table width="100%" class="tblRpt"><tr class="tblTitleCenter"><td colspan="3">Bet Setting</td></tr><tr class="bg_eb"><td class="c tdPT1">Min Bet&nbsp;<input type="text" maxlength="14" id="txtMinbet5" name="txtMinbet5" value="5" /><span class="minmaxbet">&gt;=<span id="txtMinbet_Min5">5</span></span></td><td class="c">Max Bet&nbsp;<input type="text" maxlength="14" id="txtMaxbet5" name="txtMaxbet5" value="35,000" /><span class="minmaxbet">&lt;=<span id="txtMaxbet_Max5">35,000</span></span></td><td class="c">Max Per Match&nbsp;<input type="text" maxlength="14" id="txtMaxPerMatch5" name="txtMaxPerMatch5" value="200,000" /><span class="hidden">&gt;=<span id="txtMaxPerMatch_Min5">0</span> and</span><span class="minmaxbet">&lt;=<span id="txtMaxPerMatch_Max5">200,000</span></span></td></tr></table></div></td></tr><tr><td ><div id="divUpdPT5" name="divUpdPT5"><table border="1" width="100%" class="tblRpt"><tr class="tblTitleCenter"><td colspan="6">Position Taking</td></tr><tr class="bg_eb"><td></td><td>Handicap</td><td>Over/Under</td><td>Odd/Even</td><td>Money Line</td><td></td></tr><tr class="bg_eb"><td class="r">Master Preset</td><td><select id="listM5Hdp" name="listM5Hdp"onChange="SelectOnChange('listM5Hdp');" ><option selected=?true' value='0'>0</option></select><a class="imaLink img" href="javascript:ReducePT('listM5Hdp',1)"><img class="hand" hspace="1" id="btnReduce1" name="btnReduce1" src="../App_Themes/AgencyV2/Images/b_down.jpg" /></a>
<a class="imaLink img" href="javascript:IncreasePT('listM5Hdp',1)"><img class="hand" hspace="1" id="btnIncrease1" name="btnIncrease1" src="../App_Themes/AgencyV2/Images/b_up.jpg"/></a><a class="imaLink img" href="javascript:ReducePT('listM5Hdp',10)"><img class="hand" hspace="1" id="btnReduce10" name="btnReduce10" src="../App_Themes/AgencyV2/Images/b_sub.jpg"/></a><a class="imaLink img" href="javascript:IncreasePT('listM5Hdp',10)"><img class="hand" hspace="1" id="btnIncrease10" name="btnIncrease10" src="../App_Themes/AgencyV2/Images/b_add.jpg"/></a></td><td><select id="listM5OU" name="listM5OU"onChange="SelectOnChange('listM5OU');" ><option selected='true' value='0'>0</option></select></td><td><select id="listM5OE" name="listM5OE"onChange="SelectOnChange('listM5OE');" ><option selected='true' value='0'>0</option></select></td><td><select id="listM5ML" name="listM5ML"onChange="SelectOnChange('listM5ML');" ><option selected='true' value='0'>0</option></select></td><td rowspan="2" class="l"><input type="checkbox" {chk-hdp} id="chkCopy5Hdp" name="chkCopy5Hdp" onclick="CheckCopyPT(this,arrSuper5,arrMaster5,'chkAuto5Hdp');" />Copy From Handicap</td></tr><tr class="bg_eb"><td class="r">Super Preset</td><td><select id="listS5Hdp" name="listS5Hdp"onChange="SelectOnChange('listS5Hdp');" ><option selected='true' value='0.7'>0.7</option><option value='0.69'>0.69</option><option value='0.68'>0.68</option><option value='0.67'>0.67</option><option value='0.66'>0.66</option><option value='0.65'>0.65</option><option value='0.64'>0.64</option><option value='0.63'>0.63</option><option value='0.62'>0.62</option><option value='0.61'>0.61</option><option value='0.6'>0.6</option><option value='0.59'>0.59</option><option value='0.58'>0.58</option>
<option value='0.57'>0.57</option><option value='0.56'>0.56</option><option value='0.55'>0.55</option><option value='0.54'>0.54</option><option value='0.53'>0.53</option><option value='0.52'>0.52</option><option value='0.51'>0.51</option><option value='0.5'>0.5</option><option value='0.49'>0.49</option><option value='0.48'>0.48</option><option value='0.47'>0.47</option><option value='0.46'>0.46</option><option value='0.45'>0.45</option><option value='0.44'>0.44</option><option value='0.43'>0.43</option><option value='0.42'>0.42</option><option value='0.41'>0.41</option><option value='0.4'>0.4</option><option value='0.39'>0.39</option><option value='0.38'>0.38</option><option value='0.37'>0.37</option><option value='0.36'>0.36</option><option value='0.35'>0.35</option><option value='0.34'>0.34</option><option value='0.33'>0.33</option><option value='0.32'>0.32</option><option value='0.31'>0.31</option><option value='0.3'>0.3</option><option value='0.29'>0.29</option><option value='0.28'>0.28</option><option value='0.27'>0.27</option><option value='0.26'>0.26</option><option value='0.25'>0.25</option><option value='0.24'>0.24</option><option value='0.23'>0.23</option><option value='0.22'>0.22</option><option value='0.21'>0.21</option><option value='0.2'>0.2</option><option value='0.19'>0.19</option><option value='0.18'>0.18</option><option value='0.17'>0.17</option><option value='0.16'>0.16</option><option value='0.15'>0.15</option><option value='0.14'>0.14</option><option value='0.13'>0.13</option><option value='0.12'>0.12</option><option value='0.11'>0.11</option><option value='0.1'>0.1</option><option value='0.09'>0.09</option><option value='0.08'>0.08</option><option value='0.07'>0.07</option><option value='0.06'>0.06</option><option value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value='0.01'>0.01</option><option value='0'>0</option></select><a class="imaLink img" href="javascript:ReducePT('listS5Hdp',1)"><img class="hand" hspace="1" id="btnReduce1" name="btnReduce1" src="../App_Themes/AgencyV2/Imag?s/b_down.jpg" /></a><a class="imaLink img" href="javascript:IncreasePT('listS5Hdp',1)"><img class="hand" hspace="1" id="btnIncrease1" name="btnIncrease1" src="../App_Themes/AgencyV2/Images/b_up.jpg"/></a>
<a class="imaLink img" href="javascript:ReducePT('listS5Hdp',10)"><img class="hand" hspace="1" id="btnReduce10" name="btnReduce10" src="../App_Themes/AgencyV2/Images/b_sub.jpg"/></a><a class="imaLink img" href="javascript:IncreasePT('listS5Hdp',10)"><img class="hand" hspace="1" id="btnIncrease10" name="btnIncrease10" src="../App_Themes/AgencyV2/Images/b_add.jpg"/></a></td><td><select id="listS5OU" name="listS5OU"onChange="SelectOnChange('listS5OU');" ><option selected='true' value='0.7'>0.7</option><option value='0.69'>0.69</option><option value='0.68'>0.68</option><option value='0.67'>0.67</option><option value='0.66'>0.66</option><option value='0.65'>0.65</option><option value='0.64'>0.64</option><option value='0.63'>0.63</option><option value='0.62'>0.62</option><option value='0.61'>0.61</option><option value='0.6'>0.6</option><option value='0.59'>0.59</option><option value='0.58'>0.58</option><option value='0.57'>0.57</option><option value='0.56'>0.56</option><option value='0.55'>0.55</option><option value='0.54'>0.54</option><option value='0.53'>0.53</option><option value='0.52'>0.52</option><option value='0.51'>0.51</option><option value='0.5'>0.5</option><option value='0.49'>0.49</option><option value='0.48'>0.48</option><option value='0.47'>0.47</option><option value='0.46'>0.46</option><option value='0.45'>0.45</option><option value='0.44'>0.44</option><option value='0.43'>0.43</option><option value='0.42'>0.42</option><option value='0.41'>0.41</option><option value='0.4'>0.4</option><option value='0.39'>0.39</option><option value='0.38'>0.38</option><option value='0.37'>0.37</option><option value='0.36'>0.36</option><option value='0.35'>0.35</option><option value='0.34'>0.34</option><option value='0.33'>0.33</option><option value='0.32'>0.32</option><option value='0.31'>0.31</option><option value='0.3'>0.3</option><option value='0.29'>0.29</option><option value='0.28'>0.28</option><option value='0.27'>0.27</option><option value='0.26'>0.26</option><option value='0.25'>0.25</option><option value='0.24'>0.24</option><option value='0.23'>0.23</option><option value='0.22'>0.22</option><option value='0.21'>0.21</option><option value='0.2'>0.2</option>
<option value='0.19'>0.19</option><option value='0.18'>0.18</option><option value='0.17'>0.17</option><option value='0.16'>0.16</option><option value='0.15'>0.15</option><option value='0.14'>0.14</option><option value='0.13'>0.13</option><option value='0.12'>0.12</option><option value='0.11'>0.11</option><option value='0.1'>0.1</option><option value='0.09'>0.09</option><option value='0.08'>0.08</option><option value='0.07'>0.07</option><option value='0.06'>0.06</option><option value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value='0.01'>0.01</option><option value='0'>0</option></select></td><td><select id="listS5OE" name="listS5OE"onChange="SelectOnChange('listS5OE');" ><option selected='true' value='0.7'>0.7</option><option value='0.69'>0.69</option><option value='0.68'>0.68</option><option value='0.67'>0.67</option><option value='0.66'>0.66</option><option value='0.65'>0.65</option><option value='0.64'>0.64</option><option value='0.63'>0.63</option><option value='0.62'>0.62</option><option value='0.61'>0.61</option><option value='0.6'>0.6</option><option value='0.59'>0.59</option><option value='0.58'>0.58</option><option value='0.57'>0.57</option><option value='0.56'>0.56</option><option value='0.55'>0.55</option><option value='0.54'>0.54</option><option value='0.53'>0.53</option><option value='0.52'>0.52</option><option value='0.51'>0.51</option><option value='0.5'>0.5</option><option value='0.49'>0.49</option><option value='0.48'>0.48</option><option value='0.47'>0.47</option><option value='0.46'>0.46</option><option value='0.45'>0.45</option><option value='0.44'>0.44</option>?option value='0.43'>0.43</option><option value='0.42'>0.42</option><option value='0.41'>0.41</option><option value='0.4'>0.4</option><option value='0.39'>0.39</option><option value='0.38'>0.38</option><option value='0.37'>0.37</option><option value='0.36'>0.36</option><option value='0.35'>0.35</option><option value='0.34'>0.34</option><option value='0.33'>0.33</option><option value='0.32'>0.32</option><option value='0.31'>0.31</option><option value='0.3'>0.3</option><option value='0.29'>0.29</option><option value='0.28'>0.28</option><option value='0.27'>0.27</option><option value='0.26'>0.26</option><option value='0.25'>0.25</option><option value='0.24'>0.24</option>
<option value='0.23'>0.23</option><option value='0.22'>0.22</option><option value='0.21'>0.21</option><option value='0.2'>0.2</option><option value='0.19'>0.19</option><option value='0.18'>0.18</option><option value='0.17'>0.17</option><option value='0.16'>0.16</option><option value='0.15'>0.15</option><option value='0.14'>0.14</option><option value='0.13'>0.13</option><option value='0.12'>0.12</option><option value='0.11'>0.11</option><option value='0.1'>0.1</option><option value='0.09'>0.09</option><option value='0.08'>0.08</option><option value='0.07'>0.07</option><option value='0.06'>0.06</option><option value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value='0.01'>0.01</option><option value='0'>0</option></select></td><td><select id="listS5ML" name="listS5ML"onChange="SelectOnChange('listS5ML');" ><option selected='true' value='0.7'>0.7</option><option value='0.69'>0.69</option><option value='0.68'>0.68</option><option value='0.67'>0.67</option><option value='0.66'>0.66</option><option value='0.65'>0.65</option><option value='0.64'>0.64</option><option value='0.63'>0.63</option><option value='0.62'>0.62</option>
<option value='0.61'>0.61</option><option value='0.6'>0.6</option><option value='0.59'>0.59</option>
<option value='0.58'>0.58</option><option value='0.57'>0.57</option><option value='0.56'>0.56</option><option value='0.55'>0.55</option><option value='0.54'>0.54</option><option value='0.53'>0.53</option><option value='0.52'>0.52</option><option value='0.51'>0.51</option><option value='0.5'>0.5</option><option value='0.49'>0.49</option><option value='0.48'>0.48</option><option value='0.47'>0.47</option><option value='0.46'>0.46</option><option value='0.45'>0.45</option><option value='0.44'>0.44</option><option value='0.43'>0.43</option><option value='0.42'>0.42</option><option value='0.41'>0.41</option><option value='0.4'>0.4</option><option value='0.39'>0.39</option><option value='0.38'>0.38</option><option value='0.37'>0.37</option><option value='0.36'>0.36</option><option value='0.35'>0.35</option><option value='0.34'>0.34</option><option value='0.33'>0.33</option><option value='0.32'>0.32</option><option value='0.31'>0.31</option><option value='0.3'>0.3</option><option value='0.29'>0.29</option><option value='0.28'>0.28</option><option value='0.27'>0.27</option><option value='0.26'>0.26</option><option value='0.25'>0.25</option><option value='0.24'>0.24</option><option value='0.23'>0.23</option><option value='0.22'>0.22</option><option value='0.21'>0.21</option>
<option value='0.2'>0.2</option><option value='0.19'>0.19</option><option value='0.18'>0.18</option><option value='0.17'>0.17</option><option value='0.16'>0.16</option><option value='0.15'>0.15</option><option value='0.14'>0.14</option><option value='0.13'>0.13</option><option value='0.12'>0.12</option><option value='0.11'>0.11</option><option value='0.1'>0.1</option><option value='0.09'>0.09</option><option value='0.08'>0.08</option><option value='0.07'>0.07</option><option value='0.06'>0.06</option><option value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value='0.01'>0.01</option><option value='0'>0</option></select></td></tr><tr class="bg_eb {hdauto}"><td rowspan="2" class="r">Auto Super Preset</td><td><input ty?e="checkbox" onclick="CheckAutoPreset(this)" id="chkAuto5Hdp" name="chkAuto5Hdp"  /></td><td><input type="checkbox" onclick="CheckAutoPreset(this,'chkCopy5Hdp')" id="chkAuto5OU" name="chkAuto5OU"  /></td><td><input type="checkbox" onclick="CheckAutoPreset(this,'chkCopy5Hdp')" id="chkAuto5OE" name="chkAuto5OE"  /></td>
<td><input type="checkbox" onclick="CheckAutoPreset(this,'chkCopy5Hdp')" id="chkAuto5ML" name="chkAuto5ML"  /></td></tr><tr class="bg_eb {hdauto}"><td><select id="autoS5Hdp" name="autoS5Hdp" disabled onChange="SelectOnChange('autoS5Hdp');"><option value='0.7'>0.7</option><option value='0.69'>0.69</option><option value='0.68'>0.68</option><option value='0.67'>0.67</option><option value='0.66'>0.66</option><option value='0.65'>0.65</option><option value='0.64'>0.64</option><option value='0.63'>0.63</option><option value='0.62'>0.62</option><option value='0.61'>0.61</option><option value='0.6'>0.6</option><option value='0.59'>0.59</option><option value='0.58'>0.58</option><option value='0.57'>0.57</option><option value='0.56'>0.56</option><option value='0.55'>0.55</option><option value='0.54'>0.54</option><option value='0.53'>0.53</option><option value='0.52'>0.52</option><option value='0.51'>0.51</option><option value='0.5'>0.5</option><option value='0.49'>0.49</option><option value='0.48'>0.48</option><option value='0.47'>0.47</option><option value='0.46'>0.46</option><option value='0.45'>0.45</option><option value='0.44'>0.44</option><option value='0.43'>0.43</option><option value='0.42'>0.42</option>
<option value='0.41'>0.41</option><option value='0.4'>0.4</option><option value='0.39'>0.39</option><option value='0.38'>0.38</option>
<option value='0.37'>0.37</option><option value='0.36'>0.36</option><option value='0.35'>0.35</option><option value='0.34'>0.34</option><option value='0.33'>0.33</option><option value='0.32'>0.32</option><option value='0.31'>0.31</option><option value='0.3'>0.3</option><option value='0.29'>0.29</option><option value='0.28'>0.28</option><option value='0.27'>0.27</option><option value='0.26'>0.26</option><option value='0.25'>0.25</option><option value='0.24'>0.24</option><option value='0.23'>0.23</option><option value='0.22'>0.22</option><option value='0.21'>0.21</option><option value='0.2'>0.2</option><option value='0.19'>0.19</option><option value='0.18'>0.18</option><option value='0.17'>0.17</option><option value='0.16'>0.16</option><option value='0.15'>0.15</option><option value='0.14'>0.14</option><option value='0.13'>0.13</option><option value='0.12'>0.12</option><option value='0.11'>0.11</option><option value='0.1'>0.1</option><option value='0.09'>0.09</option><option value='0.08'>0.08</option><option value='0.07'>0.07</option>
<option value='0.06'>0.06</option><option value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value='0.01'>0.01</option><option selected='true' value='0'>0</option></select><a class="imaLink img" href="javascript:ReducePT('autoS5Hdp',1)"><img class="hand" hspace="1" id="btnReduce1" name="btnReduce1" src="../App_Themes/AgencyV2/Images/b_down.jpg" /></a><a class="imaLink img" href="javascript:IncreasePT('autoS5Hdp',1)"><img class="hand" hspace="1" id="btnIncrease1" name="btnIncrease1" src="../App_Themes/AgencyV2/Images/b_up.jpg"/></a><a class="imaLink img" href="javascript:ReducePT('autoS5Hdp',10)"><img class="hand" hspace="1" id="btnReduce10" name="btnReduce10" src="../App_Themes/AgencyV2/Images/b_sub.jpg"/></a><a class="imaLink img" href="javascript:IncreasePT('autoS5Hdp',10)"><img class="hand" hspace="1" id="btnIncrease10" name="btnIncrease10" src="../App_Themes/AgencyV2/Images/b_add.jpg"/></a></td><td><select id="autoS5OU" name="autoS5OU" disabled onChange="SelectOnChange('autoS5OU');"><option value='0.7'>0.7</option><option value='0.69'>0.69</option><option value='0.68'>0.68</option><option value='0.67'>0.67</option><option value='0.66'>0.66</option><option value='0.65'>0.65</option><option value='0.64'>0.64</option><option value='0.63'>0.63</option><option value='?.62'>0.62</option><option value='0.61'>0.61</option><option value='0.6'>0.6</option><option value='0.59'>0.59</option><option value='0.58'>0.58</option><option value='0.57'>0.57</option><option value='0.56'>0.56</option><option value='0.55'>0.55</option><option value='0.54'>0.54</option><option value='0.53'>0.53</option><option value='0.52'>0.52</option><option value='0.51'>0.51</option><option value='0.5'>0.5</option><option value='0.49'>0.49</option><option value='0.48'>0.48</option><option value='0.47'>0.47</option><option value='0.46'>0.46</option><option value='0.45'>0.45</option><option value='0.44'>0.44</option><option value='0.43'>0.43</option>
<option value='0.42'>0.42</option><option value='0.41'>0.41</option><option value='0.4'>0.4</option><option value='0.39'>0.39</option>
<option value='0.38'>0.38</option><option value='0.37'>0.37</option><option value='0.36'>0.36</option>
<option value='0.35'>0.35</option><option value='0.34'>0.34</option><option value='0.33'>0.33</option><option value='0.32'>0.32</option><option value='0.31'>0.31</option><option value='0.3'>0.3</option><option value='0.29'>0.29</option><option value='0.28'>0.28</option><option value='0.27'>0.27</option><option value='0.26'>0.26</option><option value='0.25'>0.25</option><option value='0.24'>0.24</option><option value='0.23'>0.23</option><option value='0.22'>0.22</option><option value='0.21'>0.21</option><option value='0.2'>0.2</option><option value='0.19'>0.19</option><option value='0.18'>0.18</option><option value='0.17'>0.17</option><option value='0.16'>0.16</option><option value='0.15'>0.15</option><option value='0.14'>0.14</option><option value='0.13'>0.13</option><option value='0.12'>0.12</option><option value='0.11'>0.11</option><option value='0.1'>0.1</option><option value='0.09'>0.09</option><option value='0.08'>0.08</option><option value='0.07'>0.07</option><option value='0.06'>0.06</option><option value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value='0.01'>0.01</option><option selected='true' value='0'>0</option></select></td><td><select id="autoS5OE" name="autoS5OE" disabled onChange="SelectOnChange('autoS5OE');"><option value='0.7'>0.7</option><option value='0.69'>0.69</option><option value='0.68'>0.68</option><option value='0.67'>0.67</option><option value='0.66'>0.66</option><option value='0.65'>0.65</option><option value='0.64'>0.64</option><option value='0.63'>0.63</option><option value='0.62'>0.62</option><option value='0.61'>0.61</option><option value='0.6'>0.6</option><option value='0.59'>0.59</option><option value='0.58'>0.58</option><option value='0.57'>0.57</option><option value='0.56'>0.56</option><option value='0.55'>0.55</option><option value='0.54'>0.54</option><option value='0.53'>0.53</option><option value='0.52'>0.52</option><option value='0.51'>0.51</option>
<option value='0.5'>0.5</option><option value='0.49'>0.49</option><option value='0.48'>0.48</option><option value='0.47'>0.47</option><option value='0.46'>0.46</option><option value='0.45'>0.45</option><option value='0.44'>0.44</option><option value='0.43'>0.43</option><option value='0.42'>0.42</option><option value='0.41'>0.41</option><option value='0.4'>0.4</option><option value='0.39'>0.39</option><option value='0.38'>0.38</option><option value='0.37'>0.37</option><option value='0.36'>0.36</option><option value='0.35'>0.35</option><option value='0.34'>0.34</option><option value='0.33'>0.33</option><option value='0.32'>0.32</option><option value='0.31'>0.31</option><option value='0.3'>0.3</option><option value='0.29'>0.29</option><option value='0.28'>0.28</option><option value='0.27'>0.27</option><option value='0.26'>0.26</option><option value='0.25'>0.25</option><option value='0.24'>0.24</option><option value='0.23'>0.23</option><option value='0.22'>0.22</option><option value='0.21'>0.21</option><option value='0.2'>0.2</option><option value='0.19'>0.19</option><option value='0.18'>0.18</option><option value='0.17'>0.17</option><option value='0.16'>0.16</option><option?value='0.15'>0.15</option><option value='0.14'>0.14</option><option value='0.13'>0.13</option><option value='0.12'>0.12</option><option value='0.11'>0.11</option><option value='0.1'>0.1</option><option value='0.09'>0.09</option><option value='0.08'>0.08</option><option value='0.07'>0.07</option><option value='0.06'>0.06</option><option value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value='0.01'>0.01</option><option selected='true' value='0'>0</option></select></td><td><select id="autoS5ML" name="autoS5ML" disabled onChange="SelectOnChange('autoS5ML');"><option value='0.7'>0.7</option><option value='0.69'>0.69</option><option value='0.68'>0.68</option><option value='0.67'>0.67</option><option value='0.66'>0.66</option><option value='0.65'>0.65</option><option value='0.64'>0.64</option>
<option value='0.63'>0.63</option><option value='0.62'>0.62</option><option value='0.61'>0.61</option><option value='0.6'>0.6</option>
<option value='0.59'>0.59</option><option value='0.58'>0.58</option><option value='0.57'>0.57</option><option value='0.56'>0.56</option><option value='0.55'>0.55</option><option value='0.54'>0.54</option><option value='0.53'>0.53</option><option value='0.52'>0.52</option><option value='0.51'>0.51</option><option value='0.5'>0.5</option><option value='0.49'>0.49</option><option value='0.48'>0.48</option><option value='0.47'>0.47</option><option value='0.46'>0.46</option><option value='0.45'>0.45</option><option value='0.44'>0.44</option><option value='0.43'>0.43</option><option value='0.42'>0.42</option><option value='0.41'>0.41</option><option value='0.4'>0.4</option><option value='0.39'>0.39</option><option value='0.38'>0.38</option><option value='0.37'>0.37</option><option value='0.36'>0.36</option><option value='0.35'>0.35</option><option value='0.34'>0.34</option><option value='0.33'>0.33</option><option value='0.32'>0.32</option><option value='0.31'>0.31</option><option value='0.3'>0.3</option><option value='0.29'>0.29</option><option value='0.28'>0.28</option><option value='0.27'>0.27</option><option value='0.26'>0.26</option><option value='0.25'>0.25</option><option value='0.24'>0.24</option>
<option value='0.23'>0.23</option><option value='0.22'>0.22</option><option value='0.21'>0.21</option><option value='0.2'>0.2</option>
<option value='0.19'>0.19</option><option value='0.18'>0.18</option><option value='0.17'>0.17</option><option value='0.16'>0.16</option><option value='0.15'>0.15</option><option value='0.14'>0.14</option><option value='0.13'>0.13</option><option value='0.12'>0.12</option><option value='0.11'>0.11</option><option value='0.1'>0.1</option><option value='0.09'>0.09</option><option value='0.08'>0.08</option><option value='0.07'>0.07</option><option value='0.06'>0.06</option><option value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value='0.01'>0.01</option><option selected='true' value='0'>0</option></select></td></tr></table></div></td></tr></table></div></div><div class="l" id="linkBaseball" onclick="OpenPanelEdit('panelBaseball'); togglePTmenu('bullet5')"><div class="button_cont"><div class="menu_content"><ul><li><a id="bullet5" class="md2_on" href="#1">Baseball</a></li></ul></div></div></div><div style="display: none" id="panelBaseball"><div class="l"><table class="sptPT" style="width: 75%"><tr><td><div id="divUpdInfo8" name="divUpdInfo8"><table width="100%" class="tblRpt"><tr class="tblTitleCenter"><td colspan="3">Bet Setting</td></tr><tr class="bg_eb"><td class="c tdPT1">Min Bet&nbsp;<input type="text" maxlength="14" id="txtMinbet8" name="txtMinbet8" value="5" />
<span class="minmaxbet">&gt;=<span id="txtMinbet_Min8">5</span></span></td><td class="c">Max Bet&nbsp;<input type="text" maxlength="14" id="txtMaxbet8" name="txtMaxbet8" value="35,000" /><span class="minmaxbet">&lt;=<span id="txtMaxbet_Max8">35,000</span></span></td><td class="c">Max Per Match&nbsp;<input type="text" maxlength="14" id="txtMaxPerMatch8? name="txtMaxPerMatch8" value="200,000" /><span class="hidden">&gt;=<span id="txtMaxPerMatch_Min8">0</span> and</span><span class="minmaxbet">&lt;=<span id="txtMaxPerMatch_Max8">200,000</span></span></td></tr></table></div></td></tr><tr><td ><div id="divUpdPT8" name="divUpdPT8"><table border="1" width="100%" class="tblRpt"><tr class="tblTitleCenter"><td colspan="5">Position Taking</td></tr><tr class="bg_eb"><td></td><td>Handicap</td><td>Over/Under</td><td>Money Line</td><td></td></tr><tr class="bg_eb"><td class="r">Master Preset</td><td><select id="listM8Hdp" name="listM8Hdp"onChange="SelectOnChange('listM8Hdp');" ><option selected='true' value='0'>0</option></select><a class="imaLink img" href="javascript:ReducePT('listM8Hdp',1)"><img class="hand" hspace="1" id="btnReduce1" name="btnReduce1" src="../App_Themes/AgencyV2/Images/b_down.jpg" /></a><a class="imaLink img" href="javascript:IncreasePT('listM8Hdp',1)"><img class="hand" hspace="1" id="btnIncrease1" name="btnIncrease1" src="../App_Themes/AgencyV2/Images/b_up.jpg"/></a><a class="imaLink img" href="javascript:ReducePT('listM8Hdp',10)"><img class="hand" hspace="1" id="btnReduce10" name="btnReduce10" src="../App_Themes/AgencyV2/Images/b_sub.jpg"/></a><a class="imaLink img" href="javascript:IncreasePT('listM8Hdp',10)"><img class="hand" hspace="1" id="btnIncrease10" name="btnIncrease10" src="../App_Themes/AgencyV2/Images/b_add.jpg"/></a></td><td><select id="listM8OU" name="listM8OU"onChange="SelectOnChange('listM8OU');" ><option selected='true' value='0'>0</option></select></td><td><select id="listM8ML" name="listM8ML"onChange="SelectOnChange('listM8ML');" ><option selected='true' value='0'>0</option></select></td>
<td rowspan="2" class="l"><input type="checkbox" {chk-hdp} id="chkCopy8Hdp" name="chkCopy8Hdp" onclick="CheckCopyPT(this,arrSuper8,arrMaster8,'chkAuto8Hdp');" />Copy From Handicap</td></tr><tr class="bg_eb">
<td class="r">Super Preset</td><td><select id="listS8Hdp" name="listS8Hdp"onChange="SelectOnChange('listS8Hdp');" ><option selected='true' value='0.7'>0.7</option><option value='0.69'>0.69</option><option value='0.68'>0.68</option><option value='0.67'>0.67</option><option value='0.66'>0.66</option><option value='0.65'>0.65</option><option value='0.64'>0.64</option><option value='0.63'>0.63</option><option value='0.62'>0.62</option><option value='0.61'>0.61</option><option value='0.6'>0.6</option><option value='0.59'>0.59</option><option value='0.58'>0.58</option><option value='0.57'>0.57</option><option value='0.56'>0.56</option><option value='0.55'>0.55</option><option value='0.54'>0.54</option><option value='0.53'>0.53</option><option value='0.52'>0.52</option><option value='0.51'>0.51</option><option value='0.5'>0.5</option><option value='0.49'>0.49</option><option value='0.48'>0.48</option><option value='0.47'>0.47</option><option value='0.46'>0.46</option><option value='0.45'>0.45</option><option value='0.44'>0.44</option><option value='0.43'>0.43</option><option value='0.42'>0.42</option><option value='0.41'>0.41</option><option value='0.4'>0.4</option><option value='0.39'>0.39</option><option value='0.38'>0.38</option><option value='0.37'>0.37</option><option value='0.36'>0.36</option><option value='0.35'>0.35</option><option value='0.34'>0.34</option><option value='0.33'>0.33</option><option value='0.32'>0.32</option><option value='0.31'>0.31</option><option value='0.3'>0.3</option><option value='0.29'>0.29</option><option value='0.28'>0.28</option><option value='0.27'>0.27</option><option value='0.26'>0.26</option><option value='0.25'>0.25</option><option value='0.24'>0.24</option><option value='0.23'>0.23</option>
<option value='0.22'>0.22</option><option value='0.21'>0.21</option><option value='0.2'>0.2</option><option value='0.19'>0.19</option><option value='0.18'>0.18</option><option value='0.17'>0.17</option><option value='0.16'>0.16</option><option value='0.15'>0.15</option><option value='0.14'>0.14</option><option value='0.13'>0.13</option><option value='0.12'>0.12</option><option value='0.11'>0.11</option><option value='0.1'>0.1</option><?ption value='0.09'>0.09</option><option value='0.08'>0.08</option><option value='0.07'>0.07</option><option value='0.06'>0.06</option><option value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value='0.01'>0.01</option><option value='0'>0</option></select><a class="imaLink img" href="javascript:ReducePT('listS8Hdp',1)"><img class="hand" hspace="1" id="btnReduce1" name="btnReduce1" src="../App_Themes/AgencyV2/Images/b_down.jpg" /></a><a class="imaLink img" href="javascript:IncreasePT('listS8Hdp',1)"><img class="hand" hspace="1" id="btnIncrease1" name="btnIncrease1" src="../App_Themes/AgencyV2/Images/b_up.jpg"/></a><a class="imaLink img" href="javascript:ReducePT('listS8Hdp',10)"><img class="hand" hspace="1" id="btnReduce10" name="btnReduce10" src="../App_Themes/AgencyV2/Images/b_sub.jpg"/></a><a class="imaLink img" href="javascript:IncreasePT('listS8Hdp',10)"><img class="hand" hspace="1" id="btnIncrease10" name="btnIncrease10" src="../App_Themes/AgencyV2/Images/b_add.jpg"/></a></td><td><select id="listS8OU" name="listS8OU"onChange="SelectOnChange('listS8OU');" ><option selected='true' value='0.7'>0.7</option><option value='0.69'>0.69</option><option value='0.68'>0.68</option><option value='0.67'>0.67</option><option value='0.66'>0.66</option><option value='0.65'>0.65</option><option value='0.64'>0.64</option><option value='0.63'>0.63</option><option value='0.62'>0.62</option><option value='0.61'>0.61</option><option value='0.6'>0.6</option><option value='0.59'>0.59</option><option value='0.58'>0.58</option><option value='0.57'>0.57</option>
<option value='0.56'>0.56</option><option value='0.55'>0.55</option><option value='0.54'>0.54</option><option value='0.53'>0.53</option><option value='0.52'>0.52</option><option value='0.51'>0.51</option>
<option value='0.5'>0.5</option><option value='0.49'>0.49</option><option value='0.48'>0.48</option><option value='0.47'>0.47</option><option value='0.46'>0.46</option><option value='0.45'>0.45</option><option value='0.44'>0.44</option><option value='0.43'>0.43</option><option value='0.42'>0.42</option><option value='0.41'>0.41</option><option value='0.4'>0.4</option><option value='0.39'>0.39</option><option value='0.38'>0.38</option><option value='0.37'>0.37</option><option value='0.36'>0.36</option><option value='0.35'>0.35</option><option value='0.34'>0.34</option><option value='0.33'>0.33</option><option value='0.32'>0.32</option><option value='0.31'>0.31</option><option value='0.3'>0.3</option><option value='0.29'>0.29</option><option value='0.28'>0.28</option><option value='0.27'>0.27</option><option value='0.26'>0.26</option><option value='0.25'>0.25</option><option value='0.24'>0.24</option><option value='0.23'>0.23</option><option value='0.22'>0.22</option><option value='0.21'>0.21</option><option value='0.2'>0.2</option><option value='0.19'>0.19</option><option value='0.18'>0.18</option><option value='0.17'>0.17</option><option value='0.16'>0.16</option><option value='0.15'>0.15</option><option value='0.14'>0.14</option><option value='0.13'>0.13</option><option value='0.12'>0.12</option><option value='0.11'>0.11</option><option value='0.1'>0.1</option><option value='0.09'>0.09</option><option value='0.08'>0.08</option><option value='0.07'>0.07</option><option value='0.06'>0.06</option><option value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value='0.01'>0.01</option><option value='0'>0</option></select></td><td><select id="listS8ML" name="listS8ML"onChange="SelectOnChange('listS8ML');" ><option selected='true' value='0.7'>0.7</option><option value='0.69'>0.69</option><option value='0.68'>0.68</option><option value='0.67'>0.67</option><option value='0.66'>0.66</option><option value='0.65'>0.65</option>
<option value='0.64'>0.64</option><option value='0.63'>0.63</option><option value='0.62'>0.62</option><option value='0.61'>0.61</option><option value='0.6'>0.6</option><option value='0.59'>0.59</option><optio? value='0.58'>0.58</option><option value='0.57'>0.57</option><option value='0.56'>0.56</option><option value='0.55'>0.55</option><option value='0.54'>0.54</option><option value='0.53'>0.53</option><option value='0.52'>0.52</option><option value='0.51'>0.51</option><option value='0.5'>0.5</option><option value='0.49'>0.49</option><option value='0.48'>0.48</option><option value='0.47'>0.47</option><option value='0.46'>0.46</option><option value='0.45'>0.45</option><option value='0.44'>0.44</option><option value='0.43'>0.43</option><option value='0.42'>0.42</option><option value='0.41'>0.41</option><option value='0.4'>0.4</option><option value='0.39'>0.39</option><option value='0.38'>0.38</option><option value='0.37'>0.37</option><option value='0.36'>0.36</option><option value='0.35'>0.35</option><option value='0.34'>0.34</option><option value='0.33'>0.33</option><option value='0.32'>0.32</option><option value='0.31'>0.31</option><option value='0.3'>0.3</option><option value='0.29'>0.29</option><option value='0.28'>0.28</option><option value='0.27'>0.27</option><option value='0.26'>0.26</option><option value='0.25'>0.25</option><option value='0.24'>0.24</option><option value='0.23'>0.23</option><option value='0.22'>0.22</option><option value='0.21'>0.21</option><option value='0.2'>0.2</option><option value='0.19'>0.19</option><option value='0.18'>0.18</option><option value='0.17'>0.17</option><option value='0.16'>0.16</option><option value='0.15'>0.15</option><option value='0.14'>0.14</option><option value='0.13'>0.13</option><option value='0.12'>0.12</option><option value='0.11'>0.11</option><option value='0.1'>0.1</option><option value='0.09'>0.09</option><option value='0.08'>0.08</option><option value='0.07'>0.07</option><option value='0.06'>0.06</option><option value='0.05'>0.05</option><option value='0.04'>0.04</option>
<option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value='0.01'>0.01</option><option value='0'>0</option></select></td></tr><tr class="bg_eb {hdauto}"><td rowspan="2" class="r">Auto Super Preset</td><td><input type="checkbox" onclick="CheckAutoPreset(this)" id="chkAuto8Hdp" name="chkAuto8Hdp"  /></td><td><input type="checkbox" onclick="CheckAutoPreset(this,'chkCopy8Hdp')" id="chkAuto8OU" name="chkAuto8OU"  />	</td><td><input type="checkbox" onclick="CheckAutoPreset(this,'chkCopy8Hdp')" id="chkAuto8ML" name="chkAuto8ML"  /></td></tr><tr class="bg_eb {hdauto}"><td><select id="autoS8Hdp" name="autoS8Hdp" disabled onChange="SelectOnChange('autoS8Hdp');"><option value='0.7'>0.7</option><option value='0.69'>0.69</option><option value='0.68'>0.68</option><option value='0.67'>0.67</option><option value='0.66'>0.66</option><option value='0.65'>0.65</option><option value='0.64'>0.64</option><option value='0.63'>0.63</option><option value='0.62'>0.62</option><option value='0.61'>0.61</option><option value='0.6'>0.6</option><option value='0.59'>0.59</option><option value='0.58'>0.58</option><option value='0.57'>0.57</option><option value='0.56'>0.56</option><option value='0.55'>0.55</option><option value='0.54'>0.54</option><option value='0.53'>0.53</option><option value='0.52'>0.52</option><option value='0.51'>0.51</option><option value='0.5'>0.5</option><option value='0.49'>0.49</option><option value='0.48'>0.48</option><option value='0.47'>0.47</option><option value='0.46'>0.46</option><option value='0.45'>0.45</option><option value='0.44'>0.44</option><option value='0.43'>0.43</option><option value='0.42'>0.42</option><option value='0.41'>0.41</option><option value='0.4'>0.4</option><option value='0.39'>0.39</option><option value='0.38'>0.38</option><option value='0.37'>0.37</option><option value='0.36'>0.36</option><option value='0.35'>0.35</option><option value='0.34'>0.34</option><option value='0.33'>0.33</option><option value='0.32'>0.32</option><option value='0.31'>0.31</option><option value='0.3'>0.3</option><option value='0.29'>0.29</option>
<option value='0.28'>0.28</option><option value='0.27'>0.27</option>
<option value='0.26'>0.26</option><option value='0.25'>0.25</option><op?ion value='0.24'>0.24</option><option value='0.23'>0.23</option><option value='0.22'>0.22</option><option value='0.21'>0.21</option><option value='0.2'>0.2</option><option value='0.19'>0.19</option><option value='0.18'>0.18</option><option value='0.17'>0.17</option><option value='0.16'>0.16</option><option value='0.15'>0.15</option><option value='0.14'>0.14</option><option value='0.13'>0.13</option><option value='0.12'>0.12</option><option value='0.11'>0.11</option><option value='0.1'>0.1</option><option value='0.09'>0.09</option><option value='0.08'>0.08</option><option value='0.07'>0.07</option><option value='0.06'>0.06</option><option value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value='0.01'>0.01</option><option selected='true' value='0'>0</option></select><a class="imaLink img" href="javascript:ReducePT('autoS8Hdp',1)"><img class="hand" hspace="1" id="btnReduce1" name="btnReduce1" src="../App_Themes/AgencyV2/Images/b_down.jpg" /></a><a class="imaLink img" href="javascript:IncreasePT('autoS8Hdp',1)"><img class="hand" hspace="1" id="btnIncrease1" name="btnIncrease1" src="../App_Themes/AgencyV2/Images/b_up.jpg"/></a><a class="imaLink img" href="javascript:ReducePT('autoS8Hdp',10)">
<img class="hand" hspace="1" id="btnReduce10" name="btnReduce10" src="../App_Themes/AgencyV2/Images/b_sub.jpg"/></a><a class="imaLink img" href="javascript:IncreasePT('autoS8Hdp',10)"><img class="hand" hspace="1" id="btnIncrease10" name="btnIncrease10" src="../App_Themes/AgencyV2/Images/b_add.jpg"/></a></td><td><select id="autoS8OU" name="autoS8OU" disabled onChange="SelectOnChange('autoS8OU');"><option value='0.7'>0.7</option><option value='0.69'>0.69</option><option value='0.68'>0.68</option><option value='0.67'>0.67</option><option value='0.66'>0.66</option><option value='0.65'>0.65</option><option value='0.64'>0.64</option><option value='0.63'>0.63</option><option value='0.62'>0.62</option><option value='0.61'>0.61</option><option value='0.6'>0.6</option><option value='0.59'>0.59</option><option value='0.58'>0.58</option><option value='0.57'>0.57</option><option value='0.56'>0.56</option><option value='0.55'>0.55</option><option value='0.54'>0.54</option><option value='0.53'>0.53</option><option value='0.52'>0.52</option><option value='0.51'>0.51</option><option value='0.5'>0.5</option><option value='0.49'>0.49</option><option value='0.48'>0.48</option><option value='0.47'>0.47</option><option value='0.46'>0.46</option><option value='0.45'>0.45</option><option value='0.44'>0.44</option><option value='0.43'>0.43</option><option value='0.42'>0.42</option><option value='0.41'>0.41</option><option value='0.4'>0.4</option><option value='0.39'>0.39</option><option value='0.38'>0.38</option><option value='0.37'>0.37</option><option value='0.36'>0.36</option><option value='0.35'>0.35</option><option value='0.34'>0.34</option><option value='0.33'>0.33</option><option value='0.32'>0.32</option><option value='0.31'>0.31</option><option value='0.3'>0.3</option><option value='0.29'>0.29</option><option value='0.28'>0.28</option><option value='0.27'>0.27</option><option value='0.26'>0.26</option><option value='0.25'>0.25</option><option value='0.24'>0.24</option><option value='0.23'>0.23</option><option value='0.22'>0.22</option><option value='0.21'>0.21</option><option value='0.2'>0.2</option>
<option value='0.19'>0.19</option><option value='0.18'>0.18</option><option value='0.17'>0.17</option><option value='0.16'>0.16</option><option value='0.15'>0.15</option><option value='0.14'>0.14</option><option value='0.13'>0.13</option><option value='0.12'>0.12</option><option value='0.11'>0.11</option><option value='0.1'>0.1</option><option value='0.09'>0.09</option><option value='0.08'>0.08</option><option value='0.07'>0.07</option>
<option value='0.06'>0.06</option><option value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value='0.01'>0.01</option><option selected='true' value='0'>0<?option></select></td><td><select id="autoS8ML" name="autoS8ML" disabled onChange="SelectOnChange('autoS8ML');"><option value='0.7'>0.7</option><option value='0.69'>0.69</option><option value='0.68'>0.68</option><option value='0.67'>0.67</option><option value='0.66'>0.66</option><option value='0.65'>0.65</option><option value='0.64'>0.64</option><option value='0.63'>0.63</option><option value='0.62'>0.62</option><option value='0.61'>0.61</option><option value='0.6'>0.6</option><option value='0.59'>0.59</option><option value='0.58'>0.58</option><option value='0.57'>0.57</option><option value='0.56'>0.56</option><option value='0.55'>0.55</option><option value='0.54'>0.54</option><option value='0.53'>0.53</option><option value='0.52'>0.52</option><option value='0.51'>0.51</option><option value='0.5'>0.5</option><option value='0.49'>0.49</option><option value='0.48'>0.48</option><option value='0.47'>0.47</option><option value='0.46'>0.46</option><option value='0.45'>0.45</option><option value='0.44'>0.44</option><option value='0.43'>0.43</option><option value='0.42'>0.42</option><option value='0.41'>0.41</option><option value='0.4'>0.4</option><option value='0.39'>0.39</option><option value='0.38'>0.38</option><option value='0.37'>0.37</option><option value='0.36'>0.36</option><option value='0.35'>0.35</option><option value='0.34'>0.34</option><option value='0.33'>0.33</option><option value='0.32'>0.32</option><option value='0.31'>0.31</option><option value='0.3'>0.3</option><option value='0.29'>0.29</option><option value='0.28'>0.28</option><option value='0.27'>0.27</option><option value='0.26'>0.26</option><option value='0.25'>0.25</option><option value='0.24'>0.24</option><option value='0.23'>0.23</option><option value='0.22'>0.22</option><option value='0.21'>0.21</option><option value='0.2'>0.2</option>
<option value='0.19'>0.19</option><option value='0.18'>0.18</option>
<option value='0.17'>0.17</option><option value='0.16'>0.16</option><option value='0.15'>0.15</option><option value='0.14'>0.14</option><option value='0.13'>0.13</option><option value='0.12'>0.12</option><option value='0.11'>0.11</option><option value='0.1'>0.1</option><option value='0.09'>0.09</option><option value='0.08'>0.08</option><option value='0.07'>0.07</option><option value='0.06'>0.06</option><option value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value='0.01'>0.01</option><option selected='true' value='0'>0</option></select></td></tr></table></div></td></tr></table></div></div><div class="l" id="linkGolf" onclick="OpenPanelEdit('panelGolf'); togglePTmenu('bullet6')"><div class="button_cont"><div class="menu_content"><ul><li><a id="bullet6" class="md2_on" href="#1">Golf</a></li></ul></div></div></div><div style="display: none" id="panelGolf"><div class="l"><table class="sptPT" style="width: 75%"><tr><td><div id="divUpdInfo10" name="divUpdInfo10"><table width="100%" class="tblRpt"><tr class="tblTitleCenter"><td colspan="3">Bet Setting</td></tr><tr class="bg_eb"><td class="c tdPT1">Min Bet&nbsp;<input type="text" maxlength="14" id="txtMinbet10" name="txtMinbet10" value="5" /><span class="minmaxbet">&gt;=<span id="txtMinbet_Min10">5</span></span></td><td class="c">Max Bet&nbsp;<input type="text" maxlength="14" id="txtMaxbet10" name="txtMaxbet10" value="35,000" /><span class="minmaxbet">&lt;=<span id="txtMaxbet_Max10">35,000</span></span></td><td class="c">Max Per Match&nbsp;<input type="text" maxlength="14" id="txtMaxPerMatch10" name="txtMaxPerMatch10" value="200,000" /><span class="hidden">&gt;=<span id="txtMaxPerMatch_Min10">0</span> and</span><span class="minmaxbet">&lt;=<span id="txtMaxPerMatch_Max10">200,000</span></span></td></tr></table></div></td></tr><tr><td ><div id="divUpdPT10" name="divUpdPT10"><table border="1" width="100%" class="tblRpt"><tr class="tblTitleCenter"><td colspan="6">Position Taking</td></tr><tr class="bg_eb">
<td></td><td>Handicap</td><td>Over/Under</td><td>Odd/Even</td><td>Money Line</td><td></td>
</tr><tr class="bg_eb"><td class="r">?aster Preset</td><td>
<select id="listM10Hdp" name="listM10Hdp"onChange="SelectOnChange('listM10Hdp');" ><option selected='true' value='0'>0</option></select><a class="imaLink img" href="javascript:ReducePT('listM10Hdp',1)"><img class="hand" hspace="1" id="btnReduce1" name="btnReduce1" src="../App_Themes/AgencyV2/Images/b_down.jpg" /></a><a class="imaLink img" href="javascript:IncreasePT('listM10Hdp',1)"><img class="hand" hspace="1" id="btnIncrease1" name="btnIncrease1" src="../App_Themes/AgencyV2/Images/b_up.jpg"/></a><a class="imaLink img" href="javascript:ReducePT('listM10Hdp',10)"><img class="hand" hspace="1" id="btnReduce10" name="btnReduce10" src="../App_Themes/AgencyV2/Images/b_sub.jpg"/></a><a class="imaLink img" href="javascript:IncreasePT('listM10Hdp',10)"><img class="hand" hspace="1" id="btnIncrease10" name="btnIncrease10" src="../App_Themes/AgencyV2/Images/b_add.jpg"/></a></td><td><select id="listM10OU" name="listM10OU"onChange="SelectOnChange('listM10OU');" ><option selected='true' value='0'>0</option></select></td><td><select id="listM10OE" name="listM10OE"onChange="SelectOnChange('listM10OE');" ><option selected='true' value='0'>0</option></select></td><td><select id="listM10ML" name="listM10ML"onChange="SelectOnChange('listM10ML');" ><option selected='true' value='0'>0</option></select></td><td rowspan="2" class="l"><input type="checkbox" {chk-hdp} id="chkCopy10Hdp" name="chkCopy10Hdp" onclick="CheckCopyPT(this,arrSuper10,arrMaster10,'chkAuto10Hdp');" />Copy From Handicap</td></tr><tr class="bg_eb"><td class="r">Super Preset</td><td><select id="listS10Hdp" name="listS10Hdp"onChange="SelectOnChange('listS10Hdp');" ><option selected='true' value='0.7'>0.7</option><option value='0.69'>0.69</option><option value='0.68'>0.68</option><option value='0.67'>0.67</option><option value='0.66'>0.66</option><option value='0.65'>0.65</option><option value='0.64'>0.64</option><option value='0.63'>0.63</option><option value='0.62'>0.62</option><option value='0.61'>0.61</option><option value='0.6'>0.6</option><option value='0.59'>0.59</option><option value='0.58'>0.58</option>
<option value='0.57'>0.57</option><option value='0.56'>0.56</option><option value='0.55'>0.55</option><option value='0.54'>0.54</option><option value='0.53'>0.53</option><option value='0.52'>0.52</option>
<option value='0.51'>0.51</option><option value='0.5'>0.5</option><option value='0.49'>0.49</option><option value='0.48'>0.48</option><option value='0.47'>0.47</option><option value='0.46'>0.46</option><option value='0.45'>0.45</option><option value='0.44'>0.44</option><option value='0.43'>0.43</option><option value='0.42'>0.42</option><option value='0.41'>0.41</option><option value='0.4'>0.4</option><option value='0.39'>0.39</option><option value='0.38'>0.38</option><option value='0.37'>0.37</option><option value='0.36'>0.36</option><option value='0.35'>0.35</option><option value='0.34'>0.34</option><option value='0.33'>0.33</option><option value='0.32'>0.32</option><option value='0.31'>0.31</option><option value='0.3'>0.3</option><option value='0.29'>0.29</option><option value='0.28'>0.28</option><option value='0.27'>0.27</option><option value='0.26'>0.26</option><option value='0.25'>0.25</option><option value='0.24'>0.24</option><option value='0.23'>0.23</option><option value='0.22'>0.22</option><option value='0.21'>0.21</option><option value='0.2'>0.2</option><option value='0.19'>0.19</option><option value='0.18'>0.18</option><option value='0.17'>0.17</option><option value='0.16'>0.16</option><option value='0.15'>0.15</option><option value='0.14'>0.14</option><option value='0.13'>0.13</option><option value='0.12'>0.12</option><option value='0.11'>0.11</option><option value='0.1'>0.1</option><option value='0.09'>0.09</option><option value='0.08'>0.08</option><option value='0.07'>0.07</option><option value='0.06'>0.06</option><option value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value='0.01'>0.01</option><option value='0'>0</option></select><a class="imaLink?img" href="javascript:ReducePT('listS10Hdp',1)"><img class="hand" hspace="1" id="btnReduce1" name="btnReduce1" src="../App_Themes/AgencyV2/Images/b_down.jpg" /></a><a class="imaLink img" href="javascript:IncreasePT('listS10Hdp',1)"><img class="hand" hspace="1" id="btnIncrease1" name="btnIncrease1" src="../App_Themes/AgencyV2/Images/b_up.jpg"/>
</a><a class="imaLink img" href="javascript:ReducePT('listS10Hdp',10)"><img class="hand" hspace="1" id="btnReduce10" name="btnReduce10" src="../App_Themes/AgencyV2/Images/b_sub.jpg"/></a><a class="imaLink img" href="javascript:IncreasePT('listS10Hdp',10)"><img class="hand" hspace="1" id="btnIncrease10" name="btnIncrease10" src="../App_Themes/AgencyV2/Images/b_add.jpg"/></a></td><td><select id="listS10OU" name="listS10OU"onChange="SelectOnChange('listS10OU');" ><option selected='true' value='0.7'>0.7</option><option value='0.69'>0.69</option><option value='0.68'>0.68</option><option value='0.67'>0.67</option><option value='0.66'>0.66</option><option value='0.65'>0.65</option><option value='0.64'>0.64</option><option value='0.63'>0.63</option><option value='0.62'>0.62</option><option value='0.61'>0.61</option><option value='0.6'>0.6</option><option value='0.59'>0.59</option><option value='0.58'>0.58</option><option value='0.57'>0.57</option><option value='0.56'>0.56</option><option value='0.55'>0.55</option><option value='0.54'>0.54</option><option value='0.53'>0.53</option><option value='0.52'>0.52</option><option value='0.51'>0.51</option><option value='0.5'>0.5</option><option value='0.49'>0.49</option><option value='0.48'>0.48</option><option value='0.47'>0.47</option><option value='0.46'>0.46</option><option value='0.45'>0.45</option><option value='0.44'>0.44</option><option value='0.43'>0.43</option><option value='0.42'>0.42</option><option value='0.41'>0.41</option><option value='0.4'>0.4</option><option value='0.39'>0.39</option><option value='0.38'>0.38</option><option value='0.37'>0.37</option><option value='0.36'>0.36</option><option value='0.35'>0.35</option><option value='0.34'>0.34</option><option value='0.33'>0.33</option><option value='0.32'>0.32</option><option value='0.31'>0.31</option><option value='0.3'>0.3</option><option value='0.29'>0.29</option><option value='0.28'>0.28</option><option value='0.27'>0.27</option><option value='0.26'>0.26</option><option value='0.25'>0.25</option><option value='0.24'>0.24</option><option value='0.23'>0.23</option>
<option value='0.22'>0.22</option><option value='0.21'>0.21</option><option value='0.2'>0.2</option><option value='0.19'>0.19</option><option value='0.18'>0.18</option><option value='0.17'>0.17</option><option value='0.16'>0.16</option><option value='0.15'>0.15</option><option value='0.14'>0.14</option><option value='0.13'>0.13</option><option value='0.12'>0.12</option>
<option value='0.11'>0.11</option><option value='0.1'>0.1</option><option value='0.09'>0.09</option><option value='0.08'>0.08</option><option value='0.07'>0.07</option><option value='0.06'>0.06</option><option value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value='0.01'>0.01</option><option value='0'>0</option></select></td><td><select id="listS10OE" name="listS10OE"onChange="SelectOnChange('listS10OE');" ><option selected='true' value='0.7'>0.7</option><option value='0.69'>0.69</option><option value='0.68'>0.68</option><option value='0.67'>0.67</option><option value='0.66'>0.66</option><option value='0.65'>0.65</option><option value='0.64'>0.64</option><option value='0.63'>0.63</option><option value='0.62'>0.62</option><option value='0.61'>0.61</option><option value='0.6'>0.6</option><option value='0.59'>0.59</option><option value='0.58'>0.58</option><option value='0.57'>0.57</option><option value='0.56'>0.56</option><option value='0.55'>0.55</option><option value='0.54'>0.54</option><option value='0.53'>0.53</option><option value='0.52'>0.52</option><option value='0.51'>0.51</option><option value='0.5'>0.5</option><option value='0.49'>0.49</option><option value='0.?8'>0.48</option><option value='0.47'>0.47</option><option value='0.46'>0.46</option><option value='0.45'>0.45</option><option value='0.44'>0.44</option><option value='0.43'>0.43</option><option value='0.42'>0.42</option><option value='0.41'>0.41</option><option value='0.4'>0.4</option><option value='0.39'>0.39</option><option value='0.38'>0.38</option><option value='0.37'>0.37</option><option value='0.36'>0.36</option><option value='0.35'>0.35</option><option value='0.34'>0.34</option><option value='0.33'>0.33</option><option value='0.32'>0.32</option><option value='0.31'>0.31</option><option value='0.3'>0.3</option><option value='0.29'>0.29</option><option value='0.28'>0.28</option><option value='0.27'>0.27</option><option value='0.26'>0.26</option><option value='0.25'>0.25</option><option value='0.24'>0.24</option><option value='0.23'>0.23</option><option value='0.22'>0.22</option><option value='0.21'>0.21</option><option value='0.2'>0.2</option><option value='0.19'>0.19</option>
<option value='0.18'>0.18</option><option value='0.17'>0.17</option><option value='0.16'>0.16</option><option value='0.15'>0.15</option><option value='0.14'>0.14</option><option value='0.13'>0.13</option><option value='0.12'>0.12</option><option value='0.11'>0.11</option><option value='0.1'>0.1</option><option value='0.09'>0.09</option><option value='0.08'>0.08</option><option value='0.07'>0.07</option><option value='0.06'>0.06</option><option value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value='0.01'>0.01</option><option value='0'>0</option></select></td><td><select id="listS10ML" name="listS10ML"onChange="SelectOnChange('listS10ML');" ><option selected='true' value='0.7'>0.7</option><option value='0.69'>0.69</option><option value='0.68'>0.68</option><option value='0.67'>0.67</option><option value='0.66'>0.66</option><option value='0.65'>0.65</option><option value='0.64'>0.64</option><option value='0.63'>0.63</option><option value='0.62'>0.62</option><option value='0.61'>0.61</option><option value='0.6'>0.6</option><option value='0.59'>0.59</option><option value='0.58'>0.58</option><option value='0.57'>0.57</option><option value='0.56'>0.56</option><option value='0.55'>0.55</option><option value='0.54'>0.54</option><option value='0.53'>0.53</option><option value='0.52'>0.52</option><option value='0.51'>0.51</option><option value='0.5'>0.5</option><option value='0.49'>0.49</option><option value='0.48'>0.48</option><option value='0.47'>0.47</option><option value='0.46'>0.46</option><option value='0.45'>0.45</option><option value='0.44'>0.44</option><option value='0.43'>0.43</option><option value='0.42'>0.42</option><option value='0.41'>0.41</option><option value='0.4'>0.4</option><option value='0.39'>0.39</option><option value='0.38'>0.38</option><option value='0.37'>0.37</option><option value='0.36'>0.36</option><option value='0.35'>0.35</option><option value='0.34'>0.34</option><option value='0.33'>0.33</option><option value='0.32'>0.32</option><option value='0.31'>0.31</option><option value='0.3'>0.3</option>
<option value='0.29'>0.29</option><option value='0.28'>0.28</option><option value='0.27'>0.27</option><option value='0.26'>0.26</option><option value='0.25'>0.25</option><option value='0.24'>0.24</option><option value='0.23'>0.23</option><option value='0.22'>0.22</option><option value='0.21'>0.21</option><option value='0.2'>0.2</option><option value='0.19'>0.19</option><option value='0.18'>0.18</option><option value='0.17'>0.17</option><option value='0.16'>0.16</option><option value='0.15'>0.15</option><option value='0.14'>0.14</option><option value='0.13'>0.13</option><option value='0.12'>0.12</option><option value='0.11'>0.11</option><option value='0.1'>0.1</option><option value='0.09'>0.09</option><option value='0.08'>0.08</option><option value='0.07'>0.07</option><option value='0.06'>0.06</option><option value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value?'0.01'>0.01</option><option value='0'>0</option></select></td></tr><tr class="bg_eb {hdauto}"><td rowspan="2" class="r">Auto Super Preset</td><td><input type="checkbox" onclick="CheckAutoPreset(this)" id="chkAuto10Hdp" name="chkAuto10Hdp"  /></td><td><input type="checkbox" onclick="CheckAutoPreset(this,'chkCopy10Hdp')" id="chkAuto10OU" name="chkAuto10OU"  /></td><td><input type="checkbox" onclick="CheckAutoPreset(this,'chkCopy10Hdp')" id="chkAuto10OE" name="chkAuto10OE"  /></td><td><input type="checkbox" onclick="CheckAutoPreset(this,'chkCopy10Hdp')" id="chkAuto10ML" name="chkAuto10ML"  /></td></tr><tr class="bg_eb {hdauto}"><td><select id="autoS10Hdp" name="autoS10Hdp" disabled onChange="SelectOnChange('autoS10Hdp');"><option value='0.7'>0.7</option><option value='0.69'>0.69</option><option value='0.68'>0.68</option><option value='0.67'>0.67</option><option value='0.66'>0.66</option><option value='0.65'>0.65</option><option value='0.64'>0.64</option><option value='0.63'>0.63</option><option value='0.62'>0.62</option><option value='0.61'>0.61</option><option value='0.6'>0.6</option><option value='0.59'>0.59</option><option value='0.58'>0.58</option><option value='0.57'>0.57</option>
<option value='0.56'>0.56</option><option value='0.55'>0.55</option><option value='0.54'>0.54</option><option value='0.53'>0.53</option><option value='0.52'>0.52</option><option value='0.51'>0.51</option><option value='0.5'>0.5</option><option value='0.49'>0.49</option><option value='0.48'>0.48</option><option value='0.47'>0.47</option><option value='0.46'>0.46</option><option value='0.45'>0.45</option><option value='0.44'>0.44</option>
<option value='0.43'>0.43</option><option value='0.42'>0.42</option><option value='0.41'>0.41</option><option value='0.4'>0.4</option><option value='0.39'>0.39</option><option value='0.38'>0.38</option><option value='0.37'>0.37</option><option value='0.36'>0.36</option><option value='0.35'>0.35</option><option value='0.34'>0.34</option><option value='0.33'>0.33</option><option value='0.32'>0.32</option><option value='0.31'>0.31</option><option value='0.3'>0.3</option><option value='0.29'>0.29</option><option value='0.28'>0.28</option><option value='0.27'>0.27</option><option value='0.26'>0.26</option><option value='0.25'>0.25</option><option value='0.24'>0.24</option><option value='0.23'>0.23</option><option value='0.22'>0.22</option><option value='0.21'>0.21</option><option value='0.2'>0.2</option><option value='0.19'>0.19</option><option value='0.18'>0.18</option><option value='0.17'>0.17</option><option value='0.16'>0.16</option><option value='0.15'>0.15</option><option value='0.14'>0.14</option><option value='0.13'>0.13</option><option value='0.12'>0.12</option><option value='0.11'>0.11</option><option value='0.1'>0.1</option><option value='0.09'>0.09</option><option value='0.08'>0.08</option><option value='0.07'>0.07</option><option value='0.06'>0.06</option><option value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value='0.01'>0.01</option><option selected='true' value='0'>0</option></select><a class="imaLink img" href="javascript:ReducePT('autoS10Hdp',1)"><img class="hand" hspace="1" id="btnReduce1" name="btnReduce1" src="../App_Themes/AgencyV2/Images/b_down.jpg" /></a><a class="imaLink img" href="javascript:IncreasePT('autoS10Hdp',1)"><img class="hand" hspace="1" id="btnIncrease1" name="btnIncrease1" src="../App_Themes/AgencyV2/Images/b_up.jpg"/></a><a class="imaLink img" href="javascript:ReducePT('autoS10Hdp',10)"><img class="hand" hspace="1" id="btnReduce10" name="btnReduce10" src="../App_Themes/AgencyV2/Images/b_sub.jpg"/></a><a class="imaLink img" href="javascript:IncreasePT('autoS10Hdp',10)"><img class="hand" hspace="1" id="btnIncrease10" name="btnIncrease10" src="../App_Themes/AgencyV2/Images/b_add.jpg"/></a></td><td>
<select id="autoS10OU" name="autoS10OU" disabled onChange="SelectOnChange('autoS10OU');"><option value='0.7'>0.7</option><option value='0.69'>0.69</option><option value='0.68'>0.68</option><option ?alue='0.67'>0.67</option><option value='0.66'>0.66</option><option value='0.65'>0.65</option><option value='0.64'>0.64</option><option value='0.63'>0.63</option><option value='0.62'>0.62</option><option value='0.61'>0.61</option><option value='0.6'>0.6</option><option value='0.59'>0.59</option><option value='0.58'>0.58</option><option value='0.57'>0.57</option><option value='0.56'>0.56</option><option value='0.55'>0.55</option><option value='0.54'>0.54</option><option value='0.53'>0.53</option><option value='0.52'>0.52</option><option value='0.51'>0.51</option><option value='0.5'>0.5</option><option value='0.49'>0.49</option><option value='0.48'>0.48</option><option value='0.47'>0.47</option><option value='0.46'>0.46</option><option value='0.45'>0.45</option><option value='0.44'>0.44</option><option value='0.43'>0.43</option><option value='0.42'>0.42</option><option value='0.41'>0.41</option><option value='0.4'>0.4</option><option value='0.39'>0.39</option><option value='0.38'>0.38</option><option value='0.37'>0.37</option><option value='0.36'>0.36</option><option value='0.35'>0.35</option><option value='0.34'>0.34</option><option value='0.33'>0.33</option><option value='0.32'>0.32</option><option value='0.31'>0.31</option><option value='0.3'>0.3</option><option value='0.29'>0.29</option><option value='0.28'>0.28</option><option value='0.27'>0.27</option><option value='0.26'>0.26</option><option value='0.25'>0.25</option><option value='0.24'>0.24</option><option value='0.23'>0.23</option><option value='0.22'>0.22</option><option value='0.21'>0.21</option><option value='0.2'>0.2</option><option value='0.19'>0.19</option><option value='0.18'>0.18</option><option value='0.17'>0.17</option><option value='0.16'>0.16</option><option value='0.15'>0.15</option><option value='0.14'>0.14</option><option value='0.13'>0.13</option><option value='0.12'>0.12</option><option value='0.11'>0.11</option><option value='0.1'>0.1</option><option value='0.09'>0.09</option><option value='0.08'>0.08</option><option value='0.07'>0.07</option><option value='0.06'>0.06</option>
<option value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option>
<option value='0.02'>0.02</option><option value='0.01'>0.01</option><option selected='true' value='0'>0</option></select></td><td><select id="autoS10OE" name="autoS10OE" disabled onChange="SelectOnChange('autoS10OE');"><option value='0.7'>0.7</option><option value='0.69'>0.69</option><option value='0.68'>0.68</option><option value='0.67'>0.67</option><option value='0.66'>0.66</option><option value='0.65'>0.65</option><option value='0.64'>0.64</option><option value='0.63'>0.63</option><option value='0.62'>0.62</option><option value='0.61'>0.61</option><option value='0.6'>0.6</option><option value='0.59'>0.59</option><option value='0.58'>0.58</option><option value='0.57'>0.57</option><option value='0.56'>0.56</option><option value='0.55'>0.55</option><option value='0.54'>0.54</option><option value='0.53'>0.53</option><option value='0.52'>0.52</option><option value='0.51'>0.51</option><option value='0.5'>0.5</option><option value='0.49'>0.49</option><option value='0.48'>0.48</option><option value='0.47'>0.47</option><option value='0.46'>0.46</option><option value='0.45'>0.45</option><option value='0.44'>0.44</option><option value='0.43'>0.43</option><option value='0.42'>0.42</option><option value='0.41'>0.41</option><option value='0.4'>0.4</option><option value='0.39'>0.39</option><option value='0.38'>0.38</option><option value='0.37'>0.37</option><option value='0.36'>0.36</option><option value='0.35'>0.35</option><option value='0.34'>0.34</option><option value='0.33'>0.33</option><option value='0.32'>0.32</option><option value='0.31'>0.31</option><option value='0.3'>0.3</option><option value='0.29'>0.29</option><option value='0.28'>0.28</option><option value='0.27'>0.27</option><option value='0.26'>0.26</option><option value='0.25'>0.25</option><option value='0.24'>0.24</option><option value='0.23'>0.23</option><option value='0.22'>0.22</option><option value='0.21'>0.21</op?ion><option value='0.2'>0.2</option><option value='0.19'>0.19</option><option value='0.18'>0.18</option><option value='0.17'>0.17</option><option value='0.16'>0.16</option><option value='0.15'>0.15</option><option value='0.14'>0.14</option><option value='0.13'>0.13</option>
<option value='0.12'>0.12</option><option value='0.11'>0.11</option>
<option value='0.1'>0.1</option><option value='0.09'>0.09</option><option value='0.08'>0.08</option><option value='0.07'>0.07</option><option value='0.06'>0.06</option><option value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value='0.01'>0.01</option><option selected='true' value='0'>0</option></select></td><td><select id="autoS10ML" name="autoS10ML" disabled onChange="SelectOnChange('autoS10ML');"><option value='0.7'>0.7</option><option value='0.69'>0.69</option><option value='0.68'>0.68</option><option value='0.67'>0.67</option><option value='0.66'>0.66</option><option value='0.65'>0.65</option><option value='0.64'>0.64</option><option value='0.63'>0.63</option><option value='0.62'>0.62</option><option value='0.61'>0.61</option><option value='0.6'>0.6</option><option value='0.59'>0.59</option>
<option value='0.58'>0.58</option><option value='0.57'>0.57</option><option value='0.56'>0.56</option><option value='0.55'>0.55</option><option value='0.54'>0.54</option><option value='0.53'>0.53</option><option value='0.52'>0.52</option><option value='0.51'>0.51</option><option value='0.5'>0.5</option><option value='0.49'>0.49</option><option value='0.48'>0.48</option><option value='0.47'>0.47</option><option value='0.46'>0.46</option><option value='0.45'>0.45</option><option value='0.44'>0.44</option><option value='0.43'>0.43</option><option value='0.42'>0.42</option><option value='0.41'>0.41</option><option value='0.4'>0.4</option><option value='0.39'>0.39</option><option value='0.38'>0.38</option><option value='0.37'>0.37</option><option value='0.36'>0.36</option><option value='0.35'>0.35</option><option value='0.34'>0.34</option><option value='0.33'>0.33</option><option value='0.32'>0.32</option><option value='0.31'>0.31</option><option value='0.3'>0.3</option><option value='0.29'>0.29</option><option value='0.28'>0.28</option><option value='0.27'>0.27</option><option value='0.26'>0.26</option><option value='0.25'>0.25</option><option value='0.24'>0.24</option><option value='0.23'>0.23</option><option value='0.22'>0.22</option><option value='0.21'>0.21</option><option value='0.2'>0.2</option><option value='0.19'>0.19</option><option value='0.18'>0.18</option><option value='0.17'>0.17</option><option value='0.16'>0.16</option><option value='0.15'>0.15</option><option value='0.14'>0.14</option><option value='0.13'>0.13</option><option value='0.12'>0.12</option><option value='0.11'>0.11</option><option value='0.1'>0.1</option><option value='0.09'>0.09</option><option value='0.08'>0.08</option><option value='0.07'>0.07</option><option value='0.06'>0.06</option><option value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value='0.01'>0.01</option><option selected='true' value='0'>0</option></select></td></tr></table></div></td></tr></table></div>
</div><div class="l" id="linkMoto" onclick="OpenPanelEdit('panelMoto'); togglePTmenu('bullet7')"><div class="button_cont"><div class="menu_content"><ul><li><a id="bullet7" class="md2_on" href="#1">Motor Sports</a></li></ul></div></div></div><div style="display: none" id="panelMoto">
<div class="l"><table class="sptPT" style="width: 75%"><tr>
<td><div id="divUpdInfo11" name="divUpdInfo11"><table width="100%" class="tblRpt"><tr class="tblTitleCenter"><td colspan="3">Bet Setting</td>
</tr><tr class="bg_eb"><td class="c tdPT1">Min Bet&nbsp;<input type="text" maxlength="14" id="txtMinbet11" name="txtMinbet11" value="5" /><span class="minmaxbet">&gt;=<span id="txtMinbet_Min11">5</span></span></td><td class="c">Max Bet&nbsp;<input type="text" maxlength="14" id="txtMaxbet11" name="txtMaxbet11" v?lue="35,000" /><span class="minmaxbet">&lt;=<span id="txtMaxbet_Max11">35,000</span></span></td><td class="c">Max Per Match&nbsp;<input type="text" maxlength="14" id="txtMaxPerMatch11" name="txtMaxPerMatch11" value="200,000" /><span class="hidden">&gt;=<span id="txtMaxPerMatch_Min11">0</span> and</span><span class="minmaxbet">&lt;=<span id="txtMaxPerMatch_Max11">200,000</span></span></td></tr></table></div></td></tr><tr><td><div id="divUpdPT11" name="divUpdPT11"><table border="1" width="100%" class="tblRpt"><tr class="tblTitleCenter"><td colspan="4">Position Taking</td></tr><tr class="bg_eb"><td></td><td>Handicap</td><td>Money Line</td><td></td></tr><tr class="bg_eb"><td class="r">Master Preset</td><td><select id="listM11Hdp" name="listM11Hdp"onChange="SelectOnChange('listM11Hdp');" ><option selected='true' value='0'>0</option></select><a class="imaLink img" href="javascript:ReducePT('listM11Hdp',1)"><img class="hand" hspace="1" id="btnReduce1" name="btnReduce1" src="../App_Themes/AgencyV2/Images/b_down.jpg" /></a><a class="imaLink img" href="javascript:IncreasePT('listM11Hdp',1)"><img class="hand" hspace="1" id="btnIncrease1" name="btnIncrease1" src="../App_Themes/AgencyV2/Images/b_up.jpg"/></a><a class="imaLink img" href="javascript:ReducePT('listM11Hdp',10)"><img class="hand" hspace="1" id="btnReduce10" name="btnReduce10" src="../App_Themes/AgencyV2/Images/b_sub.jpg"/></a><a class="imaLink img" href="javascript:IncreasePT('listM11Hdp',10)"><img class="hand" hspace="1" id="btnIncrease10" name="btnIncrease10" src="../App_Themes/AgencyV2/Images/b_add.jpg"/></a></td><td><select id="listM11ML" name="listM11ML"onChange="SelectOnChange('listM11ML');" ><option selected='true' value='0'>0</option></select></td><td rowspan="2" class="l"><input type="checkbox" {chk-hdp} id="chkCopy11Hdp" name="chkCopy11Hdp" onclick="CheckCopyPT(this,arrSuper11,arrMaster11,'chkAuto11Hdp');" />Copy From Handicap</td></tr>
<tr class="bg_eb"><td class="r">Super Preset</td><td><select id="listS11Hdp" name="listS11Hdp"onChange="SelectOnChange('listS11Hdp');" ><option selected='true' value='0.7'>0.7</option><option value='0.69'>0.69</option><option value='0.68'>0.68</option><option value='0.67'>0.67</option><option value='0.66'>0.66</option><option value='0.65'>0.65</option><option value='0.64'>0.64</option><option value='0.63'>0.63</option><option value='0.62'>0.62</option><option value='0.61'>0.61</option><option value='0.6'>0.6</option><option value='0.59'>0.59</option><option value='0.58'>0.58</option><option value='0.57'>0.57</option><option value='0.56'>0.56</option><option value='0.55'>0.55</option><option value='0.54'>0.54</option><option value='0.53'>0.53</option><option value='0.52'>0.52</option><option value='0.51'>0.51</option><option value='0.5'>0.5</option><option value='0.49'>0.49</option><option value='0.48'>0.48</option><option value='0.47'>0.47</option><option value='0.46'>0.46</option><option value='0.45'>0.45</option><option value='0.44'>0.44</option><option value='0.43'>0.43</option><option value='0.42'>0.42</option><option value='0.41'>0.41</option><option value='0.4'>0.4</option><option value='0.39'>0.39</option><option value='0.38'>0.38</option><option value='0.37'>0.37</option><option value='0.36'>0.36</option><option value='0.35'>0.35</option><option value='0.34'>0.34</option><option value='0.33'>0.33</option><option value='0.32'>0.32</option><option value='0.31'>0.31</option><option value='0.3'>0.3</option><option value='0.29'>0.29</option><option value='0.28'>0.28</option><option value='0.27'>0.27</option><option value='0.26'>0.26</option><option value='0.25'>0.25</option><option value='0.24'>0.24</option><option value='0.23'>0.23</option><option value='0.22'>0.22</option><option value='0.21'>0.21</option><option value='0.2'>0.2</option><option value='0.19'>0.19</option><option value='0.18'>0.18</option><option value='0.17'>0.17</option><option value='0.16'>0.16</option><option value='0.15'>0.15</option><option value='0.14'>0.14</option><option value='0.13'>0.13</option>
<option value='0.12'>0.12</option><option value='0.11?>0.11</option><option value='0.1'>0.1</option><option value='0.09'>0.09</option><option value='0.08'>0.08</option><option value='0.07'>0.07</option><option value='0.06'>0.06</option><option value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value='0.01'>0.01</option><option value='0'>0</option></select><a class="imaLink img" href="javascript:ReducePT('listS11Hdp',1)"><img class="hand" hspace="1" id="btnReduce1" name="btnReduce1" src="../App_Themes/AgencyV2/Images/b_down.jpg" /></a><a class="imaLink img" href="javascript:IncreasePT('listS11Hdp',1)"><img class="hand" hspace="1" id="btnIncrease1" name="btnIncrease1" src="../App_Themes/AgencyV2/Images/b_up.jpg"/></a><a class="imaLink img" href="javascript:ReducePT('listS11Hdp',10)"><img class="hand" hspace="1" id="btnReduce10" name="btnReduce10" src="../App_Themes/AgencyV2/Images/b_sub.jpg"/></a><a class="imaLink img" href="javascript:IncreasePT('listS11Hdp',10)"><img class="hand" hspace="1" id="btnIncrease10" name="btnIncrease10" src="../App_Themes/AgencyV2/Images/b_add.jpg"/></a></td><td><select id="listS11ML" name="listS11ML"onChange="SelectOnChange('listS11ML');" >
<option selected='true' value='0.7'>0.7</option><option value='0.69'>0.69</option><option value='0.68'>0.68</option><option value='0.67'>0.67</option><option value='0.66'>0.66</option><option value='0.65'>0.65</option><option value='0.64'>0.64</option><option value='0.63'>0.63</option><option value='0.62'>0.62</option><option value='0.61'>0.61</option><option value='0.6'>0.6</option><option value='0.59'>0.59</option><option value='0.58'>0.58</option><option value='0.57'>0.57</option><option value='0.56'>0.56</option><option value='0.55'>0.55</option><option value='0.54'>0.54</option><option value='0.53'>0.53</option><option value='0.52'>0.52</option><option value='0.51'>0.51</option><option value='0.5'>0.5</option><option value='0.49'>0.49</option><option value='0.48'>0.48</option><option value='0.47'>0.47</option><option value='0.46'>0.46</option><option value='0.45'>0.45</option><option value='0.44'>0.44</option><option value='0.43'>0.43</option><option value='0.42'>0.42</option><option value='0.41'>0.41</option><option value='0.4'>0.4</option><option value='0.39'>0.39</option><option value='0.38'>0.38</option><option value='0.37'>0.37</option><option value='0.36'>0.36</option><option value='0.35'>0.35</option><option value='0.34'>0.34</option><option value='0.33'>0.33</option><option value='0.32'>0.32</option><option value='0.31'>0.31</option><option value='0.3'>0.3</option><option value='0.29'>0.29</option><option value='0.28'>0.28</option><option value='0.27'>0.27</option><option value='0.26'>0.26</option><option value='0.25'>0.25</option><option value='0.24'>0.24</option><option value='0.23'>0.23</option><option value='0.22'>0.22</option><option value='0.21'>0.21</option><option value='0.2'>0.2</option><option value='0.19'>0.19</option><option value='0.18'>0.18</option><option value='0.17'>0.17</option><option value='0.16'>0.16</option><option value='0.15'>0.15</option><option value='0.14'>0.14</option><option value='0.13'>0.13</option><option value='0.12'>0.12</option><option value='0.11'>0.11</option><option value='0.1'>0.1</option><option value='0.09'>0.09</option><option value='0.08'>0.08</option><option value='0.07'>0.07</option><option value='0.06'>0.06</option>
<option value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value='0.01'>0.01</option><option value='0'>0</option></select></td></tr><tr class="bg_eb {hdauto}"><td rowspan="2" class="r">Auto Super Preset</td><td><input type="checkbox" onclick="CheckAutoPreset(this)" id="chkAuto11Hdp" name="chkAuto11Hdp"  /></td><td><input type="checkbox" onclick="CheckAutoPreset(this,'chkCopy11Hdp')" id="chkAuto11ML" name="chkAuto11ML"  /></td></tr><tr class="bg_eb {hdauto}"><td><select id="autoS11Hdp" name="autoS11Hdp" disabled onChange="SelectOnChange('autoS11Hdp');"><option value='0.7'>0?7</option><option value='0.69'>0.69</option><option value='0.68'>0.68</option><option value='0.67'>0.67</option><option value='0.66'>0.66</option><option value='0.65'>0.65</option><option value='0.64'>0.64</option><option value='0.63'>0.63</option><option value='0.62'>0.62</option><option value='0.61'>0.61</option><option value='0.6'>0.6</option><option value='0.59'>0.59</option><option value='0.58'>0.58</option><option value='0.57'>0.57</option><option value='0.56'>0.56</option><option value='0.55'>0.55</option><option value='0.54'>0.54</option><option value='0.53'>0.53</option><option value='0.52'>0.52</option><option value='0.51'>0.51</option><option value='0.5'>0.5</option><option value='0.49'>0.49</option>
<option value='0.48'>0.48</option><option value='0.47'>0.47</option><option value='0.46'>0.46</option><option value='0.45'>0.45</option><option value='0.44'>0.44</option><option value='0.43'>0.43</option><option value='0.42'>0.42</option><option value='0.41'>0.41</option><option value='0.4'>0.4</option><option value='0.39'>0.39</option><option value='0.38'>0.38</option><option value='0.37'>0.37</option><option value='0.36'>0.36</option><option value='0.35'>0.35</option><option value='0.34'>0.34</option><option value='0.33'>0.33</option><option value='0.32'>0.32</option><option value='0.31'>0.31</option><option value='0.3'>0.3</option><option value='0.29'>0.29</option><option value='0.28'>0.28</option><option value='0.27'>0.27</option><option value='0.26'>0.26</option><option value='0.25'>0.25</option><option value='0.24'>0.24</option><option value='0.23'>0.23</option><option value='0.22'>0.22</option><option value='0.21'>0.21</option><option value='0.2'>0.2</option><option value='0.19'>0.19</option><option value='0.18'>0.18</option><option value='0.17'>0.17</option><option value='0.16'>0.16</option><option value='0.15'>0.15</option><option value='0.14'>0.14</option><option value='0.13'>0.13</option><option value='0.12'>0.12</option><option value='0.11'>0.11</option><option value='0.1'>0.1</option><option value='0.09'>0.09</option><option value='0.08'>0.08</option><option value='0.07'>0.07</option><option value='0.06'>0.06</option><option value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value='0.01'>0.01</option><option selected='true' value='0'>0</option></select><a class="imaLink img" href="javascript:ReducePT('autoS11Hdp',1)"><img class="hand" hspace="1" id="btnReduce1" name="btnReduce1" src="../App_Themes/AgencyV2/Images/b_down.jpg" /></a><a class="imaLink img" href="javascript:IncreasePT('autoS11Hdp',1)"><img class="hand" hspace="1" id="btnIncrease1" name="btnIncrease1" src="../App_Themes/AgencyV2/Images/b_up.jpg"/></a><a class="imaLink img" href="javascript:ReducePT('autoS11Hdp',10)"><img class="hand" hspace="1" id="btnReduce10" name="btnReduce10" src="../App_Themes/AgencyV2/Images/b_sub.jpg"/></a>
<a class="imaLink img" href="javascript:IncreasePT('autoS11Hdp',10)"><img class="hand" hspace="1" id="btnIncrease10" name="btnIncrease10" src="../App_Themes/AgencyV2/Images/b_add.jpg"/></a></td><td><select id="autoS11ML" name="autoS11ML" disabled onChange="SelectOnChange('autoS11ML');"><option value='0.7'>0.7</option><option value='0.69'>0.69</option><option value='0.68'>0.68</option><option value='0.67'>0.67</option><option value='0.66'>0.66</option><option value='0.65'>0.65</option><option value='0.64'>0.64</option><option value='0.63'>0.63</option><option value='0.62'>0.62</option><option value='0.61'>0.61</option><option value='0.6'>0.6</option><option value='0.59'>0.59</option><option value='0.58'>0.58</option><option value='0.57'>0.57</option><option value='0.56'>0.56</option><option value='0.55'>0.55</option><option value='0.54'>0.54</option><option value='0.53'>0.53</option><option value='0.52'>0.52</option><option value='0.51'>0.51</option><option value='0.5'>0.5</option><option value='0.49'>0.49</option><option value='0.48'>0.48</option><option value='0.47'>0.47</option><option value='0.46'>0.46</option><option value='?.45'>0.45</option><option value='0.44'>0.44</option><option value='0.43'>0.43</option>
<option value='0.42'>0.42</option><option value='0.41'>0.41</option><option value='0.4'>0.4</option><option value='0.39'>0.39</option><option value='0.38'>0.38</option><option value='0.37'>0.37</option><option value='0.36'>0.36</option><option value='0.35'>0.35</option><option value='0.34'>0.34</option><option value='0.33'>0.33</option><option value='0.32'>0.32</option><option value='0.31'>0.31</option><option value='0.3'>0.3</option><option value='0.29'>0.29</option><option value='0.28'>0.28</option><option value='0.27'>0.27</option><option value='0.26'>0.26</option><option value='0.25'>0.25</option><option value='0.24'>0.24</option><option value='0.23'>0.23</option><option value='0.22'>0.22</option><option value='0.21'>0.21</option><option value='0.2'>0.2</option><option value='0.19'>0.19</option><option value='0.18'>0.18</option><option value='0.17'>0.17</option><option value='0.16'>0.16</option><option value='0.15'>0.15</option><option value='0.14'>0.14</option><option value='0.13'>0.13</option><option value='0.12'>0.12</option><option value='0.11'>0.11</option><option value='0.1'>0.1</option><option value='0.09'>0.09</option><option value='0.08'>0.08</option><option value='0.07'>0.07</option><option value='0.06'>0.06</option><option value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value='0.01'>0.01</option><option selected='true' value='0'>0</option></select></td></tr></table></div></td></tr></table></div></div><div class="l" id="linkOther" onclick="OpenPanelEdit('panelOtherSports'); togglePTmenu('bullet9')"><div class="button_cont"><div class="menu_content"><ul><li><a id="bullet9" class="md2_on" href="#1">Other Sports</a></li></ul></div></div></div><div style="display: none" id="panelOtherSports"><div class="l"><table class="sptPT" style="width: 75%"><tr><td><div id="divUpdInfo99" name="divUpdInfo99"><table width="100%" class="tblRpt"><tr class="tblTitleCenter"><td colspan="3">Bet Setting</td>
</tr><tr class="bg_eb"><td class="c tdPT1">Min Bet&nbsp;<input type="text" maxlength="14" id="txtMinbet99" name="txtMinbet99" value="5" /><span class="minmaxbet">&gt;=<span id="txtMinbet_Min99">5</span>
</span></td><td class="c">Max Bet&nbsp;<input type="text" maxlength="14" id="txtMaxbet99" name="txtMaxbet99" value="35,000" /><span class="minmaxbet">&lt;=<span id="txtMaxbet_Max99">35,000</span></span></td><td class="c">Max Per Match&nbsp;<input type="text" maxlength="14" id="txtMaxPerMatch99" name="txtMaxPerMatch99" value="200,000" /><span class="hidden">&gt;=<span id="txtMaxPerMatch_Min99">0</span> and</span><span class="minmaxbet">&lt;=<span id="txtMaxPerMatch_Max99">200,000</span></span></td></tr></table></div></td></tr><tr><td><div id="divUpdPT99" name="divUpdPT99"><table border="1" width="100%" class="tblRpt"><tr class="tblTitleCenter"><td colspan="6">Position Taking</td></tr>
<tr class="bg_eb"><td></td><td>Handicap</td><td>Over/Under</td><td>Odd/Even</td><td>Money Line</td><td></td></tr><tr class="bg_eb"><td class="r">Master Preset</td><td><select id="listM99Hdp" name="listM99Hdp"onChange="SelectOnChange('listM99Hdp');" ><option selected='true' value='0'>0</option></select><a class="imaLink img" href="javascript:ReducePT('listM99Hdp',1)"><img class="hand" hspace="1" id="btnReduce1" name="btnReduce1" src="../App_Themes/AgencyV2/Images/b_down.jpg" /></a><a class="imaLink img" href="javascript:IncreasePT('listM99Hdp',1)"><img class="hand" hspace="1" id="btnIncrease1" name="btnIncrease1" src="../App_Themes/AgencyV2/Images/b_up.jpg"/></a><a class="imaLink img" href="javascript:ReducePT('listM99Hdp',10)"><img class="hand" hspace="1" id="btnReduce10" name="btnReduce10" src="../App_Themes/AgencyV2/Images/b_sub.jpg"/></a><a class="imaLink img" href="javascript:IncreasePT('listM99Hdp',10)"><img class="hand" hspace="1" id="btnIncrease10" name="btnIncrease10" src="../App_Themes/AgencyV2/Images/b_add.jpg"/></a></td><td><select id="listM99OU" name="listM99OU"onCh?nge="SelectOnChange('listM99OU');" ><option selected='true' value='0'>0</option></select></td><td><select id="listM99OE" name="listM99OE"onChange="SelectOnChange('listM99OE');" ><option selected='true' value='0'>0</option></select></td><td><select id="listM99ML" name="listM99ML"onChange="SelectOnChange('listM99ML');" ><option selected='true' value='0'>0</option></select></td><td rowspan="2" class="l"><input type="checkbox" {chk-hdp} id="chkCopy99Hdp" name="chkCopy99Hdp" onclick="CheckCopyPT(this,arrSuper99,arrMaster99,'chkAuto99Hdp');" />Copy From Handicap</td></tr>
<tr class="bg_eb"><td class="r">Super Preset</td><td><select id="listS99Hdp" name="listS99Hdp"onChange="SelectOnChange('listS99Hdp');" ><option selected='true' value='0.7'>0.7</option><option value='0.69'>0.69</option><option value='0.68'>0.68</option><option value='0.67'>0.67</option><option value='0.66'>0.66</option><option value='0.65'>0.65</option><option value='0.64'>0.64</option><option value='0.63'>0.63</option><option value='0.62'>0.62</option><option value='0.61'>0.61</option><option value='0.6'>0.6</option><option value='0.59'>0.59</option><option value='0.58'>0.58</option><option value='0.57'>0.57</option><option value='0.56'>0.56</option><option value='0.55'>0.55</option><option value='0.54'>0.54</option><option value='0.53'>0.53</option><option value='0.52'>0.52</option><option value='0.51'>0.51</option><option value='0.5'>0.5</option><option value='0.49'>0.49</option><option value='0.48'>0.48</option><option value='0.47'>0.47</option><option value='0.46'>0.46</option><option value='0.45'>0.45</option><option value='0.44'>0.44</option><option value='0.43'>0.43</option><option value='0.42'>0.42</option><option value='0.41'>0.41</option><option value='0.4'>0.4</option><option value='0.39'>0.39</option><option value='0.38'>0.38</option><option value='0.37'>0.37</option><option value='0.36'>0.36</option><option value='0.35'>0.35</option><option value='0.34'>0.34</option><option value='0.33'>0.33</option><option value='0.32'>0.32</option><option value='0.31'>0.31</option><option value='0.3'>0.3</option><option value='0.29'>0.29</option><option value='0.28'>0.28</option><option value='0.27'>0.27</option><option value='0.26'>0.26</option><option value='0.25'>0.25</option><option value='0.24'>0.24</option><option value='0.23'>0.23</option><option value='0.22'>0.22</option><option value='0.21'>0.21</option><option value='0.2'>0.2</option><option value='0.19'>0.19</option><option value='0.18'>0.18</option><option value='0.17'>0.17</option><option value='0.16'>0.16</option><option value='0.15'>0.15</option><option value='0.14'>0.14</option><option value='0.13'>0.13</option><option value='0.12'>0.12</option><option value='0.11'>0.11</option><option value='0.1'>0.1</option>
<option value='0.09'>0.09</option><option value='0.08'>0.08</option><option value='0.07'>0.07</option><option value='0.06'>0.06</option><option value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value='0.01'>0.01</option><option value='0'>0</option></select><a class="imaLink img" href="javascript:ReducePT('listS99Hdp',1)"><img class="hand" hspace="1" id="btnReduce1" name="btnReduce1" src="../App_Themes/AgencyV2/Images/b_down.jpg" /></a><a class="imaLink img" href="javascript:IncreasePT('listS99Hdp',1)"><img class="hand" hspace="1" id="btnIncrease1" name="btnIncrease1" src="../App_Themes/AgencyV2/Images/b_up.jpg"/></a><a class="imaLink img" href="javascript:ReducePT('listS99Hdp',10)"><img class="hand" hspace="1" id="btnReduce10" name="btnReduce10" src="../App_Themes/AgencyV2/Images/b_sub.jpg"/></a><a class="imaLink img" href="javascript:IncreasePT('listS99Hdp',10)"><img class="hand" hspace="1" id="btnIncrease10" name="btnIncrease10" src="../App_Themes/AgencyV2/Images/b_add.jpg"/></a></td><td><select id="listS99OU" name="listS99OU"onChange="SelectOnChange('listS99OU');" ><option selected='true' value='0.7'>0.7</option><option value='0.69'>0.69</option><option value='0.68'>0.68</option><option value='0.67'>0?67</option><option value='0.66'>0.66</option><option value='0.65'>0.65</option><option value='0.64'>0.64</option><option value='0.63'>0.63</option><option value='0.62'>0.62</option><option value='0.61'>0.61</option><option value='0.6'>0.6</option><option value='0.59'>0.59</option>
<option value='0.58'>0.58</option><option value='0.57'>0.57</option><option value='0.56'>0.56</option><option value='0.55'>0.55</option><option value='0.54'>0.54</option><option value='0.53'>0.53</option><option value='0.52'>0.52</option><option value='0.51'>0.51</option><option value='0.5'>0.5</option><option value='0.49'>0.49</option><option value='0.48'>0.48</option><option value='0.47'>0.47</option><option value='0.46'>0.46</option><option value='0.45'>0.45</option><option value='0.44'>0.44</option><option value='0.43'>0.43</option><option value='0.42'>0.42</option><option value='0.41'>0.41</option><option value='0.4'>0.4</option><option value='0.39'>0.39</option><option value='0.38'>0.38</option><option value='0.37'>0.37</option><option value='0.36'>0.36</option><option value='0.35'>0.35</option><option value='0.34'>0.34</option><option value='0.33'>0.33</option><option value='0.32'>0.32</option><option value='0.31'>0.31</option><option value='0.3'>0.3</option><option value='0.29'>0.29</option><option value='0.28'>0.28</option><option value='0.27'>0.27</option><option value='0.26'>0.26</option><option value='0.25'>0.25</option><option value='0.24'>0.24</option><option value='0.23'>0.23</option><option value='0.22'>0.22</option><option value='0.21'>0.21</option><option value='0.2'>0.2</option><option value='0.19'>0.19</option><option value='0.18'>0.18</option><option value='0.17'>0.17</option><option value='0.16'>0.16</option><option value='0.15'>0.15</option><option value='0.14'>0.14</option><option value='0.13'>0.13</option><option value='0.12'>0.12</option><option value='0.11'>0.11</option><option value='0.1'>0.1</option><option value='0.09'>0.09</option><option value='0.08'>0.08</option><option value='0.07'>0.07</option><option value='0.06'>0.06</option><option value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value='0.01'>0.01</option><option value='0'>0</option></select></td><td><select id="listS99OE" name="listS99OE"onChange="SelectOnChange('listS99OE');" ><option selected='true' value='0.7'>0.7</option><option value='0.69'>0.69</option><option value='0.68'>0.68</option><option value='0.67'>0.67</option>
<option value='0.66'>0.66</option><option value='0.65'>0.65</option><option value='0.64'>0.64</option><option value='0.63'>0.63</option><option value='0.62'>0.62</option><option value='0.61'>0.61</option><option value='0.6'>0.6</option><option value='0.59'>0.59</option><option value='0.58'>0.58</option><option value='0.57'>0.57</option><option value='0.56'>0.56</option><option value='0.55'>0.55</option><option value='0.54'>0.54</option><option value='0.53'>0.53</option><option value='0.52'>0.52</option><option value='0.51'>0.51</option><option value='0.5'>0.5</option><option value='0.49'>0.49</option><option value='0.48'>0.48</option><option value='0.47'>0.47</option><option value='0.46'>0.46</option><option value='0.45'>0.45</option><option value='0.44'>0.44</option><option value='0.43'>0.43</option><option value='0.42'>0.42</option><option value='0.41'>0.41</option><option value='0.4'>0.4</option><option value='0.39'>0.39</option><option value='0.38'>0.38</option><option value='0.37'>0.37</option><option value='0.36'>0.36</option><option value='0.35'>0.35</option><option value='0.34'>0.34</option><option value='0.33'>0.33</option><option value='0.32'>0.32</option><option value='0.31'>0.31</option><option value='0.3'>0.3</option><option value='0.29'>0.29</option><option value='0.28'>0.28</option><option value='0.27'>0.27</option><option value='0.26'>0.26</option><option value='0.25'>0.25</option><option value='0.24'>0.24</option><option value='0.23'>0.23</option><option value='0.22'>0.22</option><option value='0.21'>0.21</option><option value='0.2?>0.2</option><option value='0.19'>0.19</option><option value='0.18'>0.18</option><option value='0.17'>0.17</option><option value='0.16'>0.16</option>
<option value='0.15'>0.15</option><option value='0.14'>0.14</option><option value='0.13'>0.13</option><option value='0.12'>0.12</option><option value='0.11'>0.11</option><option value='0.1'>0.1</option><option value='0.09'>0.09</option><option value='0.08'>0.08</option><option value='0.07'>0.07</option><option value='0.06'>0.06</option><option value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value='0.01'>0.01</option><option value='0'>0</option></select></td><td><select id="listS99ML" name="listS99ML"onChange="SelectOnChange('listS99ML');" ><option selected='true' value='0.7'>0.7</option><option value='0.69'>0.69</option><option value='0.68'>0.68</option><option value='0.67'>0.67</option><option value='0.66'>0.66</option><option value='0.65'>0.65</option><option value='0.64'>0.64</option><option value='0.63'>0.63</option><option value='0.62'>0.62</option><option value='0.61'>0.61</option><option value='0.6'>0.6</option><option value='0.59'>0.59</option><option value='0.58'>0.58</option><option value='0.57'>0.57</option><option value='0.56'>0.56</option><option value='0.55'>0.55</option><option value='0.54'>0.54</option><option value='0.53'>0.53</option><option value='0.52'>0.52</option><option value='0.51'>0.51</option><option value='0.5'>0.5</option><option value='0.49'>0.49</option><option value='0.48'>0.48</option><option value='0.47'>0.47</option><option value='0.46'>0.46</option><option value='0.45'>0.45</option><option value='0.44'>0.44</option><option value='0.43'>0.43</option><option value='0.42'>0.42</option><option value='0.41'>0.41</option><option value='0.4'>0.4</option><option value='0.39'>0.39</option><option value='0.38'>0.38</option><option value='0.37'>0.37</option><option value='0.36'>0.36</option><option value='0.35'>0.35</option><option value='0.34'>0.34</option><option value='0.33'>0.33</option><option value='0.32'>0.32</option>
<option value='0.31'>0.31</option><option value='0.3'>0.3</option><option value='0.29'>0.29</option><option value='0.28'>0.28</option><option value='0.27'>0.27</option><option value='0.26'>0.26</option><option value='0.25'>0.25</option><option value='0.24'>0.24</option><option value='0.23'>0.23</option><option value='0.22'>0.22</option><option value='0.21'>0.21</option><option value='0.2'>0.2</option><option value='0.19'>0.19</option><option value='0.18'>0.18</option><option value='0.17'>0.17</option><option value='0.16'>0.16</option><option value='0.15'>0.15</option><option value='0.14'>0.14</option><option value='0.13'>0.13</option><option value='0.12'>0.12</option><option value='0.11'>0.11</option><option value='0.1'>0.1</option><option value='0.09'>0.09</option><option value='0.08'>0.08</option><option value='0.07'>0.07</option><option value='0.06'>0.06</option><option value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value='0.01'>0.01</option><option value='0'>0</option></select></td></tr><tr class="bg_eb {hdauto}"><td rowspan="2" class="r">Auto Super Preset</td><td><input type="checkbox" onclick="CheckAutoPreset(this)" id="chkAuto99Hdp" name="chkAuto99Hdp"  /></td>
<td><input type="checkbox" onclick="CheckAutoPreset(this,'chkCopy99Hdp')" id="chkAuto99OU" name="chkAuto99OU"  /></td><td><input type="checkbox" onclick="CheckAutoPreset(this,'chkCopy99Hdp')" id="chkAuto99OE" name="chkAuto99OE"  /></td><td><input type="checkbox" onclick="CheckAutoPreset(this,'chkCopy99Hdp')" id="chkAuto99ML" name="chkAuto99ML"  /></td></tr><tr class="bg_eb {hdauto}"><td><select id="autoS99Hdp" name="autoS99Hdp" disabled onChange="SelectOnChange('autoS99Hdp');"><option value='0.7'>0.7</option><option value='0.69'>0.69</option><option value='0.68'>0.68</option><option value='0.67'>0.67</option><option value='0.66'>0.66</option><option value='0.65'>0.65</option><option value='0.?4'>0.64</option><option value='0.63'>0.63</option><option value='0.62'>0.62</option><option value='0.61'>0.61</option><option value='0.6'>0.6</option><option value='0.59'>0.59</option><option value='0.58'>0.58</option><option value='0.57'>0.57</option><option value='0.56'>0.56</option><option value='0.55'>0.55</option><option value='0.54'>0.54</option><option value='0.53'>0.53</option><option value='0.52'>0.52</option><option value='0.51'>0.51</option><option value='0.5'>0.5</option><option value='0.49'>0.49</option><option value='0.48'>0.48</option><option value='0.47'>0.47</option><option value='0.46'>0.46</option><option value='0.45'>0.45</option><option value='0.44'>0.44</option><option value='0.43'>0.43</option><option value='0.42'>0.42</option><option value='0.41'>0.41</option><option value='0.4'>0.4</option><option value='0.39'>0.39</option><option value='0.38'>0.38</option><option value='0.37'>0.37</option><option value='0.36'>0.36</option><option value='0.35'>0.35</option><option value='0.34'>0.34</option><option value='0.33'>0.33</option><option value='0.32'>0.32</option><option value='0.31'>0.31</option><option value='0.3'>0.3</option><option value='0.29'>0.29</option><option value='0.28'>0.28</option><option value='0.27'>0.27</option><option value='0.26'>0.26</option>
<option value='0.25'>0.25</option><option value='0.24'>0.24</option><option value='0.23'>0.23</option><option value='0.22'>0.22</option><option value='0.21'>0.21</option><option value='0.2'>0.2</option><option value='0.19'>0.19</option><option value='0.18'>0.18</option><option value='0.17'>0.17</option><option value='0.16'>0.16</option><option value='0.15'>0.15</option><option value='0.14'>0.14</option><option value='0.13'>0.13</option><option value='0.12'>0.12</option><option value='0.11'>0.11</option><option value='0.1'>0.1</option><option value='0.09'>0.09</option><option value='0.08'>0.08</option><option value='0.07'>0.07</option><option value='0.06'>0.06</option><option value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value='0.01'>0.01</option><option selected='true' value='0'>0</option></select><a class="imaLink img" href="javascript:ReducePT('autoS99Hdp',1)"><img class="hand" hspace="1" id="btnReduce1" name="btnReduce1" src="../App_Themes/AgencyV2/Images/b_down.jpg" /></a><a class="imaLink img" href="javascript:IncreasePT('autoS99Hdp',1)"><img class="hand" hspace="1" id="btnIncrease1" name="btnIncrease1" src="../App_Themes/AgencyV2/Images/b_up.jpg"/></a><a class="imaLink img" href="javascript:ReducePT('autoS99Hdp',10)"><img class="hand" hspace="1" id="btnReduce10" name="btnReduce10" src="../App_Themes/AgencyV2/Images/b_sub.jpg"/>
</a><a class="imaLink img" href="javascript:IncreasePT('autoS99Hdp',10)"><img class="hand" hspace="1" id="btnIncrease10" name="btnIncrease10" src="../App_Themes/AgencyV2/Images/b_add.jpg"/></a></td><td><select id="autoS99OU" name="autoS99OU" disabled onChange="SelectOnChange('autoS99OU');"><option value='0.7'>0.7</option><option value='0.69'>0.69</option><option value='0.68'>0.68</option><option value='0.67'>0.67</option><option value='0.66'>0.66</option><option value='0.65'>0.65</option><option value='0.64'>0.64</option><option value='0.63'>0.63</option><option value='0.62'>0.62</option><option value='0.61'>0.61</option><option value='0.6'>0.6</option><option value='0.59'>0.59</option><option value='0.58'>0.58</option><option value='0.57'>0.57</option><option value='0.56'>0.56</option><option value='0.55'>0.55</option><option value='0.54'>0.54</option><option value='0.53'>0.53</option><option value='0.52'>0.52</option><option value='0.51'>0.51</option><option value='0.5'>0.5</option><option value='0.49'>0.49</option><option value='0.48'>0.48</option><option value='0.47'>0.47</option><option value='0.46'>0.46</option><option value='0.45'>0.45</option><option value='0.44'>0.44</option><option value='0.43'>0.43</option><option value='0.42'>0.42</option><option value='0.41'>0.41</option><option value='0.4'>0.4</option><option val?e='0.39'>0.39</option><option value='0.38'>0.38</option><option value='0.37'>0.37</option>
<option value='0.36'>0.36</option><option value='0.35'>0.35</option><option value='0.34'>0.34</option><option value='0.33'>0.33</option><option value='0.32'>0.32</option><option value='0.31'>0.31</option><option value='0.3'>0.3</option><option value='0.29'>0.29</option><option value='0.28'>0.28</option><option value='0.27'>0.27</option><option value='0.26'>0.26</option><option value='0.25'>0.25</option><option value='0.24'>0.24</option><option value='0.23'>0.23</option><option value='0.22'>0.22</option><option value='0.21'>0.21</option><option value='0.2'>0.2</option><option value='0.19'>0.19</option><option value='0.18'>0.18</option><option value='0.17'>0.17</option><option value='0.16'>0.16</option><option value='0.15'>0.15</option><option value='0.14'>0.14</option><option value='0.13'>0.13</option><option value='0.12'>0.12</option><option value='0.11'>0.11</option><option value='0.1'>0.1</option><option value='0.09'>0.09</option><option value='0.08'>0.08</option><option value='0.07'>0.07</option><option value='0.06'>0.06</option><option value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value='0.01'>0.01</option><option selected='true' value='0'>0</option></select></td><td><select id="autoS99OE" name="autoS99OE" disabled onChange="SelectOnChange('autoS99OE');"><option value='0.7'>0.7</option><option value='0.69'>0.69</option><option value='0.68'>0.68</option><option value='0.67'>0.67</option><option value='0.66'>0.66</option><option value='0.65'>0.65</option><option value='0.64'>0.64</option><option value='0.63'>0.63</option><option value='0.62'>0.62</option><option value='0.61'>0.61</option><option value='0.6'>0.6</option><option value='0.59'>0.59</option><option value='0.58'>0.58</option><option value='0.57'>0.57</option><option value='0.56'>0.56</option><option value='0.55'>0.55</option><option value='0.54'>0.54</option><option value='0.53'>0.53</option><option value='0.52'>0.52</option>
<option value='0.51'>0.51</option><option value='0.5'>0.5</option><option value='0.49'>0.49</option><option value='0.48'>0.48</option><option value='0.47'>0.47</option><option value='0.46'>0.46</option><option value='0.45'>0.45</option><option value='0.44'>0.44</option><option value='0.43'>0.43</option><option value='0.42'>0.42</option><option value='0.41'>0.41</option><option value='0.4'>0.4</option><option value='0.39'>0.39</option><option value='0.38'>0.38</option><option value='0.37'>0.37</option><option value='0.36'>0.36</option><option value='0.35'>0.35</option><option value='0.34'>0.34</option><option value='0.33'>0.33</option><option value='0.32'>0.32</option><option value='0.31'>0.31</option><option value='0.3'>0.3</option><option value='0.29'>0.29</option><option value='0.28'>0.28</option><option value='0.27'>0.27</option><option value='0.26'>0.26</option><option value='0.25'>0.25</option><option value='0.24'>0.24</option><option value='0.23'>0.23</option><option value='0.22'>0.22</option><option value='0.21'>0.21</option><option value='0.2'>0.2</option><option value='0.19'>0.19</option><option value='0.18'>0.18</option><option value='0.17'>0.17</option><option value='0.16'>0.16</option>
<option value='0.15'>0.15</option><option value='0.14'>0.14</option><option value='0.13'>0.13</option><option value='0.12'>0.12</option><option value='0.11'>0.11</option><option value='0.1'>0.1</option><option value='0.09'>0.09</option><option value='0.08'>0.08</option><option value='0.07'>0.07</option><option value='0.06'>0.06</option><option value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value='0.01'>0.01</option><option selected='true' value='0'>0</option></select></td><td><select id="autoS99ML" name="autoS99ML" disabled onChange="SelectOnChange('autoS99ML');"><option value='0.7'>0.7</option><option value='0.69'>0.69</option><option value='0.68'>0.68</option><option value='0.?7'>0.67</option><option value='0.66'>0.66</option><option value='0.65'>0.65</option><option value='0.64'>0.64</option><option value='0.63'>0.63</option><option value='0.62'>0.62</option><option value='0.61'>0.61</option><option value='0.6'>0.6</option><option value='0.59'>0.59</option><option value='0.58'>0.58</option><option value='0.57'>0.57</option><option value='0.56'>0.56</option><option value='0.55'>0.55</option><option value='0.54'>0.54</option><option value='0.53'>0.53</option><option value='0.52'>0.52</option><option value='0.51'>0.51</option><option value='0.5'>0.5</option><option value='0.49'>0.49</option><option value='0.48'>0.48</option><option value='0.47'>0.47</option><option value='0.46'>0.46</option><option value='0.45'>0.45</option><option value='0.44'>0.44</option><option value='0.43'>0.43</option><option value='0.42'>0.42</option><option value='0.41'>0.41</option><option value='0.4'>0.4</option><option value='0.39'>0.39</option><option value='0.38'>0.38</option><option value='0.37'>0.37</option>
<option value='0.36'>0.36</option><option value='0.35'>0.35</option><option value='0.34'>0.34</option><option value='0.33'>0.33</option><option value='0.32'>0.32</option><option value='0.31'>0.31</option><option value='0.3'>0.3</option><option value='0.29'>0.29</option><option value='0.28'>0.28</option><option value='0.27'>0.27</option><option value='0.26'>0.26</option><option value='0.25'>0.25</option><option value='0.24'>0.24</option><option value='0.23'>0.23</option><option value='0.22'>0.22</option><option value='0.21'>0.21</option><option value='0.2'>0.2</option><option value='0.19'>0.19</option><option value='0.18'>0.18</option><option value='0.17'>0.17</option><option value='0.16'>0.16</option><option value='0.15'>0.15</option><option value='0.14'>0.14</option><option value='0.13'>0.13</option><option value='0.12'>0.12</option><option value='0.11'>0.11</option><option value='0.1'>0.1</option><option value='0.09'>0.09</option><option value='0.08'>0.08</option><option value='0.07'>0.07</option><option value='0.06'>0.06</option><option value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value='0.01'>0.01</option><option selected='true' value='0'>0</option></select></td></tr></table></div></td></tr></table></div></div><div><div class="l" valign="top"><div class="b_add" style="min-width:64px"><li><a id="btnAdd" onclick="BtnOnClick();" href="javascript:;"><span>Add</span></a></li></div></div></div><input id="hidSynCS" name="hidSynCS" type="hidden" value="{hidSynCS}" /><br /><br /><br /><br /><br /><br /><br /><br />
<br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><script type="text/javascript" src="../Js/wz_tooltip/wz_tooltip.js"></script><script type="text/javascript" src="../Js/wz_tooltip/tip_centerwindow.js"></script><script type="text/javascript" src="../Js/wz_tooltip/tip_balloon.js">function autoS1OR_onclick() {

}

</script><input type="hidden" id="maxMS1HdpD" name="maxMS1HdpD" value="0.7" /><input type="hidden" id="maxMS1OE" name="maxMS1OE" value="0.7" /><input type="hidden" id="minMS1MP" name="minMS1MP" value="0" /><input type="hidden" id="maxM1MP" name="maxM1MP" value="0.7" /><input type="hidden" id="maxM11stHdpD" name="maxM11stHdpD" value="0.7" /><input type="hidden" id="maxM1HdpD" name="maxM1HdpD" value="0.7" /><input type="hidden" id="maxMS11stHdpD" name="maxMS11stHdpD" value="0.7" /><input type="hidden" id="maxMS1MP" name="maxMS1MP" value="0.7" /><input type="hidden" id="minMS1OUD" name="minMS1OUD" value="0" /><input type="hidden" id="maxMS11x2" name="maxMS11x2" value="0.7" /><input type="hidden" id="maxMS1OUD" name="maxMS1OUD" value="0.7" /><input type="hidden" id="maxMS11stHdpL" name="maxMS11stHdpL" value="0.7" /><input type="hidden" id="maxMS1TG" name="maxMS1TG" value="0.7" /><input type="hidden" id="minMS1OR" name="minMS1OR" value="0" /><input type="hidden" id="maxM1TG" name="maxM1TG" value="0.7" /><input type="hidden" id="m?xMS1CS" name="maxMS1CS" value="0.7" /><input type="hidden" id="maxM1OUL" name="maxM1OUL" value="0.7" /><input type="hidden" id="minMS1TG" name="minMS1TG" value="0" />
<input type="hidden" id="minMS1CS" name="minMS1CS" value="0" /><input type="hidden" id="maxM11x2" name="maxM11x2" value="0.7" /><input type="hidden" id="minMS1OUL" name="minMS1OUL" value="0" /><input type="hidden" id="minMS11x2" name="minMS11x2" value="0" /><input type="hidden" id="maxM1OR" name="maxM1OR" value="0.7" /><input type="hidden" id="minMS11stOUL" name="minMS11stOUL" value="0" /><input type="hidden" id="maxMS1OR" name="maxMS1OR" value="0.7" /><input type="hidden" id="maxM1OUD" name="maxM1OUD" value="0.7" /><input type="hidden" id="maxM1HdpL" name="maxM1HdpL" value="0.7" /><input type="hidden" id="minMS1HdpD" name="minMS1HdpD" value="0" /><input type="hidden" id="minMS11stHdpL" name="minMS11stHdpL" value="0" /><input type="hidden" id="maxMS11stOUD" name="maxMS11stOUD" value="0.7" /><input type="hidden" id="maxM11stOUL" name="maxM11stOUL" value="0.7" /><input type="hidden" id="maxM1OE" name="maxM1OE" value="0.7" /><input type="hidden" id="minMS11stHdpD" name="minMS11stHdpD" value="0" /><input type="hidden" id="minMS1OE" name="minMS1OE" value="0" /><input type="hidden" id="maxMS1OUL" name="maxMS1OUL" value="0.7" /><input type="hidden" id="minMS1HdpL" name="minMS1HdpL" value="0" /><input type="hidden" id="minMS11stOUD" name="minMS11stOUD" value="0" /><input type="hidden" id="maxMS11stOUL" name="maxMS11stOUL" value="0.7" /><input type="hidden" id="maxM1CS" name="maxM1CS" value="0.7" /><input type="hidden" id="maxM11stHdpL" name="maxM11stHdpL" value="0.7" /><input type="hidden" id="maxMS1HdpL" name="maxMS1HdpL" value="0.7" /><input type="hidden" id="maxM11stOUD" name="maxM11stOUD" value="0.7" /><input type="hidden" id="minMS2Hdp" name="minMS2Hdp" value="0" /><input type="hidden" id="maxMS2MP" name="maxMS2MP" value="0.7" /><input type="hidden" id="minMS2MP" name="minMS2MP" value="0" /><input type="hidden" id="maxM2OE" name="maxM2OE" value="0.7" /><input type="hidden" id="maxMS2Hdp" name="maxMS2Hdp" value="0.7" /><input type="hidden" id="maxM2MP" name="maxM2MP" value="0.7" />
<input type="hidden" id="maxM2OU" name="maxM2OU" value="0.7" /><input type="hidden" id="maxMS2OE" name="maxMS2OE" value="0.7" /><input type="hidden" id="minMS2OE" name="minMS2OE" value="0" /><input type="hidden" id="maxMS2ML" name="maxMS2ML" value="0.7" /><input type="hidden" id="maxM2Hdp" name="maxM2Hdp" value="0.7" /><input type="hidden" id="maxMS2OU" name="maxMS2OU" value="0.7" /><input type="hidden" id="minMS2OU" name="minMS2OU" value="0" /><input type="hidden" id="minMS2ML" name="minMS2ML" value="0" /><input type="hidden" id="maxM2ML" name="maxM2ML" value="0.7" /><input type="hidden" id="maxM3Hdp" name="maxM3Hdp" value="0.7" /><input type="hidden" id="maxMS3Hdp" name="maxMS3Hdp" value="0.7" /><input type="hidden" id="maxMS3OU" name="maxMS3OU" value="0.7" /><input type="hidden" id="minMS3OU" name="minMS3OU" value="0" /><input type="hidden" id="minMS3ML" name="minMS3ML" value="0" /><input type="hidden" id="maxM3ML" name="maxM3ML" value="0.7" /><input type="hidden" id="minMS3Hdp" name="minMS3Hdp" value="0" /><input type="hidden" id="maxM3OE" name="maxM3OE" value="0.7" /><input type="hidden" id="maxM3OU" name="maxM3OU" value="0.7" /><input type="hidden" id="maxMS3OE" name="maxMS3OE" value="0.7" /><input type="hidden" id="minMS3OE" name="minMS3OE" value="0" /><input type="hidden" id="maxMS3ML" name="maxMS3ML" value="0.7" /><input type="hidden" id="maxMS5OE" name="maxMS5OE" value="0.7" />
<input type="hidden" id="minMS5OE" name="minMS5OE" value="0" /><input type="hidden" id="maxMS5ML" name="maxMS5ML" value="0.7" /><input type="hidden" id="maxM5OE" name="maxM5OE" value="0.7" /><input type="hidden" id="maxMS5OU" name="maxMS5OU" value="0.7" /><input type="hidden" id="minMS5OU" name="minMS5OU" value="0" /><input type="hidden" id="maxMS5Hdp" name="maxMS5Hdp" value="0.7" /><input type="hidden" id="maxM5ML" name="maxM5ML" value="0.7" /><input type="hidden" id="maxM5OU" name="maxM5OU" value="?.7" /><input type="hidden" id="minMS5Hdp" name="minMS5Hdp" value="0" /><input type="hidden" id="maxM5Hdp" name="maxM5Hdp" value="0.7" /><input type="hidden" id="minMS5ML" name="minMS5ML" value="0" /><input type="hidden" id="minMS8Hdp" name="minMS8Hdp" value="0" /><input type="hidden" id="maxM8OU" name="maxM8OU" value="0.7" /><input type="hidden" id="maxMS8Hdp" name="maxMS8Hdp" value="0.7" /><input type="hidden" id="minMS8OU" name="minMS8OU" value="0" /><input type="hidden" id="minMS8ML" name="minMS8ML" value="0" /><input type="hidden" id="maxM8ML" name="maxM8ML" value="0.7" /><input type="hidden" id="maxMS8OU" name="maxMS8OU" value="0.7" /><input type="hidden" id="maxM8Hdp" name="maxM8Hdp" value="0.7" /><input type="hidden" id="maxMS8ML" name="maxMS8ML" value="0.7" /><input type="hidden" id="maxMS10OE" name="maxMS10OE" value="0.7" /><input type="hidden" id="maxM10OU" name="maxM10OU" value="0.7" />
<input type="hidden" id="minMS10OU" name="minMS10OU" value="0" /><input type="hidden" id="minMS10ML" name="minMS10ML" value="0" /><input type="hidden" id="maxM10Hdp" name="maxM10Hdp" value="0.7" /><input type="hidden" id="maxMS10OU" name="maxMS10OU" value="0.7" /><input type="hidden" id="maxMS10ML" name="maxMS10ML" value="0.7" /><input type="hidden" id="minMS10Hdp" name="minMS10Hdp" value="0" /><input type="hidden" id="minMS10OE" name="minMS10OE" value="0" /><input type="hidden" id="maxM10ML" name="maxM10ML" value="0.7" /><input type="hidden" id="maxM10OE" name="maxM10OE" value="0.7" /><input type="hidden" id="maxMS10Hdp" name="maxMS10Hdp" value="0.7" /><input type="hidden" id="minMS11ML" name="minMS11ML" value="0" /><input type="hidden" id="maxM11Hdp" name="maxM11Hdp" value="0.7" /><input type="hidden" id="minMS11Hdp" name="minMS11Hdp" value="0" /><input type="hidden" id="maxM11ML" name="maxM11ML" value="0.7" /><input type="hidden" id="maxMS11Hdp" name="maxMS11Hdp" value="0.7" /><input type="hidden" id="maxMS11ML" name="maxMS11ML" value="0.7" /><input type="hidden" id="maxMS99OU" name="maxMS99OU" value="0.7" /><input type="hidden" id="minMS99OU" name="minMS99OU" value="0" /><input type="hidden" id="maxM99OU" name="maxM99OU" value="0.7" /><input type="hidden" id="maxMS99Hdp" name="maxMS99Hdp" value="0.7" /><input type="hidden" id="maxM99Hdp" name="maxM99Hdp" value="0.7" /><input type="hidden" id="minMS99ML" name="minMS99ML" value="0" /><input type="hidden" id="maxM99ML" name="maxM99ML" value="0.7" /><input type="hidden" id="maxMS99OE" name="maxMS99OE" value="0.7" /><input type="hidden" id="maxMS99ML" name="maxMS99ML" value="0.7" /><input type="hidden" id="minMS99OE" name="minMS99OE" value="0" /><input type="hidden" id="minMS99Hdp" name="minMS99Hdp" value="0" /><input type="hidden" id="maxM99OE" name="maxM99OE" value="0.7" />
    

    </form>
</body>
</html>
