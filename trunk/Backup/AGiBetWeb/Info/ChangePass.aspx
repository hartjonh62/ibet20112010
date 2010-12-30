<%@ Page Language="C#" AutoEventWireup="true" Inherits="Info_ChangePass" CodeBehind="ChangePass.aspx.cs" %>

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

    <script type="text/javascript" src="../Js/opt/jx.js?v=20091230"></script>

    <script type="text/javascript">
function Validate()
{
    if($('OldPassword').value=='')
    {
        Err($('alertInputOldPwd').value);	
        $('OldPassword').focus();
        return false;
    }
    else if ($('NewPassword').value == "")
    {
        Err($('alertPasswordEmpty').value);
        
        $('NewPassword').focus();        
        return false;
    }
    else if ($('NewPassword').value != $('ConfirmPassword').value) 
    {
        Err($('alertErrorConfirm').value);
        
        $('ConfirmPassword').focus();
        return false;
    }
    else
    {
        var str = $("NewPassword").value;					
		numbers = new String("0123456789");						
		if(str.length < 6)
		{							
			Err($("alertPasswordRequire").value);
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
			
			$('NewPassword').focus();
			return false;
		}
    }
    return true;
}

function Err(msg)
{
    $('trMsg').style.display = 'block'; 
    
    var tbl2 = $('tbl2');
    if(typeof tbl2 != 'undefined' && tbl2 != null)
    {
        tbl2.style.display = 'none';
    }
    
    $('tbl1').style.display = 'block';
    $('spmsgerr').innerHTML = msg; 
    $('spmsgerr').className='msgerr';
}
function Succ(msg)
{
    $('trMsg').style.display = 'block';
    
    var tbl2 = $('tbl2');
    if(typeof tbl2 != 'undefined' && tbl2 != null)
    {
        tbl2.style.display = 'none';
    }
    
    $('tbl1').style.display = 'block';
    $('spmsgerr').innerHTML = msg;
    $('spmsgerr').className='msgscc';
    $('1_1').className="succ_1_1";
    $('1_2').className="succ_1_2";
    $('1_3').className="succ_1_3";
    $('2_1').className="succ_2_1";
    $('2_2').className="succ_2_2";
    $('3_1').className="succ_3_1";
    $('3_2').className="succ_3_2";
    $('3_3').className="succ_3_3";
}
function ExcSubmit()
{
    if (Validate())
    {
        var myajax= new Ajax.Request('../Authorization/ChangePassword.ashx',{
                    method:'post',
                    parameters: 'op=' + $('OldPassword').value + '&np=' + $("NewPassword").value,
                    onComplete:function(res)
                    {               
                       if(res.responseText=='Ok')
                       {    
                            $('NewPassword').value='';
                            $('ConfirmPassword').value='';
                            $('OldPassword').value='';                  
                            Succ($('alertPasswordSucc').value);
                            ResetCheckPass('td_pass');
                            ResetCheckPass('td_confirmpass');
                       }  
                       else if(res.responseText=='changed')    
                       {
                       
                            top.menu.location = top.menu.location.href;
                            top.frHeader.location = top.frHeader.location.href;
                            $('NewPassword').value='';
                            $('ConfirmPassword').value='';
                            $('OldPassword').value='';                  
                            Succ($('alertPasswordSucc').value);
                            ResetCheckPass('td_pass');
                            ResetCheckPass('td_confirmpass');
                       }     
                       else
                       {
                            Err(res.responseText);                            
                       }
                    }               
                });
    }
}

function ExcReset()
{
    $('trMsg').style.display = 'none';    
    if ($('pass_td_pass'))
        $('pass_td_pass').src = '../App_Themes/AgencyV2/Images/dot.gif';
    if ($('pass_td_confirmpass'))
        $('pass_td_confirmpass').src = '../App_Themes/AgencyV2/Images/dot.gif';
    
    $('OldPassword').focus();
}

function PreSubmit(e)
{
    e =(e) ?e :window.event;
	var key =(e.keyCode) ?e.keyCode :e.which;
	if (key ==13) ExcSubmit();
}

    </script>

