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
using AGiBetBusiness.MemberInfomation;
using AGiBetCommon.MemberInformation;

public partial class UserAgent_EditMember : System.Web.UI.Page
{
    clsBusinessAccount objBAccount = new clsBusinessAccount();
    clsBusinessUserCommission objBUserCommission = new clsBusinessUserCommission();
    clsBusinessSoccerBetSetting objBSBSetting = new clsBusinessSoccerBetSetting();
    clsBusinessSoccerDeadBall objBSDBall = new clsBusinessSoccerDeadBall();
    clsBusinessSoccerLive objBSLive = new clsBusinessSoccerLive();
    clsAccount objAccount = new clsAccount();
    clsUserCommission objUserCommission = new clsUserCommission();
    clsSoccerBetSetting objSBSetting  = new clsSoccerBetSetting();
    clsSoccerDeadBall objSDBall = new clsSoccerDeadBall();
    clsSoccerLive objSLive = new clsSoccerLive();
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            objAccount = objBAccount.getById(Convert.ToInt64(Request.QueryString["custid"]));
            objUserCommission = objBUserCommission.getByAccId(objAccount.Id);
            objSBSetting = objBSBSetting.getByAccId(objAccount.Id);
            objSDBall = objBSDBall.getByAccId(objAccount.Id);
            objSLive = objBSLive.getByAccId(objAccount.Id);
            if (!Page.IsPostBack)
            {
                string user = Request.QueryString["USER"];
                string user1 = user.Substring(0, user.Length - 3);
                string user2 = user.Substring(user.Length - 3, 1);
                string user3 = user.Substring(user.Length - 2, 1);
                string user4 = user.Substring(user.Length - 1, 1);
                this.lblUserNameValue.Text = user1;
                this.ddlNumber1.SelectedValue = user2;
                this.ddlNumber2.SelectedValue = user3;
                this.ddlNumber3.SelectedValue = user4;
                this.txtFName.Text = objAccount.FirtName;
                this.txtPhone.Text = objAccount.Phone;
                this.txtMaxCredit.Text = objAccount.MaxCredit.ToString();
                this.chkSuspended.Checked = objAccount.IsSuspended;
                this.txtLName.Text = objAccount.LastName;
                this.txtMobilePhone.Text = objAccount.MobilePhone;
                this.txtFax.Text = objAccount.Fax;
                this.chkClosed.Checked = objAccount.IsOpen;
                //lấy dữ liệu từ tblUserCommission
                this.txtComHdp.Text = objUserCommission.CommA.ToString();
                this.ddlslComHdp.SelectedValue = objUserCommission.CommB.ToString();
                this.txtDiscount1x2.Text = objUserCommission.CommC.ToString();
                this.txtCommForAgent.Text = objUserCommission.CommD.ToString();
                this.ddlslcom1x2.SelectedValue = objUserCommission.Comm1x2.ToString();
                this.ddlslComOther.SelectedValue = objUserCommission.CommOther.ToString();
                //Lấy dữ liệu từ tblSoccerBetSetting
                this.txtMinBet.Text = objSBSetting.Minbet.ToString();
                this.txtMaxBet.Text = objSBSetting.Maxbet.ToString();
                this.txtMaxPerMatch.Text = objSBSetting.MaxPerMath.ToString();
                //Lấy dữ liệu từ tblSeccerDeadBall
                this.ddlslPT.SelectedValue = objSDBall.Over_Under.ToString();
                this.ddlslOtherPT.SelectedValue = objSDBall.OneXTwo.ToString();
                this.ddlslOutrightPT.SelectedValue = objSDBall.Outright.ToString();
                //Lấy dữ liệu từ tblSoccerLive
                this.ddlslLivePT.SelectedValue = objSLive.Over_Under.ToString();

            }
        }
        catch
        {

            
        }
    }
    protected void LinkAdd_Click(object sender, EventArgs e)
    {
        try
        {
            string UserName = this.lblUserNameValue.Text + ddlNumber1.Text + ddlNumber2.Text + ddlNumber3.Text;
            clsAccount objAccountLogin = new clsAccount();
            objAccountLogin = objBAccount.getById(2);
            string clientip = Request.UserHostAddress;
            //Thêm dữ liệu vào bảng Account
            objBAccount.Update(objAccount.Id, objAccount.ParentId, objAccount.SGMId, objAccount.GMId, objAccount.MasterId, objAccount.AgentId, 0, 1, UserName, txtPass.Text, "", txtFName.Text,
             txtLName.Text, txtPhone.Text, txtMobilePhone.Text, Convert.ToDecimal(txtMaxCredit.Text), txtFax.Text, !chkClosed.Checked,
             chkSuspended.Checked, true, 0, objAccount.CreateBy, objAccount.CreateDate, objAccountLogin.Id, DateTime.Now, objAccount.LastTxn, objAccount.PasswordExpiryDate, objAccount.LoginIP, objAccount.LoginTime, objAccount.LastLoginIP, objAccount.LastLoginTime, objAccount.IsOutright);
            // Thêm dữ liệu vào bảng Betsetting
            Int64 accid = objAccount.Id;
            objBSBSetting.Update(objSBSetting.Id, accid, Convert.ToDecimal(this.txtMinBet.Text), Convert.ToDecimal(this.txtMaxBet.Text), Convert.ToDecimal(this.txtMaxPerMatch.Text));
            // Thêm dữ liêu vào bảng deadball
            decimal hdpValueD = Convert.ToDecimal(this.ddlslPT.Text);
            decimal correctValueD = Convert.ToDecimal(ddlslOtherPT.Text);
            decimal outrightD = Convert.ToDecimal(ddlslOutrightPT.Text);
            decimal hdpValueL = Convert.ToDecimal(ddlslLivePT.Text);
            objBSDBall.Update(objSDBall.Id, accid, hdpValueD, hdpValueD, hdpValueD, correctValueD, hdpValueD, correctValueD, correctValueD, correctValueD, correctValueD, outrightD);
            // Thêm dữ liệu vào bảng live
            objBSLive.Insert(accid, 0, hdpValueD, hdpValueD, hdpValueD);
            //Thêm dữ liệu vào bảng Usercommission
            decimal comhdpValue = Convert.ToDecimal(this.ddlslComHdp.Text);
            decimal com1x2Value = Convert.ToDecimal(this.ddlslcom1x2.Text);
            decimal comotherValue = Convert.ToDecimal(ddlslComOther.Text);
            objBUserCommission.Update(objUserCommission.Id, accid, comhdpValue, comhdpValue, comhdpValue, comhdpValue, com1x2Value, comotherValue, objUserCommission.CreateBy, objUserCommission.CreateDate, objUserCommission.ModifyBy, objUserCommission.ModifyDate);
            Response.Write("<script Language=javascript>alert('Update successfull!')</script>");
        }
        catch (Exception)
        {
            Response.Write("<script Language=javascript>alert('Update Fail!')</script>");
        }
    }
}
