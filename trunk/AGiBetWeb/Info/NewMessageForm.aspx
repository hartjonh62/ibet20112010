<%@ Page Language="C#" AutoEventWireup="true" Inherits="Info_NewMessageForm" CodeBehind="NewMessageForm.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <title>Home</title>
    <meta name="keywords" content="sportsbook, agency, agent, betting" />
    <meta name="description" content="online betting sportsbook agency system" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href='../App_Themes/AgencyV2/common.css' type='text/css' rel='stylesheet' />
    <link href='../App_Themes/AgencyV2/main.css' type='text/css' rel='stylesheet' />

    <script type='text/javascript' src='../Js/opt/Core.js?v=20091230'></script>

    <script type='text/javascript' src='../Js/Common.js?v=20091230'></script>

    <script type="text/javascript">
    var sobjDate=null;
    var eobjDate=null;
    var fromDateControlID = "fdate";
    var toDateControlID = "tdate";
    
    function splitDate(){
	    var s_date=$(fromDateControlID);
	    var e_date=$(toDateControlID);
	    var s_dataAry = new Array(2);
	    var e_dataAry = new Array(2);
    	
	    var kk1=s_date.value.split("/");
	    for(var i=0;i<kk1.length ;i++){
		    s_dataAry[i]=kk1[i];
	    }
	    var kk2=e_date.value.split("/");
	    for(var i=0;i<kk2.length ;i++){
		    e_dataAry[i]=kk2[i];
	    }
    	
	    sobjDate = new Date(s_dataAry[2],s_dataAry[0],s_dataAry[1]);
	    eobjDate = new Date(e_dataAry[2],e_dataAry[0],e_dataAry[1]);
	}
	function showMsg(msgType) {
	    splitDate();
	    if (eobjDate < sobjDate) {
	        if (msgType != 'special' && msgType != 'allSpecial') {
	            alert($("eroMeg").value);
	            return;
	        }
	        else {
	            setDDate();
	        }
	    }

	    if (msgType == '') {
	        msgType = $("msgType").value;
	    }
	    var str1 = msgType;
	    var str2 = $(fromDateControlID).value;
	    var str3 = $(toDateControlID).value;
	    var extraParam = "";
	    // update count of private messages in header frame
	    if (msgType == 'private') {
	        var open = "(", close = ")";
	        var countPriMsg = "0";

	        var countText = parent.frHeader.$('privateMsgLnk').innerHTML;
	        if (countText.indexOf(open) >= 0) {
	            var temp = countText.substring(0, countText.indexOf(open) + 1) + countPriMsg + ")";
	            var temp2 = countText.substring(countText.indexOf(open) + 1, countText.indexOf(close));
	            extraParam = (parseInt(temp2) > 0 ? "&extra=1" : "");
	            parent.frHeader.$('privateMsgLnk').innerHTML = temp;
	        }
	    }
	    
	    location.href = "NewMessageForm.aspx?pageQuery=" + str1 + "&s_date=" + str2 + "&e_date=" + str3 + extraParam;
	}
    function setDDate() {
        var timeNow = new Date();
        var year = timeNow.getFullYear();
        var mon = timeNow.getMonth() + 1;
        var ddate = timeNow.getDate();
        var yesterday = new Date(Date.parse(timeNow) - (3 * 1000 * 60 * 60 * 24));
        $(fromDateControlID).value = mon + "/" + yesterday.getDate() + "/" + year;
        $(toDateControlID).value = mon + "/" + ddate + "/" + year;
    }
    function enableCalendar(IsDisabled)
    {
        $(fromDateControlID + "_tg").disabled = IsDisabled;
        $(toDateControlID + "_tg").disabled = IsDisabled;
        $("dSubmit").disabled = IsDisabled;
    }
    function setStatusCalendar() {
        var spMes = $("msgType").value;
        if (spMes == 'special' || spMes == 'allSpecial') {
            enableCalendar(true);
        }
        else {
            enableCalendar(false);
        }
    }

    </script>

