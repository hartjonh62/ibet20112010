using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using MiBetBusiness.MemberInfomation;

public partial class SignIn : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        try
        {
            clsBusinessAccount objBAccount = new clsBusinessAccount();
            if (objBAccount.Login(this.txtUserName.Text, this.txtPassword.Text))
            {
                Response.Redirect("~/Index.aspx");
            }
            else
            {
                RegisterStartupScript("abc", "<SCRIPT LANGUAGE='JavaScript'>$('errmsg').innerHTML='Login Fail';</SCRIPT>");
                
            }
        }
        catch (Exception)
        {
            throw;
            RegisterStartupScript("abc", "<SCRIPT LANGUAGE='JavaScript'>$('errmsg').innerHTML='Error Please contact to Administrator';</SCRIPT>");
            
        }
    }
}
