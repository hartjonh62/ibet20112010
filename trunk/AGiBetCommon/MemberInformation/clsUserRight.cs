using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace AGiBetCommon.MemberInformation
{
    public class clsUserRight
    {
        public clsUserRight() { }
        Int64 userId;

        public Int64 UserId
        {
            get { return userId; }
            set { userId = value; }
        }
        int intFunctionId;

        public int IntFunctionId
        {
            get { return intFunctionId; }
            set { intFunctionId = value; }
        }
        int gradeId;

        public int GradeId
        {
            get { return gradeId; }
            set { gradeId = value; }
        }
    }
}
