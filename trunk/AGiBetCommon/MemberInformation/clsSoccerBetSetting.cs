using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace AGiBetCommon.MemberInformation
{
    public class clsSoccerBetSetting
    {
        public clsSoccerBetSetting() { }
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
        decimal minbet;

        public decimal Minbet
        {
            get { return minbet; }
            set { minbet = value; }
        }
        decimal maxbet;

        public decimal Maxbet
        {
            get { return maxbet; }
            set { maxbet = value; }
        }
        decimal maxPerMath;

        public decimal MaxPerMath
        {
            get { return maxPerMath; }
            set { maxPerMath = value; }
        }
    }
}
