using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YiXiangLibrary
{
    public partial class Bingli_Header : System.Web.UI.MasterPage
    {
        public string did;
        public  string str;
        protected void Page_Load(object sender, EventArgs e)
        {
            did = Request["did"];
            str = "~/search_bingli.aspx?did=" + did;
            Menu1.Items[0].NavigateUrl = str;
            str="~/Delete_Bingli.aspx?did="+did;
            Menu1.Items[1].NavigateUrl = str;
            str = "~/Insert_Bingli.aspx?did=" + did;
            Menu1.Items[2].NavigateUrl = str;
            str = "~/Bingli_own.aspx?did=" + did;
            Menu1.Items[3].NavigateUrl = str;
            str = "~/d_bingli_select.aspx?did=" + did;
            Menu1.Items[4].NavigateUrl = str;
            str = "~/question.aspx?did=" + did;
            Menu1.Items[5].NavigateUrl = str;
        }

        protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
        {

        }
    }
}