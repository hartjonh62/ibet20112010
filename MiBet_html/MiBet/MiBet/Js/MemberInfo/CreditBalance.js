// JScript File
function openTransfer(custid,amt,usn,site)
{
    var popH = 115, popW = 330;
    ibcWnd.open('../Popup/CreditTransfer.aspx?custid=' + custid + '&amt=' + amt + '&usn=' + usn + '&sitetype=' + site, '', 50, 100, popW, popH, 'class1', 'class2');
}
function showTransYesBalance(custid)
{
    var isyes=1;
    var popH = 390, popW = 450;
    ibcWnd.open('../Popup/TransYesBalanceForAgent.aspx?custid=' + custid + '&isyes=' + isyes + '&status=-1',  '', 50, 100, popW, popH, 'class1', 'class2');
}