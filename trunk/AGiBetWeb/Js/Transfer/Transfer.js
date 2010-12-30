var _noFocusStartUp = true;

function viewOutStById(custId, userName, fDate, tDate) {    
    window.location = "../Report/OutstandingAgentDetail.aspx?custid=" + custId + "&username=" + userName + "&type=RunByDate_Mem&fdate=" + fDate + "&tdate=" + tDate + "&ShowCasino=1&ShowSB=1";
}

function viewOutStByUsrname(userName, custId) {
    window.location = "../Report/OutstandingAgentDetail.aspx?username=" + userName + "&option=1&custid=" + custId + "&page=1";
}

function filterAcc(value){
    window.location = "MultipleTransfer.aspx?status="+value;
}
function CheckAll()
{
    var checkID=document.getElementsByName('chkitem');
    
    if(!checkID)return;
    for(var i=0;i<checkID.length;i++)
    {
       var arrAmt=checkID[i].value.split('_');
       
       if(arrAmt[0] != 0)
       {
            checkID[i].checked =$("chkall").checked; 
       }
    }    
}
function ShowTransYesBalance(amt,custid,username)
{      
    var popH = 120, popW = 400;   
    ibcWnd.open('../Popup/TransYesBalance.aspx?amt=' + amt + '&custid=' + custid + '&usn=' + username +  '&status=' + $('statusFilter').value, '', 350, 100, popW, popH, 'class1', 'class2');
}
function showTransYesBalanceForAg(custid)
{
    var popH = 380, popW = 450;
    ibcWnd.open('../Popup/TransYesBalanceForAgent.aspx?custid=' + custid  + '&status=' + $('statusFilter').value,  '', 50, 100, popW, popH, 'class1', 'class2');
}
function TransMulti()
{
    var checkID=document.getElementsByName('chkitem');
    var custidmulti="";
    var counter=0;
    var isok=false;
    var issucc=false;
    var mulError='';
    if(!checkID)return;
    for(var i=0;i<checkID.length;i++)
    {       
       if(checkID[i].checked==true)
       {
           counter++;
           var amtarr=checkID[i].value.split('_');
           if(counter >= 2)
           {
                custidmulti +=amtarr[1] + "_";
                counter=0;    
           }
           else
           {
              custidmulti +=amtarr[1] + ",";
           }
       } 
    }
   
    if(custidmulti.length > 0)
    {             
        $('btntransfer2').disabled=true;
        $('btntransfer').disabled=true;
        custidmulti = custidmulti.substring(0,custidmulti.length -1);
        var _arr=custidmulti.split('_');
        
        if(!$("chkall").checked)
        {     
            if(confirm($('wrntransfer').value))
            {
                for(var i=0;i<_arr.length;i++)
                {
                    Ajax.Request('../Handlers/UpdateMultiTransferYesBalance.ashx', {
                        method: 'post',
                        parameters: 'custid=' + _arr[i] + '&amount=0&ischeck=' + $("chkall").checked + '&isstatus=' + $('statusFilter').value + '&arrId=' + _arr,
                        asynchronous: false,
                        onSuccess: function(res) {
                            if (res.responseText == 'Ok') {
                                issucc = true;
                            }
                            else if (res.responseText == '106') {
                                $('btntransfer2').disabled = false;
                                $('btntransfer').disabled = false;                               
                                showErrMsg($('hdConfirmCloseSubdAcc').value, 0);
                                
                            }
                            else if (res.responseText == '105') // kick out
                            {
                                alert($('hdConfirmClosedAcc').value);
                                location.href = '../Authorization/Logout.ashx';
                            }
                            else {
                                var errarr = res.responseText.split('_');

                                if (errarr[1] == 'true') {
                                    issucc = true;
                                }
                                mulError += '- ' + errarr[0] + '\n';
                            }
                            custidmulti = '';
                            $("chkall").checked = false;
                            for (var i = 0; i < checkID.length; i++) {
                                if (checkID[i].checked == true) {
                                    checkID[i].checked = false;
                                }
                            }
                        }
                    });
                }                 
               
                if(mulError != '') {
                    $('btntransfer2').disabled = false;
                    $('btntransfer').disabled = false;
                    alert(mulError);
                    
                }                
                if(issucc==true)
                {   
                    DelayReloadPage($('hdCurrentUrl').value);
                    location.href="#top";              
                }
          }
          else
          {
                $('btntransfer2').disabled=false;
                $('btntransfer').disabled=false;
          }
       }
       else {           
            if(confirm($('wrntransfer').value))
            {
                Ajax.Request('../Handlers/UpdateMultiTransferYesBalance.ashx',{
                    method:'post',
                    parameters:'custid=0&amount=0&ischeck=' + $("chkall").checked + '&isstatus=' + $('statusFilter').value + '&arrId=' + _arr,   
                    onComplete:function(res)
                    {
                        if(res.responseText=='Ok')
                        {                    
                            DelayReloadPage($('hdCurrentUrl').value);
                            location.href="#top";
                        }
                        else if (res.responseText == '106') {
                            $('btntransfer2').disabled = false;
                            $('btntransfer').disabled = false;
                            showErrMsg($('hdConfirmCloseSubdAcc').value, 0);
                            
                        }
                        else if (res.responseText == '105') // kick out
                        {
                            alert($('hdConfirmClosedAcc').value);
                            location.href = '../Authorization/Logout.ashx';
                        }
                        else
                        {
                            var errarr=res.responseText.split('_');
                            alert(errarr[0]);      
                            if(errarr[1]=='true')
                            {
                                DelayReloadPage($('hdCurrentUrl').value);
                                location.href="#top";  
                            } 
			    else {
                                $('btntransfer2').disabled = false;
                                $('btntransfer').disabled = false;
                            }                                                                                                                    
                          
                        }
                        
                        custidmulti="";
                        $("chkall").checked=false;
                        for(var i=0;i<checkID.length;i++)
                        {       
                           if(checkID[i].checked==true)
                           {
                                checkID[i].checked=false;
                           } 
                        }
                    }               
                });                    
            } 
            else
            {
                $('btntransfer2').disabled=false;
                $('btntransfer').disabled=false;
            }
       }
    } 
    else
    {
        Err($('errchooseitem').value);       
    }  
}

function Err(msg)
{
    $('spmsgerr').innerHTML = msg; 
    $('diverrmsg').style.display = window.attachEvent? 'block':'table';
}

function IsCheck()
{
    var checkID=document.getElementsByName('chkitem');
    var ischeck=false; 
    var isuncheck=false;
    if(!checkID)return;    
    for(var j=0;j<checkID.length;j++)
    {
        var arrAmt=checkID[j].value.split('_');
        if(arrAmt[0] != 0)
        {
            if(checkID[j].checked==false)
            {
                isuncheck=true;
                break;
            }
        }
    }
   
    if(isuncheck==true)
    {
        $('chkall').checked=false;
    }
    else
    {
        $('chkall').checked=true;
    }      
    
}

//Paging
function NavigatePage(page,url,site) {
    NavigatePage2(page, url, "sitelist", site);
}

function GotoPageNext(url,site)
{
    GotoPageNext2(url, "sitelist", site);
}

function searchByUsername(requestedPage, site, custId)
{
    var status = "", username = "", allYesBal = "no";
    status = $('statusFilter').value;
    username = $('txtUserName').value;
    allYesBal = ($('chkAllYesBal').checked ? "yes" : "no");
    var url = requestedPage + "?status=" + status + "&username=" + username + "&custId=" + custId + "&allYesBal=" + allYesBal;
    NavigatePage(1, url, site);
}