using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace YiXiangLibrary
{
    public partial class Delete_Bingli : System.Web.UI.Page
    {
        public string did;
        protected void Page_Load(object sender, EventArgs e)
        {
            did = Request["did"];
            string str = "select * from explain where d_id='"+did+"'";
            SqlConnection conn = new SqlConnection(DbConnection.connection());
            conn.Open();
            SqlCommand cmd = new SqlCommand(str, conn);
            SqlDataAdapter myda = new SqlDataAdapter(str, conn);
            DataSet ds = new DataSet();
            myda.Fill(ds, "explain");
            GridView1.DataSource = ds;
            GridView1.DataBind();

            conn.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string str1 = "delete from explain where e_id='" + TextBox1.Text.ToString().Trim() + "'";
            SqlConnection conn = new SqlConnection(DbConnection.connection());
            conn.Open();
            SqlCommand cmd = new SqlCommand(str1, conn);
            try
            {
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                Label2.Text = "删除失败";
            }
            Response.Redirect("Delete_Bingli.aspx?did="+did); 
        }
    }
}