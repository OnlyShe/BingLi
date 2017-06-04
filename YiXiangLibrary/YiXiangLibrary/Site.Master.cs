using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YiXiangLibrary
{
    public partial class SiteMaster : System.Web.UI.MasterPage
    {
        public string did = "";
        public string uid = "";
        public string str00 = "";
        public string str01 = "";
        public string str02 = "";
        public string str03 = "";
        
        protected void Page_Load(object sender, EventArgs e)
        {
            uid = Request["uid"];
            
            str00 = "~/Default.aspx?uid=" + uid;
            str01 = "~/search_bingli_user.aspx?uid=" + uid;
            str02 = "~/p_bingli_select.aspx?uid=" + uid;
            str03 = "~/question.aspx?uid=" + uid;

            //str = "~/question.aspx?did=" + did + "&uid=" + uid;
            Menu1.Items[0].NavigateUrl = str00;
            Menu1.Items[1].NavigateUrl = str01;
            Menu1.Items[2].NavigateUrl = str02;
            Menu1.Items[3].NavigateUrl = str03;
            
        }
       
    }
}
