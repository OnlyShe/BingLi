using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Collections;

namespace YiXiangLibrary
{
    public partial class question : System.Web.UI.Page
    {
        public ArrayList data1 = new ArrayList();
        public ArrayList data2 = new ArrayList();
        public ArrayList data3 = new ArrayList();
        public ArrayList data4 = new ArrayList();
        public ArrayList data5 = new ArrayList();
        public int count = 0;

        void findquestion(string name)
        {
            data1.Clear();
            data2.Clear();
            data3.Clear();
            data4.Clear();
            data5.Clear();
            count = 0;


            string title = name;
            string sql_do = "select q_id as 问题编号,q_content as 详情,u_name as 提问者,q_time as 提问时间,q_title as 标题 from question,users where q_title like '%" + title + "%'and users.u_id=question.u_id ";
            string sql_con = "server=.;database=yixiang;Integrated Security=SSPI";
            string biaoti = "", xiangqing = "", tiwenzhe = "", tiwenshijian = "", wentiid = "";

            SqlConnection mycon = new SqlConnection();
            mycon.ConnectionString = sql_con;//连接数据库
            mycon.Open();
            SqlCommand selectCMD = new SqlCommand(sql_do, mycon);//数据库操作

            SqlDataReader reader = selectCMD.ExecuteReader();
            while (reader.Read())
            {
                biaoti = reader["标题"].ToString().Trim();
                xiangqing = reader["详情"].ToString().Trim();
                tiwenzhe = reader["提问者"].ToString().Trim();
                tiwenshijian = reader["提问时间"].ToString().Trim();
                wentiid = reader["问题编号"].ToString().Trim();

                data1.Add(biaoti);
                data2.Add(xiangqing);
                data3.Add(tiwenzhe);
                data4.Add(tiwenshijian);
                data5.Add(wentiid);

                count++;
            }
            reader.Close();

            mycon.Close();

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            string bookname = "";
            findquestion(bookname);
        }

        protected void Button_sousuo_Click(object sender, EventArgs e)
        {
            string bookname = TextBox1.Text.ToString();
            findquestion(bookname);


        }

        protected void Button_tiwen_Click(object sender, EventArgs e)
        {
            Response.Redirect("tiwen.aspx", true);
        }
    }
}