</head>
<body>
    <form id="form1" runat="server">

    <script src="../Js/Calendar2/calendar.js" type="text/javascript"></script>

    <script src="../Js/Calendar2/date.js" type="text/javascript"></script>

    <script src="../Js/Calendar2/Lang/calendar-E.js" type="text/javascript"></script>

    <script src="../Js/Calendar2/calendar-setup.js" type="text/javascript"></script>

    <link href="../Js/Calendar2/Skin/calendar-blue.css" media="all" rel="stylesheet"
        type="text/css" title="Blue" />
    <link rel="StyleSheet" href="../App_Themes/AgencyV2/message.css" type="text/css">
    <div id="header_cont">
        <div class="b_msg0">
        </div>
        <div class="msg">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td>
                        <div id="msg_menu">
                            <ul>
                                <li><a href="javascript:showMsg('normal');"><span>Normal Announcements</span></a></li><li>
                                    <a href="javascript:showMsg('special');"><span>Special Announcements</span></a></li><li
                                        id="current"><a href="javascript:showMsg('private');"><span>Personal Message</span></a></li></ul>
                        </div>
                    </td>
                    <td>
                        <table border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td nowrap="nowrap">
                                    From:&nbsp;<asp:TextBox ID="txtdate" runat="server" value="12/31/2009" size="13"
                                        ReadOnly onclick="return fdate_onclick()"></asp:TextBox>
                                </td>
                                <td nowrap="nowrap">
                                    <a href="#" class="imaLink">
                                        <img alt="" id="fdate_tg" title="Date selector" style="margin: 0px; cursor: pointer;"
                                            src="../App_Themes/AgencyV2/Images/cal.gif" /></a><script type="text/javascript">var ctrInput = "1/3/2010";Calendar.setup({inputField : "txtdate",ifFormat : "%m/%d/%Y",showsTime : false,button : "fdate_tg",singleClick : true,showOthers : true,step : 1});</script>

                                </td>
                                <td nowrap="nowrap">
                                    To:&nbsp;
                                    <asp:TextBox ID="txtdate1" runat="server" value="01/03/2010" size="13" type="text"
                                        class="date_no" ReadOnly onclick="return fdate_onclick()"></asp:TextBox>
                                </td>
                                <td nowrap="nowrap">
                                    <a href="#" class="imaLink">
                                        <img alt="" id="tdate_tg" title="Date selector" style="margin: 0px; cursor: pointer;"
                                            src="../App_Themes/AgencyV2/Images/cal.gif" /></a><script type="text/javascript">var ctrInput = "1/3/2010";Calendar.setup({inputField : "txtdate1",ifFormat : "%m/%d/%Y",showsTime : false,button : "tdate_tg",singleClick : true,showOthers : true,step : 1});</script>

                                </td>
                            </tr>
                        </table>
                    </td>
                    <td>
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" class="btn" Style="width: 55px"
                            OnClientClick="javascript:showMsg('');" />
                    </td>
                </tr>
            </table>
        </div>
    </div>
    <div id="divMsgContent">
        <table cellspacing="1" cellpadding="0" width="100%" class="tblRpt" border="0">
            <tr class="RptHeader">
                <td width="20px">
                    #
                </td>
                <td width="60px">
                    ID
                </td>
                <td width="80px">
                    Post date
                </td>
                <td>
                    Message
                </td>
            </tr>
            <tr class="bg_white c">
                <td colspan="4" class="nobold">
                    No information is available
                </td>
            </tr>
        </table>
    </div>
    <input type="hidden" name="eroMeg" id="eroMeg" value="The &quot;From&quot; Date can not be greater than the &quot;To&quot; Date"><input
        type="hidden" name="msgType" id="msgType" value="private"><script type="text/javascript">setStatusCalendar();function tdate_onclick() {

}

function fdate_onclick() {

}

        </script>

    </form>
</body>
</html>
