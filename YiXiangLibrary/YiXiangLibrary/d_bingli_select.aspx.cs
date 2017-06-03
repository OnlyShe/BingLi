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
    public partial class d_bingli_select : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string patientid = TextBox2.Text.Trim();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                string connstr = "server=.;database=yixiang;Integrated Security=SSPI";
                SqlConnection conn = new SqlConnection(connstr);
                conn.Open();   //连接并且打开数据库

                SqlCommand cmd = new SqlCommand("select u_name,u_idcard,u_sex,d_id,r_time,r_linic,r_check,r_treat,r_medcine,r_cost from records", conn);
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

        protected void Button1_Click1(object sender, EventArgs e)
        {
            if (TextBox2.Text.Trim() == "")
            {
                catchLabel.Text = "请输入身份证号！";
            }
            else
            {
                try
                {
                    string connstr = "server=.;database=yixiang;Integrated Security=SSPI";
                    SqlConnection conn = new SqlConnection(connstr);
                    conn.Open();   //连接并且打开数据库

                    SqlCommand cmd = new SqlCommand("select u_name,u_idcard,u_sex,d_id,r_time,r_linic,r_check,r_treat,r_medcine,r_cost from records where u_idcard = '" + TextBox2.Text.Trim() + "' ", conn);
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