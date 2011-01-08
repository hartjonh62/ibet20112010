using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace MiBetCommon.Report
{
    public class clsRpCancelledBet
    {
        Int64 id;

        public Int64 Id
        {
            get { return id; }
            set { id = value; }
        }
        string member;

        public string Member
        {
            get { return member; }
            set { member = value; }
        }
        string transtime;

        public string Transtime
        {
            get { return transtime; }
            set { transtime = value; }
        }
        string bettype;

        public string Bettype
        {
            get { return bettype; }
            set { bettype = value; }
        }
        string status;

        public string Status
        {
            get { return status; }
            set { status = value; }
        }
        string leaguaName;

        public string LeaguaName
        {
            get { return leaguaName; }
            set { leaguaName = value; }
        }
        string homeName;

        public string HomeName
        {
            get { return homeName; }
            set { homeName = value; }
        }
        string awayName;

        public string AwayName
        {
            get { return awayName; }
            set { awayName = value; }
        }
        string odds;

        public string Odds
        {
            get { return odds; }
            set { odds = value; }
        }
        string stake;

        public string Stake
        {
            get { return stake; }
            set { stake = value; }
        }
        string choice;

        public string Choice
        {
            get { return choice; }
            set { choice = value; }
        }
    }
}
