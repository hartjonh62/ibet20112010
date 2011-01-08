using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace MiBetCommon.Report
{
    public class clsLeague
    {
        int leagueId;

        public int LeagueId
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
        bool leagueStatus;

        public bool LeagueStatus
        {
            get { return leagueStatus; }
            set { leagueStatus = value; }
        }
    }
}
