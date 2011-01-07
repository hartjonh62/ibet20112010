using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace MiBetCommon.MemberInformation
{
    public class clsMember
    {
        public clsMember() { }
        Int64 memberId;

        public Int64 MemberId
        {
            get { return memberId; }
            set { memberId = value; }
        }
        string userNamePrefix;

        public string UserNamePrefix
        {
            get { return userNamePrefix; }
            set { userNamePrefix = value; }
        }
        string userName;

        public string UserName
        {
            get { return userName; }
            set { userName = value; }
        }
        string pass;

        public string Pass
        {
            get { return pass; }
            set { pass = value; }
        }
        string fName;

        public string FName
        {
            get { return fName; }
            set { fName = value; }
        }
        string lName;

        public string LName
        {
            get { return lName; }
            set { lName = value; }
        }
        string phone;

        public string Phone
        {
            get { return phone; }
            set { phone = value; }
        }
        string mobilePhone;

        public string MobilePhone
        {
            get { return mobilePhone; }
            set { mobilePhone = value; }
        }
        string fax;

        public string Fax
        {
            get { return fax; }
            set { fax = value; }
        }
        Int64 memberGroupId;

        public Int64 MemberGroupId
        {
            get { return memberGroupId; }
            set { memberGroupId = value; }
        }
        string status;

        public string Status
        {
            get { return status; }
            set { status = value; }
        }
        decimal minBet;

        public decimal MinBet
        {
            get { return minBet; }
            set { minBet = value; }
        }
        decimal maxBet;

        public decimal MaxBet
        {
            get { return maxBet; }
            set { maxBet = value; }
        }
        decimal maxPerMatch;

        public decimal MaxPerMatch
        {
            get { return maxPerMatch; }
            set { maxPerMatch = value; }
        }
        string lastLogin;

        public string LastLogin
        {
            get { return lastLogin; }
            set { lastLogin = value; }
        }
        string loginip;

        public string Loginip
        {
            get { return loginip; }
            set { loginip = value; }
        }
        DateTime createDate;

        public DateTime CreateDate
        {
            get { return createDate; }
            set { createDate = value; }
        }
        DateTime modifyDate;

        public DateTime ModifyDate
        {
            get { return modifyDate; }
            set { modifyDate = value; }
        }
        string sessionLogin;

        public string SessionLogin
        {
            get { return sessionLogin; }
            set { sessionLogin = value; }
        }
        bool online;

        public bool Online
        {
            get { return online; }
            set { online = value; }
        }
        DateTime passwordExpiryDate;

        public DateTime PasswordExpiryDate
        {
            get { return passwordExpiryDate; }
            set { passwordExpiryDate = value; }
        }
        decimal cashBalance;

        public decimal CashBalance
        {
            get { return cashBalance; }
            set { cashBalance = value; }
        }
        decimal outStanding;

        public decimal OutStanding
        {
            get { return outStanding; }
            set { outStanding = value; }
        }
        decimal betCredit;

        public decimal BetCredit
        {
            get { return betCredit; }
            set { betCredit = value; }
        }
        decimal givenCredit;

        public decimal GivenCredit
        {
            get { return givenCredit; }
            set { givenCredit = value; }
        }
        DateTime timeInsert;

        public DateTime TimeInsert
        {
            get { return timeInsert; }
            set { timeInsert = value; }
        }
        decimal commissionHDPOU;

        public decimal CommissionHDPOU
        {
            get { return commissionHDPOU; }
            set { commissionHDPOU = value; }
        }
        decimal commission1x2;

        public decimal Commission1x2
        {
            get { return commission1x2; }
            set { commission1x2 = value; }
        }
        decimal commissionOther;

        public decimal CommissionOther
        {
            get { return commissionOther; }
            set { commissionOther = value; }
        }
    }
}
