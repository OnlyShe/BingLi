using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace YiXiangLibrary
{
    public class DbConnection
    {
        public static string connection()
        {
            return "server=.;database=yixiang;Integrated Security=SSPI";
        }
    }
}