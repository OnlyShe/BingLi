using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YiXiangLibrary
{
    public partial class _Default : System.Web.UI.Page
    {
        public string uid;
        protected void Page_Load(object sender, EventArgs e)
        {
            uid = Request["uid"];
        }
    }
}
