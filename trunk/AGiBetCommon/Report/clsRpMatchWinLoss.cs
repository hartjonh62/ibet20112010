using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace AGiBetCommon.Report
{
    public class clsRpMatchWinLoss
    {
        public clsRpMatchWinLoss() { }
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
        int matchId;

        public int MatchId
        {
            get { return matchId; }
            set { matchId = value; }
        }
        string matchName;

        public string MatchName
        {
            get { return matchName; }
            set { matchName = value; }
        }
        string betType;

        public string BetType
        {
            get { return betType; }
            set { betType = value; }
        }
        decimal grossComm;

        public decimal GrossComm
        {
            get { return grossComm; }
            set { grossComm = value; }
        }
        decimal comm;

        public decimal Comm
        {
            get { return comm; }
            set { comm = value; }
        }
        decimal pasitionTaking;

        public decimal PasitionTaking
        {
            get { return pasitionTaking; }
            set { pasitionTaking = value; }
        }
        decimal total;

        public decimal Total
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
