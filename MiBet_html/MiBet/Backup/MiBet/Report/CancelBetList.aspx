<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CancelBetList.aspx.cs" Inherits="Report_CancelBetList" %>
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

<script type="text/javascript" src="../Js/IBCWnd/IBCWnd.js?v=20091230"></script>
<script type="text/javascript" src="../Js/opt/jx.js?v=20091230"></script>
<script type="text/javascript">
    function show_option(id, data)
    {
        $(id).innerHTML = data;
    }
    
    function ViewBetSlip()
    {
    
    }
    
    window.onload = function()
    {
        var ibcWnd = parent.ibcWnd;
        if(typeof ibcWnd == 'undefined')
        {
            if($('tbl2')) $('tbl2').align = 'left';
        }
        else if(ibcWnd.loaded)
        {
            if($('tbl2')) $('tbl2').align = 'center';
            ibcWnd.setRect(ibcWnd.left, ibcWnd.top, 800, 350);
        }
        if($('tbl2')) $('tbl2').style.display = window.attachEvent?'block':'table';
        // hidden combobox
        if($('selmaster') && $('selmaster').value == '-1')
        {
            $('optagent').className = $('optagent1').className = $('optagent2').className = 'hidden';
        }
        if($('selagent') && $('selagent').value == '-1')
        {
            $('optmember').className = $('optmember1').className = $('optmember2').className = 'hidden';
        }
    }
</script>
</head>
<body>
<form id="frmmain" method="get"><div id="page_main"><div id="header_main" style="width: 97%"><div class="divBoxRight"><input type="image" id="exporttoexcel" name="exporttoexcel" alt="Export to Excel" nofocus="true" src="../App_Themes/AgencyV2/Images/excel.gif" title="Export to Excel" class="hand" /></div>Void/Rejected Bet List (Last 3 days)</div><table border="0" cellpadding="0" cellspacing="0"><tr><td></td></tr><tr><td><span id="spData"><form method="post"><div id=""><table id="tbl1" border="0" cellspacing="0" cellpadding="0" class="hidden" width="99%"><tr><td style="text-align: left; white-space: nowrap; width: 50%;"><div id="header_main" style="position: relative; left: -2px;"><b>Bet List {frmtodate}</b></div></td><td align="right" style="width: 45%;"><div style="display: none"><div style="text-align: right;"><input type="image" id="exporttoexcel" name="exporttoexcel" alt="{exporttoexcel}" nofocus="true" src="../App_Themes/AgencyV2/Images/excel.gif" title="{exporttoexcel}" class="hand" /></div></div></td></tr></table><table id="tbl2" border="0" cellpadding="0" cellspacing="1" style="display: none; margin-bottom: 10px; width: 100%" class="tblRpt"><tr class="RptHeader"><td style="width: 20px;">#</td><td style="width: 90px;">Member</td><td style="width: 130px;">Trans.Time</td><td>Choice</td><td style="width: 50px;">Odds</td><td style="width: 50px;">Stake</td><td style="width: 85px;">Status</td></tr><tr><td colspan="9" class="bg_white c">No information is available</td></tr></table></form> </span></td></tr></table><script type="text/javascript"></script></div></form>

</body>
</html>
