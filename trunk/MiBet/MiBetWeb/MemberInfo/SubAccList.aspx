<%@ Page Language="C#" AutoEventWireup="true" Inherits="MemberInfo_SubAccList" Codebehind="SubAccList.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<title>Home</title>
<meta name="keywords" content="sportsbook, agency, agent, betting" />
<meta name="description" content="online betting sportsbook agency system" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<link href='../App_Themes/AgencyV2/common.css' type='text/css' rel='stylesheet' /><link href='../App_Themes/AgencyV2/main.css' type='text/css' rel='stylesheet' />
<script type='text/javascript' src='../Js/opt/Core.js?v=20091230' ></script>
<script type='text/javascript' src='../Js/Common.js?v=20091230' ></script>

<script type="text/javascript" src="../Js/opt/jx.js?v=20091230"></script>

<script type="text/javascript" src="../Js/IBCWnd/IBCWnd.js?v=20091230"></script>

<script type="text/javascript">

//Add new sub account
function AddNewSubAcc(){
	var URL = "../Popup/AddSubAcc.aspx";
	var popH = 250, popW = 450;

    Err('');

	ibcWnd.open(URL, '', 50, document.body.scrollTop + 20, popW, popH, 'class1', 'class2');
}

//Edit selected sub account
function EditSubAcc(id, name, info){
	var URL = "../Popup/EditSubAcc.aspx?";
	URL += "SubAccID=" + id;
	URL += "&USER=" + name;
	URL += "&Info=" + info;

	var popH = 195, popW = 380;
	if(info == 'no') popH = 145;

    Err('');

	ibcWnd.open(URL, '', 500, document.body.scrollTop + 50, popW, popH, 'class1', 'class2');	
}
function ExcUpdateAcc(param,obj)
{
    Ajax.Request('../Handlers/UpdatePermissionSubAcc.ashx', {
        method: 'post',
        parameters: param,
        onComplete: function(res) {
            if (res.responseText == '105') {
                alert(lblConfirmClosed);
                location.href = '../Authorization/Logout.ashx';
            }
            else if (res.responseText == '106') {
                Err(lblconfirmclosesubacc);
            }
            else if (res.responseText != 'Ok') {
                Err(res.responseText);
                obj.checked = (!obj.checked);
            }
        }
    });  
}
function GetInfoSubAcc(id, obj,val)
{
   ExcUpdateAcc('type=' + val + '&SubAccID=' + id + '&val=' + (obj.checked==true ? '1':'0'),obj); 
}

function Err(msg)
{
    if(msg == '')
    {
        $('diverrmsg').style.display = 'none';
        return;
    }
    
    $('spmsgerr').innerHTML = msg; 
    $('diverrmsg').style.display = window.attachEvent? 'block':'table';
}

</script>
</head>
<body>
    <div id="page_main">
        <div id="header_main">
            Sub Account &nbsp;<input type="button" onclick="AddNewSubAcc();" value="Add Sub Account"
                class="btn"></div>
        <table border="0" cellpadding="0" cellspacing="0" width="900px" id="diverrmsg" style="display: none;">
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
        <table width="900px" class="tblRpt" cellspacing="1" cellpadding="0" border="0">
            <tr class="RptSubTitle">
                <td colspan="7">
                </td>
                <td width="16%" class="RptHeader01" colspan="2">
                    Agent information
                </td>
                <td colspan="3">
                </td>
            </tr>
            <tr class="RptHeader">
                <td width="3%">
                    #
                </td>
                <td width="14%">
                    User Name
                </td>
                <td width="11%">
                    First Name
                </td>
                <td width="11%">
                    Last Name
                </td>
                <td width="11%">
                    Created Date
                </td>
                <td width="7%" style="white-space: nowrap">
                    Total Bets
                </td>
                <td width="7%">
                    Reports
                </td>
                <td width="9%" style="white-space: nowrap">
                    Create Account
                </td>
                <td width="9%" style="white-space: nowrap">
                    Update Account
                </td>
                <td width="7%">
                    Transfer
                </td>
                <td width="4%">
                    Edit
                </td>
                <td width="6%">
                    Password
                </td>
            </tr>
            <tr align="center" bgcolor="#faf9ee" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#faf9ee'">
                <td class="w-order">
                    1
                </td>
                <td class="l">
                    SMQQSub01
                </td>
                <td class="l">
                </td>
                <td class="l">
                </td>
                <td class="bl_time">
                    1/3/2010 1:35:08 AM
                </td>
                <td>
                    <input type='checkbox' id='D114377' checked onclick="GetInfoSubAcc(114377,this,'D');">
                </td>
                <td>
                    <input type='checkbox' id='E114377' checked onclick="GetInfoSubAcc(114377,this,'E');">
                </td>
                <td>
                    <input type='checkbox' id='A114377' checked onclick="GetInfoSubAcc(114377,this,'A');">
                </td>
                <td>
                    <input type='checkbox' id='B114377' checked onclick="GetInfoSubAcc(114377,this,'B');">
                </td>
                <td>
                    <input type='checkbox' id='C114377' checked onclick="GetInfoSubAcc(114377,this,'C');">
                </td>
                <td align="center">
                    <div class="divEdit" title="Edit" onclick="EditSubAcc(114377, 'SMQQSub01', 'yes');">
                    </div>
                </td>
                <td>
                    <div class="divEdit" title="Edit" onclick="EditSubAcc(114377,'SMQQSub01', 'no');">
                    </div>
                </td>
            </tr>
        </table>
    </div>

</body>
</html>
<script type="text/javascript">

lblconfirmclosesubacc='No permission for sub-account.';
lblConfirmClosed='Your account was closed so you\'re forced to logout. Please contact your upline for the assistance.';

</script>