</head>
<body>
    <form id="form1" runat="server">
    <div id="page_main">
        <div id="header_main">
            <asp:Label ID="lblChangePassword" runat="server" Text="Change Password"></asp:Label></div>
        <table id="trMsg" style="display: none" width="370" class="">
            <tr>
                <td>
                    <table id="tbl1" align="left" cellspacing="0" cellpadding="0" border="0" style="display: {ErrDisplay}">
                        <tr class="">
                            <td class="l" style="width: 380px">
                                <table border="0" cellpadding="0" cellspacing="0" width="100%" id="diverrmsg">
                                    <tr>
                                        <td id="1_1" class="emsg_1_1">
                                            &nbsp;
                                        </td>
                                        <td id="1_2" class="emsg_1_2">
                                            &nbsp;
                                        </td>
                                        <td id="1_3" class="emsg_1_3">
                                            &nbsp;
                                        </td>
                                    </tr>
                                    <tr>
                                        <td id="2_1" valign="top" class="emsg_2_1">
                                            &nbsp;
                                        </td>
                                        <td valign="top" style="padding-left: 30px;" id="spmsgerr" class="msgerr">
                                            {Message-Error}
                                        </td>
                                        <td id="2_2" class="emsg_2_2">
                                            &nbsp;
                                        </td>
                                    </tr>
                                    <tr>
                                        <td id="3_1" class="emsg_3_1">
                                            &nbsp;
                                        </td>
                                        <td id="3_2" class="emsg_3_2">
                                            &nbsp;
                                        </td>
                                        <td id="3_3" class="emsg_3_3">
                                            &nbsp;
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                    <table id="tbl2" align="left" cellspacing="0" cellpadding="0" border="0" style="display: none">
                        <tr class="">
                            <td class="l" style="width: 380px">
                                <table border="0" cellpadding="0" cellspacing="0" width="100%" id="Table1">
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
                                        <td valign="top" id="Td1" class="msgerr">
                                            {Message}
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
                    </table>
                </td>
            </tr>
        </table>
        <table width="370" border="0" cellpadding="0" cellspacing="1" onkeyup="PreSubmit(event)"
            class="tblRpt">
            <tr>
                <td colspan="2" class="RptHeader bg_eb">
                    Change Password
                </td>
            </tr>
            <tr class="bg_eb">
                <td>
                    <asp:Label ID="lblOldPassword" runat="server" Text="Old Password"></asp:Label>
                </td>
                <td class="red l">
                    <asp:TextBox ID="txtOldPassword" runat="server" size="20" Style="width: 150px;"></asp:TextBox>
                </td>
            </tr>
            <tr class="bg_eb">
                <td>
                <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
                    
                </td>
                <td class="red l" title="Password must have at least 6 characters, including at least 2 letters and at least 2 digits. (e.g:pass22)"
                    id="td_pass">
                    <asp:TextBox ID="txtNewPassword" runat="server" size="20" Style="width: 150px;"></asp:TextBox>
                </td>
            </tr>
            <tr class="bg_eb">
                <td>
                   <asp:Label ID="lblConfirmPassword" runat="server" Text=" Confirm Password"></asp:Label>
                </td>
                <td class="red l" title="Password must have at least 6 characters, including at least 2 letters and at least 2 digits. (e.g:pass22)"
                    id="td_confirmpass">
                    <asp:TextBox ID="txtConfirmPassword" runat="server" size="20" Style="width: 150px;"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="bg_eb">
                    &nbsp;
                </td>
                <td class="bg_eb red l">
                    <asp:Button ID="btnSubmit" runat="server" OnClientClick="ExcSubmit();" Text="Submit"
                        class="btn" />
                    <asp:Button ID="btnReset" runat="server" OnClientClick="ExcReset();" Text="Reset"
                        class="btn" />
            </tr>
        </table>
    </div>
    <input id="alertInputOldPwd" name="alertInputOldPwd" type="hidden" value="Please Enter Old Password!!!" /><input
        id="alertPasswordEmpty" name="alertPasswordEmpty" type="hidden" value="Sorry, password can not be empty!!!" /><input
            id="alertErrorConfirm" name="alertErrorConfirm" type="hidden" value="The password was not correctly confirmed." /><input
                id="alertPasswordRequire" name="alertPasswordRequire" type="hidden" value="Password must have at least 6 characters, including at least 2 letters and at least 2 digits. (e.g:pass22)" /><input
                    id="alertPasswordSucc" name="alertPasswordSucc" type="hidden" value="Password Changed!" />
    </form>
</body>
</html>
