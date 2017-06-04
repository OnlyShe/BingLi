using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace YiXiangLibrary
{
    public partial class Insert_Bingli : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(DbConnection.connection());
            conn.Open();
            if (TextBox2.Text.ToString().Trim().Length == 0 || TextBox1.Text.ToString().Trim().Length == 0)
            {
                Label3.Text = "内容不能为空！";
            }
            else
            {
                string str = "insert into explain(d_id,e_express,e_date,dis_id) values('100009','" + TextBox2.Text.ToString().Trim() + "','" + System.DateTime.Now + "','" + TextBox1.Text.ToString().Trim() + "')";
                SqlCommand cmd = new SqlCommand(str, conn);
                try
                {
                    cmd.ExecuteNonQuery();
                }
                catch (Exception ex)
                {
                    Label2.Text = ex.ToString();
                }
                finally
                {
                    conn.Close();
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                }
            }
        }
    }
}