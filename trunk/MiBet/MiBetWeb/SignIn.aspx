<%@ Page Language="C#" AutoEventWireup="true" Inherits="SignIn" Codebehind="SignIn.aspx.cs" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Login page</title>
    <style type="text/css">
        html{margin: 0 auto;}
        body {
	        font-family:arial,tahoma,verdana;
	        font-size:11px;
	        background:#E1E1E1 url(../App_Themes/LogIn2/bg.jpg) repeat-x;
	        color:#000000;
	        margin:78px 0px 0px 0px;
        }
        #cpanel
        {
        	background: url(../App_Themes/LogIn2/center.jpg) no-repeat;
        	width:443px;
        	height:293px;
        	padding: 75px 0px 0px 0px;
        }          
        #language
        {
        	background: url(../App_Themes/LogIn2/flags.jpg) 0px 0px;
        	display:block;width:24px;height:19px;
        }
        .buttonsite {
	        text-align:center;
	        font-size:11px;
	        font-weight:bold;
	        color:#000000;
	        height:20px;
	        background:url(../App_Themes/AgencyV2/images/bg_buttonsite.jpg) repeat-x top;
	        cursor:pointer;
	        border:1px solid #000000;
	        padding-left:10px;
	        padding-right:10px;
        }
        .buttonsite:hover {
	        color:#000033;
	        background:url(../App_Themes/AgencyV2/images/bg_buttonsiteOV.jpg) repeat-x bottom;
	        border:1px solid #000000;
        }
        .buttondisable 
        {   
        	font-size:11px;
	        font-weight:bold;     	
	        border:1px solid #000000;
	        padding-left:10px;
	        padding-right:10px;        	
	        height:20px;	        
        }
        .errmsg {color:#f00; margin-left:145px; text-align:left; font-weight:bold; display:block; height:15px;}
        .text_brow {color:#CCCCCC;font-size:10px;font-weight:normal;padding-left:7px;}
        td{text-align:left;}
        .tb{width:121px;}
        a{text-decoration:none;}
        
    </style>

    <script type="text/javascript" src="../Js/opt/Core.js"></script>
    <script type="text/javascript" src="../Js/opt/LogIn2.js"></script>

    <script type="text/javascript">
        function loadedContent()
        {
            //nqminh
            var newLangVal = 1; //set default language
            var oldLangCode = getCookie('ibclang');
            if (oldLangCode != null)
                newLangVal = getLangFromCode(oldLangCode);
            
            Language(newLangVal);            
            $("select").value = newLangVal;            
        }               
       
    </script>

</head>
<body onload="loadedContent();$('txtusername').focus();">    
<center>
    <div id="cpanel">        
        <form method="post" name="fLogin" action="Authorization/ProcessBLogin.ashx">
        <div id="errmsg" class="errmsg"></div>       
        <table style="position:relative; left:140px; top:25px; width:280px;" border="0" align="left" cellpadding="0" cellspacing="3">
            <tr>
                <td style="width:63px; text-align:right;"></td>                
                <td style="width:24px;"><span id="language"></span></td>

                <td style="width:80px; text-align:left;">
                    <asp:DropDownList ID="ddlLanguage" runat="server" onchange="Language(this.value); setCookie('ibclang', getLangCode(this.value), 30);" style="height: 20px; width: 85px;">
                        <asp:ListItem Text="English" Value="1" />
                        <asp:ListItem Text="繁體中文" Value="2" />
                        <asp:ListItem Text="简体中文" Value="3" />
                        <asp:ListItem Text="日本語" Value="4" />
                        <asp:ListItem Text="ภาษาไทย" Value="5" />
                        <asp:ListItem Text="한국어" Value="6" />
                    </asp:DropDownList>                     
                </td>
            </tr>
            <tr>
                <td><span id="username" style="font-weight:bold;">Username</span></td>
                <td colspan="2">
                    <asp:TextBox class="tb" onkeypress="onExcLogin(event);" ID="txtUserName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><span id="password" style="font-weight:bold;">Password</span></td>
                <td colspan="2">
                    <asp:TextBox class="tb" TextMode="Password" onkeypress="onExcLogin(event);" ID="txtPassword" runat="server"></asp:TextBox>
                    
                </td>
            </tr>

            <tr>
                <td onclick="GetValidateImage()">
                    <img id="validatecode" alt="" src="Authorization/LoginCaptcha.ashx" style="width:65px; height:28px;" /></td>
                <td colspan="2">
                    <asp:TextBox class="tb" onkeypress="onExcLogin(event);" maxlength="4" autocomplete="off"  ID="txtCaptcha" runat="server"></asp:TextBox>
                    
                </td>
            </tr>
            <tr>
                <td></td>

                <td colspan="2">
                    <asp:Button ID="btnLogin" class="buttonsite" OnClientClick="ExcLogin();" runat="server" Text="Login" />
                </td>
            </tr>                       
        </table> 
        <div id="rowEmpty" style="height:20px;clear:both;display:none">&nbsp;</div>
        <input name="lang" type="hidden" id="lang" value=""/>              
        </form>        
        <table border="0" cellspacing="0" cellpadding="0" style="position:relative; top:9px; clear:both; width:380px;">
            <tr valign="bottom" style="height:24px;">                
                <td style="width:62%; text-align:right;" valign="bottom">

                    <span id="brows" class="text_brow">Recommended Browsers:</span>
                </td>
                <td>
                    <a style="display:block;width:45px;" target="_blank" href="http://www.microsoft.com/uk/windows/internet-explorer/download-ie.aspx">&nbsp;</a>                    
                </td>
                <td>
                    <a style="display:block;width:45px;" target="_blank" href="http://www.mozilla.com/en-US/firefox/all.html">&nbsp;</a>
                </td>
            </tr>

        </table>   
    </div>                
</center>            
<script type='text/javascript'>
var MsgEng={
errUserName: "Please input username and password",
errValidCode: "You must input validation code."
};
var MsgJap={
errUserName: "ユーザー名とパスワードを入力してください",
errValidCode: "You must input validation code."
};
var MsgTha={
errUserName: "โปรดใส่ชื่อผู้ใช้และรหัสผ่าน",
errValidCode: "คุณต้องใส่หมายเลขที่ใช้ในการตรวจสอบ"
};
var MsgCN={
errUserName: "请输入账号及密码",
errValidCode: "您必須輸入正確驗證碼"
};
var MsgTW={
errUserName: "請輸入會員名字及密碼",
errValidCode: "您必须输入正确验证码"
};
var MsgKO={
errUserName: "사용자명과 비밀번호를 입력해주세요",
errValidCode: "확인코드를 입력해주세요."
};

</script>

<script type="text/javascript">
    window.onload = function() {
        if (!document.all) {
            $("rowEmpty").style.display = "";
        }
    }
</script>
</body>
</html>


