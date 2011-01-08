using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace MiBetCommon.Report
{
    public class clsResults
    {
        Int64 resultId;

        public Int64 ResultId
        {
            get { return resultId; }
            set { resultId = value; }
        }
        DateTime kickoffTime;

        public DateTime KickoffTime
        {
            get { return kickoffTime; }
            set { kickoffTime = value; }
        }
        Int64 leagueId;

        public Int64 LeagueId
        {
            get { return leagueId; }
            set { leagueId = value; }
        }
        string leagueName;

        public string LeagueName
        {
            get { return leagueName; }
            set { leagueName = value; }
        }
        Int64 matchId;

        public Int64 MatchId
        {
            get { return matchId; }
            set { matchId = value; }
        }
        int eventId;

        public int EventId
        {
            get { return eventId; }
            set { eventId = value; }
        }
        string eventName;

        public string EventName
        {
            get { return eventName; }
            set { eventName = value; }
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
        string firstHaflHome;

        public string FirstHaflHome
        {
            get { return firstHaflHome; }
            set { firstHaflHome = value; }
        }
        string firstHafAway;

        public string FirstHafAway
        {
            get { return firstHafAway; }
            set { firstHafAway = value; }
        }
        string finalHome;

        public string FinalHome
        {
            get { return finalHome; }
            set { finalHome = value; }
        }
        string finalAway;

        public string FinalAway
        {
            get { return finalAway; }
            set { finalAway = value; }
        }
        string status;

        public string Status
        {
            get { return status; }
            set { status = value; }
        }
        DateTime createDate;

        public DateTime CreateDate
        {
            get { return createDate; }
            set { createDate = value; }
        }
    }
}
