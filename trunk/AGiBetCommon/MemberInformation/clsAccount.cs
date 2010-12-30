using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace AGiBetCommon.MemberInformation
{
    public class clsAccount
    {
        public clsAccount() { }
        Int64 id;

        public Int64 Id
        {
            get { return id; }
            set { id = value; }
        }
        Int64 parentId;

        public Int64 ParentId
        {
            get { return parentId; }
            set { parentId = value; }
        }
        Int64 sGMId;

        public Int64 SGMId
        {
            get { return sGMId; }
            set { sGMId = value; }
        }
        Int64 gMId;

        public Int64 GMId
        {
            get { return gMId; }
            set { gMId = value; }
        }
        Int64 masterId;

        public Int64 MasterId
        {
            get { return masterId; }
            set { masterId = value; }
        }
        Int64 agentId;

        public Int64 AgentId
        {
            get { return agentId; }
            set { agentId = value; }
        }
        Int64 accountId;

        public Int64 AccountId
        {
            get { return accountId; }
            set { accountId = value; }
        }
        int accGrade;

        public int AccGrade
        {
            get { return accGrade; }
            set { accGrade = value; }
        }
        string userName;

        public string UserName
        {
            get { return userName; }
            set { userName = value; }
        }
        string password;

        public string Password
        {
            get { return password; }
            set { password = value; }
        }
        string nickName;

        public string NickName
        {
            get { return nickName; }
            set { nickName = value; }
        }
        string firtName;

        public string FirtName
        {
            get { return firtName; }
            set { firtName = value; }
        }
        string lastName;

        public string LastName
        {
            get { return lastName; }
            set { lastName = value; }
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
        decimal maxCredit;

        public decimal MaxCredit
        {
            get { return maxCredit; }
            set { maxCredit = value; }
        }
        string fax;

        public string Fax
        {
            get { return fax; }
            set { fax = value; }
        }
        bool isOpen;

        public bool IsOpen
        {
            get { return isOpen; }
            set { isOpen = value; }
        }
        bool isSuspended;

        public bool IsSuspended
        {
            get { return isSuspended; }
            set { isSuspended = value; }
        }
        bool allowAutoPT;

        public bool AllowAutoPT
        {
            get { return allowAutoPT; }
            set { allowAutoPT = value; }
        }
        int transferConditionId;

        public int TransferConditionId
        {
            get { return transferConditionId; }
            set { transferConditionId = value; }
        }
        Int64 createBy;

        public Int64 CreateBy
        {
            get { return createBy; }
            set { createBy = value; }
        }
        DateTime createDate;

        public DateTime CreateDate
        {
            get { return createDate; }
            set { createDate = value; }
        }
        Int64 modifyBy;

        public Int64 ModifyBy
        {
            get { return modifyBy; }
            set { modifyBy = value; }
        }
        DateTime modifyDate;

        public DateTime ModifyDate
        {
            get { return modifyDate; }
            set { modifyDate = value; }
        }
        DateTime lastTxn;

        public DateTime LastTxn
        {
            get { return lastTxn; }
            set { lastTxn = value; }
        }
        DateTime passwordExpiryDate;

        public DateTime PasswordExpiryDate
        {
            get { return passwordExpiryDate; }
            set { passwordExpiryDate = value; }
        }
        string loginIP;

        public string LoginIP
        {
            get { return loginIP; }
            set { loginIP = value; }
        }
        DateTime loginTime;

        public DateTime LoginTime
        {
            get { return loginTime; }
            set { loginTime = value; }
        }
        string lastLoginIP;

        public string LastLoginIP
        {
            get { return lastLoginIP; }
            set { lastLoginIP = value; }
        }
        DateTime lastLoginTime;

        public DateTime LastLoginTime
        {
            get { return lastLoginTime; }
            set { lastLoginTime = value; }
        }
        bool isOutright;

        public bool IsOutright
        {
            get { return isOutright; }
            set { isOutright = value; }
        }

    }
}
