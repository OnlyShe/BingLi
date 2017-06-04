using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YiXiangLibrary
{
    public partial class p_bingli_caozuo : System.Web.UI.MasterPage
    {
        public string u_id = "";
        public string str0 = "";
        public string str1 = "";


        protected void Page_Load(object sender, EventArgs e)
        {
            u_id = Request["uid"];

            str0 = "~/p_bingli_select.aspx?uid=" + u_id;
            str1 = "~/question.aspx?uid=" + u_id;

            //跳转网页的语句
            NavigationMenu.Items[0].NavigateUrl = str0;
            NavigationMenu.Items[1].NavigateUrl = str1;

        }
    }
}