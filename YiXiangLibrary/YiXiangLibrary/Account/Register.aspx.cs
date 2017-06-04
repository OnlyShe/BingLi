using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YiXiangLibrary.Account
{
    public partial class Register : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void RegisterUser_CreatedUser(object sender, EventArgs e)
        {
        }

        protected void CreateUserButton_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(DbConnection.connection());
            conn.Open();
            if (UserName.Text.ToString().Trim().Length == 0 || RealNameText.Text.ToString().Trim().Length == 0 || uid.Text.ToString().Trim().Length == 0 || Password.Text.ToString().Trim().Length == 0)
            {
                Label1.Text = "内容不能为空！请重新输入！";
            }
            else
            {
                string str = "insert into users(u_name,u_real_name,u_idcard,pass) values('" + UserName.Text.ToString().Trim() + "','" + RealNameText.Text.ToString().Trim() + "','" + uid.Text.ToString().Trim() + "','" + Password.Text.ToString().Trim() + "')";
                SqlCommand cmd = new SqlCommand(str, conn);
                try
                {
                    cmd.ExecuteNonQuery();
                    Response.Redirect("Login.aspx");
                }
                catch (Exception ex)
                {
                    Label1.Text = ex.ToString();
                }
                finally
                {
                    conn.Close();
                }
            }
        }

    }
}
