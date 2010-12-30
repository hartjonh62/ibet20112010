﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EditMaster.aspx.cs" Inherits="UserSuper_EditMaster" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void ddlAutoS1HdpD0_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml" >
	<head>
		<title></title>
		<link href="../App_Themes/AgencyV2/newagent.css" type="text/css" rel="Stylesheet" />  
		<link href="../App_Themes/AgencyV2/popup.css" type="text/css" rel="Stylesheet" />  
		
		<style type="text/css">.right { TEXT-ALIGN: right }
	        SPAN.mp { FONT-WEIGHT: bold; FONT-SIZE: 8pt; COLOR: #ffffff }
	        table.tblRpt tr{height:21px;}
		</style>
		
        <script type="text/javascript" src="../Js/opt/Core.js?v=20091218"></script>

        <script type="text/javascript" src="../Js/Common.js?v=20091218"></script>
		<script type="text/javascript" src="../Js/Customer.js?v=20091218"></script>	
		<script type="text/javascript" src="../Js/MasterEditMember.js?v=20091218"></script>
		<script type="text/javascript">
			var flag=false;
			function BtnOnClick()
			{								
				$("btnSubmit").disabled=true;
				$("btnSubmit").style.color="#cccccc";				
				if(!flag)
				{	
					flag=true;			
					DelayReloadPage(null, 300000);
					enabledBtn(false);
					document.form.submit();
				}
			}
		</script>
	</head>
	<body onload="GetCustID();">
	    
		<iframe name="frUpdate" id="frUpdate" style="DISPLAY:none"></iframe>

		<input type="hidden" id="hidEdit" name="hidEdit" value="1"/>		
		<form id="form" runat="server">
			<input name="isMult" type="hidden" id="isMult" value="0" /> 
			<input name="saveCustid" type="hidden" id="saveCustid" value="1121917" />
			<input name="saveUsername" type="hidden" id="saveUsername" /> 
			<input name="saveAgentid" type="hidden" id="saveAgentid" value="1121897" />
			<div style="margin-left:5px; margin-top:0px;"><div id="header_popup"><asp:Label ID="lblEdit" runat="server" Text="Edit SM0101001"></asp:Label></div><div style="width:80%"><table border="0" align="center" cellpadding="0" cellspacing="0" width="100%" id="diverr"style="display: none;"><tr><td id="1_1" class="emsg_1_1">&nbsp;</td><td id="1_2" class="emsg_1_2">&nbsp;</td><td id="1_3" class="emsg_1_3">&nbsp;</td></tr><tr><td id="2_1" valign="top" class="emsg_2_1">&nbsp;</td><td valign="top" id="err" class="Enrich"></td><td id="2_2" class="emsg_2_2">&nbsp;</td></tr><tr><td id="3_1" class="emsg_3_1">&nbsp;</td><td id="3_2" class="emsg_3_2">&nbsp;</td><td id="3_3" class="emsg_3_3">&nbsp;</td></tr></table></div><div class="sptPT" style="width: 80%"><table width="100%" border="1" class="tblRpt"><tr><td colspan="6" class="l" style=""><div class="b_add"><li><asp:LinkButton ID="LinkSubmit" runat="server" OnClientClick="BtnOnClick();"><span>Submit</span></asp:LinkButton></li></div></td></tr><tr class="bg_eb"><td width="16%" class="r">User Name</td><td width="16%">SM0101001</td><td width="16%" class="r">First Name</td><td width="16%">hau</td><td width="16%" class="r">Last Name</td><td width="16%"></td></tr><tr class="bg_eb"><td class="r">Phone</td><td></td><td class="r">Mobile Phone</td><td></td><td class="r">Fax</td><td></td></tr><tr class="bg_eb"><td class="c" >Close<asp:CheckBox ID="chkClosed" runat="server" /></td><td>Suspended  
                        <asp:CheckBox ID="chkSuspended" runat="server" /><input type="hidden" id="IsSuspended" name="IsSuspended" value="0" /><input type="hidden" id="UplineSuspended" name="UplineSuspended" value="0" /></td><td class="r">Credit</td><td>4,000</td><td class="r">Group</td><td>a</td></tr></table></div><div class="sptPT" style="width: 80%"><table width="100%" border="1" class="tblRpt"><tr class="tblTitleCenter2"><td colspan="4">Commission</td></tr><tr class="bg_eb"><td class="r" width="34%">Comm for Master <u>Asian HDP, OU, OE </u></td><td width="16%">0.0025</td><td class="r" width="34%">Comm for Master <u>Other Bettypes </u></td><td width="16%">0.01</td></tr><tr class="bg_eb"><td class="r" width="34%">Comm for Agent <u>Asian HDP, OU, OE </u></td><td width="16%">0.0025</td><td class="r" width="34%">Comm for Agent <u>Other Bettypes </u></td><td width="16%">0.0025</td></tr><tr class="bg_eb"><td class="r">Comm for Member <u>Asian HDP, OU, OE </u></td><td>0</td><td class="r">Comm for Member <u>Other Bettypes </u></td><td>0</td></tr><tr><td class="r" width="34%">Comm for Master <u>1 X 2 </u></td><td width="16%">0.0025</td><td class="r" width="34%"></td><td width="16%"></td></tr><tr><td class="r" width="34%">Comm for Agent <u>1 X 2 </u></td><td width="16%">0.0025</td><td class="r" width="34%"></td><td width="16%"></td></tr><tr><td class="r">Comm for Member <u>1 X 2 </u></td><td>0</td><td class="r"></td><td></td></tr></table></div><div class="sptPT" style="width: 80%"><table width="100%" border="1" class="tblRpt"><tr class="tblTitleCenter2"><td width="14%"></td><td width="12%">Min Bet</td><td width="12%">Max Bet</td><td width="12%">Max Per Match</td><td width="14%"></td><td width="12%">Min Bet</td><td width="12%">Max Bet</td><td width="12%">Max Per Match</td></tr><tr class="bg_eb"><td class="r">Soccer</td><td>10</td><td>1,000</td><td>2,000</td><td class="r">Golf</td><td>5</td><td>10,000</td><td>20,000</td></tr><tr class="bg_eb"><td class="r">Basketball</td><td>5</td><td>10,000</td><td>20,000</td><td class="r">Motor Sports</td><td>5</td><td>10,000</td><td>20,000</td></tr><tr class="bg_eb"><td class="r">Football</td><td>5</td><td>10,000</td><td>20,000</td><td class="r">Other Sports</td><td>5</td><td>10,000</td><td>20,000</td></tr><tr class="bg_eb"><td class="r">Tennis</td><td>5</td><td>10,000</td><td>20,000</td><td></td><td></td><td></td><td></td></tr><tr class="bg_eb"><td class="r">Baseball</td><td>5</td><td>10,000</td><td>20,000</td><td></td><td></td><td></td><td></td></tr></table></div></div><style type="text/css">div{clear:both;}</style><div class="{none-copy}"><div class="l">
                        <asp:CheckBox ID="chkCopyAll" onclick="CopyAllPT(this)" runat="server" />
                        
                        <b><span style="cursor: pointer;" onclick="$('chkCopyAll').click();">Copy all Position Taking from Soccer Handicap</span></b></div></div><br /><div class="l" id="linkSoccer" onclick="OpenPanelEdit('panelSoccer'); togglePTmenu('bullet1')"><div class="button_cont"><div class="menu_content"><ul><li><a id="bullet1" class="md2" href="#1">Soccer</a></li></ul></div></div></div><div id="panelSoccer"><div class="l"><table width="94%" class="sptPT"><tr><td><div id="divUpdPT1" name="divUpdPT1"><table border="1" class="tblRpt" width="100%"><tr class="bg_eb"><td colspan="2"></td><td>Handicap/Next Goal</td><td>Over/Under</td><td>1st Hdp</td><td>1st OU</td><td>Odd/Even</td><td>1 X 2</td><td>Correct Score</td><td>Total Goal</td><td>Mix Parlay</td><td>Outright</td></tr><tr class="bg_eb"><td rowspan="6">Dead ball</td><td class="r">Agent</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td></tr><tr class="bg_eb"><td class="r">Master</td><td>0.65</td><td>0.65</td><td>0.65</td><td>0.65</td><td>0.65</td><td>0.65</td><td>0.65</td><td>0.65</td><td>0.65</td><td>0.65</td></tr><tr class="bg_eb"><td class="r">Super</td><td>
                        
                            <asp:DropDownList ID="ddlListS1HdpD" runat="server">
                                <asp:ListItem Selected="True">0.05</asp:ListItem>
                                <asp:ListItem Value="0.04">0.04</asp:ListItem>
                             <asp:ListItem Value="0.03">0.03</asp:ListItem>
                              <asp:ListItem Value="0.02">0.02</asp:ListItem>
                               <asp:ListItem Value="0.01">0.01</asp:ListItem>
                                <asp:ListItem Value="0">0</asp:ListItem>
                            </asp:DropDownList>
                                                <a class="imaLink img" href="javascript:ReducePT('listS1HdpD',1)"><img class="hand" hspace="1" id="btnReduce1" name="btnReduce1" src="../App_Themes/AgencyV2/Images/b_down.jpg" /></a><a class="imaLink img" href="javascript:IncreasePT('listS1HdpD',1)"><img class="hand" hspace="1" id="btnIncrease1" name="btnIncrease1" src="../App_Themes/AgencyV2/Images/b_up.jpg"/></a><a class="imaLink img" href="javascript:ReducePT('listS1HdpD',10)"><img class="hand" hspace="1" id="btnReduce10" name="btnReduce10" src="../App_Themes/AgencyV2/Images/b_sub.jpg"/></a><a class="imaLink img" href="javascript:IncreasePT('listS1HdpD',10)"><img class="hand" hspace="1" id="btnIncrease10" name="btnIncrease10" src="../App_Themes/AgencyV2/Images/b_add.jpg"/></a></td><td>
                        
                            <asp:DropDownList ID="ddlListS1HdpD0" runat="server">
                                <asp:ListItem Selected="True">0.05</asp:ListItem>
                                <asp:ListItem Value="0.04">0.04</asp:ListItem>
                             <asp:ListItem Value="0.03">0.03</asp:ListItem>
                              <asp:ListItem Value="0.02">0.02</asp:ListItem>
                               <asp:ListItem Value="0.01">0.01</asp:ListItem>
                                <asp:ListItem Value="0">0</asp:ListItem>
                            </asp:DropDownList>
                                                </td><td>
                        <asp:DropDownList ID="ddLlistS11stHdpD1" runat="server">
                                <asp:ListItem Selected="True">0.05</asp:ListItem>
                                <asp:ListItem Value="0.04">0.04</asp:ListItem>
                             <asp:ListItem Value="0.03">0.03</asp:ListItem>
                              <asp:ListItem Value="0.02">0.02</asp:ListItem>
                               <asp:ListItem Value="0.01">0.01</asp:ListItem>
                                <asp:ListItem Value="0">0</asp:ListItem>
                            </asp:DropDownList>
                                                </td><td>
                        <asp:DropDownList ID="ddLlistS11stHdpD" runat="server">
                                <asp:ListItem Selected="True">0.05</asp:ListItem>
                                <asp:ListItem Value="0.04">0.04</asp:ListItem>
                             <asp:ListItem Value="0.03">0.03</asp:ListItem>
                              <asp:ListItem Value="0.02">0.02</asp:ListItem>
                               <asp:ListItem Value="0.01">0.01</asp:ListItem>
                                <asp:ListItem Value="0">0</asp:ListItem>
                            </asp:DropDownList>
                                                </td><td>
                        <asp:DropDownList ID="ddLlistS11stHdpD0" runat="server">
                                <asp:ListItem Selected="True">0.05</asp:ListItem>
                                <asp:ListItem Value="0.04">0.04</asp:ListItem>
                             <asp:ListItem Value="0.03">0.03</asp:ListItem>
                              <asp:ListItem Value="0.02">0.02</asp:ListItem>
                               <asp:ListItem Value="0.01">0.01</asp:ListItem>
                                <asp:ListItem Value="0">0</asp:ListItem>
                            </asp:DropDownList>
                                                </td><td>
                        <asp:DropDownList ID="ddlListS1OE" runat="server" Height="16px">
                                <asp:ListItem Selected="True">0.05</asp:ListItem>
                                <asp:ListItem Value="0.04">0.04</asp:ListItem>
                             <asp:ListItem Value="0.03">0.03</asp:ListItem>
                              <asp:ListItem Value="0.02">0.02</asp:ListItem>
                               <asp:ListItem Value="0.01">0.01</asp:ListItem>
                                <asp:ListItem Value="0">0</asp:ListItem>
                            </asp:DropDownList>
                                                    <a class="imaLink img" href="javascript:ReducePT('listS11x2',1)"><img class="hand" hspace="1" id="btnReduce1" name="btnReduce1" src="../App_Themes/AgencyV2/Images/b_down.jpg" /></a><a class="imaLink img" href="javascript:IncreasePT('listS11x2',1)"><img class="hand" hspace="1" id="btnIncrease1" name="btnIncrease1" src="../App_Themes/AgencyV2/Images/b_up.jpg"/></a><a class="imaLink img" href="javascript:ReducePT('listS11x2',10)"><img class="hand" hspace="1" id="btnReduce10" name="btnReduce10" src="../App_Themes/AgencyV2/Images/b_sub.jpg"/></a><a class="imaLink img" href="javascript:IncreasePT('listS11x2',10)"><img class="hand" hspace="1" id="btnIncrease10" name="btnIncrease10" src="../App_Themes/AgencyV2/Images/b_add.jpg"/></a></td><td>
                                        <asp:DropDownList ID="ddlListS1CS" runat="server">
                                            <asp:ListItem Selected="True">0.05</asp:ListItem>
                                            <asp:ListItem Value="0.04">0.04</asp:ListItem>
                                            <asp:ListItem Value="0.03">0.03</asp:ListItem>
                                            <asp:ListItem Value="0.02">0.02</asp:ListItem>
                                            <asp:ListItem Value="0.01">0.01</asp:ListItem>
                                            <asp:ListItem Value="0">0</asp:ListItem>
                                        </asp:DropDownList>
                                                </td><td>
                                                    <asp:DropDownList ID="ddlListS1TG" runat="server">
                                                        <asp:ListItem Selected="True">0.05</asp:ListItem>
                                                        <asp:ListItem Value="0.04">0.04</asp:ListItem>
                                                        <asp:ListItem Value="0.03">0.03</asp:ListItem>
                                                        <asp:ListItem Value="0.02">0.02</asp:ListItem>
                                                        <asp:ListItem Value="0.01">0.01</asp:ListItem>
                                                        <asp:ListItem Value="0">0</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td><td>
                                        <asp:DropDownList ID="ddlListS1MP" runat="server">
                                            <asp:ListItem Selected="True">0.05</asp:ListItem>
                                            <asp:ListItem Value="0.04">0.04</asp:ListItem>
                                            <asp:ListItem Value="0.03">0.03</asp:ListItem>
                                            <asp:ListItem Value="0.02">0.02</asp:ListItem>
                                            <asp:ListItem Value="0.01">0.01</asp:ListItem>
                                            <asp:ListItem Value="0">0</asp:ListItem>
                                        </asp:DropDownList>
                                                </td><td>
                                        <asp:DropDownList ID="ddlListS1OR" runat="server">
                                            <asp:ListItem Selected="True">0.05</asp:ListItem>
                                            <asp:ListItem Value="0.04">0.04</asp:ListItem>
                                            <asp:ListItem Value="0.03">0.03</asp:ListItem>
                                            <asp:ListItem Value="0.02">0.02</asp:ListItem>
                                            <asp:ListItem Value="0.01">0.01</asp:ListItem>
                                            <asp:ListItem Value="0">0</asp:ListItem>
                                        </asp:DropDownList>
                                                </td></tr><tr class="bg_eb {clssHidden}"><td rowspan="2" class="r">Super Auto</td><td>
                                        <asp:CheckBox ID="chkAuto1HdpD" onclick="CheckAutoPreset(this)" runat="server" />
                                            </td><td>
                                           <asp:CheckBox ID="chkAuto1OUD" onclick="CheckAutoPreset(this,'chkCopy1HdpDeadball')" runat="server" /></td><td>
                                                 <asp:CheckBox ID="chkAuto1HdpD1" onclick="CheckAutoPreset(this,'chkCopy1HdpDeadball')" runat="server" /></td><td>
                                          
                                            <asp:CheckBox ID="chkAuto11stHdpD" onclick="CheckAutoPreset(this,'chkCopy1HdpDeadball')" runat="server" />
                                            </td><td>
                                            <asp:CheckBox ID="chkAuto11stOUD" onclick="CheckAutoPreset(this,'chkCopy1HdpDeadball')" runat="server" />
                                            </td><td>
                                            <asp:CheckBox ID="chkAuto1OE" onclick="CheckAutoPreset(this,'chkCopy1HdpDeadball')" runat="server" />
                                            
                                            </td><td>
                                            <asp:CheckBox ID="chkAuto11x2" onclick="CheckAutoPreset(this)" runat="server" />
                                            </td><td>
                                            <asp:CheckBox ID="chkAuto1CS" runat="server" onclick="CheckAutoPreset(this,'chkCopy11x2')"/>
                                            </td><td>
                                            <asp:CheckBox ID="chkAuto1TG" onclick="CheckAutoPreset(this,'chkCopy11x2')" runat="server" />
                                            </td><td>
                                            <asp:CheckBox ID="chkAuto1MP" onclick="CheckAutoPreset(this,'chkCopy11x2')" runat="server" />
                                            &nbsp;</td></tr><tr class="bg_eb {clssHidden}"><td>
                                        <asp:DropDownList ID="ddlAutoS1HdpD" disabled runat="server">
                                            <asp:ListItem Value='0.7'>0.7</asp:ListItem>
                                            <asp:ListItem Value='0.69'>0.69</asp:ListItem>
                                            <asp:ListItem Value='0.68'>0.68</asp:ListItem>
                                            <asp:ListItem Value='0.67'>0.67</asp:ListItem>
                                            <asp:ListItem Value='0.66'>0.66</asp:ListItem>
                                            <asp:ListItem Value='0.65'>0.65</asp:ListItem>
                                            <asp:ListItem Value='0.64'>0.64</asp:ListItem>
                                            <asp:ListItem Value='0.63'>0.63</asp:ListItem>
                                            <asp:ListItem Value='0.62'>0.62</asp:ListItem>
                                            <asp:ListItem Value='0.61'>0.61</asp:ListItem>
                                            <asp:ListItem Value='0.6'>0.6</asp:ListItem>
                                            <asp:ListItem Value='0.59'>0.59</asp:ListItem>
                                            <asp:ListItem Value='0.58'>0.58</asp:ListItem>
                                            <asp:ListItem Value='0.57'>0.57</asp:ListItem>
                                            <asp:ListItem Value='0.56'>0.56</asp:ListItem>
                                            <asp:ListItem Value='0.55'>0.55</asp:ListItem>
                                            <asp:ListItem Value='0.54'>0.54</asp:ListItem>
                                            <asp:ListItem Value='0.53'>0.53</asp:ListItem>
                                            <asp:ListItem Value='0.52'>0.52</asp:ListItem>
                                            <asp:ListItem Value='0.51'>0.51</asp:ListItem>
                                            <asp:ListItem Value='0.5'>0.5</asp:ListItem>
                                            <asp:ListItem Value='0.49'>0.49</asp:ListItem>
                                            <asp:ListItem Value='0.48'>0.48</asp:ListItem>
                                            <asp:ListItem Value='0.47'>0.47</asp:ListItem>
                                            <asp:ListItem Value='0.46'>0.46</asp:ListItem>
                                            <asp:ListItem Value='0.45'>0.45</asp:ListItem>
                                            <asp:ListItem Value='0.44'>0.44</asp:ListItem>
                                            <asp:ListItem Value='0.43'>0.43</asp:ListItem>
                                            <asp:ListItem Value='0.42'>0.42</asp:ListItem>
                                            <asp:ListItem Value='0.41'>0.41</asp:ListItem>
                                            <asp:ListItem Value='0.4'>0.4</asp:ListItem>
                                            <asp:ListItem Value='0.39'>0.39</asp:ListItem>
                                            <asp:ListItem Value='0.38'>0.38</asp:ListItem>
                                            <asp:ListItem Value='0.37'>0.37</asp:ListItem>
                                            <asp:ListItem Value='0.36'>0.36</asp:ListItem>
                                            <asp:ListItem Value='0.35'>0.35</asp:ListItem>
                                            <asp:ListItem Value='0.34'>0.34</asp:ListItem>
                                            <asp:ListItem Value='0.33'>0.33</asp:ListItem>
                                            <asp:ListItem Value='0.32'>0.32</asp:ListItem>
                                            <asp:ListItem Value='0.31'>0.31</asp:ListItem>
                                            <asp:ListItem Value='0.3'>0.3</asp:ListItem>
                                            <asp:ListItem Value='0.29'>0.29</asp:ListItem>
                                            <asp:ListItem Value='0.28'>0.28</asp:ListItem>
                                            <asp:ListItem Value='0.27'>0.27</asp:ListItem>
                                            <asp:ListItem Value='0.26'>0.26</asp:ListItem>
                                            <asp:ListItem Value='0.25'>0.25</asp:ListItem>
                                            <asp:ListItem Value='0.24'>0.24</asp:ListItem>
                                            <asp:ListItem Value='0.23'>0.23</asp:ListItem>
                                            <asp:ListItem Value='0.22'>0.22</asp:ListItem>
                                            <asp:ListItem Value='0.21'>0.21</asp:ListItem>
                                            <asp:ListItem Value='0.2'>0.2</asp:ListItem>
                                            <asp:ListItem Value='0.19'>0.19</asp:ListItem>
                                            <asp:ListItem Value='0.18'>0.18</asp:ListItem>
                                            <asp:ListItem Value='0.17'>0.17</asp:ListItem>
                                            <asp:ListItem Value='0.16'>0.16</asp:ListItem>
                                            <asp:ListItem Value='0.15'>0.15</asp:ListItem>
                                            <asp:ListItem Value='0.14'>0.14</asp:ListItem>
                                            <asp:ListItem Value='0.13'>0.13</asp:ListItem>
                                            <asp:ListItem Value='0.12'>0.12</asp:ListItem>
                                            <asp:ListItem Value='0.11'>0.11</asp:ListItem>
                                            <asp:ListItem Value='0.1'>0.1</asp:ListItem>
                                            <asp:ListItem Value='0.09'>0.09</asp:ListItem>
                                            <asp:ListItem Value='0.08'>0.08</asp:ListItem>
                                            <asp:ListItem Value='0.07'>0.07</asp:ListItem>
                                            <asp:ListItem Value='0.06'>0.06</asp:ListItem>
                                            <asp:ListItem Value='0.05'>0.05</asp:ListItem>
                                            <asp:ListItem Value='0.04'>0.04</asp:ListItem>
                                            <asp:ListItem Value='0.03'>0.03</asp:ListItem>
                                            <asp:ListItem Value='0.02'>0.02</asp:ListItem>
                                            <asp:ListItem Value='0.01'>0.01</asp:ListItem>
                                            <asp:ListItem Selected='true' Value='0'>0</asp:ListItem>
                                        </asp:DropDownList>
                                        <a class="imaLink img" href="javascript:ReducePT('autoS1HdpD',1)"><img class="hand" hspace="1" id="btnReduce1" name="btnReduce1" src="../App_Themes/AgencyV2/Images/b_down.jpg" /></a><a class="imaLink img" href="javascript:IncreasePT('autoS1HdpD',1)"><img class="hand" hspace="1" id="btnIncrease1" name="btnIncrease1" src="../App_Themes/AgencyV2/Images/b_up.jpg"/></a><a class="imaLink img" href="javascript:ReducePT('autoS1HdpD',10)"><img class="hand" hspace="1" id="btnReduce10" name="btnReduce10" src="../App_Themes/AgencyV2/Images/b_sub.jpg"/></a><a class="imaLink img" href="javascript:IncreasePT('autoS1HdpD',10)"><img class="hand" hspace="1" id="btnIncrease10" name="btnIncrease10" src="../App_Themes/AgencyV2/Images/b_add.jpg"/></a></td><td>
                                        <asp:DropDownList ID="ddlAutoS1OUD" disabled runat="server">
                                            <asp:ListItem Value='0.7'>0.7</asp:ListItem>
                                            <asp:ListItem Value='0.69'>0.69</asp:ListItem>
                                            <asp:ListItem Value='0.68'>0.68</asp:ListItem>
                                            <asp:ListItem Value='0.67'>0.67</asp:ListItem>
                                            <asp:ListItem Value='0.66'>0.66</asp:ListItem>
                                            <asp:ListItem Value='0.65'>0.65</asp:ListItem>
                                            <asp:ListItem Value='0.64'>0.64</asp:ListItem>
                                            <asp:ListItem Value='0.63'>0.63</asp:ListItem>
                                            <asp:ListItem Value='0.62'>0.62</asp:ListItem>
                                            <asp:ListItem Value='0.61'>0.61</asp:ListItem>
                                            <asp:ListItem Value='0.6'>0.6</asp:ListItem>
                                            <asp:ListItem Value='0.59'>0.59</asp:ListItem>
                                            <asp:ListItem Value='0.58'>0.58</asp:ListItem>
                                            <asp:ListItem Value='0.57'>0.57</asp:ListItem>
                                            <asp:ListItem Value='0.56'>0.56</asp:ListItem>
                                            <asp:ListItem Value='0.55'>0.55</asp:ListItem>
                                            <asp:ListItem Value='0.54'>0.54</asp:ListItem>
                                            <asp:ListItem Value='0.53'>0.53</asp:ListItem>
                                            <asp:ListItem Value='0.52'>0.52</asp:ListItem>
                                            <asp:ListItem Value='0.51'>0.51</asp:ListItem>
                                            <asp:ListItem Value='0.5'>0.5</asp:ListItem>
                                            <asp:ListItem Value='0.49'>0.49</asp:ListItem>
                                            <asp:ListItem Value='0.48'>0.48</asp:ListItem>
                                            <asp:ListItem Value='0.47'>0.47</asp:ListItem>
                                            <asp:ListItem Value='0.46'>0.46</asp:ListItem>
                                            <asp:ListItem Value='0.45'>0.45</asp:ListItem>
                                            <asp:ListItem Value='0.44'>0.44</asp:ListItem>
                                            <asp:ListItem Value='0.43'>0.43</asp:ListItem>
                                            <asp:ListItem Value='0.42'>0.42</asp:ListItem>
                                            <asp:ListItem Value='0.41'>0.41</asp:ListItem>
                                            <asp:ListItem Value='0.4'>0.4</asp:ListItem>
                                            <asp:ListItem Value='0.39'>0.39</asp:ListItem>
                                            <asp:ListItem Value='0.38'>0.38</asp:ListItem>
                                            <asp:ListItem Value='0.37'>0.37</asp:ListItem>
                                            <asp:ListItem Value='0.36'>0.36</asp:ListItem>
                                            <asp:ListItem Value='0.35'>0.35</asp:ListItem>
                                            <asp:ListItem Value='0.34'>0.34</asp:ListItem>
                                            <asp:ListItem Value='0.33'>0.33</asp:ListItem>
                                            <asp:ListItem Value='0.32'>0.32</asp:ListItem>
                                            <asp:ListItem Value='0.31'>0.31</asp:ListItem>
                                            <asp:ListItem Value='0.3'>0.3</asp:ListItem>
                                            <asp:ListItem Value='0.29'>0.29</asp:ListItem>
                                            <asp:ListItem Value='0.28'>0.28</asp:ListItem>
                                            <asp:ListItem Value='0.27'>0.27</asp:ListItem>
                                            <asp:ListItem Value='0.26'>0.26</asp:ListItem>
                                            <asp:ListItem Value='0.25'>0.25</asp:ListItem>
                                            <asp:ListItem Value='0.24'>0.24</asp:ListItem>
                                            <asp:ListItem Value='0.23'>0.23</asp:ListItem>
                                            <asp:ListItem Value='0.22'>0.22</asp:ListItem>
                                            <asp:ListItem Value='0.21'>0.21</asp:ListItem>
                                            <asp:ListItem Value='0.2'>0.2</asp:ListItem>
                                            <asp:ListItem Value='0.19'>0.19</asp:ListItem>
                                            <asp:ListItem Value='0.18'>0.18</asp:ListItem>
                                            <asp:ListItem Value='0.17'>0.17</asp:ListItem>
                                            <asp:ListItem Value='0.16'>0.16</asp:ListItem>
                                            <asp:ListItem Value='0.15'>0.15</asp:ListItem>
                                            <asp:ListItem Value='0.14'>0.14</asp:ListItem>
                                            <asp:ListItem Value='0.13'>0.13</asp:ListItem>
                                            <asp:ListItem Value='0.12'>0.12</asp:ListItem>
                                            <asp:ListItem Value='0.11'>0.11</asp:ListItem>
                                            <asp:ListItem Value='0.1'>0.1</asp:ListItem>
                                            <asp:ListItem Value='0.09'>0.09</asp:ListItem>
                                            <asp:ListItem Value='0.08'>0.08</asp:ListItem>
                                            <asp:ListItem Value='0.07'>0.07</asp:ListItem>
                                            <asp:ListItem Value='0.06'>0.06</asp:ListItem>
                                            <asp:ListItem Value='0.05'>0.05</asp:ListItem>
                                            <asp:ListItem Value='0.04'>0.04</asp:ListItem>
                                            <asp:ListItem Value='0.03'>0.03</asp:ListItem>
                                            <asp:ListItem Value='0.02'>0.02</asp:ListItem>
                                            <asp:ListItem Value='0.01'>0.01</asp:ListItem>
                                            <asp:ListItem Selected='true' Value='0'>0</asp:ListItem>
                                        </asp:DropDownList>
                                        </td><td>
                                        <asp:DropDownList ID="ddlAutoS11stHdpD" disabled runat="server">
                                            <asp:ListItem Value='0.7'>0.7</asp:ListItem>
                                            <asp:ListItem Value='0.69'>0.69</asp:ListItem>
                                            <asp:ListItem Value='0.68'>0.68</asp:ListItem>
                                            <asp:ListItem Value='0.67'>0.67</asp:ListItem>
                                            <asp:ListItem Value='0.66'>0.66</asp:ListItem>
                                            <asp:ListItem Value='0.65'>0.65</asp:ListItem>
                                            <asp:ListItem Value='0.64'>0.64</asp:ListItem>
                                            <asp:ListItem Value='0.63'>0.63</asp:ListItem>
                                            <asp:ListItem Value='0.62'>0.62</asp:ListItem>
                                            <asp:ListItem Value='0.61'>0.61</asp:ListItem>
                                            <asp:ListItem Value='0.6'>0.6</asp:ListItem>
                                            <asp:ListItem Value='0.59'>0.59</asp:ListItem>
                                            <asp:ListItem Value='0.58'>0.58</asp:ListItem>
                                            <asp:ListItem Value='0.57'>0.57</asp:ListItem>
                                            <asp:ListItem Value='0.56'>0.56</asp:ListItem>
                                            <asp:ListItem Value='0.55'>0.55</asp:ListItem>
                                            <asp:ListItem Value='0.54'>0.54</asp:ListItem>
                                            <asp:ListItem Value='0.53'>0.53</asp:ListItem>
                                            <asp:ListItem Value='0.52'>0.52</asp:ListItem>
                                            <asp:ListItem Value='0.51'>0.51</asp:ListItem>
                                            <asp:ListItem Value='0.5'>0.5</asp:ListItem>
                                            <asp:ListItem Value='0.49'>0.49</asp:ListItem>
                                            <asp:ListItem Value='0.48'>0.48</asp:ListItem>
                                            <asp:ListItem Value='0.47'>0.47</asp:ListItem>
                                            <asp:ListItem Value='0.46'>0.46</asp:ListItem>
                                            <asp:ListItem Value='0.45'>0.45</asp:ListItem>
                                            <asp:ListItem Value='0.44'>0.44</asp:ListItem>
                                            <asp:ListItem Value='0.43'>0.43</asp:ListItem>
                                            <asp:ListItem Value='0.42'>0.42</asp:ListItem>
                                            <asp:ListItem Value='0.41'>0.41</asp:ListItem>
                                            <asp:ListItem Value='0.4'>0.4</asp:ListItem>
                                            <asp:ListItem Value='0.39'>0.39</asp:ListItem>
                                            <asp:ListItem Value='0.38'>0.38</asp:ListItem>
                                            <asp:ListItem Value='0.37'>0.37</asp:ListItem>
                                            <asp:ListItem Value='0.36'>0.36</asp:ListItem>
                                            <asp:ListItem Value='0.35'>0.35</asp:ListItem>
                                            <asp:ListItem Value='0.34'>0.34</asp:ListItem>
                                            <asp:ListItem Value='0.33'>0.33</asp:ListItem>
                                            <asp:ListItem Value='0.32'>0.32</asp:ListItem>
                                            <asp:ListItem Value='0.31'>0.31</asp:ListItem>
                                            <asp:ListItem Value='0.3'>0.3</asp:ListItem>
                                            <asp:ListItem Value='0.29'>0.29</asp:ListItem>
                                            <asp:ListItem Value='0.28'>0.28</asp:ListItem>
                                            <asp:ListItem Value='0.27'>0.27</asp:ListItem>
                                            <asp:ListItem Value='0.26'>0.26</asp:ListItem>
                                            <asp:ListItem Value='0.25'>0.25</asp:ListItem>
                                            <asp:ListItem Value='0.24'>0.24</asp:ListItem>
                                            <asp:ListItem Value='0.23'>0.23</asp:ListItem>
                                            <asp:ListItem Value='0.22'>0.22</asp:ListItem>
                                            <asp:ListItem Value='0.21'>0.21</asp:ListItem>
                                            <asp:ListItem Value='0.2'>0.2</asp:ListItem>
                                            <asp:ListItem Value='0.19'>0.19</asp:ListItem>
                                            <asp:ListItem Value='0.18'>0.18</asp:ListItem>
                                            <asp:ListItem Value='0.17'>0.17</asp:ListItem>
                                            <asp:ListItem Value='0.16'>0.16</asp:ListItem>
                                            <asp:ListItem Value='0.15'>0.15</asp:ListItem>
                                            <asp:ListItem Value='0.14'>0.14</asp:ListItem>
                                            <asp:ListItem Value='0.13'>0.13</asp:ListItem>
                                            <asp:ListItem Value='0.12'>0.12</asp:ListItem>
                                            <asp:ListItem Value='0.11'>0.11</asp:ListItem>
                                            <asp:ListItem Value='0.1'>0.1</asp:ListItem>
                                            <asp:ListItem Value='0.09'>0.09</asp:ListItem>
                                            <asp:ListItem Value='0.08'>0.08</asp:ListItem>
                                            <asp:ListItem Value='0.07'>0.07</asp:ListItem>
                                            <asp:ListItem Value='0.06'>0.06</asp:ListItem>
                                            <asp:ListItem Value='0.05'>0.05</asp:ListItem>
                                            <asp:ListItem Value='0.04'>0.04</asp:ListItem>
                                            <asp:ListItem Value='0.03'>0.03</asp:ListItem>
                                            <asp:ListItem Value='0.02'>0.02</asp:ListItem>
                                            <asp:ListItem Value='0.01'>0.01</asp:ListItem>
                                            <asp:ListItem Selected='true' Value='0'>0</asp:ListItem>
                                        </asp:DropDownList>
                                        </td><td>
                                        <asp:DropDownList ID="ddlAutoS1sOBD" disabled runat="server">
                                            <asp:ListItem Value='0.7'>0.7</asp:ListItem>
                                            <asp:ListItem Value='0.69'>0.69</asp:ListItem>
                                            <asp:ListItem Value='0.68'>0.68</asp:ListItem>
                                            <asp:ListItem Value='0.67'>0.67</asp:ListItem>
                                            <asp:ListItem Value='0.66'>0.66</asp:ListItem>
                                            <asp:ListItem Value='0.65'>0.65</asp:ListItem>
                                            <asp:ListItem Value='0.64'>0.64</asp:ListItem>
                                            <asp:ListItem Value='0.63'>0.63</asp:ListItem>
                                            <asp:ListItem Value='0.62'>0.62</asp:ListItem>
                                            <asp:ListItem Value='0.61'>0.61</asp:ListItem>
                                            <asp:ListItem Value='0.6'>0.6</asp:ListItem>
                                            <asp:ListItem Value='0.59'>0.59</asp:ListItem>
                                            <asp:ListItem Value='0.58'>0.58</asp:ListItem>
                                            <asp:ListItem Value='0.57'>0.57</asp:ListItem>
                                            <asp:ListItem Value='0.56'>0.56</asp:ListItem>
                                            <asp:ListItem Value='0.55'>0.55</asp:ListItem>
                                            <asp:ListItem Value='0.54'>0.54</asp:ListItem>
                                            <asp:ListItem Value='0.53'>0.53</asp:ListItem>
                                            <asp:ListItem Value='0.52'>0.52</asp:ListItem>
                                            <asp:ListItem Value='0.51'>0.51</asp:ListItem>
                                            <asp:ListItem Value='0.5'>0.5</asp:ListItem>
                                            <asp:ListItem Value='0.49'>0.49</asp:ListItem>
                                            <asp:ListItem Value='0.48'>0.48</asp:ListItem>
                                            <asp:ListItem Value='0.47'>0.47</asp:ListItem>
                                            <asp:ListItem Value='0.46'>0.46</asp:ListItem>
                                            <asp:ListItem Value='0.45'>0.45</asp:ListItem>
                                            <asp:ListItem Value='0.44'>0.44</asp:ListItem>
                                            <asp:ListItem Value='0.43'>0.43</asp:ListItem>
                                            <asp:ListItem Value='0.42'>0.42</asp:ListItem>
                                            <asp:ListItem Value='0.41'>0.41</asp:ListItem>
                                            <asp:ListItem Value='0.4'>0.4</asp:ListItem>
                                            <asp:ListItem Value='0.39'>0.39</asp:ListItem>
                                            <asp:ListItem Value='0.38'>0.38</asp:ListItem>
                                            <asp:ListItem Value='0.37'>0.37</asp:ListItem>
                                            <asp:ListItem Value='0.36'>0.36</asp:ListItem>
                                            <asp:ListItem Value='0.35'>0.35</asp:ListItem>
                                            <asp:ListItem Value='0.34'>0.34</asp:ListItem>
                                            <asp:ListItem Value='0.33'>0.33</asp:ListItem>
                                            <asp:ListItem Value='0.32'>0.32</asp:ListItem>
                                            <asp:ListItem Value='0.31'>0.31</asp:ListItem>
                                            <asp:ListItem Value='0.3'>0.3</asp:ListItem>
                                            <asp:ListItem Value='0.29'>0.29</asp:ListItem>
                                            <asp:ListItem Value='0.28'>0.28</asp:ListItem>
                                            <asp:ListItem Value='0.27'>0.27</asp:ListItem>
                                            <asp:ListItem Value='0.26'>0.26</asp:ListItem>
                                            <asp:ListItem Value='0.25'>0.25</asp:ListItem>
                                            <asp:ListItem Value='0.24'>0.24</asp:ListItem>
                                            <asp:ListItem Value='0.23'>0.23</asp:ListItem>
                                            <asp:ListItem Value='0.22'>0.22</asp:ListItem>
                                            <asp:ListItem Value='0.21'>0.21</asp:ListItem>
                                            <asp:ListItem Value='0.2'>0.2</asp:ListItem>
                                            <asp:ListItem Value='0.19'>0.19</asp:ListItem>
                                            <asp:ListItem Value='0.18'>0.18</asp:ListItem>
                                            <asp:ListItem Value='0.17'>0.17</asp:ListItem>
                                            <asp:ListItem Value='0.16'>0.16</asp:ListItem>
                                            <asp:ListItem Value='0.15'>0.15</asp:ListItem>
                                            <asp:ListItem Value='0.14'>0.14</asp:ListItem>
                                            <asp:ListItem Value='0.13'>0.13</asp:ListItem>
                                            <asp:ListItem Value='0.12'>0.12</asp:ListItem>
                                            <asp:ListItem Value='0.11'>0.11</asp:ListItem>
                                            <asp:ListItem Value='0.1'>0.1</asp:ListItem>
                                            <asp:ListItem Value='0.09'>0.09</asp:ListItem>
                                            <asp:ListItem Value='0.08'>0.08</asp:ListItem>
                                            <asp:ListItem Value='0.07'>0.07</asp:ListItem>
                                            <asp:ListItem Value='0.06'>0.06</asp:ListItem>
                                            <asp:ListItem Value='0.05'>0.05</asp:ListItem>
                                            <asp:ListItem Value='0.04'>0.04</asp:ListItem>
                                            <asp:ListItem Value='0.03'>0.03</asp:ListItem>
                                            <asp:ListItem Value='0.02'>0.02</asp:ListItem>
                                            <asp:ListItem Value='0.01'>0.01</asp:ListItem>
                                            <asp:ListItem Selected='true' Value='0'>0</asp:ListItem>
                                        </asp:DropDownList>
                                        </td><td>
                                        <asp:DropDownList ID="ddlAutoS1OE" disabled runat="server">
                                            <asp:ListItem Value='0.7'>0.7</asp:ListItem>
                                            <asp:ListItem Value='0.69'>0.69</asp:ListItem>
                                            <asp:ListItem Value='0.68'>0.68</asp:ListItem>
                                            <asp:ListItem Value='0.67'>0.67</asp:ListItem>
                                            <asp:ListItem Value='0.66'>0.66</asp:ListItem>
                                            <asp:ListItem Value='0.65'>0.65</asp:ListItem>
                                            <asp:ListItem Value='0.64'>0.64</asp:ListItem>
                                            <asp:ListItem Value='0.63'>0.63</asp:ListItem>
                                            <asp:ListItem Value='0.62'>0.62</asp:ListItem>
                                            <asp:ListItem Value='0.61'>0.61</asp:ListItem>
                                            <asp:ListItem Value='0.6'>0.6</asp:ListItem>
                                            <asp:ListItem Value='0.59'>0.59</asp:ListItem>
                                            <asp:ListItem Value='0.58'>0.58</asp:ListItem>
                                            <asp:ListItem Value='0.57'>0.57</asp:ListItem>
                                            <asp:ListItem Value='0.56'>0.56</asp:ListItem>
                                            <asp:ListItem Value='0.55'>0.55</asp:ListItem>
                                            <asp:ListItem Value='0.54'>0.54</asp:ListItem>
                                            <asp:ListItem Value='0.53'>0.53</asp:ListItem>
                                            <asp:ListItem Value='0.52'>0.52</asp:ListItem>
                                            <asp:ListItem Value='0.51'>0.51</asp:ListItem>
                                            <asp:ListItem Value='0.5'>0.5</asp:ListItem>
                                            <asp:ListItem Value='0.49'>0.49</asp:ListItem>
                                            <asp:ListItem Value='0.48'>0.48</asp:ListItem>
                                            <asp:ListItem Value='0.47'>0.47</asp:ListItem>
                                            <asp:ListItem Value='0.46'>0.46</asp:ListItem>
                                            <asp:ListItem Value='0.45'>0.45</asp:ListItem>
                                            <asp:ListItem Value='0.44'>0.44</asp:ListItem>
                                            <asp:ListItem Value='0.43'>0.43</asp:ListItem>
                                            <asp:ListItem Value='0.42'>0.42</asp:ListItem>
                                            <asp:ListItem Value='0.41'>0.41</asp:ListItem>
                                            <asp:ListItem Value='0.4'>0.4</asp:ListItem>
                                            <asp:ListItem Value='0.39'>0.39</asp:ListItem>
                                            <asp:ListItem Value='0.38'>0.38</asp:ListItem>
                                            <asp:ListItem Value='0.37'>0.37</asp:ListItem>
                                            <asp:ListItem Value='0.36'>0.36</asp:ListItem>
                                            <asp:ListItem Value='0.35'>0.35</asp:ListItem>
                                            <asp:ListItem Value='0.34'>0.34</asp:ListItem>
                                            <asp:ListItem Value='0.33'>0.33</asp:ListItem>
                                            <asp:ListItem Value='0.32'>0.32</asp:ListItem>
                                            <asp:ListItem Value='0.31'>0.31</asp:ListItem>
                                            <asp:ListItem Value='0.3'>0.3</asp:ListItem>
                                            <asp:ListItem Value='0.29'>0.29</asp:ListItem>
                                            <asp:ListItem Value='0.28'>0.28</asp:ListItem>
                                            <asp:ListItem Value='0.27'>0.27</asp:ListItem>
                                            <asp:ListItem Value='0.26'>0.26</asp:ListItem>
                                            <asp:ListItem Value='0.25'>0.25</asp:ListItem>
                                            <asp:ListItem Value='0.24'>0.24</asp:ListItem>
                                            <asp:ListItem Value='0.23'>0.23</asp:ListItem>
                                            <asp:ListItem Value='0.22'>0.22</asp:ListItem>
                                            <asp:ListItem Value='0.21'>0.21</asp:ListItem>
                                            <asp:ListItem Value='0.2'>0.2</asp:ListItem>
                                            <asp:ListItem Value='0.19'>0.19</asp:ListItem>
                                            <asp:ListItem Value='0.18'>0.18</asp:ListItem>
                                            <asp:ListItem Value='0.17'>0.17</asp:ListItem>
                                            <asp:ListItem Value='0.16'>0.16</asp:ListItem>
                                            <asp:ListItem Value='0.15'>0.15</asp:ListItem>
                                            <asp:ListItem Value='0.14'>0.14</asp:ListItem>
                                            <asp:ListItem Value='0.13'>0.13</asp:ListItem>
                                            <asp:ListItem Value='0.12'>0.12</asp:ListItem>
                                            <asp:ListItem Value='0.11'>0.11</asp:ListItem>
                                            <asp:ListItem Value='0.1'>0.1</asp:ListItem>
                                            <asp:ListItem Value='0.09'>0.09</asp:ListItem>
                                            <asp:ListItem Value='0.08'>0.08</asp:ListItem>
                                            <asp:ListItem Value='0.07'>0.07</asp:ListItem>
                                            <asp:ListItem Value='0.06'>0.06</asp:ListItem>
                                            <asp:ListItem Value='0.05'>0.05</asp:ListItem>
                                            <asp:ListItem Value='0.04'>0.04</asp:ListItem>
                                            <asp:ListItem Value='0.03'>0.03</asp:ListItem>
                                            <asp:ListItem Value='0.02'>0.02</asp:ListItem>
                                            <asp:ListItem Value='0.01'>0.01</asp:ListItem>
                                            <asp:ListItem Selected='true' Value='0'>0</asp:ListItem>
                                        </asp:DropDownList>
                                        </td><td>
                                        <asp:DropDownList ID="ddlAutoS1x2" disabled runat="server">
                                            <asp:ListItem Value='0.7'>0.7</asp:ListItem>
                                            <asp:ListItem Value='0.69'>0.69</asp:ListItem>
                                            <asp:ListItem Value='0.68'>0.68</asp:ListItem>
                                            <asp:ListItem Value='0.67'>0.67</asp:ListItem>
                                            <asp:ListItem Value='0.66'>0.66</asp:ListItem>
                                            <asp:ListItem Value='0.65'>0.65</asp:ListItem>
                                            <asp:ListItem Value='0.64'>0.64</asp:ListItem>
                                            <asp:ListItem Value='0.63'>0.63</asp:ListItem>
                                            <asp:ListItem Value='0.62'>0.62</asp:ListItem>
                                            <asp:ListItem Value='0.61'>0.61</asp:ListItem>
                                            <asp:ListItem Value='0.6'>0.6</asp:ListItem>
                                            <asp:ListItem Value='0.59'>0.59</asp:ListItem>
                                            <asp:ListItem Value='0.58'>0.58</asp:ListItem>
                                            <asp:ListItem Value='0.57'>0.57</asp:ListItem>
                                            <asp:ListItem Value='0.56'>0.56</asp:ListItem>
                                            <asp:ListItem Value='0.55'>0.55</asp:ListItem>
                                            <asp:ListItem Value='0.54'>0.54</asp:ListItem>
                                            <asp:ListItem Value='0.53'>0.53</asp:ListItem>
                                            <asp:ListItem Value='0.52'>0.52</asp:ListItem>
                                            <asp:ListItem Value='0.51'>0.51</asp:ListItem>
                                            <asp:ListItem Value='0.5'>0.5</asp:ListItem>
                                            <asp:ListItem Value='0.49'>0.49</asp:ListItem>
                                            <asp:ListItem Value='0.48'>0.48</asp:ListItem>
                                            <asp:ListItem Value='0.47'>0.47</asp:ListItem>
                                            <asp:ListItem Value='0.46'>0.46</asp:ListItem>
                                            <asp:ListItem Value='0.45'>0.45</asp:ListItem>
                                            <asp:ListItem Value='0.44'>0.44</asp:ListItem>
                                            <asp:ListItem Value='0.43'>0.43</asp:ListItem>
                                            <asp:ListItem Value='0.42'>0.42</asp:ListItem>
                                            <asp:ListItem Value='0.41'>0.41</asp:ListItem>
                                            <asp:ListItem Value='0.4'>0.4</asp:ListItem>
                                            <asp:ListItem Value='0.39'>0.39</asp:ListItem>
                                            <asp:ListItem Value='0.38'>0.38</asp:ListItem>
                                            <asp:ListItem Value='0.37'>0.37</asp:ListItem>
                                            <asp:ListItem Value='0.36'>0.36</asp:ListItem>
                                            <asp:ListItem Value='0.35'>0.35</asp:ListItem>
                                            <asp:ListItem Value='0.34'>0.34</asp:ListItem>
                                            <asp:ListItem Value='0.33'>0.33</asp:ListItem>
                                            <asp:ListItem Value='0.32'>0.32</asp:ListItem>
                                            <asp:ListItem Value='0.31'>0.31</asp:ListItem>
                                            <asp:ListItem Value='0.3'>0.3</asp:ListItem>
                                            <asp:ListItem Value='0.29'>0.29</asp:ListItem>
                                            <asp:ListItem Value='0.28'>0.28</asp:ListItem>
                                            <asp:ListItem Value='0.27'>0.27</asp:ListItem>
                                            <asp:ListItem Value='0.26'>0.26</asp:ListItem>
                                            <asp:ListItem Value='0.25'>0.25</asp:ListItem>
                                            <asp:ListItem Value='0.24'>0.24</asp:ListItem>
                                            <asp:ListItem Value='0.23'>0.23</asp:ListItem>
                                            <asp:ListItem Value='0.22'>0.22</asp:ListItem>
                                            <asp:ListItem Value='0.21'>0.21</asp:ListItem>
                                            <asp:ListItem Value='0.2'>0.2</asp:ListItem>
                                            <asp:ListItem Value='0.19'>0.19</asp:ListItem>
                                            <asp:ListItem Value='0.18'>0.18</asp:ListItem>
                                            <asp:ListItem Value='0.17'>0.17</asp:ListItem>
                                            <asp:ListItem Value='0.16'>0.16</asp:ListItem>
                                            <asp:ListItem Value='0.15'>0.15</asp:ListItem>
                                            <asp:ListItem Value='0.14'>0.14</asp:ListItem>
                                            <asp:ListItem Value='0.13'>0.13</asp:ListItem>
                                            <asp:ListItem Value='0.12'>0.12</asp:ListItem>
                                            <asp:ListItem Value='0.11'>0.11</asp:ListItem>
                                            <asp:ListItem Value='0.1'>0.1</asp:ListItem>
                                            <asp:ListItem Value='0.09'>0.09</asp:ListItem>
                                            <asp:ListItem Value='0.08'>0.08</asp:ListItem>
                                            <asp:ListItem Value='0.07'>0.07</asp:ListItem>
                                            <asp:ListItem Value='0.06'>0.06</asp:ListItem>
                                            <asp:ListItem Value='0.05'>0.05</asp:ListItem>
                                            <asp:ListItem Value='0.04'>0.04</asp:ListItem>
                                            <asp:ListItem Value='0.03'>0.03</asp:ListItem>
                                            <asp:ListItem Value='0.02'>0.02</asp:ListItem>
                                            <asp:ListItem Value='0.01'>0.01</asp:ListItem>
                                            <asp:ListItem Selected='true' Value='0'>0</asp:ListItem>
                                        </asp:DropDownList>
                                            <a class="imaLink img" href="javascript:ReducePT('autoS11x2',1)"><img class="hand" hspace="1" id="btnReduce1" name="btnReduce1" src="../App_Themes/AgencyV2/Images/b_down.jpg" /></a><a class="imaLink img" href="javascript:IncreasePT('autoS11x2',1)"><img class="hand" hspace="1" id="btnIncrease1" name="btnIncrease1" src="../App_Themes/AgencyV2/Images/b_up.jpg"/></a><a class="imaLink img" href="javascript:ReducePT('autoS11x2',10)"><img class="hand" hspace="1" id="btnReduce10" name="btnReduce10" src="../App_Themes/AgencyV2/Images/b_sub.jpg"/></a><a class="imaLink img" href="javascript:IncreasePT('autoS11x2',10)"><img class="hand" hspace="1" id="btnIncrease10" name="btnIncrease10" src="../App_Themes/AgencyV2/Images/b_add.jpg"/></a></td><td>
                                        <asp:DropDownList ID="ddlAutoS1CS" disabled runat="server">
                                            <asp:ListItem Value='0.7'>0.7</asp:ListItem>
                                            <asp:ListItem Value='0.69'>0.69</asp:ListItem>
                                            <asp:ListItem Value='0.68'>0.68</asp:ListItem>
                                            <asp:ListItem Value='0.67'>0.67</asp:ListItem>
                                            <asp:ListItem Value='0.66'>0.66</asp:ListItem>
                                            <asp:ListItem Value='0.65'>0.65</asp:ListItem>
                                            <asp:ListItem Value='0.64'>0.64</asp:ListItem>
                                            <asp:ListItem Value='0.63'>0.63</asp:ListItem>
                                            <asp:ListItem Value='0.62'>0.62</asp:ListItem>
                                            <asp:ListItem Value='0.61'>0.61</asp:ListItem>
                                            <asp:ListItem Value='0.6'>0.6</asp:ListItem>
                                            <asp:ListItem Value='0.59'>0.59</asp:ListItem>
                                            <asp:ListItem Value='0.58'>0.58</asp:ListItem>
                                            <asp:ListItem Value='0.57'>0.57</asp:ListItem>
                                            <asp:ListItem Value='0.56'>0.56</asp:ListItem>
                                            <asp:ListItem Value='0.55'>0.55</asp:ListItem>
                                            <asp:ListItem Value='0.54'>0.54</asp:ListItem>
                                            <asp:ListItem Value='0.53'>0.53</asp:ListItem>
                                            <asp:ListItem Value='0.52'>0.52</asp:ListItem>
                                            <asp:ListItem Value='0.51'>0.51</asp:ListItem>
                                            <asp:ListItem Value='0.5'>0.5</asp:ListItem>
                                            <asp:ListItem Value='0.49'>0.49</asp:ListItem>
                                            <asp:ListItem Value='0.48'>0.48</asp:ListItem>
                                            <asp:ListItem Value='0.47'>0.47</asp:ListItem>
                                            <asp:ListItem Value='0.46'>0.46</asp:ListItem>
                                            <asp:ListItem Value='0.45'>0.45</asp:ListItem>
                                            <asp:ListItem Value='0.44'>0.44</asp:ListItem>
                                            <asp:ListItem Value='0.43'>0.43</asp:ListItem>
                                            <asp:ListItem Value='0.42'>0.42</asp:ListItem>
                                            <asp:ListItem Value='0.41'>0.41</asp:ListItem>
                                            <asp:ListItem Value='0.4'>0.4</asp:ListItem>
                                            <asp:ListItem Value='0.39'>0.39</asp:ListItem>
                                            <asp:ListItem Value='0.38'>0.38</asp:ListItem>
                                            <asp:ListItem Value='0.37'>0.37</asp:ListItem>
                                            <asp:ListItem Value='0.36'>0.36</asp:ListItem>
                                            <asp:ListItem Value='0.35'>0.35</asp:ListItem>
                                            <asp:ListItem Value='0.34'>0.34</asp:ListItem>
                                            <asp:ListItem Value='0.33'>0.33</asp:ListItem>
                                            <asp:ListItem Value='0.32'>0.32</asp:ListItem>
                                            <asp:ListItem Value='0.31'>0.31</asp:ListItem>
                                            <asp:ListItem Value='0.3'>0.3</asp:ListItem>
                                            <asp:ListItem Value='0.29'>0.29</asp:ListItem>
                                            <asp:ListItem Value='0.28'>0.28</asp:ListItem>
                                            <asp:ListItem Value='0.27'>0.27</asp:ListItem>
                                            <asp:ListItem Value='0.26'>0.26</asp:ListItem>
                                            <asp:ListItem Value='0.25'>0.25</asp:ListItem>
                                            <asp:ListItem Value='0.24'>0.24</asp:ListItem>
                                            <asp:ListItem Value='0.23'>0.23</asp:ListItem>
                                            <asp:ListItem Value='0.22'>0.22</asp:ListItem>
                                            <asp:ListItem Value='0.21'>0.21</asp:ListItem>
                                            <asp:ListItem Value='0.2'>0.2</asp:ListItem>
                                            <asp:ListItem Value='0.19'>0.19</asp:ListItem>
                                            <asp:ListItem Value='0.18'>0.18</asp:ListItem>
                                            <asp:ListItem Value='0.17'>0.17</asp:ListItem>
                                            <asp:ListItem Value='0.16'>0.16</asp:ListItem>
                                            <asp:ListItem Value='0.15'>0.15</asp:ListItem>
                                            <asp:ListItem Value='0.14'>0.14</asp:ListItem>
                                            <asp:ListItem Value='0.13'>0.13</asp:ListItem>
                                            <asp:ListItem Value='0.12'>0.12</asp:ListItem>
                                            <asp:ListItem Value='0.11'>0.11</asp:ListItem>
                                            <asp:ListItem Value='0.1'>0.1</asp:ListItem>
                                            <asp:ListItem Value='0.09'>0.09</asp:ListItem>
                                            <asp:ListItem Value='0.08'>0.08</asp:ListItem>
                                            <asp:ListItem Value='0.07'>0.07</asp:ListItem>
                                            <asp:ListItem Value='0.06'>0.06</asp:ListItem>
                                            <asp:ListItem Value='0.05'>0.05</asp:ListItem>
                                            <asp:ListItem Value='0.04'>0.04</asp:ListItem>
                                            <asp:ListItem Value='0.03'>0.03</asp:ListItem>
                                            <asp:ListItem Value='0.02'>0.02</asp:ListItem>
                                            <asp:ListItem Value='0.01'>0.01</asp:ListItem>
                                            <asp:ListItem Selected='true' Value='0'>0</asp:ListItem>
                                        </asp:DropDownList>
                                        </td><td>
                                        <asp:DropDownList ID="ddlAutoS1TG" disabled runat="server">
                                            <asp:ListItem Value='0.7'>0.7</asp:ListItem>
                                            <asp:ListItem Value='0.69'>0.69</asp:ListItem>
                                            <asp:ListItem Value='0.68'>0.68</asp:ListItem>
                                            <asp:ListItem Value='0.67'>0.67</asp:ListItem>
                                            <asp:ListItem Value='0.66'>0.66</asp:ListItem>
                                            <asp:ListItem Value='0.65'>0.65</asp:ListItem>
                                            <asp:ListItem Value='0.64'>0.64</asp:ListItem>
                                            <asp:ListItem Value='0.63'>0.63</asp:ListItem>
                                            <asp:ListItem Value='0.62'>0.62</asp:ListItem>
                                            <asp:ListItem Value='0.61'>0.61</asp:ListItem>
                                            <asp:ListItem Value='0.6'>0.6</asp:ListItem>
                                            <asp:ListItem Value='0.59'>0.59</asp:ListItem>
                                            <asp:ListItem Value='0.58'>0.58</asp:ListItem>
                                            <asp:ListItem Value='0.57'>0.57</asp:ListItem>
                                            <asp:ListItem Value='0.56'>0.56</asp:ListItem>
                                            <asp:ListItem Value='0.55'>0.55</asp:ListItem>
                                            <asp:ListItem Value='0.54'>0.54</asp:ListItem>
                                            <asp:ListItem Value='0.53'>0.53</asp:ListItem>
                                            <asp:ListItem Value='0.52'>0.52</asp:ListItem>
                                            <asp:ListItem Value='0.51'>0.51</asp:ListItem>
                                            <asp:ListItem Value='0.5'>0.5</asp:ListItem>
                                            <asp:ListItem Value='0.49'>0.49</asp:ListItem>
                                            <asp:ListItem Value='0.48'>0.48</asp:ListItem>
                                            <asp:ListItem Value='0.47'>0.47</asp:ListItem>
                                            <asp:ListItem Value='0.46'>0.46</asp:ListItem>
                                            <asp:ListItem Value='0.45'>0.45</asp:ListItem>
                                            <asp:ListItem Value='0.44'>0.44</asp:ListItem>
                                            <asp:ListItem Value='0.43'>0.43</asp:ListItem>
                                            <asp:ListItem Value='0.42'>0.42</asp:ListItem>
                                            <asp:ListItem Value='0.41'>0.41</asp:ListItem>
                                            <asp:ListItem Value='0.4'>0.4</asp:ListItem>
                                            <asp:ListItem Value='0.39'>0.39</asp:ListItem>
                                            <asp:ListItem Value='0.38'>0.38</asp:ListItem>
                                            <asp:ListItem Value='0.37'>0.37</asp:ListItem>
                                            <asp:ListItem Value='0.36'>0.36</asp:ListItem>
                                            <asp:ListItem Value='0.35'>0.35</asp:ListItem>
                                            <asp:ListItem Value='0.34'>0.34</asp:ListItem>
                                            <asp:ListItem Value='0.33'>0.33</asp:ListItem>
                                            <asp:ListItem Value='0.32'>0.32</asp:ListItem>
                                            <asp:ListItem Value='0.31'>0.31</asp:ListItem>
                                            <asp:ListItem Value='0.3'>0.3</asp:ListItem>
                                            <asp:ListItem Value='0.29'>0.29</asp:ListItem>
                                            <asp:ListItem Value='0.28'>0.28</asp:ListItem>
                                            <asp:ListItem Value='0.27'>0.27</asp:ListItem>
                                            <asp:ListItem Value='0.26'>0.26</asp:ListItem>
                                            <asp:ListItem Value='0.25'>0.25</asp:ListItem>
                                            <asp:ListItem Value='0.24'>0.24</asp:ListItem>
                                            <asp:ListItem Value='0.23'>0.23</asp:ListItem>
                                            <asp:ListItem Value='0.22'>0.22</asp:ListItem>
                                            <asp:ListItem Value='0.21'>0.21</asp:ListItem>
                                            <asp:ListItem Value='0.2'>0.2</asp:ListItem>
                                            <asp:ListItem Value='0.19'>0.19</asp:ListItem>
                                            <asp:ListItem Value='0.18'>0.18</asp:ListItem>
                                            <asp:ListItem Value='0.17'>0.17</asp:ListItem>
                                            <asp:ListItem Value='0.16'>0.16</asp:ListItem>
                                            <asp:ListItem Value='0.15'>0.15</asp:ListItem>
                                            <asp:ListItem Value='0.14'>0.14</asp:ListItem>
                                            <asp:ListItem Value='0.13'>0.13</asp:ListItem>
                                            <asp:ListItem Value='0.12'>0.12</asp:ListItem>
                                            <asp:ListItem Value='0.11'>0.11</asp:ListItem>
                                            <asp:ListItem Value='0.1'>0.1</asp:ListItem>
                                            <asp:ListItem Value='0.09'>0.09</asp:ListItem>
                                            <asp:ListItem Value='0.08'>0.08</asp:ListItem>
                                            <asp:ListItem Value='0.07'>0.07</asp:ListItem>
                                            <asp:ListItem Value='0.06'>0.06</asp:ListItem>
                                            <asp:ListItem Value='0.05'>0.05</asp:ListItem>
                                            <asp:ListItem Value='0.04'>0.04</asp:ListItem>
                                            <asp:ListItem Value='0.03'>0.03</asp:ListItem>
                                            <asp:ListItem Value='0.02'>0.02</asp:ListItem>
                                            <asp:ListItem Value='0.01'>0.01</asp:ListItem>
                                            <asp:ListItem Selected='true' Value='0'>0</asp:ListItem>
                                        </asp:DropDownList>
                                        </td><td>
                                        <asp:DropDownList ID="ddlAutoS1TM" disabled runat="server" Height="16px">
                                            <asp:ListItem Value='0.7'>0.7</asp:ListItem>
                                            <asp:ListItem Value='0.69'>0.69</asp:ListItem>
                                            <asp:ListItem Value='0.68'>0.68</asp:ListItem>
                                            <asp:ListItem Value='0.67'>0.67</asp:ListItem>
                                            <asp:ListItem Value='0.66'>0.66</asp:ListItem>
                                            <asp:ListItem Value='0.65'>0.65</asp:ListItem>
                                            <asp:ListItem Value='0.64'>0.64</asp:ListItem>
                                            <asp:ListItem Value='0.63'>0.63</asp:ListItem>
                                            <asp:ListItem Value='0.62'>0.62</asp:ListItem>
                                            <asp:ListItem Value='0.61'>0.61</asp:ListItem>
                                            <asp:ListItem Value='0.6'>0.6</asp:ListItem>
                                            <asp:ListItem Value='0.59'>0.59</asp:ListItem>
                                            <asp:ListItem Value='0.58'>0.58</asp:ListItem>
                                            <asp:ListItem Value='0.57'>0.57</asp:ListItem>
                                            <asp:ListItem Value='0.56'>0.56</asp:ListItem>
                                            <asp:ListItem Value='0.55'>0.55</asp:ListItem>
                                            <asp:ListItem Value='0.54'>0.54</asp:ListItem>
                                            <asp:ListItem Value='0.53'>0.53</asp:ListItem>
                                            <asp:ListItem Value='0.52'>0.52</asp:ListItem>
                                            <asp:ListItem Value='0.51'>0.51</asp:ListItem>
                                            <asp:ListItem Value='0.5'>0.5</asp:ListItem>
                                            <asp:ListItem Value='0.49'>0.49</asp:ListItem>
                                            <asp:ListItem Value='0.48'>0.48</asp:ListItem>
                                            <asp:ListItem Value='0.47'>0.47</asp:ListItem>
                                            <asp:ListItem Value='0.46'>0.46</asp:ListItem>
                                            <asp:ListItem Value='0.45'>0.45</asp:ListItem>
                                            <asp:ListItem Value='0.44'>0.44</asp:ListItem>
                                            <asp:ListItem Value='0.43'>0.43</asp:ListItem>
                                            <asp:ListItem Value='0.42'>0.42</asp:ListItem>
                                            <asp:ListItem Value='0.41'>0.41</asp:ListItem>
                                            <asp:ListItem Value='0.4'>0.4</asp:ListItem>
                                            <asp:ListItem Value='0.39'>0.39</asp:ListItem>
                                            <asp:ListItem Value='0.38'>0.38</asp:ListItem>
                                            <asp:ListItem Value='0.37'>0.37</asp:ListItem>
                                            <asp:ListItem Value='0.36'>0.36</asp:ListItem>
                                            <asp:ListItem Value='0.35'>0.35</asp:ListItem>
                                            <asp:ListItem Value='0.34'>0.34</asp:ListItem>
                                            <asp:ListItem Value='0.33'>0.33</asp:ListItem>
                                            <asp:ListItem Value='0.32'>0.32</asp:ListItem>
                                            <asp:ListItem Value='0.31'>0.31</asp:ListItem>
                                            <asp:ListItem Value='0.3'>0.3</asp:ListItem>
                                            <asp:ListItem Value='0.29'>0.29</asp:ListItem>
                                            <asp:ListItem Value='0.28'>0.28</asp:ListItem>
                                            <asp:ListItem Value='0.27'>0.27</asp:ListItem>
                                            <asp:ListItem Value='0.26'>0.26</asp:ListItem>
                                            <asp:ListItem Value='0.25'>0.25</asp:ListItem>
                                            <asp:ListItem Value='0.24'>0.24</asp:ListItem>
                                            <asp:ListItem Value='0.23'>0.23</asp:ListItem>
                                            <asp:ListItem Value='0.22'>0.22</asp:ListItem>
                                            <asp:ListItem Value='0.21'>0.21</asp:ListItem>
                                            <asp:ListItem Value='0.2'>0.2</asp:ListItem>
                                            <asp:ListItem Value='0.19'>0.19</asp:ListItem>
                                            <asp:ListItem Value='0.18'>0.18</asp:ListItem>
                                            <asp:ListItem Value='0.17'>0.17</asp:ListItem>
                                            <asp:ListItem Value='0.16'>0.16</asp:ListItem>
                                            <asp:ListItem Value='0.15'>0.15</asp:ListItem>
                                            <asp:ListItem Value='0.14'>0.14</asp:ListItem>
                                            <asp:ListItem Value='0.13'>0.13</asp:ListItem>
                                            <asp:ListItem Value='0.12'>0.12</asp:ListItem>
                                            <asp:ListItem Value='0.11'>0.11</asp:ListItem>
                                            <asp:ListItem Value='0.1'>0.1</asp:ListItem>
                                            <asp:ListItem Value='0.09'>0.09</asp:ListItem>
                                            <asp:ListItem Value='0.08'>0.08</asp:ListItem>
                                            <asp:ListItem Value='0.07'>0.07</asp:ListItem>
                                            <asp:ListItem Value='0.06'>0.06</asp:ListItem>
                                            <asp:ListItem Value='0.05'>0.05</asp:ListItem>
                                            <asp:ListItem Value='0.04'>0.04</asp:ListItem>
                                            <asp:ListItem Value='0.03'>0.03</asp:ListItem>
                                            <asp:ListItem Value='0.02'>0.02</asp:ListItem>
                                            <asp:ListItem Value='0.01'>0.01</asp:ListItem>
                                            <asp:ListItem Selected='true' Value='0'>0</asp:ListItem>
                                        </asp:DropDownList>
                                        </td><td>
                                        <asp:DropDownList ID="ddlAutoS1OR" disabled runat="server" Height="16px">
                                            <asp:ListItem Value='0.7'>0.7</asp:ListItem>
                                            <asp:ListItem Value='0.69'>0.69</asp:ListItem>
                                            <asp:ListItem Value='0.68'>0.68</asp:ListItem>
                                            <asp:ListItem Value='0.67'>0.67</asp:ListItem>
                                            <asp:ListItem Value='0.66'>0.66</asp:ListItem>
                                            <asp:ListItem Value='0.65'>0.65</asp:ListItem>
                                            <asp:ListItem Value='0.64'>0.64</asp:ListItem>
                                            <asp:ListItem Value='0.63'>0.63</asp:ListItem>
                                            <asp:ListItem Value='0.62'>0.62</asp:ListItem>
                                            <asp:ListItem Value='0.61'>0.61</asp:ListItem>
                                            <asp:ListItem Value='0.6'>0.6</asp:ListItem>
                                            <asp:ListItem Value='0.59'>0.59</asp:ListItem>
                                            <asp:ListItem Value='0.58'>0.58</asp:ListItem>
                                            <asp:ListItem Value='0.57'>0.57</asp:ListItem>
                                            <asp:ListItem Value='0.56'>0.56</asp:ListItem>
                                            <asp:ListItem Value='0.55'>0.55</asp:ListItem>
                                            <asp:ListItem Value='0.54'>0.54</asp:ListItem>
                                            <asp:ListItem Value='0.53'>0.53</asp:ListItem>
                                            <asp:ListItem Value='0.52'>0.52</asp:ListItem>
                                            <asp:ListItem Value='0.51'>0.51</asp:ListItem>
                                            <asp:ListItem Value='0.5'>0.5</asp:ListItem>
                                            <asp:ListItem Value='0.49'>0.49</asp:ListItem>
                                            <asp:ListItem Value='0.48'>0.48</asp:ListItem>
                                            <asp:ListItem Value='0.47'>0.47</asp:ListItem>
                                            <asp:ListItem Value='0.46'>0.46</asp:ListItem>
                                            <asp:ListItem Value='0.45'>0.45</asp:ListItem>
                                            <asp:ListItem Value='0.44'>0.44</asp:ListItem>
                                            <asp:ListItem Value='0.43'>0.43</asp:ListItem>
                                            <asp:ListItem Value='0.42'>0.42</asp:ListItem>
                                            <asp:ListItem Value='0.41'>0.41</asp:ListItem>
                                            <asp:ListItem Value='0.4'>0.4</asp:ListItem>
                                            <asp:ListItem Value='0.39'>0.39</asp:ListItem>
                                            <asp:ListItem Value='0.38'>0.38</asp:ListItem>
                                            <asp:ListItem Value='0.37'>0.37</asp:ListItem>
                                            <asp:ListItem Value='0.36'>0.36</asp:ListItem>
                                            <asp:ListItem Value='0.35'>0.35</asp:ListItem>
                                            <asp:ListItem Value='0.34'>0.34</asp:ListItem>
                                            <asp:ListItem Value='0.33'>0.33</asp:ListItem>
                                            <asp:ListItem Value='0.32'>0.32</asp:ListItem>
                                            <asp:ListItem Value='0.31'>0.31</asp:ListItem>
                                            <asp:ListItem Value='0.3'>0.3</asp:ListItem>
                                            <asp:ListItem Value='0.29'>0.29</asp:ListItem>
                                            <asp:ListItem Value='0.28'>0.28</asp:ListItem>
                                            <asp:ListItem Value='0.27'>0.27</asp:ListItem>
                                            <asp:ListItem Value='0.26'>0.26</asp:ListItem>
                                            <asp:ListItem Value='0.25'>0.25</asp:ListItem>
                                            <asp:ListItem Value='0.24'>0.24</asp:ListItem>
                                            <asp:ListItem Value='0.23'>0.23</asp:ListItem>
                                            <asp:ListItem Value='0.22'>0.22</asp:ListItem>
                                            <asp:ListItem Value='0.21'>0.21</asp:ListItem>
                                            <asp:ListItem Value='0.2'>0.2</asp:ListItem>
                                            <asp:ListItem Value='0.19'>0.19</asp:ListItem>
                                            <asp:ListItem Value='0.18'>0.18</asp:ListItem>
                                            <asp:ListItem Value='0.17'>0.17</asp:ListItem>
                                            <asp:ListItem Value='0.16'>0.16</asp:ListItem>
                                            <asp:ListItem Value='0.15'>0.15</asp:ListItem>
                                            <asp:ListItem Value='0.14'>0.14</asp:ListItem>
                                            <asp:ListItem Value='0.13'>0.13</asp:ListItem>
                                            <asp:ListItem Value='0.12'>0.12</asp:ListItem>
                                            <asp:ListItem Value='0.11'>0.11</asp:ListItem>
                                            <asp:ListItem Value='0.1'>0.1</asp:ListItem>
                                            <asp:ListItem Value='0.09'>0.09</asp:ListItem>
                                            <asp:ListItem Value='0.08'>0.08</asp:ListItem>
                                            <asp:ListItem Value='0.07'>0.07</asp:ListItem>
                                            <asp:ListItem Value='0.06'>0.06</asp:ListItem>
                                            <asp:ListItem Value='0.05'>0.05</asp:ListItem>
                                            <asp:ListItem Value='0.04'>0.04</asp:ListItem>
                                            <asp:ListItem Value='0.03'>0.03</asp:ListItem>
                                            <asp:ListItem Value='0.02'>0.02</asp:ListItem>
                                            <asp:ListItem Value='0.01'>0.01</asp:ListItem>
                                            <asp:ListItem Selected='true' Value='0'>0</asp:ListItem>
                                        </asp:DropDownList>
                                        </td></tr><tr class="bg_eb"><td></td><td colspan="5" class="l">
                                        &nbsp;<asp:CheckBox ID="chkCopy1HdpDeadball" onclick="CheckCopyPT(this,arr1Super1)"  runat="server" />Copy From Handicap</td><td colspan="5" class="l">
                                        <asp:CheckBox ID="chkCopy11x2"  onclick="CheckCopyPT(this,arr2Super1);" runat="server" />
                                                    Copy From 1x2</td></tr><tr class="bg_eb"><td rowspan="5">Live!</td><td class="r">Agent</td><td>0</td><td>0</td><td>0</td><td>0</td><td colspan="6" rowspan="2"></td></tr><tr class="bg_eb"><td class="r">Master</td><td>0.65</td><td>0.65</td><td>0.65</td><td>0.65</td></tr><tr class="bg_eb"><td class="r">Super</td><td>
                        
                            <asp:DropDownList ID="ddlListS1Hdpn" runat="server">
                                <asp:ListItem Selected="True">0.05</asp:ListItem>
                                <asp:ListItem Value="0.04">0.04</asp:ListItem>
                             <asp:ListItem Value="0.03">0.03</asp:ListItem>
                              <asp:ListItem Value="0.02">0.02</asp:ListItem>
                               <asp:ListItem Value="0.01">0.01</asp:ListItem>
                                <asp:ListItem Value="0">0</asp:ListItem>
                            </asp:DropDownList>
                                                <a class="imaLink img" href="javascript:ReducePT('listS1HdpL',1)"><img class="hand" hspace="1" id="btnReduce1" name="btnReduce1" src="../App_Themes/AgencyV2/Images/b_down.jpg" /></a><a class="imaLink img" href="javascript:IncreasePT('listS1HdpL',1)"><img class="hand" hspace="1" id="btnIncrease1" name="btnIncrease1" src="../App_Themes/AgencyV2/Images/b_up.jpg"/></a><a class="imaLink img" href="javascript:ReducePT('listS1HdpL',10)"><img class="hand" hspace="1" id="btnReduce10" name="btnReduce10" src="../App_Themes/AgencyV2/Images/b_sub.jpg"/></a><a class="imaLink img" href="javascript:IncreasePT('listS1HdpL',10)"><img class="hand" hspace="1" id="btnIncrease10" name="btnIncrease10" src="../App_Themes/AgencyV2/Images/b_add.jpg"/></a></td><td>
                        
                            <asp:DropDownList ID="ddlListS1OUL" runat="server">
                                <asp:ListItem Selected="True">0.05</asp:ListItem>
                                <asp:ListItem Value="0.04">0.04</asp:ListItem>
                             <asp:ListItem Value="0.03">0.03</asp:ListItem>
                              <asp:ListItem Value="0.02">0.02</asp:ListItem>
                               <asp:ListItem Value="0.01">0.01</asp:ListItem>
                                <asp:ListItem Value="0">0</asp:ListItem>
                            </asp:DropDownList>
                                                </td><td>
                        
                            <asp:DropDownList ID="ddlListS1HdpL" runat="server">
                                <asp:ListItem Selected="True">0.05</asp:ListItem>
                                <asp:ListItem Value="0.04">0.04</asp:ListItem>
                             <asp:ListItem Value="0.03">0.03</asp:ListItem>
                              <asp:ListItem Value="0.02">0.02</asp:ListItem>
                               <asp:ListItem Value="0.01">0.01</asp:ListItem>
                                <asp:ListItem Value="0">0</asp:ListItem>
                            </asp:DropDownList>
                                                </td><td>
                        
                            <asp:DropDownList ID="ddlListS1HdpD1" runat="server">
                                <asp:ListItem Selected="True">0.05</asp:ListItem>
                                <asp:ListItem Value="0.04">0.04</asp:ListItem>
                             <asp:ListItem Value="0.03">0.03</asp:ListItem>
                              <asp:ListItem Value="0.02">0.02</asp:ListItem>
                               <asp:ListItem Value="0.01">0.01</asp:ListItem>
                                <asp:ListItem Value="0">0</asp:ListItem>
                            </asp:DropDownList>
                                                </td><td colspan="6" rowspan="3" class="l">
                                                <asp:CheckBox ID="chkCopy1HdpLive" onclick="CheckCopyPT(this,arr3Super1);" runat="server" />
                                                    Copy From Handicap</td></tr><tr class="bg_eb {clssHidden}"><td rowspan="2" class="r">Super Auto</td><td>
                                                    <asp:CheckBox ID="chkAuto1HdpL" onclick="CheckAutoPreset(this)"  runat="server" />
                                                    </td><td>
                                                    <asp:CheckBox ID="chkAuto1OUL"  runat="server" onclick="CheckAutoPreset(this,'chkCopy1HdpLive')" />
                                                    </td><td>
                                                    <asp:CheckBox ID="chkAuto11stHdpL"  runat="server" onclick="CheckAutoPreset(this,'chkCopy1HdpLive')"/>
                                                    </td><td>
                                                    <asp:CheckBox ID="chkAuto11stOUL" onclick="CheckAutoPreset(this,'chkCopy1HdpLive')" runat="server" />
                                                    </td></tr><tr class="bg_eb {clssHidden}"><td>
                                        <asp:DropDownList ID="ddlAutoS1HdpL" disabled runat="server">
                                            <asp:ListItem Value='0.7'>0.7</asp:ListItem>
                                            <asp:ListItem Value='0.69'>0.69</asp:ListItem>
                                            <asp:ListItem Value='0.68'>0.68</asp:ListItem>
                                            <asp:ListItem Value='0.67'>0.67</asp:ListItem>
                                            <asp:ListItem Value='0.66'>0.66</asp:ListItem>
                                            <asp:ListItem Value='0.65'>0.65</asp:ListItem>
                                            <asp:ListItem Value='0.64'>0.64</asp:ListItem>
                                            <asp:ListItem Value='0.63'>0.63</asp:ListItem>
                                            <asp:ListItem Value='0.62'>0.62</asp:ListItem>
                                            <asp:ListItem Value='0.61'>0.61</asp:ListItem>
                                            <asp:ListItem Value='0.6'>0.6</asp:ListItem>
                                            <asp:ListItem Value='0.59'>0.59</asp:ListItem>
                                            <asp:ListItem Value='0.58'>0.58</asp:ListItem>
                                            <asp:ListItem Value='0.57'>0.57</asp:ListItem>
                                            <asp:ListItem Value='0.56'>0.56</asp:ListItem>
                                            <asp:ListItem Value='0.55'>0.55</asp:ListItem>
                                            <asp:ListItem Value='0.54'>0.54</asp:ListItem>
                                            <asp:ListItem Value='0.53'>0.53</asp:ListItem>
                                            <asp:ListItem Value='0.52'>0.52</asp:ListItem>
                                            <asp:ListItem Value='0.51'>0.51</asp:ListItem>
                                            <asp:ListItem Value='0.5'>0.5</asp:ListItem>
                                            <asp:ListItem Value='0.49'>0.49</asp:ListItem>
                                            <asp:ListItem Value='0.48'>0.48</asp:ListItem>
                                            <asp:ListItem Value='0.47'>0.47</asp:ListItem>
                                            <asp:ListItem Value='0.46'>0.46</asp:ListItem>
                                            <asp:ListItem Value='0.45'>0.45</asp:ListItem>
                                            <asp:ListItem Value='0.44'>0.44</asp:ListItem>
                                            <asp:ListItem Value='0.43'>0.43</asp:ListItem>
                                            <asp:ListItem Value='0.42'>0.42</asp:ListItem>
                                            <asp:ListItem Value='0.41'>0.41</asp:ListItem>
                                            <asp:ListItem Value='0.4'>0.4</asp:ListItem>
                                            <asp:ListItem Value='0.39'>0.39</asp:ListItem>
                                            <asp:ListItem Value='0.38'>0.38</asp:ListItem>
                                            <asp:ListItem Value='0.37'>0.37</asp:ListItem>
                                            <asp:ListItem Value='0.36'>0.36</asp:ListItem>
                                            <asp:ListItem Value='0.35'>0.35</asp:ListItem>
                                            <asp:ListItem Value='0.34'>0.34</asp:ListItem>
                                            <asp:ListItem Value='0.33'>0.33</asp:ListItem>
                                            <asp:ListItem Value='0.32'>0.32</asp:ListItem>
                                            <asp:ListItem Value='0.31'>0.31</asp:ListItem>
                                            <asp:ListItem Value='0.3'>0.3</asp:ListItem>
                                            <asp:ListItem Value='0.29'>0.29</asp:ListItem>
                                            <asp:ListItem Value='0.28'>0.28</asp:ListItem>
                                            <asp:ListItem Value='0.27'>0.27</asp:ListItem>
                                            <asp:ListItem Value='0.26'>0.26</asp:ListItem>
                                            <asp:ListItem Value='0.25'>0.25</asp:ListItem>
                                            <asp:ListItem Value='0.24'>0.24</asp:ListItem>
                                            <asp:ListItem Value='0.23'>0.23</asp:ListItem>
                                            <asp:ListItem Value='0.22'>0.22</asp:ListItem>
                                            <asp:ListItem Value='0.21'>0.21</asp:ListItem>
                                            <asp:ListItem Value='0.2'>0.2</asp:ListItem>
                                            <asp:ListItem Value='0.19'>0.19</asp:ListItem>
                                            <asp:ListItem Value='0.18'>0.18</asp:ListItem>
                                            <asp:ListItem Value='0.17'>0.17</asp:ListItem>
                                            <asp:ListItem Value='0.16'>0.16</asp:ListItem>
                                            <asp:ListItem Value='0.15'>0.15</asp:ListItem>
                                            <asp:ListItem Value='0.14'>0.14</asp:ListItem>
                                            <asp:ListItem Value='0.13'>0.13</asp:ListItem>
                                            <asp:ListItem Value='0.12'>0.12</asp:ListItem>
                                            <asp:ListItem Value='0.11'>0.11</asp:ListItem>
                                            <asp:ListItem Value='0.1'>0.1</asp:ListItem>
                                            <asp:ListItem Value='0.09'>0.09</asp:ListItem>
                                            <asp:ListItem Value='0.08'>0.08</asp:ListItem>
                                            <asp:ListItem Value='0.07'>0.07</asp:ListItem>
                                            <asp:ListItem Value='0.06'>0.06</asp:ListItem>
                                            <asp:ListItem Value='0.05'>0.05</asp:ListItem>
                                            <asp:ListItem Value='0.04'>0.04</asp:ListItem>
                                            <asp:ListItem Value='0.03'>0.03</asp:ListItem>
                                            <asp:ListItem Value='0.02'>0.02</asp:ListItem>
                                            <asp:ListItem Value='0.01'>0.01</asp:ListItem>
                                            <asp:ListItem Selected='true' Value='0'>0</asp:ListItem>
                                        </asp:DropDownList>
                                            <a class="imaLink img" href="javascript:ReducePT('autoS1HdpL',1)"><img class="hand" hspace="1" id="btnReduce1" name="btnReduce1" src="../App_Themes/AgencyV2/Images/b_down.jpg" /></a><a class="imaLink img" href="javascript:IncreasePT('autoS1HdpL',1)"><img class="hand" hspace="1" id="btnIncrease1" name="btnIncrease1" src="../App_Themes/AgencyV2/Images/b_up.jpg"/></a><a class="imaLink img" href="javascript:ReducePT('autoS1HdpL',10)"><img class="hand" hspace="1" id="btnReduce10" name="btnReduce10" src="../App_Themes/AgencyV2/Images/b_sub.jpg"/></a><a class="imaLink img" href="javascript:IncreasePT('autoS1HdpL',10)"><img class="hand" hspace="1" id="btnIncrease10" name="btnIncrease10" src="../App_Themes/AgencyV2/Images/b_add.jpg"/></a></td><td>
                                        <asp:DropDownList ID="ddlAutoS1OUL" disabled runat="server">
                                            <asp:ListItem Value='0.7'>0.7</asp:ListItem>
                                            <asp:ListItem Value='0.69'>0.69</asp:ListItem>
                                            <asp:ListItem Value='0.68'>0.68</asp:ListItem>
                                            <asp:ListItem Value='0.67'>0.67</asp:ListItem>
                                            <asp:ListItem Value='0.66'>0.66</asp:ListItem>
                                            <asp:ListItem Value='0.65'>0.65</asp:ListItem>
                                            <asp:ListItem Value='0.64'>0.64</asp:ListItem>
                                            <asp:ListItem Value='0.63'>0.63</asp:ListItem>
                                            <asp:ListItem Value='0.62'>0.62</asp:ListItem>
                                            <asp:ListItem Value='0.61'>0.61</asp:ListItem>
                                            <asp:ListItem Value='0.6'>0.6</asp:ListItem>
                                            <asp:ListItem Value='0.59'>0.59</asp:ListItem>
                                            <asp:ListItem Value='0.58'>0.58</asp:ListItem>
                                            <asp:ListItem Value='0.57'>0.57</asp:ListItem>
                                            <asp:ListItem Value='0.56'>0.56</asp:ListItem>
                                            <asp:ListItem Value='0.55'>0.55</asp:ListItem>
                                            <asp:ListItem Value='0.54'>0.54</asp:ListItem>
                                            <asp:ListItem Value='0.53'>0.53</asp:ListItem>
                                            <asp:ListItem Value='0.52'>0.52</asp:ListItem>
                                            <asp:ListItem Value='0.51'>0.51</asp:ListItem>
                                            <asp:ListItem Value='0.5'>0.5</asp:ListItem>
                                            <asp:ListItem Value='0.49'>0.49</asp:ListItem>
                                            <asp:ListItem Value='0.48'>0.48</asp:ListItem>
                                            <asp:ListItem Value='0.47'>0.47</asp:ListItem>
                                            <asp:ListItem Value='0.46'>0.46</asp:ListItem>
                                            <asp:ListItem Value='0.45'>0.45</asp:ListItem>
                                            <asp:ListItem Value='0.44'>0.44</asp:ListItem>
                                            <asp:ListItem Value='0.43'>0.43</asp:ListItem>
                                            <asp:ListItem Value='0.42'>0.42</asp:ListItem>
                                            <asp:ListItem Value='0.41'>0.41</asp:ListItem>
                                            <asp:ListItem Value='0.4'>0.4</asp:ListItem>
                                            <asp:ListItem Value='0.39'>0.39</asp:ListItem>
                                            <asp:ListItem Value='0.38'>0.38</asp:ListItem>
                                            <asp:ListItem Value='0.37'>0.37</asp:ListItem>
                                            <asp:ListItem Value='0.36'>0.36</asp:ListItem>
                                            <asp:ListItem Value='0.35'>0.35</asp:ListItem>
                                            <asp:ListItem Value='0.34'>0.34</asp:ListItem>
                                            <asp:ListItem Value='0.33'>0.33</asp:ListItem>
                                            <asp:ListItem Value='0.32'>0.32</asp:ListItem>
                                            <asp:ListItem Value='0.31'>0.31</asp:ListItem>
                                            <asp:ListItem Value='0.3'>0.3</asp:ListItem>
                                            <asp:ListItem Value='0.29'>0.29</asp:ListItem>
                                            <asp:ListItem Value='0.28'>0.28</asp:ListItem>
                                            <asp:ListItem Value='0.27'>0.27</asp:ListItem>
                                            <asp:ListItem Value='0.26'>0.26</asp:ListItem>
                                            <asp:ListItem Value='0.25'>0.25</asp:ListItem>
                                            <asp:ListItem Value='0.24'>0.24</asp:ListItem>
                                            <asp:ListItem Value='0.23'>0.23</asp:ListItem>
                                            <asp:ListItem Value='0.22'>0.22</asp:ListItem>
                                            <asp:ListItem Value='0.21'>0.21</asp:ListItem>
                                            <asp:ListItem Value='0.2'>0.2</asp:ListItem>
                                            <asp:ListItem Value='0.19'>0.19</asp:ListItem>
                                            <asp:ListItem Value='0.18'>0.18</asp:ListItem>
                                            <asp:ListItem Value='0.17'>0.17</asp:ListItem>
                                            <asp:ListItem Value='0.16'>0.16</asp:ListItem>
                                            <asp:ListItem Value='0.15'>0.15</asp:ListItem>
                                            <asp:ListItem Value='0.14'>0.14</asp:ListItem>
                                            <asp:ListItem Value='0.13'>0.13</asp:ListItem>
                                            <asp:ListItem Value='0.12'>0.12</asp:ListItem>
                                            <asp:ListItem Value='0.11'>0.11</asp:ListItem>
                                            <asp:ListItem Value='0.1'>0.1</asp:ListItem>
                                            <asp:ListItem Value='0.09'>0.09</asp:ListItem>
                                            <asp:ListItem Value='0.08'>0.08</asp:ListItem>
                                            <asp:ListItem Value='0.07'>0.07</asp:ListItem>
                                            <asp:ListItem Value='0.06'>0.06</asp:ListItem>
                                            <asp:ListItem Value='0.05'>0.05</asp:ListItem>
                                            <asp:ListItem Value='0.04'>0.04</asp:ListItem>
                                            <asp:ListItem Value='0.03'>0.03</asp:ListItem>
                                            <asp:ListItem Value='0.02'>0.02</asp:ListItem>
                                            <asp:ListItem Value='0.01'>0.01</asp:ListItem>
                                            <asp:ListItem Selected='true' Value='0'>0</asp:ListItem>
                                        </asp:DropDownList>
                                            </td><td>
                                        <asp:DropDownList ID="ddlAutoS1Hd" disabled runat="server">
                                            <asp:ListItem Value='0.7'>0.7</asp:ListItem>
                                            <asp:ListItem Value='0.69'>0.69</asp:ListItem>
                                            <asp:ListItem Value='0.68'>0.68</asp:ListItem>
                                            <asp:ListItem Value='0.67'>0.67</asp:ListItem>
                                            <asp:ListItem Value='0.66'>0.66</asp:ListItem>
                                            <asp:ListItem Value='0.65'>0.65</asp:ListItem>
                                            <asp:ListItem Value='0.64'>0.64</asp:ListItem>
                                            <asp:ListItem Value='0.63'>0.63</asp:ListItem>
                                            <asp:ListItem Value='0.62'>0.62</asp:ListItem>
                                            <asp:ListItem Value='0.61'>0.61</asp:ListItem>
                                            <asp:ListItem Value='0.6'>0.6</asp:ListItem>
                                            <asp:ListItem Value='0.59'>0.59</asp:ListItem>
                                            <asp:ListItem Value='0.58'>0.58</asp:ListItem>
                                            <asp:ListItem Value='0.57'>0.57</asp:ListItem>
                                            <asp:ListItem Value='0.56'>0.56</asp:ListItem>
                                            <asp:ListItem Value='0.55'>0.55</asp:ListItem>
                                            <asp:ListItem Value='0.54'>0.54</asp:ListItem>
                                            <asp:ListItem Value='0.53'>0.53</asp:ListItem>
                                            <asp:ListItem Value='0.52'>0.52</asp:ListItem>
                                            <asp:ListItem Value='0.51'>0.51</asp:ListItem>
                                            <asp:ListItem Value='0.5'>0.5</asp:ListItem>
                                            <asp:ListItem Value='0.49'>0.49</asp:ListItem>
                                            <asp:ListItem Value='0.48'>0.48</asp:ListItem>
                                            <asp:ListItem Value='0.47'>0.47</asp:ListItem>
                                            <asp:ListItem Value='0.46'>0.46</asp:ListItem>
                                            <asp:ListItem Value='0.45'>0.45</asp:ListItem>
                                            <asp:ListItem Value='0.44'>0.44</asp:ListItem>
                                            <asp:ListItem Value='0.43'>0.43</asp:ListItem>
                                            <asp:ListItem Value='0.42'>0.42</asp:ListItem>
                                            <asp:ListItem Value='0.41'>0.41</asp:ListItem>
                                            <asp:ListItem Value='0.4'>0.4</asp:ListItem>
                                            <asp:ListItem Value='0.39'>0.39</asp:ListItem>
                                            <asp:ListItem Value='0.38'>0.38</asp:ListItem>
                                            <asp:ListItem Value='0.37'>0.37</asp:ListItem>
                                            <asp:ListItem Value='0.36'>0.36</asp:ListItem>
                                            <asp:ListItem Value='0.35'>0.35</asp:ListItem>
                                            <asp:ListItem Value='0.34'>0.34</asp:ListItem>
                                            <asp:ListItem Value='0.33'>0.33</asp:ListItem>
                                            <asp:ListItem Value='0.32'>0.32</asp:ListItem>
                                            <asp:ListItem Value='0.31'>0.31</asp:ListItem>
                                            <asp:ListItem Value='0.3'>0.3</asp:ListItem>
                                            <asp:ListItem Value='0.29'>0.29</asp:ListItem>
                                            <asp:ListItem Value='0.28'>0.28</asp:ListItem>
                                            <asp:ListItem Value='0.27'>0.27</asp:ListItem>
                                            <asp:ListItem Value='0.26'>0.26</asp:ListItem>
                                            <asp:ListItem Value='0.25'>0.25</asp:ListItem>
                                            <asp:ListItem Value='0.24'>0.24</asp:ListItem>
                                            <asp:ListItem Value='0.23'>0.23</asp:ListItem>
                                            <asp:ListItem Value='0.22'>0.22</asp:ListItem>
                                            <asp:ListItem Value='0.21'>0.21</asp:ListItem>
                                            <asp:ListItem Value='0.2'>0.2</asp:ListItem>
                                            <asp:ListItem Value='0.19'>0.19</asp:ListItem>
                                            <asp:ListItem Value='0.18'>0.18</asp:ListItem>
                                            <asp:ListItem Value='0.17'>0.17</asp:ListItem>
                                            <asp:ListItem Value='0.16'>0.16</asp:ListItem>
                                            <asp:ListItem Value='0.15'>0.15</asp:ListItem>
                                            <asp:ListItem Value='0.14'>0.14</asp:ListItem>
                                            <asp:ListItem Value='0.13'>0.13</asp:ListItem>
                                            <asp:ListItem Value='0.12'>0.12</asp:ListItem>
                                            <asp:ListItem Value='0.11'>0.11</asp:ListItem>
                                            <asp:ListItem Value='0.1'>0.1</asp:ListItem>
                                            <asp:ListItem Value='0.09'>0.09</asp:ListItem>
                                            <asp:ListItem Value='0.08'>0.08</asp:ListItem>
                                            <asp:ListItem Value='0.07'>0.07</asp:ListItem>
                                            <asp:ListItem Value='0.06'>0.06</asp:ListItem>
                                            <asp:ListItem Value='0.05'>0.05</asp:ListItem>
                                            <asp:ListItem Value='0.04'>0.04</asp:ListItem>
                                            <asp:ListItem Value='0.03'>0.03</asp:ListItem>
                                            <asp:ListItem Value='0.02'>0.02</asp:ListItem>
                                            <asp:ListItem Value='0.01'>0.01</asp:ListItem>
                                            <asp:ListItem Selected='true' Value='0'>0</asp:ListItem>
                                        </asp:DropDownList>
                                            </td><td>
                                        <asp:DropDownList ID="ddlAutoStOUL" disabled runat="server" 
                                                    onselectedindexchanged="ddlAutoS1HdpD0_SelectedIndexChanged">
                                            <asp:ListItem Value='0.7'>0.7</asp:ListItem>
                                            <asp:ListItem Value='0.69'>0.69</asp:ListItem>
                                            <asp:ListItem Value='0.68'>0.68</asp:ListItem>
                                            <asp:ListItem Value='0.67'>0.67</asp:ListItem>
                                            <asp:ListItem Value='0.66'>0.66</asp:ListItem>
                                            <asp:ListItem Value='0.65'>0.65</asp:ListItem>
                                            <asp:ListItem Value='0.64'>0.64</asp:ListItem>
                                            <asp:ListItem Value='0.63'>0.63</asp:ListItem>
                                            <asp:ListItem Value='0.62'>0.62</asp:ListItem>
                                            <asp:ListItem Value='0.61'>0.61</asp:ListItem>
                                            <asp:ListItem Value='0.6'>0.6</asp:ListItem>
                                            <asp:ListItem Value='0.59'>0.59</asp:ListItem>
                                            <asp:ListItem Value='0.58'>0.58</asp:ListItem>
                                            <asp:ListItem Value='0.57'>0.57</asp:ListItem>
                                            <asp:ListItem Value='0.56'>0.56</asp:ListItem>
                                            <asp:ListItem Value='0.55'>0.55</asp:ListItem>
                                            <asp:ListItem Value='0.54'>0.54</asp:ListItem>
                                            <asp:ListItem Value='0.53'>0.53</asp:ListItem>
                                            <asp:ListItem Value='0.52'>0.52</asp:ListItem>
                                            <asp:ListItem Value='0.51'>0.51</asp:ListItem>
                                            <asp:ListItem Value='0.5'>0.5</asp:ListItem>
                                            <asp:ListItem Value='0.49'>0.49</asp:ListItem>
                                            <asp:ListItem Value='0.48'>0.48</asp:ListItem>
                                            <asp:ListItem Value='0.47'>0.47</asp:ListItem>
                                            <asp:ListItem Value='0.46'>0.46</asp:ListItem>
                                            <asp:ListItem Value='0.45'>0.45</asp:ListItem>
                                            <asp:ListItem Value='0.44'>0.44</asp:ListItem>
                                            <asp:ListItem Value='0.43'>0.43</asp:ListItem>
                                            <asp:ListItem Value='0.42'>0.42</asp:ListItem>
                                            <asp:ListItem Value='0.41'>0.41</asp:ListItem>
                                            <asp:ListItem Value='0.4'>0.4</asp:ListItem>
                                            <asp:ListItem Value='0.39'>0.39</asp:ListItem>
                                            <asp:ListItem Value='0.38'>0.38</asp:ListItem>
                                            <asp:ListItem Value='0.37'>0.37</asp:ListItem>
                                            <asp:ListItem Value='0.36'>0.36</asp:ListItem>
                                            <asp:ListItem Value='0.35'>0.35</asp:ListItem>
                                            <asp:ListItem Value='0.34'>0.34</asp:ListItem>
                                            <asp:ListItem Value='0.33'>0.33</asp:ListItem>
                                            <asp:ListItem Value='0.32'>0.32</asp:ListItem>
                                            <asp:ListItem Value='0.31'>0.31</asp:ListItem>
                                            <asp:ListItem Value='0.3'>0.3</asp:ListItem>
                                            <asp:ListItem Value='0.29'>0.29</asp:ListItem>
                                            <asp:ListItem Value='0.28'>0.28</asp:ListItem>
                                            <asp:ListItem Value='0.27'>0.27</asp:ListItem>
                                            <asp:ListItem Value='0.26'>0.26</asp:ListItem>
                                            <asp:ListItem Value='0.25'>0.25</asp:ListItem>
                                            <asp:ListItem Value='0.24'>0.24</asp:ListItem>
                                            <asp:ListItem Value='0.23'>0.23</asp:ListItem>
                                            <asp:ListItem Value='0.22'>0.22</asp:ListItem>
                                            <asp:ListItem Value='0.21'>0.21</asp:ListItem>
                                            <asp:ListItem Value='0.2'>0.2</asp:ListItem>
                                            <asp:ListItem Value='0.19'>0.19</asp:ListItem>
                                            <asp:ListItem Value='0.18'>0.18</asp:ListItem>
                                            <asp:ListItem Value='0.17'>0.17</asp:ListItem>
                                            <asp:ListItem Value='0.16'>0.16</asp:ListItem>
                                            <asp:ListItem Value='0.15'>0.15</asp:ListItem>
                                            <asp:ListItem Value='0.14'>0.14</asp:ListItem>
                                            <asp:ListItem Value='0.13'>0.13</asp:ListItem>
                                            <asp:ListItem Value='0.12'>0.12</asp:ListItem>
                                            <asp:ListItem Value='0.11'>0.11</asp:ListItem>
                                            <asp:ListItem Value='0.1'>0.1</asp:ListItem>
                                            <asp:ListItem Value='0.09'>0.09</asp:ListItem>
                                            <asp:ListItem Value='0.08'>0.08</asp:ListItem>
                                            <asp:ListItem Value='0.07'>0.07</asp:ListItem>
                                            <asp:ListItem Value='0.06'>0.06</asp:ListItem>
                                            <asp:ListItem Value='0.05'>0.05</asp:ListItem>
                                            <asp:ListItem Value='0.04'>0.04</asp:ListItem>
                                            <asp:ListItem Value='0.03'>0.03</asp:ListItem>
                                            <asp:ListItem Value='0.02'>0.02</asp:ListItem>
                                            <asp:ListItem Value='0.01'>0.01</asp:ListItem>
                                            <asp:ListItem Selected='true' Value='0'>0</asp:ListItem>
                                        </asp:DropDownList>
                                            </td></tr></table></div></td></tr></table></div></div><div class="{none-copy}"><div class="l"><br />
                                            <asp:CheckBox ID="chkCopyBasket"  runat="server" onclick="CopyBasketPT(this);"/>
                                            <b><span style="cursor: pointer;"  onclick="$('chkCopyBasket').click();">Copy all Position Taking from Basketball Handicap</span></b></div></div><div class="l" id="linkBasket" onclick="OpenPanelEdit('panelBasket'); togglePTmenu('bullet2')"><div class="button_cont"><div class="menu_content"><ul><li><a id="bullet2" class="md2_on" href="#1">Basketball</a></li></ul></div></div></div><div style="display: none" id="panelBasket"><div class="l"><table class="sptPT" style="width: 60%"><tr><td><div id="divUpdPT2" name="divUpdPT2"><table border="1" width="100%" class="tblRpt"><tr class="bg_eb"><td></td><td>Handicap</td><td>Over/Under</td><td>Odd/Even</td><td>Mix Parlay</td><td>Money Line</td><td></td></tr><tr class="bg_eb"><td class="r">Agent</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td rowspan="2"></td></tr><tr class="bg_eb"><td class="r">Master</td><td>0.65</td><td>0.65</td><td>0.65</td><td>0.65</td><td>0.65</td></tr><tr class="bg_eb"><td class="r">Super</td><td><select id="listS2Hdp" name="listS2Hdp"><option selected='true' value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value='0.01'>0.01</option><option value='0'>0</option></select><a class="imaLink img" href="javascript:ReducePT('listS2Hdp',1)"><img class="hand" hspace="1" id="btnReduce1" name="btnReduce1" src="../App_Themes/AgencyV2/Images/b_down.jpg" /></a><a class="imaLink img" href="javascript:IncreasePT('listS2Hdp',1)"><img class="hand" hspace="1" id="btnIncrease1" name="btnIncrease1" src="../App_Themes/AgencyV2/Images/b_up.jpg"/></a><a class="imaLink img" href="javascript:ReducePT('listS2Hdp',10)"><img class="hand" hspace="1" id="btnReduce10" name="btnReduce10" src="../App_Themes/AgencyV2/Images/b_sub.jpg"/></a><a class="imaLink img" href="javascript:IncreasePT('listS2Hdp',10)"><img class="hand" hspace="1" id="btnIncrease10" name="btnIncrease10" src="../App_Themes/AgencyV2/Images/b_add.jpg"/></a></td><td><select id="listS2OU" name="listS2OU"><option selected='true' value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value='0.01'>0.01</option><option value='0'>0</option></select></td><td><select id="listS2OE" name="listS2OE"><option selected='true' value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value='0.01'>0.01</option><option value='0'>0</option></select></td><td><select id="listS2MP" name="listS2MP"><option selected='true' value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value='0.01'>0.01</option><option value='0'>0</option></select></td><td><select id="listS2ML" name="listS2ML"><option selected='true' value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value='0.01'>0.01</option><option value='0'>0</option></select></td><td rowspan="3" class="l"><input type="checkbox" {chk-hdp} id="chkCopy2Hdp" name="chkCopy2Hdp" onclick="CheckCopyPT(this,arrSuper2);" />Copy From Handicap</td></tr><tr class="bg_eb {clssHidden}"><td rowspan="2" class="r">Super Auto</td><td><input type="checkbox" onclick="CheckAutoPreset(this)" id="chkAuto2Hdp" name="chkAuto2Hdp"  /></td><td><input type="checkbox" onclick="CheckAutoPreset(this,'chkCopy2Hdp')" id="chkAuto2OU" name="chkAuto2OU"  /></td><td><input type="checkbox" onclick="CheckAutoPreset(this,'chkCopy2Hdp')" id="chkAuto2OE" name="chkAuto2OE"  /></td><td><input type="checkbox" onclick="CheckAutoPreset(this,'chkCopy2Hdp')" id="chkAuto2MP" name="chkAuto2MP"  /></td><td><input type="checkbox" onclick="CheckAutoPreset(this,'chkCopy2Hdp')" id="chkAuto2ML" name="chkAuto2ML"  /></td></tr><tr class="bg_eb {clssHidden}"><td><select id="autoS2Hdp" name="autoS2Hdp" disabled><option value='0.7'>0.7</option><option value='0.69'>0.69</option><option value='0.68'>0.68</option><option value='0.67'>0.67</option><option value='0.66'>0.66</option><option value='0.65'>0.65</option><option value='0.64'>0.64</option><option value='0.63'>0.63</option><option value='0.62'>0.62</option><option value='0.61'>0.61</option><option value='0.6'>0.6</option><option value='0.59'>0.59</option><option value='0.58'>0.58</option><option value='0.57'>0.57</option><option value='0.56'>0.56</option><option value='0.55'>0.55</option><option value='0.54'>0.54</option><option value='0.53'>0.53</option><option value='0.52'>0.52</option><option value='0.51'>0.51</option><option value='0.5'>0.5</option><option value='0.49'>0.49</option><option value='0.48'>0.48</option><option value='0.47'>0.47</option><option value='0.46'>0.46</option><option value='0.45'>0.45</option><option value='0.44'>0.44</option><option value='0.43'>0.43</option><option value='0.42'>0.42</option><option value='0.41'>0.41</option><option value='0.4'>0.4</option><option value='0.39'>0.39</option><option value='0.38'>0.38</option><option value='0.37'>0.37</option><option value='0.36'>0.36</option><option value='0.35'>0.35</option><option value='0.34'>0.34</option><option value='0.33'>0.33</option><option value='0.32'>0.32</option><option value='0.31'>0.31</option><option value='0.3'>0.3</option><option value='0.29'>0.29</option><option value='0.28'>0.28</option><option value='0.27'>0.27</option><option value='0.26'>0.26</option><option value='0.25'>0.25</option><option value='0.24'>0.24</option><option value='0.23'>0.23</option><option value='0.22'>0.22</option><option value='0.21'>0.21</option><option value='0.2'>0.2</option><option value='0.19'>0.19</option><option value='0.18'>0.18</option><option value='0.17'>0.17</option><option value='0.16'>0.16</option><option value='0.15'>0.15</option><option value='0.14'>0.14</option><option value='0.13'>0.13</option><option value='0.12'>0.12</option><option value='0.11'>0.11</option><option value='0.1'>0.1</option><option value='0.09'>0.09</option><option value='0.08'>0.08</option><option value='0.07'>0.07</option><option value='0.06'>0.06</option><option value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value='0.01'>0.01</option><option selected='true' value='0'>0</option></select><a class="imaLink img" href="javascript:ReducePT('autoS2Hdp',1)"><img class="hand" hspace="1" id="btnReduce1" name="btnReduce1" src="../App_Themes/AgencyV2/Images/b_down.jpg" /></a><a class="imaLink img" href="javascript:IncreasePT('autoS2Hdp',1)"><img class="hand" hspace="1" id="btnIncrease1" name="btnIncrease1" src="../App_Themes/AgencyV2/Images/b_up.jpg"/></a><a class="imaLink img" href="javascript:ReducePT('autoS2Hdp',10)"><img class="hand" hspace="1" id="btnReduce10" name="btnReduce10" src="../App_Themes/AgencyV2/Images/b_sub.jpg"/></a><a class="imaLink img" href="javascript:IncreasePT('autoS2Hdp',10)"><img class="hand" hspace="1" id="btnIncrease10" name="btnIncrease10" src="../App_Themes/AgencyV2/Images/b_add.jpg"/></a></td><td><select id="autoS2OU" name="autoS2OU" disabled><option value='0.7'>0.7</option><option value='0.69'>0.69</option><option value='0.68'>0.68</option><option value='0.67'>0.67</option><option value='0.66'>0.66</option><option value='0.65'>0.65</option><option value='0.64'>0.64</option><option value='0.63'>0.63</option><option value='0.62'>0.62</option><option value='0.61'>0.61</option><option value='0.6'>0.6</option><option value='0.59'>0.59</option><option value='0.58'>0.58</option><option value='0.57'>0.57</option><option value='0.56'>0.56</option><option value='0.55'>0.55</option><option value='0.54'>0.54</option><option value='0.53'>0.53</option><option value='0.52'>0.52</option><option value='0.51'>0.51</option><option value='0.5'>0.5</option><option value='0.49'>0.49</option><option value='0.48'>0.48</option><option value='0.47'>0.47</option><option value='0.46'>0.46</option><option value='0.45'>0.45</option><option value='0.44'>0.44</option><option value='0.43'>0.43</option><option value='0.42'>0.42</option><option value='0.41'>0.41</option><option value='0.4'>0.4</option><option value='0.39'>0.39</option><option value='0.38'>0.38</option><option value='0.37'>0.37</option><option value='0.36'>0.36</option><option value='0.35'>0.35</option><option value='0.34'>0.34</option><option value='0.33'>0.33</option><option value='0.32'>0.32</option><option value='0.31'>0.31</option><option value='0.3'>0.3</option><option value='0.29'>0.29</option><option value='0.28'>0.28</option><option value='0.27'>0.27</option><option value='0.26'>0.26</option><option value='0.25'>0.25</option><option value='0.24'>0.24</option><option value='0.23'>0.23</option><option value='0.22'>0.22</option><option value='0.21'>0.21</option><option value='0.2'>0.2</option><option value='0.19'>0.19</option><option value='0.18'>0.18</option><option value='0.17'>0.17</option><option value='0.16'>0.16</option><option value='0.15'>0.15</option><option value='0.14'>0.14</option><option value='0.13'>0.13</option><option value='0.12'>0.12</option><option value='0.11'>0.11</option><option value='0.1'>0.1</option><option value='0.09'>0.09</option><option value='0.08'>0.08</option><option value='0.07'>0.07</option><option value='0.06'>0.06</option><option value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value='0.01'>0.01</option><option selected='true' value='0'>0</option></select></td><td><select id="autoS2OE" name="autoS2OE" disabled><option value='0.7'>0.7</option><option value='0.69'>0.69</option><option value='0.68'>0.68</option><option value='0.67'>0.67</option><option value='0.66'>0.66</option><option value='0.65'>0.65</option><option value='0.64'>0.64</option><option value='0.63'>0.63</option><option value='0.62'>0.62</option><option value='0.61'>0.61</option><option value='0.6'>0.6</option><option value='0.59'>0.59</option><option value='0.58'>0.58</option><option value='0.57'>0.57</option><option value='0.56'>0.56</option><option value='0.55'>0.55</option><option value='0.54'>0.54</option><option value='0.53'>0.53</option><option value='0.52'>0.52</option><option value='0.51'>0.51</option><option value='0.5'>0.5</option><option value='0.49'>0.49</option><option value='0.48'>0.48</option><option value='0.47'>0.47</option><option value='0.46'>0.46</option><option value='0.45'>0.45</option><option value='0.44'>0.44</option><option value='0.43'>0.43</option><option value='0.42'>0.42</option><option value='0.41'>0.41</option><option value='0.4'>0.4</option><option value='0.39'>0.39</option><option value='0.38'>0.38</option><option value='0.37'>0.37</option><option value='0.36'>0.36</option><option value='0.35'>0.35</option><option value='0.34'>0.34</option><option value='0.33'>0.33</option><option value='0.32'>0.32</option><option value='0.31'>0.31</option><option value='0.3'>0.3</option><option value='0.29'>0.29</option><option value='0.28'>0.28</option><option value='0.27'>0.27</option><option value='0.26'>0.26</option><option value='0.25'>0.25</option><option value='0.24'>0.24</option><option value='0.23'>0.23</option><option value='0.22'>0.22</option><option value='0.21'>0.21</option><option value='0.2'>0.2</option><option value='0.19'>0.19</option><option value='0.18'>0.18</option><option value='0.17'>0.17</option><option value='0.16'>0.16</option><option value='0.15'>0.15</option><option value='0.14'>0.14</option><option value='0.13'>0.13</option><option value='0.12'>0.12</option><option value='0.11'>0.11</option><option value='0.1'>0.1</option><option value='0.09'>0.09</option><option value='0.08'>0.08</option><option value='0.07'>0.07</option><option value='0.06'>0.06</option><option value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value='0.01'>0.01</option><option selected='true' value='0'>0</option></select></td><td><select id="autoS2MP" name="autoS2MP" disabled><option value='0.7'>0.7</option><option value='0.69'>0.69</option><option value='0.68'>0.68</option><option value='0.67'>0.67</option><option value='0.66'>0.66</option><option value='0.65'>0.65</option><option value='0.64'>0.64</option><option value='0.63'>0.63</option><option value='0.62'>0.62</option><option value='0.61'>0.61</option><option value='0.6'>0.6</option><option value='0.59'>0.59</option><option value='0.58'>0.58</option><option value='0.57'>0.57</option><option value='0.56'>0.56</option><option value='0.55'>0.55</option><option value='0.54'>0.54</option><option value='0.53'>0.53</option><option value='0.52'>0.52</option><option value='0.51'>0.51</option><option value='0.5'>0.5</option><option value='0.49'>0.49</option><option value='0.48'>0.48</option><option value='0.47'>0.47</option><option value='0.46'>0.46</option><option value='0.45'>0.45</option><option value='0.44'>0.44</option><option value='0.43'>0.43</option><option value='0.42'>0.42</option><option value='0.41'>0.41</option><option value='0.4'>0.4</option><option value='0.39'>0.39</option><option value='0.38'>0.38</option><option value='0.37'>0.37</option><option value='0.36'>0.36</option><option value='0.35'>0.35</option><option value='0.34'>0.34</option><option value='0.33'>0.33</option><option value='0.32'>0.32</option><option value='0.31'>0.31</option><option value='0.3'>0.3</option><option value='0.29'>0.29</option><option value='0.28'>0.28</option><option value='0.27'>0.27</option><option value='0.26'>0.26</option><option value='0.25'>0.25</option><option value='0.24'>0.24</option><option value='0.23'>0.23</option><option value='0.22'>0.22</option><option value='0.21'>0.21</option><option value='0.2'>0.2</option><option value='0.19'>0.19</option><option value='0.18'>0.18</option><option value='0.17'>0.17</option><option value='0.16'>0.16</option><option value='0.15'>0.15</option><option value='0.14'>0.14</option><option value='0.13'>0.13</option><option value='0.12'>0.12</option><option value='0.11'>0.11</option><option value='0.1'>0.1</option><option value='0.09'>0.09</option><option value='0.08'>0.08</option><option value='0.07'>0.07</option><option value='0.06'>0.06</option><option value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value='0.01'>0.01</option><option selected='true' value='0'>0</option></select></td><td><select id="autoS2ML" name="autoS2ML" disabled><option value='0.7'>0.7</option><option value='0.69'>0.69</option><option value='0.68'>0.68</option><option value='0.67'>0.67</option><option value='0.66'>0.66</option><option value='0.65'>0.65</option><option value='0.64'>0.64</option><option value='0.63'>0.63</option><option value='0.62'>0.62</option><option value='0.61'>0.61</option><option value='0.6'>0.6</option><option value='0.59'>0.59</option><option value='0.58'>0.58</option><option value='0.57'>0.57</option><option value='0.56'>0.56</option><option value='0.55'>0.55</option><option value='0.54'>0.54</option><option value='0.53'>0.53</option><option value='0.52'>0.52</option><option value='0.51'>0.51</option><option value='0.5'>0.5</option><option value='0.49'>0.49</option><option value='0.48'>0.48</option><option value='0.47'>0.47</option><option value='0.46'>0.46</option><option value='0.45'>0.45</option><option value='0.44'>0.44</option><option value='0.43'>0.43</option><option value='0.42'>0.42</option><option value='0.41'>0.41</option><option value='0.4'>0.4</option><option value='0.39'>0.39</option><option value='0.38'>0.38</option><option value='0.37'>0.37</option><option value='0.36'>0.36</option><option value='0.35'>0.35</option><option value='0.34'>0.34</option><option value='0.33'>0.33</option><option value='0.32'>0.32</option><option value='0.31'>0.31</option><option value='0.3'>0.3</option><option value='0.29'>0.29</option><option value='0.28'>0.28</option><option value='0.27'>0.27</option><option value='0.26'>0.26</option><option value='0.25'>0.25</option><option value='0.24'>0.24</option><option value='0.23'>0.23</option><option value='0.22'>0.22</option><option value='0.21'>0.21</option><option value='0.2'>0.2</option><option value='0.19'>0.19</option><option value='0.18'>0.18</option><option value='0.17'>0.17</option><option value='0.16'>0.16</option><option value='0.15'>0.15</option><option value='0.14'>0.14</option><option value='0.13'>0.13</option><option value='0.12'>0.12</option><option value='0.11'>0.11</option><option value='0.1'>0.1</option><option value='0.09'>0.09</option><option value='0.08'>0.08</option><option value='0.07'>0.07</option><option value='0.06'>0.06</option><option value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value='0.01'>0.01</option><option selected='true' value='0'>0</option></select></td></tr></table></div></td></tr></table></div></div><div class="l" id="linkFootball" onclick="OpenPanelEdit('panelFootball'); togglePTmenu('bullet3')"><div class="button_cont"><div class="menu_content"><ul><li><a id="bullet3" class="md2_on" href="#1">Football</a></li></ul></div></div></div><div style="display: none" id="panelFootball"><div class="l"><table class="sptPT" style="width: 60%"><tr><td><div id="divUpdPT3" name="divUpdPT3"><table border="1" width="100%" class="tblRpt"><tr class="bg_eb"><td></td><td>Handicap</td><td>Over/Under</td><td>Odd/Even</td><td>Money Line</td><td></td></tr><tr class="bg_eb"><td class="r">Agent</td><td>0</td><td>0</td><td>0</td><td>0</td><td rowspan="2"></td></tr><tr class="bg_eb"><td class="r">Master</td><td>0.65</td><td>0.65</td><td>0.65</td><td>0.65</td></tr><tr class="bg_eb"><td class="r">Super</td><td><select id="listS3Hdp" name="listS3Hdp"><option selected='true' value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value='0.01'>0.01</option><option value='0'>0</option></select><a class="imaLink img" href="javascript:ReducePT('listS3Hdp',1)"><img class="hand" hspace="1" id="btnReduce1" name="btnReduce1" src="../App_Themes/AgencyV2/Images/b_down.jpg" /></a><a class="imaLink img" href="javascript:IncreasePT('listS3Hdp',1)"><img class="hand" hspace="1" id="btnIncrease1" name="btnIncrease1" src="../App_Themes/AgencyV2/Images/b_up.jpg"/></a><a class="imaLink img" href="javascript:ReducePT('listS3Hdp',10)"><img class="hand" hspace="1" id="btnReduce10" name="btnReduce10" src="../App_Themes/AgencyV2/Images/b_sub.jpg"/></a><a class="imaLink img" href="javascript:IncreasePT('listS3Hdp',10)"><img class="hand" hspace="1" id="btnIncrease10" name="btnIncrease10" src="../App_Themes/AgencyV2/Images/b_add.jpg"/></a></td><td><select id="listS3OU" name="listS3OU"><option selected='true' value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value='0.01'>0.01</option><option value='0'>0</option></select></td><td><select id="listS3OE" name="listS3OE"><option selected='true' value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value='0.01'>0.01</option><option value='0'>0</option></select></td><td><select id="listS3ML" name="listS3ML"><option selected='true' value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value='0.01'>0.01</option><option value='0'>0</option></select></td><td rowspan="3" class="l"><input type="checkbox" {chk-hdp} id="chkCopy3Hdp" name="chkCopy3Hdp" onclick="CheckCopyPT(this,arrSuper3);" />Copy From Handicap</td></tr><tr class="bg_eb {clssHidden}"><td rowspan="2" class="r">Super Auto</td><td><input type="checkbox" onclick="CheckAutoPreset(this)" id="chkAuto3Hdp" name="chkAuto3Hdp"  /></td><td><input type="checkbox" onclick="CheckAutoPreset(this,'chkCopy3Hdp')" id="chkAuto3OU" name="chkAuto3OU"  /></td><td><input type="checkbox" onclick="CheckAutoPreset(this,'chkCopy3Hdp')" id="chkAuto3OE" name="chkAuto3OE"  /></td><td><input type="checkbox" onclick="CheckAutoPreset(this,'chkCopy3Hdp')" id="chkAuto3ML" name="chkAuto3ML"  /></td></tr><tr class="bg_eb {clssHidden}"><td><select id="autoS3Hdp" name="autoS3Hdp" disabled><option value='0.7'>0.7</option><option value='0.69'>0.69</option><option value='0.68'>0.68</option><option value='0.67'>0.67</option><option value='0.66'>0.66</option><option value='0.65'>0.65</option><option value='0.64'>0.64</option><option value='0.63'>0.63</option><option value='0.62'>0.62</option><option value='0.61'>0.61</option><option value='0.6'>0.6</option><option value='0.59'>0.59</option><option value='0.58'>0.58</option><option value='0.57'>0.57</option><option value='0.56'>0.56</option><option value='0.55'>0.55</option><option value='0.54'>0.54</option><option value='0.53'>0.53</option><option value='0.52'>0.52</option><option value='0.51'>0.51</option><option value='0.5'>0.5</option><option value='0.49'>0.49</option><option value='0.48'>0.48</option><option value='0.47'>0.47</option><option value='0.46'>0.46</option><option value='0.45'>0.45</option><option value='0.44'>0.44</option><option value='0.43'>0.43</option><option value='0.42'>0.42</option><option value='0.41'>0.41</option><option value='0.4'>0.4</option><option value='0.39'>0.39</option><option value='0.38'>0.38</option><option value='0.37'>0.37</option><option value='0.36'>0.36</option><option value='0.35'>0.35</option><option value='0.34'>0.34</option><option value='0.33'>0.33</option><option value='0.32'>0.32</option><option value='0.31'>0.31</option><option value='0.3'>0.3</option><option value='0.29'>0.29</option><option value='0.28'>0.28</option><option value='0.27'>0.27</option><option value='0.26'>0.26</option><option value='0.25'>0.25</option><option value='0.24'>0.24</option><option value='0.23'>0.23</option><option value='0.22'>0.22</option><option value='0.21'>0.21</option><option value='0.2'>0.2</option><option value='0.19'>0.19</option><option value='0.18'>0.18</option><option value='0.17'>0.17</option><option value='0.16'>0.16</option><option value='0.15'>0.15</option><option value='0.14'>0.14</option><option value='0.13'>0.13</option><option value='0.12'>0.12</option><option value='0.11'>0.11</option><option value='0.1'>0.1</option><option value='0.09'>0.09</option><option value='0.08'>0.08</option><option value='0.07'>0.07</option><option value='0.06'>0.06</option><option value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value='0.01'>0.01</option><option selected='true' value='0'>0</option></select><a class="imaLink img" href="javascript:ReducePT('autoS3Hdp',1)"><img class="hand" hspace="1" id="btnReduce1" name="btnReduce1" src="../App_Themes/AgencyV2/Images/b_down.jpg" /></a><a class="imaLink img" href="javascript:IncreasePT('autoS3Hdp',1)"><img class="hand" hspace="1" id="btnIncrease1" name="btnIncrease1" src="../App_Themes/AgencyV2/Images/b_up.jpg"/></a><a class="imaLink img" href="javascript:ReducePT('autoS3Hdp',10)"><img class="hand" hspace="1" id="btnReduce10" name="btnReduce10" src="../App_Themes/AgencyV2/Images/b_sub.jpg"/></a><a class="imaLink img" href="javascript:IncreasePT('autoS3Hdp',10)"><img class="hand" hspace="1" id="btnIncrease10" name="btnIncrease10" src="../App_Themes/AgencyV2/Images/b_add.jpg"/></a></td><td><select id="autoS3OU" name="autoS3OU" disabled><option value='0.7'>0.7</option><option value='0.69'>0.69</option><option value='0.68'>0.68</option><option value='0.67'>0.67</option><option value='0.66'>0.66</option><option value='0.65'>0.65</option><option value='0.64'>0.64</option><option value='0.63'>0.63</option><option value='0.62'>0.62</option><option value='0.61'>0.61</option><option value='0.6'>0.6</option><option value='0.59'>0.59</option><option value='0.58'>0.58</option><option value='0.57'>0.57</option><option value='0.56'>0.56</option><option value='0.55'>0.55</option><option value='0.54'>0.54</option><option value='0.53'>0.53</option><option value='0.52'>0.52</option><option value='0.51'>0.51</option><option value='0.5'>0.5</option><option value='0.49'>0.49</option><option value='0.48'>0.48</option><option value='0.47'>0.47</option><option value='0.46'>0.46</option><option value='0.45'>0.45</option><option value='0.44'>0.44</option><option value='0.43'>0.43</option><option value='0.42'>0.42</option><option value='0.41'>0.41</option><option value='0.4'>0.4</option><option value='0.39'>0.39</option><option value='0.38'>0.38</option><option value='0.37'>0.37</option><option value='0.36'>0.36</option><option value='0.35'>0.35</option><option value='0.34'>0.34</option><option value='0.33'>0.33</option><option value='0.32'>0.32</option><option value='0.31'>0.31</option><option value='0.3'>0.3</option><option value='0.29'>0.29</option><option value='0.28'>0.28</option><option value='0.27'>0.27</option><option value='0.26'>0.26</option><option value='0.25'>0.25</option><option value='0.24'>0.24</option><option value='0.23'>0.23</option><option value='0.22'>0.22</option><option value='0.21'>0.21</option><option value='0.2'>0.2</option><option value='0.19'>0.19</option><option value='0.18'>0.18</option><option value='0.17'>0.17</option><option value='0.16'>0.16</option><option value='0.15'>0.15</option><option value='0.14'>0.14</option><option value='0.13'>0.13</option><option value='0.12'>0.12</option><option value='0.11'>0.11</option><option value='0.1'>0.1</option><option value='0.09'>0.09</option><option value='0.08'>0.08</option><option value='0.07'>0.07</option><option value='0.06'>0.06</option><option value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value='0.01'>0.01</option><option selected='true' value='0'>0</option></select></td><td><select id="autoS3OE" name="autoS3OE" disabled><option value='0.7'>0.7</option><option value='0.69'>0.69</option><option value='0.68'>0.68</option><option value='0.67'>0.67</option><option value='0.66'>0.66</option><option value='0.65'>0.65</option><option value='0.64'>0.64</option><option value='0.63'>0.63</option><option value='0.62'>0.62</option><option value='0.61'>0.61</option><option value='0.6'>0.6</option><option value='0.59'>0.59</option><option value='0.58'>0.58</option><option value='0.57'>0.57</option><option value='0.56'>0.56</option><option value='0.55'>0.55</option><option value='0.54'>0.54</option><option value='0.53'>0.53</option><option value='0.52'>0.52</option><option value='0.51'>0.51</option><option value='0.5'>0.5</option><option value='0.49'>0.49</option><option value='0.48'>0.48</option><option value='0.47'>0.47</option><option value='0.46'>0.46</option><option value='0.45'>0.45</option><option value='0.44'>0.44</option><option value='0.43'>0.43</option><option value='0.42'>0.42</option><option value='0.41'>0.41</option><option value='0.4'>0.4</option><option value='0.39'>0.39</option><option value='0.38'>0.38</option><option value='0.37'>0.37</option><option value='0.36'>0.36</option><option value='0.35'>0.35</option><option value='0.34'>0.34</option><option value='0.33'>0.33</option><option value='0.32'>0.32</option><option value='0.31'>0.31</option><option value='0.3'>0.3</option><option value='0.29'>0.29</option><option value='0.28'>0.28</option><option value='0.27'>0.27</option><option value='0.26'>0.26</option><option value='0.25'>0.25</option><option value='0.24'>0.24</option><option value='0.23'>0.23</option><option value='0.22'>0.22</option><option value='0.21'>0.21</option><option value='0.2'>0.2</option><option value='0.19'>0.19</option><option value='0.18'>0.18</option><option value='0.17'>0.17</option><option value='0.16'>0.16</option><option value='0.15'>0.15</option><option value='0.14'>0.14</option><option value='0.13'>0.13</option><option value='0.12'>0.12</option><option value='0.11'>0.11</option><option value='0.1'>0.1</option><option value='0.09'>0.09</option><option value='0.08'>0.08</option><option value='0.07'>0.07</option><option value='0.06'>0.06</option><option value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value='0.01'>0.01</option><option selected='true' value='0'>0</option></select></td><td><select id="autoS3ML" name="autoS3ML" disabled><option value='0.7'>0.7</option><option value='0.69'>0.69</option><option value='0.68'>0.68</option><option value='0.67'>0.67</option><option value='0.66'>0.66</option><option value='0.65'>0.65</option><option value='0.64'>0.64</option><option value='0.63'>0.63</option><option value='0.62'>0.62</option><option value='0.61'>0.61</option><option value='0.6'>0.6</option><option value='0.59'>0.59</option><option value='0.58'>0.58</option><option value='0.57'>0.57</option><option value='0.56'>0.56</option><option value='0.55'>0.55</option><option value='0.54'>0.54</option><option value='0.53'>0.53</option><option value='0.52'>0.52</option><option value='0.51'>0.51</option><option value='0.5'>0.5</option><option value='0.49'>0.49</option><option value='0.48'>0.48</option><option value='0.47'>0.47</option><option value='0.46'>0.46</option><option value='0.45'>0.45</option><option value='0.44'>0.44</option><option value='0.43'>0.43</option><option value='0.42'>0.42</option><option value='0.41'>0.41</option><option value='0.4'>0.4</option><option value='0.39'>0.39</option><option value='0.38'>0.38</option><option value='0.37'>0.37</option><option value='0.36'>0.36</option><option value='0.35'>0.35</option><option value='0.34'>0.34</option><option value='0.33'>0.33</option><option value='0.32'>0.32</option><option value='0.31'>0.31</option><option value='0.3'>0.3</option><option value='0.29'>0.29</option><option value='0.28'>0.28</option><option value='0.27'>0.27</option><option value='0.26'>0.26</option><option value='0.25'>0.25</option><option value='0.24'>0.24</option><option value='0.23'>0.23</option><option value='0.22'>0.22</option><option value='0.21'>0.21</option><option value='0.2'>0.2</option><option value='0.19'>0.19</option><option value='0.18'>0.18</option><option value='0.17'>0.17</option><option value='0.16'>0.16</option><option value='0.15'>0.15</option><option value='0.14'>0.14</option><option value='0.13'>0.13</option><option value='0.12'>0.12</option><option value='0.11'>0.11</option><option value='0.1'>0.1</option><option value='0.09'>0.09</option><option value='0.08'>0.08</option><option value='0.07'>0.07</option><option value='0.06'>0.06</option><option value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value='0.01'>0.01</option><option selected='true' value='0'>0</option></select></td></tr></table></div></td></tr></table></div></div><div class="l" id="linkTennis" onclick="OpenPanelEdit('panelTennis'); togglePTmenu('bullet4')"><div class="button_cont"><div class="menu_content"><ul><li><a id="bullet4" class="md2_on" href="#1">Tennis</a></li></ul></div></div></div><div style="display: none" id="panelTennis"><div class="l"><table class="sptPT" style="width: 60%"><tr><td><div id="divUpdPT5" name="divUpdPT5"><table border="1" width="100%" class="tblRpt"><tr class="bg_eb"><td></td><td>Handicap</td><td>Over/Under</td><td>Odd/Even</td><td>Money Line</td><td></td></tr><tr class="bg_eb"><td class="r">Agent</td><td>0</td><td>0</td><td>0</td><td>0</td><td rowspan="2"></td></tr><tr class="bg_eb"><td class="r">Master</td><td>0.65</td><td>0.65</td><td>0.65</td><td>0.65</td></tr><tr class="bg_eb"><td class="r">Super</td><td><select id="listS5Hdp" name="listS5Hdp"><option selected='true' value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value='0.01'>0.01</option><option value='0'>0</option></select><a class="imaLink img" href="javascript:ReducePT('listS5Hdp',1)"><img class="hand" hspace="1" id="btnReduce1" name="btnReduce1" src="../App_Themes/AgencyV2/Images/b_down.jpg" /></a><a class="imaLink img" href="javascript:IncreasePT('listS5Hdp',1)"><img class="hand" hspace="1" id="btnIncrease1" name="btnIncrease1" src="../App_Themes/AgencyV2/Images/b_up.jpg"/></a><a class="imaLink img" href="javascript:ReducePT('listS5Hdp',10)"><img class="hand" hspace="1" id="btnReduce10" name="btnReduce10" src="../App_Themes/AgencyV2/Images/b_sub.jpg"/></a><a class="imaLink img" href="javascript:IncreasePT('listS5Hdp',10)"><img class="hand" hspace="1" id="btnIncrease10" name="btnIncrease10" src="../App_Themes/AgencyV2/Images/b_add.jpg"/></a></td><td><select id="listS5OU" name="listS5OU"><option selected='true' value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value='0.01'>0.01</option><option value='0'>0</option></select></td><td><select id="listS5OE" name="listS5OE"><option selected='true' value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value='0.01'>0.01</option><option value='0'>0</option></select></td><td><select id="listS5ML" name="listS5ML"><option selected='true' value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value='0.01'>0.01</option><option value='0'>0</option></select></td><td rowspan="3" class="l"><input type="checkbox" {chk-hdp} id="chkCopy5Hdp" name="chkCopy5Hdp" onclick="CheckCopyPT(this,arrSuper5);" />Copy From Handicap</td></tr><tr class="bg_eb {clssHidden}"><td rowspan="2" class="r">Super Auto</td><td><input type="checkbox" onclick="CheckAutoPreset(this)" id="chkAuto5Hdp" name="chkAuto5Hdp"  /></td><td><input type="checkbox" onclick="CheckAutoPreset(this,'chkCopy5Hdp')" id="chkAuto5OU" name="chkAuto5OU"  /></td><td><input type="checkbox" onclick="CheckAutoPreset(this,'chkCopy5Hdp')" id="chkAuto5OE" name="chkAuto5OE"  /></td><td><input type="checkbox" onclick="CheckAutoPreset(this,'chkCopy5Hdp')" id="chkAuto5ML" name="chkAuto5ML"  /></td></tr><tr class="bg_eb {clssHidden}"><td><select id="autoS5Hdp" name="autoS5Hdp" disabled><option value='0.7'>0.7</option><option value='0.69'>0.69</option><option value='0.68'>0.68</option><option value='0.67'>0.67</option><option value='0.66'>0.66</option><option value='0.65'>0.65</option><option value='0.64'>0.64</option><option value='0.63'>0.63</option><option value='0.62'>0.62</option><option value='0.61'>0.61</option><option value='0.6'>0.6</option><option value='0.59'>0.59</option><option value='0.58'>0.58</option><option value='0.57'>0.57</option><option value='0.56'>0.56</option><option value='0.55'>0.55</option><option value='0.54'>0.54</option><option value='0.53'>0.53</option><option value='0.52'>0.52</option><option value='0.51'>0.51</option><option value='0.5'>0.5</option><option value='0.49'>0.49</option><option value='0.48'>0.48</option><option value='0.47'>0.47</option><option value='0.46'>0.46</option><option value='0.45'>0.45</option><option value='0.44'>0.44</option><option value='0.43'>0.43</option><option value='0.42'>0.42</option><option value='0.41'>0.41</option><option value='0.4'>0.4</option><option value='0.39'>0.39</option><option value='0.38'>0.38</option><option value='0.37'>0.37</option><option value='0.36'>0.36</option><option value='0.35'>0.35</option><option value='0.34'>0.34</option><option value='0.33'>0.33</option><option value='0.32'>0.32</option><option value='0.31'>0.31</option><option value='0.3'>0.3</option><option value='0.29'>0.29</option><option value='0.28'>0.28</option><option value='0.27'>0.27</option><option value='0.26'>0.26</option><option value='0.25'>0.25</option><option value='0.24'>0.24</option><option value='0.23'>0.23</option><option value='0.22'>0.22</option><option value='0.21'>0.21</option><option value='0.2'>0.2</option><option value='0.19'>0.19</option><option value='0.18'>0.18</option><option value='0.17'>0.17</option><option value='0.16'>0.16</option><option value='0.15'>0.15</option><option value='0.14'>0.14</option><option value='0.13'>0.13</option><option value='0.12'>0.12</option><option value='0.11'>0.11</option><option value='0.1'>0.1</option><option value='0.09'>0.09</option><option value='0.08'>0.08</option><option value='0.07'>0.07</option><option value='0.06'>0.06</option><option value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value='0.01'>0.01</option><option selected='true' value='0'>0</option></select><a class="imaLink img" href="javascript:ReducePT('autoS5Hdp',1)"><img class="hand" hspace="1" id="btnReduce1" name="btnReduce1" src="../App_Themes/AgencyV2/Images/b_down.jpg" /></a><a class="imaLink img" href="javascript:IncreasePT('autoS5Hdp',1)"><img class="hand" hspace="1" id="btnIncrease1" name="btnIncrease1" src="../App_Themes/AgencyV2/Images/b_up.jpg"/></a><a class="imaLink img" href="javascript:ReducePT('autoS5Hdp',10)"><img class="hand" hspace="1" id="btnReduce10" name="btnReduce10" src="../App_Themes/AgencyV2/Images/b_sub.jpg"/></a><a class="imaLink img" href="javascript:IncreasePT('autoS5Hdp',10)"><img class="hand" hspace="1" id="btnIncrease10" name="btnIncrease10" src="../App_Themes/AgencyV2/Images/b_add.jpg"/></a></td><td><select id="autoS5OU" name="autoS5OU" disabled><option value='0.7'>0.7</option><option value='0.69'>0.69</option><option value='0.68'>0.68</option><option value='0.67'>0.67</option><option value='0.66'>0.66</option><option value='0.65'>0.65</option><option value='0.64'>0.64</option><option value='0.63'>0.63</option><option value='0.62'>0.62</option><option value='0.61'>0.61</option><option value='0.6'>0.6</option><option value='0.59'>0.59</option><option value='0.58'>0.58</option><option value='0.57'>0.57</option><option value='0.56'>0.56</option><option value='0.55'>0.55</option><option value='0.54'>0.54</option><option value='0.53'>0.53</option><option value='0.52'>0.52</option><option value='0.51'>0.51</option><option value='0.5'>0.5</option><option value='0.49'>0.49</option><option value='0.48'>0.48</option><option value='0.47'>0.47</option><option value='0.46'>0.46</option><option value='0.45'>0.45</option><option value='0.44'>0.44</option><option value='0.43'>0.43</option><option value='0.42'>0.42</option><option value='0.41'>0.41</option><option value='0.4'>0.4</option><option value='0.39'>0.39</option><option value='0.38'>0.38</option><option value='0.37'>0.37</option><option value='0.36'>0.36</option><option value='0.35'>0.35</option><option value='0.34'>0.34</option><option value='0.33'>0.33</option><option value='0.32'>0.32</option><option value='0.31'>0.31</option><option value='0.3'>0.3</option><option value='0.29'>0.29</option><option value='0.28'>0.28</option><option value='0.27'>0.27</option><option value='0.26'>0.26</option><option value='0.25'>0.25</option><option value='0.24'>0.24</option><option value='0.23'>0.23</option><option value='0.22'>0.22</option><option value='0.21'>0.21</option><option value='0.2'>0.2</option><option value='0.19'>0.19</option><option value='0.18'>0.18</option><option value='0.17'>0.17</option><option value='0.16'>0.16</option><option value='0.15'>0.15</option><option value='0.14'>0.14</option><option value='0.13'>0.13</option><option value='0.12'>0.12</option><option value='0.11'>0.11</option><option value='0.1'>0.1</option><option value='0.09'>0.09</option><option value='0.08'>0.08</option><option value='0.07'>0.07</option><option value='0.06'>0.06</option><option value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value='0.01'>0.01</option><option selected='true' value='0'>0</option></select></td><td><select id="autoS5OE" name="autoS5OE" disabled><option value='0.7'>0.7</option><option value='0.69'>0.69</option><option value='0.68'>0.68</option><option value='0.67'>0.67</option><option value='0.66'>0.66</option><option value='0.65'>0.65</option><option value='0.64'>0.64</option><option value='0.63'>0.63</option><option value='0.62'>0.62</option><option value='0.61'>0.61</option><option value='0.6'>0.6</option><option value='0.59'>0.59</option><option value='0.58'>0.58</option><option value='0.57'>0.57</option><option value='0.56'>0.56</option><option value='0.55'>0.55</option><option value='0.54'>0.54</option><option value='0.53'>0.53</option><option value='0.52'>0.52</option><option value='0.51'>0.51</option><option value='0.5'>0.5</option><option value='0.49'>0.49</option><option value='0.48'>0.48</option><option value='0.47'>0.47</option><option value='0.46'>0.46</option><option value='0.45'>0.45</option><option value='0.44'>0.44</option><option value='0.43'>0.43</option><option value='0.42'>0.42</option><option value='0.41'>0.41</option><option value='0.4'>0.4</option><option value='0.39'>0.39</option><option value='0.38'>0.38</option><option value='0.37'>0.37</option><option value='0.36'>0.36</option><option value='0.35'>0.35</option><option value='0.34'>0.34</option><option value='0.33'>0.33</option><option value='0.32'>0.32</option><option value='0.31'>0.31</option><option value='0.3'>0.3</option><option value='0.29'>0.29</option><option value='0.28'>0.28</option><option value='0.27'>0.27</option><option value='0.26'>0.26</option><option value='0.25'>0.25</option><option value='0.24'>0.24</option><option value='0.23'>0.23</option><option value='0.22'>0.22</option><option value='0.21'>0.21</option><option value='0.2'>0.2</option><option value='0.19'>0.19</option><option value='0.18'>0.18</option><option value='0.17'>0.17</option><option value='0.16'>0.16</option><option value='0.15'>0.15</option><option value='0.14'>0.14</option><option value='0.13'>0.13</option><option value='0.12'>0.12</option><option value='0.11'>0.11</option><option value='0.1'>0.1</option><option value='0.09'>0.09</option><option value='0.08'>0.08</option><option value='0.07'>0.07</option><option value='0.06'>0.06</option><option value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value='0.01'>0.01</option><option selected='true' value='0'>0</option></select></td><td><select id="autoS5ML" name="autoS5ML" disabled><option value='0.7'>0.7</option><option value='0.69'>0.69</option><option value='0.68'>0.68</option><option value='0.67'>0.67</option><option value='0.66'>0.66</option><option value='0.65'>0.65</option><option value='0.64'>0.64</option><option value='0.63'>0.63</option><option value='0.62'>0.62</option><option value='0.61'>0.61</option><option value='0.6'>0.6</option><option value='0.59'>0.59</option><option value='0.58'>0.58</option><option value='0.57'>0.57</option><option value='0.56'>0.56</option><option value='0.55'>0.55</option><option value='0.54'>0.54</option><option value='0.53'>0.53</option><option value='0.52'>0.52</option><option value='0.51'>0.51</option><option value='0.5'>0.5</option><option value='0.49'>0.49</option><option value='0.48'>0.48</option><option value='0.47'>0.47</option><option value='0.46'>0.46</option><option value='0.45'>0.45</option><option value='0.44'>0.44</option><option value='0.43'>0.43</option><option value='0.42'>0.42</option><option value='0.41'>0.41</option><option value='0.4'>0.4</option><option value='0.39'>0.39</option><option value='0.38'>0.38</option><option value='0.37'>0.37</option><option value='0.36'>0.36</option><option value='0.35'>0.35</option><option value='0.34'>0.34</option><option value='0.33'>0.33</option><option value='0.32'>0.32</option><option value='0.31'>0.31</option><option value='0.3'>0.3</option><option value='0.29'>0.29</option><option value='0.28'>0.28</option><option value='0.27'>0.27</option><option value='0.26'>0.26</option><option value='0.25'>0.25</option><option value='0.24'>0.24</option><option value='0.23'>0.23</option><option value='0.22'>0.22</option><option value='0.21'>0.21</option><option value='0.2'>0.2</option><option value='0.19'>0.19</option><option value='0.18'>0.18</option><option value='0.17'>0.17</option><option value='0.16'>0.16</option><option value='0.15'>0.15</option><option value='0.14'>0.14</option><option value='0.13'>0.13</option><option value='0.12'>0.12</option><option value='0.11'>0.11</option><option value='0.1'>0.1</option><option value='0.09'>0.09</option><option value='0.08'>0.08</option><option value='0.07'>0.07</option><option value='0.06'>0.06</option><option value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value='0.01'>0.01</option><option selected='true' value='0'>0</option></select></td></tr></table></div></td></tr></table></div></div><div class="l" id="linkBaseball" onclick="OpenPanelEdit('panelBaseball'); togglePTmenu('bullet5')"><div class="button_cont"><div class="menu_content"><ul><li><a id="bullet5" class="md2_on" href="#1">Baseball</a></li></ul></div></div></div><div style="display: none" id="panelBaseball"><div class="l"><table class="sptPT" style="width: 60%"><tr><td ><div id="divUpdPT8" name="divUpdPT8"><table border="1" width="100%" class="tblRpt"><tr class="bg_eb"><td></td><td>Handicap</td><td class="{clssStyle} c" style="width:{150px}">Over/Under</td><td>Money Line</td><td></td></tr><tr class="bg_eb"><td class="r">Agent</td><td>0</td><td>0</td><td>0</td><td rowspan="2"></td></tr><tr class="bg_eb"><td class="r">Master</td><td>0.65</td><td>0.65</td><td>0.65</td></tr><tr class="bg_eb"><td class="r">Super</td><td><select id="listS8Hdp" name="listS8Hdp"><option selected='true' value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value='0.01'>0.01</option><option value='0'>0</option></select><a class="imaLink img" href="javascript:ReducePT('listS8Hdp',1)"><img class="hand" hspace="1" id="btnReduce1" name="btnReduce1" src="../App_Themes/AgencyV2/Images/b_down.jpg" /></a><a class="imaLink img" href="javascript:IncreasePT('listS8Hdp',1)"><img class="hand" hspace="1" id="btnIncrease1" name="btnIncrease1" src="../App_Themes/AgencyV2/Images/b_up.jpg"/></a><a class="imaLink img" href="javascript:ReducePT('listS8Hdp',10)"><img class="hand" hspace="1" id="btnReduce10" name="btnReduce10" src="../App_Themes/AgencyV2/Images/b_sub.jpg"/></a><a class="imaLink img" href="javascript:IncreasePT('listS8Hdp',10)"><img class="hand" hspace="1" id="btnIncrease10" name="btnIncrease10" src="../App_Themes/AgencyV2/Images/b_add.jpg"/></a></td><td class="{clssStyle} c"><select id="listS8OU" name="listS8OU"><option selected='true' value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value='0.01'>0.01</option><option value='0'>0</option></select></td><td><select id="listS8ML" name="listS8ML"><option selected='true' value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value='0.01'>0.01</option><option value='0'>0</option></select></td><td rowspan="3" class="l"><input type="checkbox" {chk-hdp} id="chkCopy8Hdp" name="chkCopy8Hdp" onclick="CheckCopyPT(this,arrSuper8);" />Copy From Handicap</td></tr><tr class="bg_eb {clssHidden}"><td rowspan="2" class="r">Super Auto</td><td><input type="checkbox" onclick="CheckAutoPreset(this)" id="chkAuto8Hdp" name="chkAuto8Hdp"  /></td><td><input type="checkbox" onclick="CheckAutoPreset(this,'chkCopy8Hdp')" id="chkAuto8OU" name="chkAuto8OU"  />	</td><td><input type="checkbox" onclick="CheckAutoPreset(this,'chkCopy8Hdp')" id="chkAuto8ML" name="chkAuto8ML"  /></td></tr><tr class="bg_eb {clssHidden}"><td><select id="autoS8Hdp" name="autoS8Hdp" disabled><option value='0.7'>0.7</option><option value='0.69'>0.69</option><option value='0.68'>0.68</option><option value='0.67'>0.67</option><option value='0.66'>0.66</option><option value='0.65'>0.65</option><option value='0.64'>0.64</option><option value='0.63'>0.63</option><option value='0.62'>0.62</option><option value='0.61'>0.61</option><option value='0.6'>0.6</option><option value='0.59'>0.59</option><option value='0.58'>0.58</option><option value='0.57'>0.57</option><option value='0.56'>0.56</option><option value='0.55'>0.55</option><option value='0.54'>0.54</option><option value='0.53'>0.53</option><option value='0.52'>0.52</option><option value='0.51'>0.51</option><option value='0.5'>0.5</option><option value='0.49'>0.49</option><option value='0.48'>0.48</option><option value='0.47'>0.47</option><option value='0.46'>0.46</option><option value='0.45'>0.45</option><option value='0.44'>0.44</option><option value='0.43'>0.43</option><option value='0.42'>0.42</option><option value='0.41'>0.41</option><option value='0.4'>0.4</option><option value='0.39'>0.39</option><option value='0.38'>0.38</option><option value='0.37'>0.37</option><option value='0.36'>0.36</option><option value='0.35'>0.35</option><option value='0.34'>0.34</option><option value='0.33'>0.33</option><option value='0.32'>0.32</option><option value='0.31'>0.31</option><option value='0.3'>0.3</option><option value='0.29'>0.29</option><option value='0.28'>0.28</option><option value='0.27'>0.27</option><option value='0.26'>0.26</option><option value='0.25'>0.25</option><option value='0.24'>0.24</option><option value='0.23'>0.23</option><option value='0.22'>0.22</option><option value='0.21'>0.21</option><option value='0.2'>0.2</option><option value='0.19'>0.19</option><option value='0.18'>0.18</option><option value='0.17'>0.17</option><option value='0.16'>0.16</option><option value='0.15'>0.15</option><option value='0.14'>0.14</option><option value='0.13'>0.13</option><option value='0.12'>0.12</option><option value='0.11'>0.11</option><option value='0.1'>0.1</option><option value='0.09'>0.09</option><option value='0.08'>0.08</option><option value='0.07'>0.07</option><option value='0.06'>0.06</option><option value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value='0.01'>0.01</option><option selected='true' value='0'>0</option></select><a class="imaLink img" href="javascript:ReducePT('autoS8Hdp',1)"><img class="hand" hspace="1" id="btnReduce1" name="btnReduce1" src="../App_Themes/AgencyV2/Images/b_down.jpg" /></a><a class="imaLink img" href="javascript:IncreasePT('autoS8Hdp',1)"><img class="hand" hspace="1" id="btnIncrease1" name="btnIncrease1" src="../App_Themes/AgencyV2/Images/b_up.jpg"/></a><a class="imaLink img" href="javascript:ReducePT('autoS8Hdp',10)"><img class="hand" hspace="1" id="btnReduce10" name="btnReduce10" src="../App_Themes/AgencyV2/Images/b_sub.jpg"/></a><a class="imaLink img" href="javascript:IncreasePT('autoS8Hdp',10)"><img class="hand" hspace="1" id="btnIncrease10" name="btnIncrease10" src="../App_Themes/AgencyV2/Images/b_add.jpg"/></a></td><td><select id="autoS8OU" name="autoS8OU" disabled><option value='0.7'>0.7</option><option value='0.69'>0.69</option><option value='0.68'>0.68</option><option value='0.67'>0.67</option><option value='0.66'>0.66</option><option value='0.65'>0.65</option><option value='0.64'>0.64</option><option value='0.63'>0.63</option><option value='0.62'>0.62</option><option value='0.61'>0.61</option><option value='0.6'>0.6</option><option value='0.59'>0.59</option><option value='0.58'>0.58</option><option value='0.57'>0.57</option><option value='0.56'>0.56</option><option value='0.55'>0.55</option><option value='0.54'>0.54</option><option value='0.53'>0.53</option><option value='0.52'>0.52</option><option value='0.51'>0.51</option><option value='0.5'>0.5</option><option value='0.49'>0.49</option><option value='0.48'>0.48</option><option value='0.47'>0.47</option><option value='0.46'>0.46</option><option value='0.45'>0.45</option><option value='0.44'>0.44</option><option value='0.43'>0.43</option><option value='0.42'>0.42</option><option value='0.41'>0.41</option><option value='0.4'>0.4</option><option value='0.39'>0.39</option><option value='0.38'>0.38</option><option value='0.37'>0.37</option><option value='0.36'>0.36</option><option value='0.35'>0.35</option><option value='0.34'>0.34</option><option value='0.33'>0.33</option><option value='0.32'>0.32</option><option value='0.31'>0.31</option><option value='0.3'>0.3</option><option value='0.29'>0.29</option><option value='0.28'>0.28</option><option value='0.27'>0.27</option><option value='0.26'>0.26</option><option value='0.25'>0.25</option><option value='0.24'>0.24</option><option value='0.23'>0.23</option><option value='0.22'>0.22</option><option value='0.21'>0.21</option><option value='0.2'>0.2</option><option value='0.19'>0.19</option><option value='0.18'>0.18</option><option value='0.17'>0.17</option><option value='0.16'>0.16</option><option value='0.15'>0.15</option><option value='0.14'>0.14</option><option value='0.13'>0.13</option><option value='0.12'>0.12</option><option value='0.11'>0.11</option><option value='0.1'>0.1</option><option value='0.09'>0.09</option><option value='0.08'>0.08</option><option value='0.07'>0.07</option><option value='0.06'>0.06</option><option value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value='0.01'>0.01</option><option selected='true' value='0'>0</option></select></td><td><select id="autoS8ML" name="autoS8ML" disabled><option value='0.7'>0.7</option><option value='0.69'>0.69</option><option value='0.68'>0.68</option><option value='0.67'>0.67</option><option value='0.66'>0.66</option><option value='0.65'>0.65</option><option value='0.64'>0.64</option><option value='0.63'>0.63</option><option value='0.62'>0.62</option><option value='0.61'>0.61</option><option value='0.6'>0.6</option><option value='0.59'>0.59</option><option value='0.58'>0.58</option><option value='0.57'>0.57</option><option value='0.56'>0.56</option><option value='0.55'>0.55</option><option value='0.54'>0.54</option><option value='0.53'>0.53</option><option value='0.52'>0.52</option><option value='0.51'>0.51</option><option value='0.5'>0.5</option><option value='0.49'>0.49</option><option value='0.48'>0.48</option><option value='0.47'>0.47</option><option value='0.46'>0.46</option><option value='0.45'>0.45</option><option value='0.44'>0.44</option><option value='0.43'>0.43</option><option value='0.42'>0.42</option><option value='0.41'>0.41</option><option value='0.4'>0.4</option><option value='0.39'>0.39</option><option value='0.38'>0.38</option><option value='0.37'>0.37</option><option value='0.36'>0.36</option><option value='0.35'>0.35</option><option value='0.34'>0.34</option><option value='0.33'>0.33</option><option value='0.32'>0.32</option><option value='0.31'>0.31</option><option value='0.3'>0.3</option><option value='0.29'>0.29</option><option value='0.28'>0.28</option><option value='0.27'>0.27</option><option value='0.26'>0.26</option><option value='0.25'>0.25</option><option value='0.24'>0.24</option><option value='0.23'>0.23</option><option value='0.22'>0.22</option><option value='0.21'>0.21</option><option value='0.2'>0.2</option><option value='0.19'>0.19</option><option value='0.18'>0.18</option><option value='0.17'>0.17</option><option value='0.16'>0.16</option><option value='0.15'>0.15</option><option value='0.14'>0.14</option><option value='0.13'>0.13</option><option value='0.12'>0.12</option><option value='0.11'>0.11</option><option value='0.1'>0.1</option><option value='0.09'>0.09</option><option value='0.08'>0.08</option><option value='0.07'>0.07</option><option value='0.06'>0.06</option><option value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value='0.01'>0.01</option><option selected='true' value='0'>0</option></select></td></tr></table></div></td></tr></table></div></div><div class="l" id="linkGolf" onclick="OpenPanelEdit('panelGolf'); togglePTmenu('bullet6')"><div class="button_cont"><div class="menu_content"><ul><li><a id="bullet6" class="md2_on" href="#1">Golf</a></li></ul></div></div></div><div style="display: none" id="panelGolf"><div class="l"><table class="sptPT" style="width: 60%"><tr><td><div id="divUpdPT10" name="divUpdPT10"><table border="1" width="100%" class="tblRpt"><tr class="bg_eb"><td></td><td>Handicap</td><td>Over/Under</td><td>Odd/Even</td><td>Money Line</td><td></td></tr><tr class="bg_eb"><td class="r">Agent</td><td>0</td><td>0</td><td>0</td><td>0</td><td rowspan="2"></td></tr><tr class="bg_eb"><td class="r">Master</td><td>0.65</td><td>0.65</td><td>0.65</td><td>0.65</td></tr><tr class="bg_eb"><td class="r">Super</td><td><select id="listS10Hdp" name="listS10Hdp"><option selected='true' value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value='0.01'>0.01</option><option value='0'>0</option></select><a class="imaLink img" href="javascript:ReducePT('listS10Hdp',1)"><img class="hand" hspace="1" id="btnReduce1" name="btnReduce1" src="../App_Themes/AgencyV2/Images/b_down.jpg" /></a><a class="imaLink img" href="javascript:IncreasePT('listS10Hdp',1)"><img class="hand" hspace="1" id="btnIncrease1" name="btnIncrease1" src="../App_Themes/AgencyV2/Images/b_up.jpg"/></a><a class="imaLink img" href="javascript:ReducePT('listS10Hdp',10)"><img class="hand" hspace="1" id="btnReduce10" name="btnReduce10" src="../App_Themes/AgencyV2/Images/b_sub.jpg"/></a><a class="imaLink img" href="javascript:IncreasePT('listS10Hdp',10)"><img class="hand" hspace="1" id="btnIncrease10" name="btnIncrease10" src="../App_Themes/AgencyV2/Images/b_add.jpg"/></a></td><td><select id="listS10OU" name="listS10OU"><option selected='true' value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value='0.01'>0.01</option><option value='0'>0</option></select></td><td><select id="listS10OE" name="listS10OE"><option selected='true' value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value='0.01'>0.01</option><option value='0'>0</option></select></td><td><select id="listS10ML" name="listS10ML"><option selected='true' value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value='0.01'>0.01</option><option value='0'>0</option></select></td><td rowspan="3" class="l"><input type="checkbox" {chk-hdp} id="chkCopy10Hdp" name="chkCopy10Hdp" onclick="CheckCopyPT(this,arrSuper10);" />Copy From Handicap</td></tr><tr class="bg_eb {clssHidden}"><td rowspan="2" class="r">Super Auto</td><td><input type="checkbox" onclick="CheckAutoPreset(this)" id="chkAuto10Hdp" name="chkAuto10Hdp"  /></td><td><input type="checkbox" onclick="CheckAutoPreset(this,'chkCopy10Hdp')" id="chkAuto10OU" name="chkAuto10OU"  /></td><td><input type="checkbox" onclick="CheckAutoPreset(this,'chkCopy10Hdp')" id="chkAuto10OE" name="chkAuto10OE"  /></td><td><input type="checkbox" onclick="CheckAutoPreset(this,'chkCopy10Hdp')" id="chkAuto10ML" name="chkAuto10ML"  /></td></tr><tr class="bg_eb {clssHidden}"><td><select id="autoS10Hdp" name="autoS10Hdp" disabled><option value='0.7'>0.7</option><option value='0.69'>0.69</option><option value='0.68'>0.68</option><option value='0.67'>0.67</option><option value='0.66'>0.66</option><option value='0.65'>0.65</option><option value='0.64'>0.64</option><option value='0.63'>0.63</option><option value='0.62'>0.62</option><option value='0.61'>0.61</option><option value='0.6'>0.6</option><option value='0.59'>0.59</option><option value='0.58'>0.58</option><option value='0.57'>0.57</option><option value='0.56'>0.56</option><option value='0.55'>0.55</option><option value='0.54'>0.54</option><option value='0.53'>0.53</option><option value='0.52'>0.52</option><option value='0.51'>0.51</option><option value='0.5'>0.5</option><option value='0.49'>0.49</option><option value='0.48'>0.48</option><option value='0.47'>0.47</option><option value='0.46'>0.46</option><option value='0.45'>0.45</option><option value='0.44'>0.44</option><option value='0.43'>0.43</option><option value='0.42'>0.42</option><option value='0.41'>0.41</option><option value='0.4'>0.4</option><option value='0.39'>0.39</option><option value='0.38'>0.38</option><option value='0.37'>0.37</option><option value='0.36'>0.36</option><option value='0.35'>0.35</option><option value='0.34'>0.34</option><option value='0.33'>0.33</option><option value='0.32'>0.32</option><option value='0.31'>0.31</option><option value='0.3'>0.3</option><option value='0.29'>0.29</option><option value='0.28'>0.28</option><option value='0.27'>0.27</option><option value='0.26'>0.26</option><option value='0.25'>0.25</option><option value='0.24'>0.24</option><option value='0.23'>0.23</option><option value='0.22'>0.22</option><option value='0.21'>0.21</option><option value='0.2'>0.2</option><option value='0.19'>0.19</option><option value='0.18'>0.18</option><option value='0.17'>0.17</option><option value='0.16'>0.16</option><option value='0.15'>0.15</option><option value='0.14'>0.14</option><option value='0.13'>0.13</option><option value='0.12'>0.12</option><option value='0.11'>0.11</option><option value='0.1'>0.1</option><option value='0.09'>0.09</option><option value='0.08'>0.08</option><option value='0.07'>0.07</option><option value='0.06'>0.06</option><option value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value='0.01'>0.01</option><option selected='true' value='0'>0</option></select><a class="imaLink img" href="javascript:ReducePT('autoS10Hdp',1)"><img class="hand" hspace="1" id="btnReduce1" name="btnReduce1" src="../App_Themes/AgencyV2/Images/b_down.jpg" /></a><a class="imaLink img" href="javascript:IncreasePT('autoS10Hdp',1)"><img class="hand" hspace="1" id="btnIncrease1" name="btnIncrease1" src="../App_Themes/AgencyV2/Images/b_up.jpg"/></a><a class="imaLink img" href="javascript:ReducePT('autoS10Hdp',10)"><img class="hand" hspace="1" id="btnReduce10" name="btnReduce10" src="../App_Themes/AgencyV2/Images/b_sub.jpg"/></a><a class="imaLink img" href="javascript:IncreasePT('autoS10Hdp',10)"><img class="hand" hspace="1" id="btnIncrease10" name="btnIncrease10" src="../App_Themes/AgencyV2/Images/b_add.jpg"/></a></td><td><select id="autoS10OU" name="autoS10OU" disabled><option value='0.7'>0.7</option><option value='0.69'>0.69</option><option value='0.68'>0.68</option><option value='0.67'>0.67</option><option value='0.66'>0.66</option><option value='0.65'>0.65</option><option value='0.64'>0.64</option><option value='0.63'>0.63</option><option value='0.62'>0.62</option><option value='0.61'>0.61</option><option value='0.6'>0.6</option><option value='0.59'>0.59</option><option value='0.58'>0.58</option><option value='0.57'>0.57</option><option value='0.56'>0.56</option><option value='0.55'>0.55</option><option value='0.54'>0.54</option><option value='0.53'>0.53</option><option value='0.52'>0.52</option><option value='0.51'>0.51</option><option value='0.5'>0.5</option><option value='0.49'>0.49</option><option value='0.48'>0.48</option><option value='0.47'>0.47</option><option value='0.46'>0.46</option><option value='0.45'>0.45</option><option value='0.44'>0.44</option><option value='0.43'>0.43</option><option value='0.42'>0.42</option><option value='0.41'>0.41</option><option value='0.4'>0.4</option><option value='0.39'>0.39</option><option value='0.38'>0.38</option><option value='0.37'>0.37</option><option value='0.36'>0.36</option><option value='0.35'>0.35</option><option value='0.34'>0.34</option><option value='0.33'>0.33</option><option value='0.32'>0.32</option><option value='0.31'>0.31</option><option value='0.3'>0.3</option><option value='0.29'>0.29</option><option value='0.28'>0.28</option><option value='0.27'>0.27</option><option value='0.26'>0.26</option><option value='0.25'>0.25</option><option value='0.24'>0.24</option><option value='0.23'>0.23</option><option value='0.22'>0.22</option><option value='0.21'>0.21</option><option value='0.2'>0.2</option><option value='0.19'>0.19</option><option value='0.18'>0.18</option><option value='0.17'>0.17</option><option value='0.16'>0.16</option><option value='0.15'>0.15</option><option value='0.14'>0.14</option><option value='0.13'>0.13</option><option value='0.12'>0.12</option><option value='0.11'>0.11</option><option value='0.1'>0.1</option><option value='0.09'>0.09</option><option value='0.08'>0.08</option><option value='0.07'>0.07</option><option value='0.06'>0.06</option><option value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value='0.01'>0.01</option><option selected='true' value='0'>0</option></select></td><td><select id="autoS10OE" name="autoS10OE" disabled><option value='0.7'>0.7</option><option value='0.69'>0.69</option><option value='0.68'>0.68</option><option value='0.67'>0.67</option><option value='0.66'>0.66</option><option value='0.65'>0.65</option><option value='0.64'>0.64</option><option value='0.63'>0.63</option><option value='0.62'>0.62</option><option value='0.61'>0.61</option><option value='0.6'>0.6</option><option value='0.59'>0.59</option><option value='0.58'>0.58</option><option value='0.57'>0.57</option><option value='0.56'>0.56</option><option value='0.55'>0.55</option><option value='0.54'>0.54</option><option value='0.53'>0.53</option><option value='0.52'>0.52</option><option value='0.51'>0.51</option><option value='0.5'>0.5</option><option value='0.49'>0.49</option><option value='0.48'>0.48</option><option value='0.47'>0.47</option><option value='0.46'>0.46</option><option value='0.45'>0.45</option><option value='0.44'>0.44</option><option value='0.43'>0.43</option><option value='0.42'>0.42</option><option value='0.41'>0.41</option><option value='0.4'>0.4</option><option value='0.39'>0.39</option><option value='0.38'>0.38</option><option value='0.37'>0.37</option><option value='0.36'>0.36</option><option value='0.35'>0.35</option><option value='0.34'>0.34</option><option value='0.33'>0.33</option><option value='0.32'>0.32</option><option value='0.31'>0.31</option><option value='0.3'>0.3</option><option value='0.29'>0.29</option><option value='0.28'>0.28</option><option value='0.27'>0.27</option><option value='0.26'>0.26</option><option value='0.25'>0.25</option><option value='0.24'>0.24</option><option value='0.23'>0.23</option><option value='0.22'>0.22</option><option value='0.21'>0.21</option><option value='0.2'>0.2</option><option value='0.19'>0.19</option><option value='0.18'>0.18</option><option value='0.17'>0.17</option><option value='0.16'>0.16</option><option value='0.15'>0.15</option><option value='0.14'>0.14</option><option value='0.13'>0.13</option><option value='0.12'>0.12</option><option value='0.11'>0.11</option><option value='0.1'>0.1</option><option value='0.09'>0.09</option><option value='0.08'>0.08</option><option value='0.07'>0.07</option><option value='0.06'>0.06</option><option value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value='0.01'>0.01</option><option selected='true' value='0'>0</option></select></td><td><select id="autoS10ML" name="autoS10ML" disabled><option value='0.7'>0.7</option><option value='0.69'>0.69</option><option value='0.68'>0.68</option><option value='0.67'>0.67</option><option value='0.66'>0.66</option><option value='0.65'>0.65</option><option value='0.64'>0.64</option><option value='0.63'>0.63</option><option value='0.62'>0.62</option><option value='0.61'>0.61</option><option value='0.6'>0.6</option><option value='0.59'>0.59</option><option value='0.58'>0.58</option><option value='0.57'>0.57</option><option value='0.56'>0.56</option><option value='0.55'>0.55</option><option value='0.54'>0.54</option><option value='0.53'>0.53</option><option value='0.52'>0.52</option><option value='0.51'>0.51</option><option value='0.5'>0.5</option><option value='0.49'>0.49</option><option value='0.48'>0.48</option><option value='0.47'>0.47</option><option value='0.46'>0.46</option><option value='0.45'>0.45</option><option value='0.44'>0.44</option><option value='0.43'>0.43</option><option value='0.42'>0.42</option><option value='0.41'>0.41</option><option value='0.4'>0.4</option><option value='0.39'>0.39</option><option value='0.38'>0.38</option><option value='0.37'>0.37</option><option value='0.36'>0.36</option><option value='0.35'>0.35</option><option value='0.34'>0.34</option><option value='0.33'>0.33</option><option value='0.32'>0.32</option><option value='0.31'>0.31</option><option value='0.3'>0.3</option><option value='0.29'>0.29</option><option value='0.28'>0.28</option><option value='0.27'>0.27</option><option value='0.26'>0.26</option><option value='0.25'>0.25</option><option value='0.24'>0.24</option><option value='0.23'>0.23</option><option value='0.22'>0.22</option><option value='0.21'>0.21</option><option value='0.2'>0.2</option><option value='0.19'>0.19</option><option value='0.18'>0.18</option><option value='0.17'>0.17</option><option value='0.16'>0.16</option><option value='0.15'>0.15</option><option value='0.14'>0.14</option><option value='0.13'>0.13</option><option value='0.12'>0.12</option><option value='0.11'>0.11</option><option value='0.1'>0.1</option><option value='0.09'>0.09</option><option value='0.08'>0.08</option><option value='0.07'>0.07</option><option value='0.06'>0.06</option><option value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value='0.01'>0.01</option><option selected='true' value='0'>0</option></select></td></tr></table></div></td></tr></table></div></div><div class="l" id="linkMoto" onclick="OpenPanelEdit('panelMoto'); togglePTmenu('bullet7')"><div class="button_cont"><div class="menu_content"><ul><li><a id="bullet7" class="md2_on" href="#1">Motor Sports</a></li></ul></div></div></div><div style="display: none" id="panelMoto"><div class="l"><table class="sptPT" style="width: 60%"><tr><td><div id="divUpdPT11" name="divUpdPT11"><table border="1" width="100%" class="tblRpt"><tr class="bg_eb"><td></td><td>Handicap</td><td>Money Line</td><td></td></tr><tr class="bg_eb"><td class="r">Agent</td><td>0</td><td>0</td><td rowspan="2"></td></tr><tr class="bg_eb"><td class="r">Master</td><td>0.65</td><td>0.65</td></tr><tr class="bg_eb"><td class="r">Super</td><td><select id="listS11Hdp" name="listS11Hdp"><option selected='true' value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value='0.01'>0.01</option><option value='0'>0</option></select><a class="imaLink img" href="javascript:ReducePT('listS11Hdp',1)"><img class="hand" hspace="1" id="btnReduce1" name="btnReduce1" src="../App_Themes/AgencyV2/Images/b_down.jpg" /></a><a class="imaLink img" href="javascript:IncreasePT('listS11Hdp',1)"><img class="hand" hspace="1" id="btnIncrease1" name="btnIncrease1" src="../App_Themes/AgencyV2/Images/b_up.jpg"/></a><a class="imaLink img" href="javascript:ReducePT('listS11Hdp',10)"><img class="hand" hspace="1" id="btnReduce10" name="btnReduce10" src="../App_Themes/AgencyV2/Images/b_sub.jpg"/></a><a class="imaLink img" href="javascript:IncreasePT('listS11Hdp',10)"><img class="hand" hspace="1" id="btnIncrease10" name="btnIncrease10" src="../App_Themes/AgencyV2/Images/b_add.jpg"/></a></td><td><select id="listS11ML" name="listS11ML"><option selected='true' value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value='0.01'>0.01</option><option value='0'>0</option></select></td><td rowspan="3" class="l"><input type="checkbox" {chk-hdp} id="chkCopy11Hdp" name="chkCopy11Hdp" onclick="CheckCopyPT(this,arrSuper11);" />Copy From Handicap</td></tr><tr class="bg_eb {clssHidden}"><td rowspan="2" class="r">Super Auto</td><td><input type="checkbox" onclick="CheckAutoPreset(this)" id="chkAuto11Hdp" name="chkAuto11Hdp"  /></td><td><input type="checkbox" onclick="CheckAutoPreset(this,'chkCopy11Hdp')" id="chkAuto11ML" name="chkAuto11ML"  /></td></tr><tr class="bg_eb {clssHidden}"><td><select id="autoS11Hdp" name="autoS11Hdp" disabled><option value='0.7'>0.7</option><option value='0.69'>0.69</option><option value='0.68'>0.68</option><option value='0.67'>0.67</option><option value='0.66'>0.66</option><option value='0.65'>0.65</option><option value='0.64'>0.64</option><option value='0.63'>0.63</option><option value='0.62'>0.62</option><option value='0.61'>0.61</option><option value='0.6'>0.6</option><option value='0.59'>0.59</option><option value='0.58'>0.58</option><option value='0.57'>0.57</option><option value='0.56'>0.56</option><option value='0.55'>0.55</option><option value='0.54'>0.54</option><option value='0.53'>0.53</option><option value='0.52'>0.52</option><option value='0.51'>0.51</option><option value='0.5'>0.5</option><option value='0.49'>0.49</option><option value='0.48'>0.48</option><option value='0.47'>0.47</option><option value='0.46'>0.46</option><option value='0.45'>0.45</option><option value='0.44'>0.44</option><option value='0.43'>0.43</option><option value='0.42'>0.42</option><option value='0.41'>0.41</option><option value='0.4'>0.4</option><option value='0.39'>0.39</option><option value='0.38'>0.38</option><option value='0.37'>0.37</option><option value='0.36'>0.36</option><option value='0.35'>0.35</option><option value='0.34'>0.34</option><option value='0.33'>0.33</option><option value='0.32'>0.32</option><option value='0.31'>0.31</option><option value='0.3'>0.3</option><option value='0.29'>0.29</option><option value='0.28'>0.28</option><option value='0.27'>0.27</option><option value='0.26'>0.26</option><option value='0.25'>0.25</option><option value='0.24'>0.24</option><option value='0.23'>0.23</option><option value='0.22'>0.22</option><option value='0.21'>0.21</option><option value='0.2'>0.2</option><option value='0.19'>0.19</option><option value='0.18'>0.18</option><option value='0.17'>0.17</option><option value='0.16'>0.16</option><option value='0.15'>0.15</option><option value='0.14'>0.14</option><option value='0.13'>0.13</option><option value='0.12'>0.12</option><option value='0.11'>0.11</option><option value='0.1'>0.1</option><option value='0.09'>0.09</option><option value='0.08'>0.08</option><option value='0.07'>0.07</option><option value='0.06'>0.06</option><option value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value='0.01'>0.01</option><option selected='true' value='0'>0</option></select><a class="imaLink img" href="javascript:ReducePT('autoS11Hdp',1)"><img class="hand" hspace="1" id="btnReduce1" name="btnReduce1" src="../App_Themes/AgencyV2/Images/b_down.jpg" /></a><a class="imaLink img" href="javascript:IncreasePT('autoS11Hdp',1)"><img class="hand" hspace="1" id="btnIncrease1" name="btnIncrease1" src="../App_Themes/AgencyV2/Images/b_up.jpg"/></a><a class="imaLink img" href="javascript:ReducePT('autoS11Hdp',10)"><img class="hand" hspace="1" id="btnReduce10" name="btnReduce10" src="../App_Themes/AgencyV2/Images/b_sub.jpg"/></a><a class="imaLink img" href="javascript:IncreasePT('autoS11Hdp',10)"><img class="hand" hspace="1" id="btnIncrease10" name="btnIncrease10" src="../App_Themes/AgencyV2/Images/b_add.jpg"/></a></td><td><select id="autoS11ML" name="autoS11ML" disabled><option value='0.7'>0.7</option><option value='0.69'>0.69</option><option value='0.68'>0.68</option><option value='0.67'>0.67</option><option value='0.66'>0.66</option><option value='0.65'>0.65</option><option value='0.64'>0.64</option><option value='0.63'>0.63</option><option value='0.62'>0.62</option><option value='0.61'>0.61</option><option value='0.6'>0.6</option><option value='0.59'>0.59</option><option value='0.58'>0.58</option><option value='0.57'>0.57</option><option value='0.56'>0.56</option><option value='0.55'>0.55</option><option value='0.54'>0.54</option><option value='0.53'>0.53</option><option value='0.52'>0.52</option><option value='0.51'>0.51</option><option value='0.5'>0.5</option><option value='0.49'>0.49</option><option value='0.48'>0.48</option><option value='0.47'>0.47</option><option value='0.46'>0.46</option><option value='0.45'>0.45</option><option value='0.44'>0.44</option><option value='0.43'>0.43</option><option value='0.42'>0.42</option><option value='0.41'>0.41</option><option value='0.4'>0.4</option><option value='0.39'>0.39</option><option value='0.38'>0.38</option><option value='0.37'>0.37</option><option value='0.36'>0.36</option><option value='0.35'>0.35</option><option value='0.34'>0.34</option><option value='0.33'>0.33</option><option value='0.32'>0.32</option><option value='0.31'>0.31</option><option value='0.3'>0.3</option><option value='0.29'>0.29</option><option value='0.28'>0.28</option><option value='0.27'>0.27</option><option value='0.26'>0.26</option><option value='0.25'>0.25</option><option value='0.24'>0.24</option><option value='0.23'>0.23</option><option value='0.22'>0.22</option><option value='0.21'>0.21</option><option value='0.2'>0.2</option><option value='0.19'>0.19</option><option value='0.18'>0.18</option><option value='0.17'>0.17</option><option value='0.16'>0.16</option><option value='0.15'>0.15</option><option value='0.14'>0.14</option><option value='0.13'>0.13</option><option value='0.12'>0.12</option><option value='0.11'>0.11</option><option value='0.1'>0.1</option><option value='0.09'>0.09</option><option value='0.08'>0.08</option><option value='0.07'>0.07</option><option value='0.06'>0.06</option><option value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value='0.01'>0.01</option><option selected='true' value='0'>0</option></select></td></tr></table></div></td></tr></table></div></div><div class="l" id="linkOther" onclick="OpenPanelEdit('panelOtherSports'); togglePTmenu('bullet9')"><div class="button_cont"><div class="menu_content"><ul><li><a id="bullet9" class="md2_on" href="#1">Other Sports</a></li></ul></div></div></div><div style="display: none" id="panelOtherSports"><div class="l"><table class="sptPT" style="width: 60%"><tr><td><div id="divUpdPT99" name="divUpdPT99"><table border="1" width="100%" class="tblRpt"><tr class="bg_eb"><td></td><td>Handicap</td><td>Over/Under</td><td>Odd/Even</td><td>Money Line</td><td></td></tr><tr class="bg_eb"><td class="r">Agent</td><td>0</td><td>0</td><td>0</td><td>0</td><td rowspan="2"></td></tr><tr class="bg_eb"><td class="r">Master</td><td>0.65</td><td>0.65</td><td>0.65</td><td>0.65</td></tr><tr class="bg_eb"><td class="r">Super</td><td><select id="listS99Hdp" name="listS99Hdp"><option selected='true' value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value='0.01'>0.01</option><option value='0'>0</option></select><a class="imaLink img" href="javascript:ReducePT('listS99Hdp',1)"><img class="hand" hspace="1" id="btnReduce1" name="btnReduce1" src="../App_Themes/AgencyV2/Images/b_down.jpg" /></a><a class="imaLink img" href="javascript:IncreasePT('listS99Hdp',1)"><img class="hand" hspace="1" id="btnIncrease1" name="btnIncrease1" src="../App_Themes/AgencyV2/Images/b_up.jpg"/></a><a class="imaLink img" href="javascript:ReducePT('listS99Hdp',10)"><img class="hand" hspace="1" id="btnReduce10" name="btnReduce10" src="../App_Themes/AgencyV2/Images/b_sub.jpg"/></a><a class="imaLink img" href="javascript:IncreasePT('listS99Hdp',10)"><img class="hand" hspace="1" id="btnIncrease10" name="btnIncrease10" src="../App_Themes/AgencyV2/Images/b_add.jpg"/></a></td><td><select id="listS99OU" name="listS99OU"><option selected='true' value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value='0.01'>0.01</option><option value='0'>0</option></select></td><td><select id="listS99OE" name="listS99OE"><option selected='true' value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value='0.01'>0.01</option><option value='0'>0</option></select></td><td><select id="listS99ML" name="listS99ML"><option selected='true' value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value='0.01'>0.01</option><option value='0'>0</option></select></td><td rowspan="3" class="l"><input type="checkbox" {chk-hdp} id="chkCopy99Hdp" name="chkCopy99Hdp" onclick="CheckCopyPT(this,arrSuper99);" />Copy From Handicap</td></tr><tr class="bg_eb {clssHidden}"><td rowspan="2" class="r">Super Auto</td><td><input type="checkbox" onclick="CheckAutoPreset(this)" id="chkAuto99Hdp" name="chkAuto99Hdp"  /></td><td><input type="checkbox" onclick="CheckAutoPreset(this,'chkCopy99Hdp')" id="chkAuto99OU" name="chkAuto99OU"  /></td><td><input type="checkbox" onclick="CheckAutoPreset(this,'chkCopy99Hdp')" id="chkAuto99OE" name="chkAuto99OE"  /></td><td><input type="checkbox" onclick="CheckAutoPreset(this,'chkCopy99Hdp')" id="chkAuto99ML" name="chkAuto99ML"  /></td></tr><tr class="bg_eb {clssHidden}"><td><select id="autoS99Hdp" name="autoS99Hdp" disabled><option value='0.7'>0.7</option><option value='0.69'>0.69</option><option value='0.68'>0.68</option><option value='0.67'>0.67</option><option value='0.66'>0.66</option><option value='0.65'>0.65</option><option value='0.64'>0.64</option><option value='0.63'>0.63</option><option value='0.62'>0.62</option><option value='0.61'>0.61</option><option value='0.6'>0.6</option><option value='0.59'>0.59</option><option value='0.58'>0.58</option><option value='0.57'>0.57</option><option value='0.56'>0.56</option><option value='0.55'>0.55</option><option value='0.54'>0.54</option><option value='0.53'>0.53</option><option value='0.52'>0.52</option><option value='0.51'>0.51</option><option value='0.5'>0.5</option><option value='0.49'>0.49</option><option value='0.48'>0.48</option><option value='0.47'>0.47</option><option value='0.46'>0.46</option><option value='0.45'>0.45</option><option value='0.44'>0.44</option><option value='0.43'>0.43</option><option value='0.42'>0.42</option><option value='0.41'>0.41</option><option value='0.4'>0.4</option><option value='0.39'>0.39</option><option value='0.38'>0.38</option><option value='0.37'>0.37</option><option value='0.36'>0.36</option><option value='0.35'>0.35</option><option value='0.34'>0.34</option><option value='0.33'>0.33</option><option value='0.32'>0.32</option><option value='0.31'>0.31</option><option value='0.3'>0.3</option><option value='0.29'>0.29</option><option value='0.28'>0.28</option><option value='0.27'>0.27</option><option value='0.26'>0.26</option><option value='0.25'>0.25</option><option value='0.24'>0.24</option><option value='0.23'>0.23</option><option value='0.22'>0.22</option><option value='0.21'>0.21</option><option value='0.2'>0.2</option><option value='0.19'>0.19</option><option value='0.18'>0.18</option><option value='0.17'>0.17</option><option value='0.16'>0.16</option><option value='0.15'>0.15</option><option value='0.14'>0.14</option><option value='0.13'>0.13</option><option value='0.12'>0.12</option><option value='0.11'>0.11</option><option value='0.1'>0.1</option><option value='0.09'>0.09</option><option value='0.08'>0.08</option><option value='0.07'>0.07</option><option value='0.06'>0.06</option><option value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value='0.01'>0.01</option><option selected='true' value='0'>0</option></select><a class="imaLink img" href="javascript:ReducePT('autoS99Hdp',1)"><img class="hand" hspace="1" id="btnReduce1" name="btnReduce1" src="../App_Themes/AgencyV2/Images/b_down.jpg" /></a><a class="imaLink img" href="javascript:IncreasePT('autoS99Hdp',1)"><img class="hand" hspace="1" id="btnIncrease1" name="btnIncrease1" src="../App_Themes/AgencyV2/Images/b_up.jpg"/></a><a class="imaLink img" href="javascript:ReducePT('autoS99Hdp',10)"><img class="hand" hspace="1" id="btnReduce10" name="btnReduce10" src="../App_Themes/AgencyV2/Images/b_sub.jpg"/></a><a class="imaLink img" href="javascript:IncreasePT('autoS99Hdp',10)"><img class="hand" hspace="1" id="btnIncrease10" name="btnIncrease10" src="../App_Themes/AgencyV2/Images/b_add.jpg"/></a></td><td><select id="autoS99OU" name="autoS99OU" disabled><option value='0.7'>0.7</option><option value='0.69'>0.69</option><option value='0.68'>0.68</option><option value='0.67'>0.67</option><option value='0.66'>0.66</option><option value='0.65'>0.65</option><option value='0.64'>0.64</option><option value='0.63'>0.63</option><option value='0.62'>0.62</option><option value='0.61'>0.61</option><option value='0.6'>0.6</option><option value='0.59'>0.59</option><option value='0.58'>0.58</option><option value='0.57'>0.57</option><option value='0.56'>0.56</option><option value='0.55'>0.55</option><option value='0.54'>0.54</option><option value='0.53'>0.53</option><option value='0.52'>0.52</option><option value='0.51'>0.51</option><option value='0.5'>0.5</option><option value='0.49'>0.49</option><option value='0.48'>0.48</option><option value='0.47'>0.47</option><option value='0.46'>0.46</option><option value='0.45'>0.45</option><option value='0.44'>0.44</option><option value='0.43'>0.43</option><option value='0.42'>0.42</option><option value='0.41'>0.41</option><option value='0.4'>0.4</option><option value='0.39'>0.39</option><option value='0.38'>0.38</option><option value='0.37'>0.37</option><option value='0.36'>0.36</option><option value='0.35'>0.35</option><option value='0.34'>0.34</option><option value='0.33'>0.33</option><option value='0.32'>0.32</option><option value='0.31'>0.31</option><option value='0.3'>0.3</option><option value='0.29'>0.29</option><option value='0.28'>0.28</option><option value='0.27'>0.27</option><option value='0.26'>0.26</option><option value='0.25'>0.25</option><option value='0.24'>0.24</option><option value='0.23'>0.23</option><option value='0.22'>0.22</option><option value='0.21'>0.21</option><option value='0.2'>0.2</option><option value='0.19'>0.19</option><option value='0.18'>0.18</option><option value='0.17'>0.17</option><option value='0.16'>0.16</option><option value='0.15'>0.15</option><option value='0.14'>0.14</option><option value='0.13'>0.13</option><option value='0.12'>0.12</option><option value='0.11'>0.11</option><option value='0.1'>0.1</option><option value='0.09'>0.09</option><option value='0.08'>0.08</option><option value='0.07'>0.07</option><option value='0.06'>0.06</option><option value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value='0.01'>0.01</option><option selected='true' value='0'>0</option></select></td><td><select id="autoS99OE" name="autoS99OE" disabled><option value='0.7'>0.7</option><option value='0.69'>0.69</option><option value='0.68'>0.68</option><option value='0.67'>0.67</option><option value='0.66'>0.66</option><option value='0.65'>0.65</option><option value='0.64'>0.64</option><option value='0.63'>0.63</option><option value='0.62'>0.62</option><option value='0.61'>0.61</option><option value='0.6'>0.6</option><option value='0.59'>0.59</option><option value='0.58'>0.58</option><option value='0.57'>0.57</option><option value='0.56'>0.56</option><option value='0.55'>0.55</option><option value='0.54'>0.54</option><option value='0.53'>0.53</option><option value='0.52'>0.52</option><option value='0.51'>0.51</option><option value='0.5'>0.5</option><option value='0.49'>0.49</option><option value='0.48'>0.48</option><option value='0.47'>0.47</option><option value='0.46'>0.46</option><option value='0.45'>0.45</option><option value='0.44'>0.44</option><option value='0.43'>0.43</option><option value='0.42'>0.42</option><option value='0.41'>0.41</option><option value='0.4'>0.4</option><option value='0.39'>0.39</option><option value='0.38'>0.38</option><option value='0.37'>0.37</option><option value='0.36'>0.36</option><option value='0.35'>0.35</option><option value='0.34'>0.34</option><option value='0.33'>0.33</option><option value='0.32'>0.32</option><option value='0.31'>0.31</option><option value='0.3'>0.3</option><option value='0.29'>0.29</option><option value='0.28'>0.28</option><option value='0.27'>0.27</option><option value='0.26'>0.26</option><option value='0.25'>0.25</option><option value='0.24'>0.24</option><option value='0.23'>0.23</option><option value='0.22'>0.22</option><option value='0.21'>0.21</option><option value='0.2'>0.2</option><option value='0.19'>0.19</option><option value='0.18'>0.18</option><option value='0.17'>0.17</option><option value='0.16'>0.16</option><option value='0.15'>0.15</option><option value='0.14'>0.14</option><option value='0.13'>0.13</option><option value='0.12'>0.12</option><option value='0.11'>0.11</option><option value='0.1'>0.1</option><option value='0.09'>0.09</option><option value='0.08'>0.08</option><option value='0.07'>0.07</option><option value='0.06'>0.06</option><option value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value='0.01'>0.01</option><option selected='true' value='0'>0</option></select></td><td><select id="autoS99ML" name="autoS99ML" disabled><option value='0.7'>0.7</option><option value='0.69'>0.69</option><option value='0.68'>0.68</option><option value='0.67'>0.67</option><option value='0.66'>0.66</option><option value='0.65'>0.65</option><option value='0.64'>0.64</option><option value='0.63'>0.63</option><option value='0.62'>0.62</option><option value='0.61'>0.61</option><option value='0.6'>0.6</option><option value='0.59'>0.59</option><option value='0.58'>0.58</option><option value='0.57'>0.57</option><option value='0.56'>0.56</option><option value='0.55'>0.55</option><option value='0.54'>0.54</option><option value='0.53'>0.53</option><option value='0.52'>0.52</option><option value='0.51'>0.51</option><option value='0.5'>0.5</option><option value='0.49'>0.49</option><option value='0.48'>0.48</option><option value='0.47'>0.47</option><option value='0.46'>0.46</option><option value='0.45'>0.45</option><option value='0.44'>0.44</option><option value='0.43'>0.43</option><option value='0.42'>0.42</option><option value='0.41'>0.41</option><option value='0.4'>0.4</option><option value='0.39'>0.39</option><option value='0.38'>0.38</option><option value='0.37'>0.37</option><option value='0.36'>0.36</option><option value='0.35'>0.35</option><option value='0.34'>0.34</option><option value='0.33'>0.33</option><option value='0.32'>0.32</option><option value='0.31'>0.31</option><option value='0.3'>0.3</option><option value='0.29'>0.29</option><option value='0.28'>0.28</option><option value='0.27'>0.27</option><option value='0.26'>0.26</option><option value='0.25'>0.25</option><option value='0.24'>0.24</option><option value='0.23'>0.23</option><option value='0.22'>0.22</option><option value='0.21'>0.21</option><option value='0.2'>0.2</option><option value='0.19'>0.19</option><option value='0.18'>0.18</option><option value='0.17'>0.17</option><option value='0.16'>0.16</option><option value='0.15'>0.15</option><option value='0.14'>0.14</option><option value='0.13'>0.13</option><option value='0.12'>0.12</option><option value='0.11'>0.11</option><option value='0.1'>0.1</option><option value='0.09'>0.09</option><option value='0.08'>0.08</option><option value='0.07'>0.07</option><option value='0.06'>0.06</option><option value='0.05'>0.05</option><option value='0.04'>0.04</option><option value='0.03'>0.03</option><option value='0.02'>0.02</option><option value='0.01'>0.01</option><option selected='true' value='0'>0</option></select></td></tr></table></div></td></tr></table></div></div><div><div class="l" valign="top"><div class="b_add" style="min-width:64px"><li><asp:LinkButton ID="LinkButton1" runat="server" OnClientClick="BtnOnClick();"><span>Submit</span></asp:LinkButton></li></div></div></div><input id="hidSynCS" name="hidSynCS" type="hidden" value="False" /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><script type="text/javascript" src="../Js/wz_tooltip/wz_tooltip.js"></script><script type="text/javascript" src="../Js/wz_tooltip/tip_centerwindow.js"></script><script type="text/javascript" src="../Js/wz_tooltip/tip_balloon.js"></script><input type="hidden" id="isSAuto1OUD" name="isSAuto1OUD" value="0" /><input type="hidden" id="isSAuto1MP" name="isSAuto1MP" value="0" /><input type="hidden" id="isSAuto11x2" name="isSAuto11x2" value="0" /><input type="hidden" id="isSAuto1TG" name="isSAuto1TG" value="0" /><input type="hidden" id="isSAuto11stHdpD" name="isSAuto11stHdpD" value="0" /><input type="hidden" id="isSAuto11stOUD" name="isSAuto11stOUD" value="0" /><input type="hidden" id="isSAuto1HdpL" name="isSAuto1HdpL" value="0" /><input type="hidden" id="isSAuto1OUL" name="isSAuto1OUL" value="0" /><input type="hidden" id="isSAuto1CS" name="isSAuto1CS" value="0" /><input type="hidden" id="isSAuto1OR" name="isSAuto1OR" value="0" /><input type="hidden" id="isSAuto1OE" name="isSAuto1OE" value="0" /><input type="hidden" id="isSAuto11stOUL" name="isSAuto11stOUL" value="0" /><input type="hidden" id="isSAuto11stHdpL" name="isSAuto11stHdpL" value="0" /><input type="hidden" id="isSAuto1HdpD" name="isSAuto1HdpD" value="0" /><input type="hidden" id="isSAuto2OE" name="isSAuto2OE" value="0" /><input type="hidden" id="isSAuto2ML" name="isSAuto2ML" value="0" /><input type="hidden" id="isSAuto2MP" name="isSAuto2MP" value="0" /><input type="hidden" id="isSAuto2OU" name="isSAuto2OU" value="0" /><input type="hidden" id="isSAuto2Hdp" name="isSAuto2Hdp" value="0" /><input type="hidden" id="isSAuto3ML" name="isSAuto3ML" value="0" /><input type="hidden" id="isSAuto3Hdp" name="isSAuto3Hdp" value="0" /><input type="hidden" id="isSAuto3OU" name="isSAuto3OU" value="0" /><input type="hidden" id="isSAuto3OE" name="isSAuto3OE" value="0" /><input type="hidden" id="isSAuto5OU" name="isSAuto5OU" value="0" /><input type="hidden" id="isSAuto5OE" name="isSAuto5OE" value="0" /><input type="hidden" id="isSAuto5Hdp" name="isSAuto5Hdp" value="0" /><input type="hidden" id="isSAuto5ML" name="isSAuto5ML" value="0" /><input type="hidden" id="isSAuto8OU" name="isSAuto8OU" value="0" /><input type="hidden" id="isSAuto8Hdp" name="isSAuto8Hdp" value="0" /><input type="hidden" id="isSAuto8ML" name="isSAuto8ML" value="0" /><input type="hidden" id="isSAuto10OE" name="isSAuto10OE" value="0" /><input type="hidden" id="isSAuto10Hdp" name="isSAuto10Hdp" value="0" /><input type="hidden" id="isSAuto10ML" name="isSAuto10ML" value="0" /><input type="hidden" id="isSAuto10OU" name="isSAuto10OU" value="0" /><input type="hidden" id="isSAuto11Hdp" name="isSAuto11Hdp" value="0" /><input type="hidden" id="isSAuto11ML" name="isSAuto11ML" value="0" /><input type="hidden" id="isSAuto99OU" name="isSAuto99OU" value="0" /><input type="hidden" id="isSAuto99ML" name="isSAuto99ML" value="0" /><input type="hidden" id="isSAuto99OE" name="isSAuto99OE" value="0" /><input type="hidden" id="isSAuto99Hdp" name="isSAuto99Hdp" value="0" />

		</form>
		
	</body>
</html>
