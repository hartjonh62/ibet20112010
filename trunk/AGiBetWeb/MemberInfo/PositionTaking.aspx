<%@ Page Language="C#" AutoEventWireup="true" Inherits="MemberInfo_PositionTaking"
    CodeBehind="PositionTaking.aspx.cs" %>

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

    <!--js-->

    <script type="text/javascript" src="../Js/EditMaster.js?v=20091230"></script>

    <script type="text/javascript" src="../Js/IBCWnd/IBCWnd.js?v=20091230"></script>

    <!--/js-->
</head>
<body>
    <div id="page_main">
        <div id="header_main">
            <div>
                <asp:Label ID="lblPositionTaking" runat="server" Text="Position Taking (%)"></asp:Label></div>
            <div>
            </div>
        </div>
        <div id="tbl-container">
            <div id="boderRight">
                <table id="tbl-rpt" class="tblRpt nowrap c" cellpadding="0" cellspacing="1" style="width: 100%;">
                    <thead>
                        <tr class="nowrap">
                            <td class="RptHeader" colspan="2">
                                &nbsp;
                            </td>
                            <td class="RptHeader" colspan="10">
                                Soccer
                            </td>
                            <td class="RptHeader" colspan="4">
                                Soccer Live!
                            </td>
                            <td class="RptHeader" colspan="5">
                                Basketball
                            </td>
                            <td class="RptHeader" colspan="4">
                                Football
                            </td>
                            <td class="RptHeader" colspan="4">
                                Tennis
                            </td>
                            <td class="RptHeader" colspan="3">
                                Baseball
                            </td>
                            <td class="RptHeader" colspan="4">
                                Golf
                            </td>
                            <td class="RptHeader" colspan="2">
                                Motor Sports
                            </td>
                            <td class="RptHeader" colspan="2">
                                Finance
                            </td>
                            <td class="RptHeader" colspan="2">
                                Horse
                            </td>
                            <td class="RptHeader" colspan="4">
                                Other Sports
                            </td>
                            <td class="RptHeader" class="RptHeader">
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="RptHeader">
                                #
                            </td>
                            <td class="RptHeader">
                                User Name
                            </td>
                            <td class="colHdr">
                                Hdp
                            </td>
                            <td class="colHdr">
                                O/U
                            </td>
                            <td class="colHdr">
                                1st Hdp
                            </td>
                            <td class="colHdr">
                                1st OU
                            </td>
                            <td class="colHdr">
                                O/E
                            </td>
                            <td class="colHdr">
                                1 X 2
                            </td>
                            <td class="colHdr">
                                CS
                            </td>
                            <td class="colHdr">
                                TG
                            </td>
                            <td class="colHdr">
                                MP
                            </td>
                            <td class="colHdr">
                                Outright
                            </td>
                            <td class="colHdr">
                                Hdp
                            </td>
                            <td class="colHdr">
                                O/U
                            </td>
                            <td class="colHdr">
                                1st Hdp
                            </td>
                            <td class="colHdr">
                                1st OU
                            </td>
                            <td class="altHdr">
                                Hdp
                            </td>
                            <td class="altHdr">
                                O/U
                            </td>
                            <td class="altHdr">
                                O/E
                            </td>
                            <td class="altHdr">
                                MP
                            </td>
                            <td class="altHdr">
                                ML
                            </td>
                            <td class="colHdr">
                                Hdp
                            </td>
                            <td class="colHdr">
                                O/U
                            </td>
                            <td class="colHdr">
                                O/E
                            </td>
                            <td class="colHdr">
                                ML
                            </td>
                            <td class="altHdr">
                                Hdp
                            </td>
                            <td class="altHdr">
                                O/U
                            </td>
                            <td class="altHdr">
                                O/E
                            </td>
                            <td class="altHdr">
                                ML
                            </td>
                            <td class="colHdr">
                                Hdp
                            </td>
                            <td class="colHdr">
                                O/U
                            </td>
                            <td class="colHdr">
                                ML
                            </td>
                            <td class="altHdr">
                                Hdp
                            </td>
                            <td class="altHdr">
                                O/U
                            </td>
                            <td class="altHdr">
                                O/E
                            </td>
                            <td class="altHdr">
                                ML
                            </td>
                            <td class="colHdr">
                                Hdp
                            </td>
                            <td class="colHdr">
                                ML
                            </td>
                            <td class="altHdr c">
                                O/U
                            </td>
                            <td class="altHdr c">
                                O/E
                            </td>
                            <td class="colHdr c">
                                Win.Tote
                            </td>
                            <td class="colHdr c">
                                Place.Tote
                            </td>
                            <td class="altHdr c">
                                Hdp
                            </td>
                            <td class="altHdr c">
                                O/U
                            </td>
                            <td class="altHdr c">
                                O/E
                            </td>
                            <td class="altHdr c">
                                ML
                            </td>
                            <td class="RptHeader">
                                User Name
                            </td>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td colspan="45" class="bg_white c nobold">
                                No information is available
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <input type="hidden" id="rowcount" name="rowcount" value="0" /></div>
</body>
</html>
