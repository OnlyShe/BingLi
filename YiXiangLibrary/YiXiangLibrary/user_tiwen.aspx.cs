﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace YiXiangLibrary
{
    public partial class user_tiwen : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string biaoti = TextBox1.Text;
            string wenti = TextBox2.Text;
            string uid = "100002";

            string sql_con = "server=.;database=yixiang;Integrated Security=SSPI";

            SqlConnection mycon = new SqlConnection();
            mycon.ConnectionString = sql_con;

            mycon.Open();

            string sql_ins1 = "insert into question(q_title,q_content,u_id,q_time) values('" + biaoti + "','" + wenti + "','" + uid + "',getdate())";
            SqlCommand selectCMD = new SqlCommand(sql_ins1, mycon);//数据库操作
            selectCMD.ExecuteNonQuery();

            mycon.Close();

            Response.Redirect("question.aspx", true);
        }
    }
}