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
    public partial class p_caozuo1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            if (PatientIDcard.Text.Trim() == "")
            {
                catchLabel.Text = "输入的身份证号不能为空！";
            }
            else
            {
                try
                {
                    string connstr = "server=.;database=yixiang;Integrated Security=SSPI";
                    SqlConnection conn = new SqlConnection(connstr);
                    conn.Open();   //连接并且打开数据库

                    SqlCommand cmd = new SqlCommand("select u_name,u_sex,r_time,r_check,r_treat,r_medcine,r_cost from records where u_idcard = '" + PatientIDcard.Text.Trim() + "' ", conn);
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataSet ds = new DataSet();
                    da.Fill(ds, "records");

                    GridView1.DataSource = ds;
                    GridView1.DataBind();

                    conn.Close();
                }
                catch (Exception err)
                {
                    catchLabel.Text = err.ToString();
                }
            }
        }
    }
}