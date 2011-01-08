using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace MiBetCommon.Report
{
    public class clsRpStatement
    {
        public clsRpStatement() { }
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

        DateTime date;

        public DateTime Date
        {
            get { return date; }
            set { date = value; }
        }
        string type;

        public string Type
        {
            get { return type; }
            set { type = value; }
        }
        string remark;

        public string Remark
        {
            get { return remark; }
            set { remark = value; }
        }
        float totalAmt;

        public float TotalAmt
        {
            get { return totalAmt; }
            set { totalAmt = value; }
        }
        float total;

        public float Total
        {
            get { return total; }
            set { total = value; }
        }
        DateTime reportDate;

        public DateTime ReportDate
        {
            get { return reportDate; }
            set { reportDate = value; }
        }

    }
}
