<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddSubAcc.aspx.cs" Inherits="Popup_AddSubAcc" %>
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
<form id="frmAdd" method="post" onsubmit="return formvalidation()"><div id="page_popup"><table align="center" width="95%" cellspacing="0" cellpadding="0" border="0"><tr><td class="l"><table border="0" cellpadding="0" cellspacing="0" width="99%" id="diverrmsg" style="display: none;"><tr><td class="emsg_1_1">&nbsp;</td><td class="emsg_1_2">&nbsp;</td><td class="emsg_1_3">&nbsp;</td></tr><tr><td valign="top" class="emsg_2_1">&nbsp;</td><td valign="top" id="spmsgerr" class="msgerr"></td><td class="emsg_2_2">&nbsp;</td></tr><tr><td class="emsg_3_1">&nbsp;</td><td class="emsg_3_2">&nbsp;</td><td class="emsg_3_3">&nbsp;</td></tr></table></td></tr><tr><td class="l"><div id="header_popup">Add Sub Account</div></td></tr><tr><td align="center"><table align="left" width="100%" class="tblPop" cellspacing="1" cellpadding="0" border="0"><tr class="bg_eb2"><td width="30%" class="r b">User Name</td><td class="l">SMQQSub<select name="number1" id="number1"><option selected="selected" value="0">0</option><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option><option value="6">6</option><option value="7">7</option><option value="8">8</option><option value="9">9</option></select><select name="number2" id="number2"><option selected="selected" value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option><option value="6">6</option><option value="7">7</option><option value="8">8</option><option value="9">9</option><option value="0">0</option></select></td></tr><tr class="bg_eb2"><td class="r b">Password</td><td id="td_pass" class="l" title="Password must have at least 6 characters, including at least 2 letters and at least 2 digits. (e.g:pass22)"><input name="password" id="password" type="password" onkeyup="return checkpass(this,'td_pass');" /></td></tr><tr class="bg_eb2"><td class="r b">First Name</td><td id="td_fname" class="l"><input name="fname" id="fname" type="text" /></td></tr><tr class="bg_eb2"><td class="r b">Last Name</td><td id="td_lname" class="l"><input name="lname" id="lname" type="text" /></td></tr><tr class="bg_eb2"><td colspan="2" class="l b">* Account Permission</td></tr><tr class="bg_eb2"><td colspan="2" class="c" valign="middle"><input name="viewTotalBets" id="viewTotalBets" type="checkbox" />Total Bets &nbsp;<input name="viewReports" id="viewReports" type="checkbox" />Reports &nbsp;<input name="CreateAcc" id="CreateAcc" type="checkbox" />Create Account&nbsp;<input name="UpdateAcc" id="UpdateAcc" type="checkbox" />Update Account &nbsp;<input name="Transfer" id="Transfer" type="checkbox" />Transfer</td></tr><tr class="bg_eb2"><td class="c" colspan="2"><input name="Apply" id="Apply" type="submit" value=" Add " class="btn" /></td></tr></table></td></tr></table><input type="hidden" value="Password must have at least 6 characters, including at least 2 letters and at least 2 digits. (e.g:pass22)" id="lblPasswordRequire" /><input id="alertPasswordEmpty" name="alertPasswordEmpty" type="hidden" value="Sorry, password can not be empty!!!" /><input id="alertPasswordRequire" name="alertPasswordRequire" type="hidden" value="Password must have at least 6 characters, including at least 2 letters and at least 2 digits. (e.g:pass22)" /></div></form>

</body>
</html>
