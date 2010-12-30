<%@ Page Language="C#" AutoEventWireup="true" Inherits="BetList_BetList" CodeBehind="BetList.aspx.cs" %>

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

    <script type="text/javascript" src="../Js/IBCWnd/IBCWnd.js?v=20091230"></script>

    <script type="text/javascript" src="../Js/opt/jx.js?v=20091230"></script>

    <script type="text/javascript">
    
    function showMP(transid)
    {
        var spEvent = $('spEvent_' + transid);
        if(spEvent.className == 'hide')
        {
            if (spEvent.innerHTML == "")
            {
                var _ajax = new Ajax.Request("../Handlers/GenMixParlay.ashx",{method:'get',parameters:'transid=' + transid,
                onComplete: function (data)
                {
                    spEvent.innerHTML = data.responseText;
                    spEvent.className = '';
                }
                 })    
                    
            }
            else
            {
                spEvent.className = '';
            }
        }
        else
        {
            spEvent.className = 'hide';
        }
    }
    
    
    function ViewResult(matchid, type, race, bettype)
    {
        var width=750;
       if(race > 0)
       {
            width=400;
       }
       var params = '?matchid=' + matchid + '&type=' + type + '&race=' + race + '&bettype=' + bettype;
       if(parent.ibcWnd)
            parent.ibcWnd.open('../Popup/ViewResult.aspx' + params, '', 50, 100, width, 400, 'class1', 'class2');
       else
            ibcWnd.open('../Popup/ViewResult.aspx' + params, '', 50, 100, width, 400, 'class1', 'class2');
    }
    
    function ViewCasinoResult(refno,bettype,uname)
    {
       
         var params = '?ibcrefno=' + refno + '&bettype=' + bettype + '&uname=' + uname;
         //include hidden fields for returning back -- Henry@20090415
         if ($('_type')!=null)
            params += '&type=' + $('_type').value + '&custid=' + $('_custid').value + '&showSB=' + $('_showSB').value + '&showCasino=' + $('_showCasino').value + '&showP2P=' + $('_showP2P').value  + '&showFI=' + $('_showFI').value  + '&showHR=' + $('_showHR').value   + '&fdate=' + $('_fdate').value + '&tdate=' + $('_tdate').value + '&isHistotyReport=' + $('_isHistotyReport').value + '&BL_URL=' + $('BL_URL').value + '&transtype=' + $('_transtype').value
         var url = 'ViewCasinoResult.aspx' + params;
        window.location.href = url;
    }
    
    function ViewBetSlip(TransID)
    {
        var url = 'BetSlip.aspx?TransID=' + TransID;
    }
    
    function resizeTbl()
    {
        var ibcWnd = parent.ibcWnd;        
        if(typeof ibcWnd == 'undefined')
        {
            if($('tbl2'))
            {
                $('tbl2').width = '90%';
                $('tbl2').align = 'left';
            }
        }
        else if(ibcWnd.loaded)
        {
            if($('tbl2'))
            {
                $('tbl2').width = '99%';
                $('tbl2').align = 'center';
            }            
            ibcWnd.setRect(ibcWnd.left, 50, 900, 350);  // to fix the popup when click "Bet List" link
            
            $('exporttoexcel').style.display = 'none'; 
        }
        if($('tbl2'))
        {
            $('tbl2').style.display = window.attachEvent?'block':'table';
        }
    }    
    
    IBC.addEvent(window, "load", resizeTbl);
    
    </script>

</head>
<body>
    <div class='sContent'>
        <form method="post">
        <div id="page_main">
            <table id="tbl1" border="0" cellspacing="0" cellpadding="0" class="{hide}" width="99%">
                <tr>
                    <td style="text-align: left; white-space: nowrap; width: 50%;">
                        <div id="header_main" style="position: relative; left: -2px;">
                            <asp:Label ID="lblMixparlay" runat="server" Text="Mix Parlay "></asp:Label>
                        </div>
                    </td>
                    <td align="right" style="width: 45%;">
                        <div style="text-align: right;">
                            <asp:Image ID="ImgExporttoexcel" runat="server" ImageUrl="~/App_Themes/AgencyV2/images/excel.gif"
                                DescriptionUrl="Export to Excel" nofocus="true" class="hand" />
                        </div>
                    </td>
                </tr>
            </table>
            <table id="tbl2" border="0" cellpadding="0" cellspacing="1" style="display: none;
                margin-bottom: 10px; width: 99%" class="tblRpt">
                <tr class="RptHeader">
                    <td style="width: 20px;">
                        #
                    </td>
                    <td style="width: 90px;">
                        Member
                    </td>
                    <td style="width: 130px;">
                        Trans.Time
                    </td>
                    <td>
                        Choice
                    </td>
                    <td style="width: 50px;">
                        Odds
                    </td>
                    <td style="width: 50px;">
                        Stake
                    </td>
                    <td style="width: 85px;">
                        Status
                    </td>
                    <td style="width: 70px;">
                        AgentPT/<br>
                        Comm
                    </td>
                </tr>
                <tr>
                    <td colspan="12" class="bg_white c">
                        No information is available
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
