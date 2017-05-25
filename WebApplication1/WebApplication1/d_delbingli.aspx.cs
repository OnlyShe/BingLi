using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace WebApplication1
{
    public partial class d_delbingli : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AgainButton_Click(object sender, EventArgs e)
        {
            PatientName.Text = " ";
            PatientID.Text = " ";
        }

        protected void DelButton_Click(object sender, EventArgs e)
        {
            try
            {
                string connstr = "server=.;database=yixiang;Integrated Security=SSPI";
                SqlConnection conn = new SqlConnection(connstr);
                conn.Open();   //连接并且打开数据库

                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandText = "select * from records where u_idcard = '" + PatientID.Text + "' and u_name ='"+ PatientName.Text +"'";
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    dr.Close();
                    cmd.CommandText = "delete from records where u_idcard = '" + PatientID.Text + "' ";
                    cmd.ExecuteNonQuery();
                    catchLabel.Text = "删除成功！";
                }
                else
                {
                    catchLabel.Text = "身份证与姓名不符，请重新输入！";
                    dr.Close();
                }
                conn.Close();

            }
            catch
            {
                catchLabel.Text = "数据库连接失败！";
            }
        }
    }
}