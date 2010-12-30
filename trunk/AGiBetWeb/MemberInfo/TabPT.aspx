<%@ Page Language="C#" AutoEventWireup="true" Inherits="MemberInfo_TabPT" Codebehind="TabPT.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<title>Home</title>
<meta name="keywords" content="sportsbook, agency, agent, betting" />
<meta name="description" content="online betting sportsbook agency system" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<link href='../App_Themes/AgencyV2/button.css' type='text/css' rel='stylesheet' /><link href='../App_Themes/AgencyV2/casino.css' type='text/css' rel='stylesheet' /><link href='../App_Themes/AgencyV2/common.css' type='text/css' rel='stylesheet' /><link href='../App_Themes/AgencyV2/footer.css' type='text/css' rel='stylesheet' /><link href='../App_Themes/AgencyV2/header.css' type='text/css' rel='stylesheet' /><link href='../App_Themes/AgencyV2/leftMenu.css' type='text/css' rel='stylesheet' /><link href='../App_Themes/AgencyV2/main.css' type='text/css' rel='stylesheet' /><link href='../App_Themes/AgencyV2/message.css' type='text/css' rel='stylesheet' /><link href='../App_Themes/AgencyV2/newagent.css' type='text/css' rel='stylesheet' /><link href='../App_Themes/AgencyV2/popup.css' type='text/css' rel='stylesheet' /><link href='../App_Themes/AgencyV2/PopUpMessage.css' type='text/css' rel='stylesheet' /><link href='../App_Themes/AgencyV2/tabmenu.css' type='text/css' rel='stylesheet' /><link href='../App_Themes/AgencyV2/thickbox.css' type='text/css' rel='stylesheet' /><link href='../App_Themes/AgencyV2/userinfo.css' type='text/css' rel='stylesheet' />
<script type='text/javascript' src='../Js/opt/Core.js?v=20091230' ></script>
<script type='text/javascript' src='../Js/Common.js?v=20091230' ></script>

<!--js-->
<script type="text/javascript">
    function ActiveMenuTab(url,id, idlength,isedit) {     

        for (var i = 0; i < idlength; i++) {
            if ($(id).id == "IdCurr" + i) {
                if ($("IdCurr" + i))
                    $("IdCurr" + i).className = "current";
                
            }
            else {
                if ($("IdCurr" + i))
                    $("IdCurr" + i).className = "";
            }
        }        
        parent.frmmain.location.href = url + "&isedit=" + $("IdIsEdit" + isedit).value;
    }   

</script>
 <!--/js--></head>
<body>
 <style>body{background-color: #b3b3b5;background-image:none;}</style><div id="button_hr"><div id="tab_hr"><ul><li id="IdCurr0" class="current"><a href="#" onclick="ActiveMenuTab('AddEditFinancial.aspx?custid=2052164','IdCurr0','2','Fi');"><span>Finance</span></a></li><input type="hidden" id="IdIsEditFi" name="IdIsEditFi" value="False" />
<li id="IdCurr1" class=""><a href="#" onclick="ActiveMenuTab('AddEditHorseRacing.aspx?custid=2052164','IdCurr1','2','Hr');"><span>Horse Racing</span></a></li><input type="hidden" id="IdIsEditHr" name="IdIsEditHr" value="False" />
</ul></div></div>
</body>
</html>
