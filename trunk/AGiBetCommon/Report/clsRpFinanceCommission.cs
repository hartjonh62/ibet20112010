using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace AGiBetCommon.Report
{
    public class clsRpFinanceCommission
    {
        public clsRpFinanceCommission() { }
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
        string strAccId;

        public string StrAccId
        {
            get { return strAccId; }
            set { strAccId = value; }
        }
        float oU5Min;

        public float OU5Min
        {
            get { return oU5Min; }
            set { oU5Min = value; }
        }
        float oU15Min;

        public float OU15Min
        {
            get { return oU15Min; }
            set { oU15Min = value; }
        }
        float oU30Min;

        public float OU30Min
        {
            get { return oU30Min; }
            set { oU30Min = value; }
        }
        float oU45Min;

        public float OU45Min
        {
            get { return oU45Min; }
            set { oU45Min = value; }
        }
        float oU60Min;

        public float OU60Min
        {
            get { return oU60Min; }
            set { oU60Min = value; }
        }
        float oUEndOfDay;

        public float OUEndOfDay
        {
            get { return oUEndOfDay; }
            set { oUEndOfDay = value; }
        }
        float oUTotal;

        public float OUTotal
        {
            get { return oUTotal; }
            set { oUTotal = value; }
        }
        float oE5Min;

        public float OE5Min
        {
            get { return oE5Min; }
            set { oE5Min = value; }
        }
        float oE15Min;

        public float OE15Min
        {
            get { return oE15Min; }
            set { oE15Min = value; }
        }
        float oE30Min;

        public float OE30Min
        {
            get { return oE30Min; }
            set { oE30Min = value; }
        }
        float oE45Min;

        public float OE45Min
        {
            get { return oE45Min; }
            set { oE45Min = value; }
        }
        float oE60Min;

        public float OE60Min
        {
            get { return oE60Min; }
            set { oE60Min = value; }
        }
        float oEEndOfDay;

        public float OEEndOfDay
        {
            get { return oEEndOfDay; }
            set { oEEndOfDay = value; }
        }
        float oETotal;

        public float OETotal
        {
            get { return oETotal; }
            set { oETotal = value; }
        }
        DateTime reportDate;

        public DateTime ReportDate
        {
            get { return reportDate; }
            set { reportDate = value; }
        }
    }
}
