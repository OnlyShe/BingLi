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
    public partial class d_bingli_update : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void CreateBingliButton_Click(object sender, EventArgs e)
        {
            try
            {
                string connstr = "server=.;database=yixiang;Integrated Security=SSPI";
                SqlConnection conn = new SqlConnection(connstr);
                conn.Open();   //连接并且打开数据库

                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandText = "select * from records where u_idcard = '" + PatientID.Text + "'";
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    dr.Close();
                    if (PatientID.Text.Trim() != "")
                    {
                        cmd = new SqlCommand("update records set r_linic = '" + PatientSymptom.Text + "' where u_idcard = '" + PatientID.Text + "'", conn);
                        cmd.ExecuteNonQuery();
                    }
                    if (PatientSickNameLabel.Text.Trim() != "")
                    {
                        cmd = new SqlCommand("update records set r_check = '" + PatientSickNameLabel.Text + "' where u_idcard = '" + PatientID.Text + "'", conn);
                        cmd.ExecuteNonQuery();
                    }
                    if (PatientMedicine.Text.Trim() != "")
                    {
                        cmd = new SqlCommand("update records set r_medcine = '" + PatientMedicine.Text + "' where u_idcard = '" + PatientID.Text + "'", conn);
                        cmd.ExecuteNonQuery();
                    }
                    if (Cost.Text.Trim() != "")
                    {
                        cmd = new SqlCommand("update records set r_cost = '" + Cost.Text + "' where u_idcard = '" + PatientID.Text + "'", conn);
                        cmd.ExecuteNonQuery();
                    }
                    catchLabel.Text = "修改成功！";

                }
                else
                {
                    catchLabel.Text = "不存在该病人，请重新输入！";
                    dr.Close();
                }
                conn.Close();
            }
            catch (Exception err)
            {
                catchLabel.Text = err.ToString();
            }
        }

        protected void AgainButton_Click(object sender, EventArgs e)
        {
            Cost.Text = "";
            PatientID.Text = " ";
            PatientSymptom.Text = " ";
            PatientMedicine.Text = " ";
        }
    }
}