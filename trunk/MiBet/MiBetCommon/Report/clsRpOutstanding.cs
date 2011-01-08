using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace MiBetCommon.Report
{
    public class clsRpOutstanding
    {
        public clsRpOutstanding() { }
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
        string userName;

        public string UserName
        {
            get { return userName; }
            set { userName = value; }
        }
        string strAcc;

        public string StrAcc
        {
            get { return strAcc; }
            set { strAcc = value; }
        }
        float sBOutstanding;

        public float SBOutstanding
        {
            get { return sBOutstanding; }
            set { sBOutstanding = value; }
        }
        float sBPosition;

        public float SBPosition
        {
            get { return sBPosition; }
            set { sBPosition = value; }
        }
        float casinoTranfer;

        public float CasinoTranfer
        {
            get { return casinoTranfer; }
            set { casinoTranfer = value; }
        }
        float casinoOutstanding;

        public float CasinoOutstanding
        {
            get { return casinoOutstanding; }
            set { casinoOutstanding = value; }
        }
        DateTime reportDate;

        public DateTime ReportDate
        {
            get { return reportDate; }
            set { reportDate = value; }
        }
    }
}
