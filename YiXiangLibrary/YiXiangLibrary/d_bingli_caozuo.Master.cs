using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YiXiangLibrary
{
    public partial class d_bingli_caozuo : System.Web.UI.MasterPage
    {
        public string d_id = "";
        public string str0 = "";
        public string str1 = "";
        public string str2 = "";
        public string str3 = "";
        public string str4 = "";
        public string str5 = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            d_id = Request["did"];

            str0 = "~/search_bingli.aspx?did=" + d_id;
            str1 = "~/d_bingli_select.aspx?did=" + d_id;
            str2 = "~/d_bingli_insert.aspx?did=" + d_id;
            str3 = "~/d_bibgli_del.aspx?did=" + d_id;
            str4 = "~/d_bingli_update.aspx?did=" + d_id;
            str5 = "~/question_d.aspx?did=" + d_id;

            //跳转网页的语句
            NavigationMenu.Items[0].NavigateUrl = str0;
            NavigationMenu.Items[1].NavigateUrl = str1;
            NavigationMenu.Items[2].NavigateUrl = str2;
            NavigationMenu.Items[3].NavigateUrl = str3;
            NavigationMenu.Items[4].NavigateUrl = str4;
            NavigationMenu.Items[5].NavigateUrl = str5;
        }
    }
}