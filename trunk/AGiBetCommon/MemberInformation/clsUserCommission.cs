using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace AGiBetCommon.MemberInformation
{
    public class clsUserCommission
    {
        public clsUserCommission() { }
        int id;

        public int Id
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
        decimal commA;

        public decimal CommA
        {
            get { return commA; }
            set { commA = value; }
        }
        decimal commB;

        public decimal CommB
        {
            get { return commB; }
            set { commB = value; }
        }
        decimal commC;

        public decimal CommC
        {
            get { return commC; }
            set { commC = value; }
        }
        decimal commD;

        public decimal CommD
        {
            get { return commD; }
            set { commD = value; }
        }
        decimal comm1x2;

        public decimal Comm1x2
        {
            get { return comm1x2; }
            set { comm1x2 = value; }
        }
        decimal commOther;

        public decimal CommOther
        {
            get { return commOther; }
            set { commOther = value; }
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
    }
}
