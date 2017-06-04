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
    public partial class d_bingli_insert : System.Web.UI.Page
    {
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CreateUserButton_Click(object sender, EventArgs e)
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
                    catchLabel.Text = "已经存在该病人，请重新输入或者修改！";
                    dr.Close();
                }
                else
                {
                    dr.Close();
                    cmd.CommandText = "insert into records(u_name,u_idcard,u_sex,d_id,dis_id,r_linic,r_check,r_treat,r_medcine, r_cost, r_time) values('" + PatientName.Text
                    + "','" + PatientID.Text
                    + "','" + PatientSex.Text
                    + "','" + DoctorID.Text
                    + "','" + DisID.Text
                    + "','" + PatientSymptom.Text
                    + "','" + PatientSickName.Text
                    + "','" + PatientSickTreat.Text
                    + "','" + PatientMedicine.Text
                    + "','" + Cost.Text
                    + "','" + DateTime.Now.ToString()+"') ";
                    cmd.ExecuteNonQuery();
                    catchLabel.Text = "添加成功！";
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
            PatientName.Text = " ";
            PatientID.Text = " ";
            PatientSex.Text = " ";
            DisID.Text = "";
            DoctorID.Text = "";
            PatientSickName.Text = " ";
            PatientSymptom.Text = " ";
            PatientSickTreat.Text = " ";
            PatientMedicine.Text = " ";
        }
    }
}