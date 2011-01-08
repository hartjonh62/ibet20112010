using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace MiBetCommon.Report
{
    public class clsRpCommByBetType
    {
        public clsRpCommByBetType() { }
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
        decimal hdp;

        public decimal Hdp
        {
            get { return hdp; }
            set { hdp = value; }
        }
        decimal oU;

        public decimal OU
        {
            get { return oU; }
            set { oU = value; }
        }
        decimal oneHdp;

        public decimal OneHdp
        {
            get { return oneHdp; }
            set { oneHdp = value; }
        }
        decimal oneOU;

        public decimal OneOU
        {
            get { return oneOU; }
            set { oneOU = value; }
        }
        decimal oE;

        public decimal OE
        {
            get { return oE; }
            set { oE = value; }
        }
        decimal nG;

        public decimal NG
        {
            get { return nG; }
            set { nG = value; }
        }
        decimal total1;

        public decimal Total1
        {
            get { return total1; }
            set { total1 = value; }
        }
        decimal oneXTwo;

        public decimal OneXTwo
        {
            get { return oneXTwo; }
            set { oneXTwo = value; }
        }
        decimal correctScore;

        public decimal CorrectScore
        {
            get { return correctScore; }
            set { correctScore = value; }
        }
        decimal tG;

        public decimal TG
        {
            get { return tG; }
            set { tG = value; }
        }
        decimal mP;

        public decimal MP
        {
            get { return mP; }
            set { mP = value; }
        }
        decimal outright;

        public decimal Outright
        {
            get { return outright; }
            set { outright = value; }
        }
        decimal fGLG;

        public decimal FGLG
        {
            get { return fGLG; }
            set { fGLG = value; }
        }
        decimal hTFT;

        public decimal HTFT
        {
            get { return hTFT; }
            set { hTFT = value; }
        }
        decimal moneyLine;

        public decimal MoneyLine
        {
            get { return moneyLine; }
            set { moneyLine = value; }
        }
        decimal total2;

        public decimal Total2
        {
            get { return total2; }
            set { total2 = value; }
        }
        DateTime reportDate;

        public DateTime ReportDate
        {
            get { return reportDate; }
            set { reportDate = value; }
        }
    }
}
