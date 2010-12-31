using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AGiBetBusiness.MemberInfomation;
using AGiBetCommon.MemberInformation;
namespace AGiBetWeb.Popup
{
    public partial class EditCredit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["custid"] != null && !Page.IsPostBack)
            {
                clsBusinessAccount objBAccount = new clsBusinessAccount();
                clsAccount objAccount = new clsAccount();
                clsBalance objBalance = new clsBalance();
                clsBusinessBalance objBBalance = new clsBusinessBalance();
                objAccount = objBAccount.getById(Convert.ToInt64(Request.QueryString["custid"]));
                objBalance = objBBalance.getByAccId(objAccount.Id);
                this.lblUserName.Text = objAccount.UserName;
                this.txtCredit.Text = objBalance.Credit.ToString();
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            try
            {
                clsBusinessBalance objBBalance = new clsBusinessBalance();
                objBBalance.UpdateCredit(Convert.ToInt64(Request.QueryString["custid"]), Convert.ToDecimal(this.txtCredit.Text));

            }
            catch (Exception)
            {
                
                throw;
            }
        }
    }
}