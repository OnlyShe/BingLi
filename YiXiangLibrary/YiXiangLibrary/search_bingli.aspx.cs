using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YiXiangLibrary
{
    public partial class search_bingli : System.Web.UI.Page
    {
        private string did;
        protected void Page_Load(object sender, EventArgs e)
        {
            did=Request["did"];
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(DbConnection.connection());
            conn.Open();
            string str = "select * from disease where dis_name like '%" + TextBox1.Text.ToString().Trim() + "%'";
            SqlCommand cmd = new SqlCommand(str, conn);
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.Read())
            {
                Response.Redirect("Bingli.aspx?did="+did+"&disid=" + reader["dis_id"].ToString().Trim());
            }
            else//if(TextBox1.Text.ToString().Trim().Length==0)
            {
                Response.Redirect("Bingli.aspx?did=" + did + "&disid=100001");
            }
        }
    }
}