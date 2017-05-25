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
    public partial class d_chakanbingli : System.Web.UI.Page
    {

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
                
                //GridView1.DataMember = "records";

                //GridView1.Columns[0].HeaderText = "姓名";
                //GridView1.Columns[0].AccessibleHeaderText = ds.Tables[0].ToString();

                //GridView1.Columns[1].HeaderText = "身份证号";
                //GridView1.Columns[1].AccessibleHeaderText = ds.Tables[1].ToString();

                //GridView1.Columns[2].HeaderText = "性别";
                //GridView1.Columns[2].AccessibleHeaderText = ds.Tables[2].ToString();

                //GridView1.Columns[3].HeaderText = "医生";
                //GridView1.Columns[3].AccessibleHeaderText = ds.Tables[3].ToString();

                //GridView1.Columns[4].HeaderText = "治疗时间";
                //GridView1.Columns[4].AccessibleHeaderText = ds.Tables[4].ToString();

                //GridView1.Columns[5].HeaderText = "临床病状";
                //GridView1.Columns[5].AccessibleHeaderText = ds.Tables[5].ToString();

                //GridView1.Columns[6].HeaderText = "检查结果";
                //GridView1.Columns[6].AccessibleHeaderText = ds.Tables[6].ToString();

                //GridView1.Columns[7].HeaderText = "治疗方式";
                //GridView1.Columns[7].AccessibleHeaderText = ds.Tables[7].ToString();

                //GridView1.Columns[8].HeaderText = "用药";
                //GridView1.Columns[8].AccessibleHeaderText = ds.Tables[8].ToString();

                //GridView1.Columns[9].HeaderText = "花费";
                //GridView1.Columns[9].AccessibleHeaderText = ds.Tables[9].ToString();

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

                    //for (int i = 0; i <= 9; ++i ) {

                    //}


                    GridView1.DataBind();
                    //GridView1.DataMember = "records";

                    //GridView1.Columns[0].HeaderText = "姓名";
                    //GridView1.Columns[0].AccessibleHeaderText = ds.Tables[0].ToString();

                    //GridView1.Columns[1].HeaderText = "身份证号";
                    //GridView1.Columns[1].AccessibleHeaderText = ds.Tables[1].ToString();

                    //GridView1.Columns[2].HeaderText = "性别";
                    //GridView1.Columns[2].AccessibleHeaderText = ds.Tables[2].ToString();

                    //GridView1.Columns[3].HeaderText = "医生";
                    //GridView1.Columns[3].AccessibleHeaderText = ds.Tables[3].ToString();

                    //GridView1.Columns[4].HeaderText = "治疗时间";
                    //GridView1.Columns[4].AccessibleHeaderText = ds.Tables[4].ToString();

                    //GridView1.Columns[5].HeaderText = "临床病状";
                    //GridView1.Columns[5].AccessibleHeaderText = ds.Tables[5].ToString();

                    //GridView1.Columns[6].HeaderText = "检查结果";
                    //GridView1.Columns[6].AccessibleHeaderText = ds.Tables[6].ToString();

                    //GridView1.Columns[7].HeaderText = "治疗方式";
                    //GridView1.Columns[7].AccessibleHeaderText = ds.Tables[7].ToString();

                    //GridView1.Columns[8].HeaderText = "用药";
                    //GridView1.Columns[8].AccessibleHeaderText = ds.Tables[8].ToString();

                    //GridView1.Columns[9].HeaderText = "花费";
                    //GridView1.Columns[9].AccessibleHeaderText = ds.Tables[9].ToString();

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