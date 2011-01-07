using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace MiBetCommon.MemberInformation
{
    public class clsFunction
    {
        public clsFunction() { }
        int id;

        public int Id
        {
            get { return id; }
            set { id = value; }
        }
        int moduleId;

        public int ModuleId
        {
            get { return moduleId; }
            set { moduleId = value; }
        }
        string functionName;

        public string FunctionName
        {
            get { return functionName; }
            set { functionName = value; }
        }
        string functionTitle;

        public string FunctionTitle
        {
            get { return functionTitle; }
            set { functionTitle = value; }
        }
        string functionDescription;

        public string FunctionDescription
        {
            get { return functionDescription; }
            set { functionDescription = value; }
        }
        string funcrionURL;

        public string FuncrionURL
        {
            get { return funcrionURL; }
            set { funcrionURL = value; }
        }
        bool isVisible;

        public bool IsVisible
        {
            get { return isVisible; }
            set { isVisible = value; }
        }
        int priority;

        public int Priority
        {
            get { return priority; }
            set { priority = value; }
        }
    }
}
