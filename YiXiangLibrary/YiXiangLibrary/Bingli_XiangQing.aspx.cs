using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YiXiangLibrary
{
    public partial class Bingli_XiangQing : System.Web.UI.Page
    {
        public string did;
        public string eid;
        protected void Page_Load(object sender, EventArgs e)
        {
            did = Request["did"];
            eid = Request["eid"];

            SqlConnection conn = new SqlConnection(DbConnection.connection());
            //string str = "select doctors.d_name,dis_name,explain.e_express from doctors,explain,disease where doctors.d_name in(select d_name from doctors where d_id='100002') and dis_name in(select dis_name from disease where dis_id='100001')";
            string str = "select doctors.d_name,dis_name,explain.e_express from doctors,explain,disease where explain.e_id='" + eid + "' and explain.dis_id=disease.dis_id and doctors.d_id=explain.d_id";
            conn.Open();
            SqlCommand cmd = new SqlCommand(str, conn);
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.Read())
            {
                this.Label1.Text = reader["dis_name"].ToString().Trim();
                this.Label2.Text = reader["d_name"].ToString().Trim();
                this.Label3.Text = reader["e_express"].ToString().Trim();
            }
        }
    }
}