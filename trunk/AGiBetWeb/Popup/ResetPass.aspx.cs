using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AGiBetWeb.Popup
{
    public partial class ResetPass : System.Web.UI.Page
    {
        AGiBetBusiness.MemberInfomation.clsBusinessAccount objBAccount = new AGiBetBusiness.MemberInfomation.clsBusinessAccount();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                this.lblUserNameValue.Text = Request.QueryString["usn"];
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            try
            {
                objBAccount.ResetPassword(Convert.ToInt64(Request.QueryString["id"]), Request.QueryString["usn"]);
            }
            catch (Exception)
            {
                
                throw;
            }
            
        }
    }
}