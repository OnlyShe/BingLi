﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YiXiangLibrary.Account
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        { }

        protected void LoginButton_Click1(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(DbConnection.connection());
            conn.Open();
            string str = "select * from users where u_id='" + UserName.Text.ToString().Trim() + "' and pass='" + Password.Text.ToString().Trim() + "'";
            SqlCommand cmd = new SqlCommand(str, conn);
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.Read())
            {
                Response.Redirect("..//Default.aspx?uid="+reader["u_id"].ToString().Trim());
            }
            else
            {
                Label1.Text = "账号或密码错误，请重新输入！";
                UserName.Text = "";
                Password.Text = "";
            }
        }
    }
}
