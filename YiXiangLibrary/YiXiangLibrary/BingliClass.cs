using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace YiXiangLibrary
{
    public class BingliClass
    {
        private string disease_name;
        private string desc;
        private string people;

        public void SetBingli(string name, string desc, string people)
        {
            this.disease_name = name;
            this.desc = desc;
            this.people = people;
        }
    }
}