using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace AGiBetCommon.MemberInformation
{
    public class clsModule
    {
        public clsModule() { }
        int id;

        public int Id
        {
            get { return id; }
            set { id = value; }
        }
        string moduleName;

        public string ModuleName
        {
            get { return moduleName; }
            set { moduleName = value; }
        }
        string moduleTitle;

        public string ModuleTitle
        {
            get { return moduleTitle; }
            set { moduleTitle = value; }
        }
        string moduleDescription;

        public string ModuleDescription
        {
            get { return moduleDescription; }
            set { moduleDescription = value; }
        }
        string moduleURL;

        public string ModuleURL
        {
            get { return moduleURL; }
            set { moduleURL = value; }
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
        string identifier;

        public string Identifier
        {
            get { return identifier; }
            set { identifier = value; }
        }
    }
}
