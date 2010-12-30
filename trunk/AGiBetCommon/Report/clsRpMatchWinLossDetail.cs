using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace AGiBetCommon.Report
{
    public class clsRpMatchWinLossDetail
    {
        public clsRpMatchWinLossDetail() { }
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
        int leaguaId;

        public int LeaguaId
        {
            get { return leaguaId; }
            set { leaguaId = value; }
        }
        Int64 matchId;

        public Int64 MatchId
        {
            get { return matchId; }
            set { matchId = value; }
        }
        int betTypeId;

        public int BetTypeId
        {
            get { return betTypeId; }
            set { betTypeId = value; }
        }
        string leaguaName;

        public string LeaguaName
        {
            get { return leaguaName; }
            set { leaguaName = value; }
        }
        string matchName;

        public string MatchName
        {
            get { return matchName; }
            set { matchName = value; }
        }
        string betTypeName;

        public string BetTypeName
        {
            get { return betTypeName; }
            set { betTypeName = value; }
        }
        decimal turnover;

        public decimal Turnover
        {
            get { return turnover; }
            set { turnover = value; }
        }
        decimal grossComm;

        public decimal GrossComm
        {
            get { return grossComm; }
            set { grossComm = value; }
        }
        decimal meWinLoss;

        public decimal MeWinLoss
        {
            get { return meWinLoss; }
            set { meWinLoss = value; }
        }
        decimal meComm;

        public decimal MeComm
        {
            get { return meComm; }
            set { meComm = value; }
        }
        decimal meTotal;

        public decimal MeTotal
        {
            get { return meTotal; }
            set { meTotal = value; }
        }
        decimal agWinLoss;

        public decimal AgWinLoss
        {
            get { return agWinLoss; }
            set { agWinLoss = value; }
        }
        decimal agComm;

        public decimal AgComm
        {
            get { return agComm; }
            set { agComm = value; }
        }
        decimal agTotal;

        public decimal AgTotal
        {
            get { return agTotal; }
            set { agTotal = value; }
        }
        decimal maWinLoss;

        public decimal MaWinLoss
        {
            get { return maWinLoss; }
            set { maWinLoss = value; }
        }
        decimal maComm;

        public decimal MaComm
        {
            get { return maComm; }
            set { maComm = value; }
        }
        decimal maTotal;

        public decimal MaTotal
        {
            get { return maTotal; }
            set { maTotal = value; }
        }
        decimal gmWinLoss;

        public decimal GmWinLoss
        {
            get { return gmWinLoss; }
            set { gmWinLoss = value; }
        }
        decimal gmComm;

        public decimal GmComm
        {
            get { return gmComm; }
            set { gmComm = value; }
        }
        decimal gmTotal;

        public decimal GmTotal
        {
            get { return gmTotal; }
            set { gmTotal = value; }
        }
        decimal suWinLoss;

        public decimal SuWinLoss
        {
            get { return suWinLoss; }
            set { suWinLoss = value; }
        }
        decimal suComm;

        public decimal SuComm
        {
            get { return suComm; }
            set { suComm = value; }
        }
        decimal suTotal;

        public decimal SuTotal
        {
            get { return suTotal; }
            set { suTotal = value; }
        }
        decimal companyComm;

        public decimal CompanyComm
        {
            get { return companyComm; }
            set { companyComm = value; }
        }
        decimal companyTotal;

        public decimal CompanyTotal
        {
            get { return companyTotal; }
            set { companyTotal = value; }
        }
        DateTime reportDate;

        public DateTime ReportDate
        {
            get { return reportDate; }
            set { reportDate = value; }
        }
    }
}
