using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace AGiBetCommon.MemberInformation
{
    public class clsSoccerLive
    {
        public clsSoccerLive() { }
        int id;

        public int Id
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
        decimal handi_NG;

        public decimal Handi_NG
        {
            get { return handi_NG; }
            set { handi_NG = value; }
        }
        decimal over_Under;

        public decimal Over_Under
        {
            get { return over_Under; }
            set { over_Under = value; }
        }
        decimal firtHandicap;

        public decimal FirtHandicap
        {
            get { return firtHandicap; }
            set { firtHandicap = value; }
        }
        decimal firtOverUnder;

        public decimal FirtOverUnder
        {
            get { return firtOverUnder; }
            set { firtOverUnder = value; }
        }

    }
}
