using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace YiXiangLibrary
{
    public partial class Register_doctor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CreateUserButton_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(DbConnection.connection());
            conn.Open();
            if (UserName.Text.ToString().Trim().Length == 0 || yyid.Text.ToString().Trim().Length == 0 || did.Text.ToString().Trim().Length == 0 || Password.Text.ToString().Trim().Length == 0)
            {
                Label2.Text = "内容不能为空！请重新输入！";
            }
            else
            {
                string str = "insert into doctors(d_name,h_id,d_idcard,pass) values('" + UserName.Text.ToString().Trim() + "','" + yyid.Text.ToString().Trim() + "','" + did.Text.ToString().Trim() + "','" + Password.Text.ToString().Trim() + "')";
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
                }
            }
        }
    }
}