using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace MiBetCommon.Report
{
    public class clsRpWinLostDetail
    {
        public clsRpWinLostDetail() { }
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
        string strAccId;

        public string StrAccId
        {
            get { return strAccId; }
            set { strAccId = value; }
        }
        int betTypeId;

        public int BetTypeId
        {
            get { return betTypeId; }
            set { betTypeId = value; }
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
        decimal maWinloss;

        public decimal MaWinloss
        {
            get { return maWinloss; }
            set { maWinloss = value; }
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
        decimal gmWinloss;

        public decimal GmWinloss
        {
            get { return gmWinloss; }
            set { gmWinloss = value; }
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
        decimal suWinloss;

        public decimal SuWinloss
        {
            get { return suWinloss; }
            set { suWinloss = value; }
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
        decimal company;

        public decimal Company
        {
            get { return company; }
            set { company = value; }
        }
        DateTime reportDate;

        public DateTime ReportDate
        {
            get { return reportDate; }
            set { reportDate = value; }
        }
    }
}
