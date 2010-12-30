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
using AGiBetCommon.MemberInformation;
using AGiBetBusiness.MemberInfomation;

public partial class UserAgent_AddNewMemberSingle : System.Web.UI.Page
{
    clsBusinessAccount objBAccount = new clsBusinessAccount();
    clsBusinessSoccerBetSetting objBBetSetting = new clsBusinessSoccerBetSetting();
    clsBusinessSoccerDeadBall objBSoccerDeadBall = new clsBusinessSoccerDeadBall();
    clsBusinessUserCommission objBUserCommission = new clsBusinessUserCommission();
    clsBusinessSoccerLive objBSoccerLive = new clsBusinessSoccerLive();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void LinkAdd_Click(object sender, EventArgs e)
    {
        try
        {
            string UserName = this.lblUserNameValue.Text + ddlNumber1.Text + ddlNumber2.Text + ddlNumber3.Text;
            if (objBAccount.CheckUserName(UserName) == 0)
            {
                clsAccount objAccount = new clsAccount();
                objAccount = objBAccount.getById(2);
                string clientip = Request.UserHostAddress;
                //Thêm dữ liệu vào bảng Account
                objBAccount.Insert(objAccount.Id, objAccount.SGMId, objAccount.GMId, objAccount.MasterId, objAccount.Id, 0, 1, UserName, txtPass.Text, "", txtFName.Text,
                 txtLName.Text, txtPhone.Text, txtMobilePhone.Text, Convert.ToDecimal(txtMaxCredit.Text), txtFax.Text, !chkClosed.Checked,
                 chkSuspended.Checked, true, 0, objAccount.Id, DateTime.Now, 0, DateTime.Now, DateTime.Now, DateTime.Now, "", DateTime.Now, "", DateTime.Now, true);
                // Thêm dữ liệu vào bảng Betsetting
                Int64 accid = objBAccount.CheckUserName(UserName);
                objBBetSetting.Insert(accid, Convert.ToDecimal(this.txtMinBet.Text), Convert.ToDecimal(this.txtMaxBet.Text), Convert.ToDecimal(this.txtMaxPerMatch.Text));
                // Thêm dữ liêu vào bảng deadball
                decimal hdpValueD = Convert.ToDecimal(this.ddlslPT.Text);
                decimal correctValueD = Convert.ToDecimal(ddlslOtherPT.Text);
                decimal outrightD = Convert.ToDecimal(ddlslOutrightPT.Text);
                decimal hdpValueL = Convert.ToDecimal(ddlslLivePT.Text);
                objBSoccerDeadBall.Insert(accid, hdpValueD, hdpValueD, hdpValueD, correctValueD, hdpValueD, correctValueD, correctValueD, correctValueD, correctValueD, outrightD);
                // Thêm dữ liệu vào bảng live
                objBSoccerLive.Insert(accid, 0, hdpValueD, hdpValueD, hdpValueD);
                //Thêm dữ liệu vào bảng Usercommission
                decimal comhdpValue = Convert.ToDecimal(this.ddlslComHdp.Text);
                decimal com1x2Value = Convert.ToDecimal(this.ddlslcom1x2.Text);
                decimal comotherValue = Convert.ToDecimal(ddlslComOther.Text);
                objBUserCommission.Insert(accid, Convert.ToDecimal(Request.Form["txtComHdp"]), comhdpValue, Convert.ToDecimal(Request.Form["txtDiscount1x2"]), Convert.ToDecimal(Request.Form["txtCommForAgent"]), com1x2Value, comotherValue, objAccount.Id, DateTime.Now, 0, DateTime.Now);
                Response.Write("<script Language=javascript>alert('Insert successfull!')</script>");
            }
            else
            {
                Response.Write("<script Language=javascript>alert('User Name already exists ')</script>");
            }
        }
        catch (Exception)
        {
            Response.Write("<script Language=javascript>alert('Insert Fail!')</script>");
        }
    }
}
