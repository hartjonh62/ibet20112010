using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace AGiBetCommon.Report
{
    public class clsRpHorseRacingComm
    {
        public clsRpHorseRacingComm() { }
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
        float win;

        public float Win
        {
            get { return win; }
            set { win = value; }
        }
        float place;

        public float Place
        {
            get { return place; }
            set { place = value; }
        }
        float winPlace;

        public float WinPlace
        {
            get { return winPlace; }
            set { winPlace = value; }
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
