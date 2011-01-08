using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace MiBetCommon.Report
{
    public class clsRpMatchLoss
    {
        public clsRpMatchLoss() { }
        int id;

        public int Id
        {
            get { return id; }
            set { id = value; }
        }
        string results;

        public string Results
        {
            get { return results; }
            set { results = value; }
        }
        string yEntered;

        public string YEntered
        {
            get { return yEntered; }
            set { yEntered = value; }
        }
        string yNonEntered;

        public string YNonEntered
        {
            get { return yNonEntered; }
            set { yNonEntered = value; }
        }
        string entered;

        public string Entered
        {
            get { return entered; }
            set { entered = value; }
        }
        string nonEntered;

        public string NonEntered
        {
            get { return nonEntered; }
            set { nonEntered = value; }
        }
        DateTime updateTime;

        public DateTime UpdateTime
        {
            get { return updateTime; }
            set { updateTime = value; }
        }
    }
}
