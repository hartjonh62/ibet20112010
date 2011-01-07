using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace MiBetCommon.MemberInformation
{
    public class clsBalance
    {
        public clsBalance() { }
        Int64 id;

        public Int64 Id
        {
            get { return id; }
            set { id = value; }
        }
        Int64 accId;

        public Int64 AccId
        {
            get { return accId; }
            set { accId = value; }
        }
        decimal cashBalance;

        public decimal CashBalance
        {
            get { return cashBalance; }
            set { cashBalance = value; }
        }
        decimal yesCashBalance;

        public decimal YesCashBalance
        {
            get { return yesCashBalance; }
            set { yesCashBalance = value; }
        }
        decimal totalBalance;

        public decimal TotalBalance
        {
            get { return totalBalance; }
            set { totalBalance = value; }
        }
        decimal yesTotalBalance;

        public decimal YesTotalBalance
        {
            get { return yesTotalBalance; }
            set { yesTotalBalance = value; }
        }
        decimal outStanding;

        public decimal OutStanding
        {
            get { return outStanding; }
            set { outStanding = value; }
        }
        decimal credit;

        public decimal Credit
        {
            get { return credit; }
            set { credit = value; }
        }
        decimal betCredit;

        public decimal BetCredit
        {
            get { return betCredit; }
            set { betCredit = value; }
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
        int active;

        public int Active
        {
            get { return active; }
            set { active = value; }
        }


        int close;

        public int Close
        {
            get { return close; }
            set { close = value; }
        }


        int suspended;

        public int Suspended
        {
            get { return suspended; }
            set { suspended = value; }
        }
        decimal memberCredit;

        public decimal MemberCredit
        {
            get { return memberCredit; }
            set { memberCredit = value; }
        }
        
    }
}
