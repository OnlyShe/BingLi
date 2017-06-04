using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Collections;

namespace YiXiangLibrary
{
    public partial class Bingli_user : System.Web.UI.Page
    {
        public ArrayList data1 = new ArrayList();
        public ArrayList data2 = new ArrayList();
        public ArrayList data3 = new ArrayList();
        public int count = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            data1.Clear();
            data2.Clear();
            data3.Clear();
            count = 0;
            BingliClass bl = new BingliClass();
            string name = "", des = "", people = "";
            SqlConnection conn = new SqlConnection(DbConnection.connection());
            string str = "select doctors.d_name,dis_name,explain.e_express from doctors,explain,disease where doctors.d_id=explain.d_id and explain.dis_id=disease.dis_id";
            conn.Open();
            SqlCommand cmd = new SqlCommand(str, conn);
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                name = reader["dis_name"].ToString().Trim();
                des = reader["d_name"].ToString().Trim();
                people = reader["e_express"].ToString().Trim();
                bl.SetBingli(name, des, people);
                data1.Add(name);
                data2.Add(des);
                data3.Add(people);
                bl.SetBingli(null, null, null);
                count++;
            }
            reader.Close();

        }
    }
}