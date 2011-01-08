<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Statement.aspx.cs" Inherits="Report_Statement" %>
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

<script type="text/javascript" src="../Js/excel.js?v=20091230"></script>

<script type="text/javascript" src="../Js/opt/jx.js?v=20091230"></script>
<script type="text/javascript" src="../Js/Paging.js?v=20091230"></script>
<script type="text/javascript">
    function SearchByDate()
    {
        var url='Statement.aspx?fdate=' + $('fdate').value +'&tdate=' + $('tdate').value + '&page=1' + '&custid=' + $('hdcus').value + '&site=' + $('hdsite').value;        
        _submit();
        location.href=url;
    }
    
    function SearchOneDay(value)
    {
        var url='Statement.aspx?page=1' + '&custid=' + $('hdcus').value + '&site=' + $('hdsite').value + '&isdate=' + value;        
        _submit();
        location.href=url;
    }
    
    function NavigatePage(page, url, site) {
        NavigatePage2(page, url, "site", site);
    }
    
    function GotoPageNext(strNavigatePage,site)
    {
        GotoPageNext2(strNavigatePage, "site", site);
    }

</script>
</head>
<body>
<form id="frmmain" method="get"><div id="page_main"><div id="header_main"><div class="divBoxRight"><input type="image" id="exporttoexcel" name="exporttoexcel" alt="Export to Excel" noFocus="true" src="../App_Themes/AgencyV2/Images/excel.gif" title="Export to Excel" class="hand" /></div>Statement</div><table border="0" cellpadding="0" cellspacing="0" {widthReport}><tr><td> </td></tr><tr><td><div id="divContent"><script type="text/javascript" src="../Js/wz_tooltip/wz_tooltip.js"></script><script type="text/javascript" src="../Js/wz_tooltip/tip_centerwindow.js"></script><script type="text/javascript" src="../Js/wz_tooltip/tip_balloon.js"></script><table class="tblRpt boldrow r" width="650" border="0" cellpadding="0" cellspacing="1" id="tbl-rpt"><tr class="RptHeader"><td style="width:20px;">#</td><td style="width:115px;">Date</td><td>Remark</td><td>Total Amt</td><td>Total</td></tr><tr class="{classname} c bg_white nobold"><td colspan="6">No information is available</td></tr></table></div></td></tr></table><input type="hidden" value="2012567" name="hdcus" id="hdcus" /><input type="hidden" value="{role}" name="hdrole" id="hdrole" /><input type="hidden" value="{site}" name="hdsite" id="hdsite" /><input type="hidden" value="{checked_SB}" name="hdSB" id="hdSB" /><input type="hidden" value="{checked_Casino}" name="hdCasino" id="hdCasino" /><input type="hidden" value="{checked_HR}" name="hdHR" id="hdHR" /><input type="hidden" value="{checked_FI}" name="hdFI" id="hdFI" /></div></form>

</body>
</html>
