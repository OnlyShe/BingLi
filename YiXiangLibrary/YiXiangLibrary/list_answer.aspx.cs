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
    public partial class list_answer : System.Web.UI.Page
    {
        public ArrayList data1 = new ArrayList();
        public ArrayList data2 = new ArrayList();
        public ArrayList data3 = new ArrayList();

        public int count = 0;
        //显示问题
        void findquestion(string q_id)
        {
            string qid = q_id;
            string sql_do = "select q_content as 详情,u_name as 提问者,q_time as 提问时间,q_title as 标题 from question,users where q_id ='" + qid + "'and users.u_id=question.u_id ";
            string sql_con = "server=.;database=yixiang;Integrated Security=SSPI";

            SqlConnection mycon = new SqlConnection();
            mycon.ConnectionString = sql_con;//连接数据库
            mycon.Open();

            SqlCommand selectCMD = new SqlCommand(sql_do, mycon);//数据库操作

            SqlDataAdapter custda = new SqlDataAdapter();//适配器custda
            custda.SelectCommand = selectCMD;//绑定适配器

            DataTable ds = new DataTable();
            custda.Fill(ds);

            if (ds.Rows.Count > 0)
            {
                string biaoti = ds.Rows[0]["标题"].ToString();
                Label1.Text = biaoti;

                string xiangqing = ds.Rows[0]["详情"].ToString();
                Label2.Text = xiangqing;

                string tiwenzhe = '【' + ds.Rows[0]["提问者"].ToString() + '】';
                Label3.Text = tiwenzhe;

                string tiwenshijian = '【' + ds.Rows[0]["提问时间"].ToString() + '】';
                Label4.Text = tiwenshijian;
            }
            else
            {
                Label1.Text = "0";
            }

            mycon.Close();

        }
        //显示回答
        void findanswer(string qid)
        {
            string id = qid;
            string sql_do = "select an_content as 详情,d_name as 回答者,an_time as 回答时间 from answer,doctors where q_id = '" + id + "'and doctors.d_id=answer.d_id ";
            string sql_con = "server=.;database=yixiang;Integrated Security=SSPI";
            string huidazhe = "", xiangqing = "", huidashijian = "";
            SqlConnection mycon = new SqlConnection();
            mycon.ConnectionString = sql_con;//连接数据库
            mycon.Open();

            SqlCommand selectCMD = new SqlCommand(sql_do, mycon);//数据库操作

            SqlDataAdapter custda = new SqlDataAdapter();//适配器custda
            custda.SelectCommand = selectCMD;//绑定适配器

            SqlDataReader reader = selectCMD.ExecuteReader();
            while (reader.Read())
            {
                huidazhe = reader["回答者"].ToString().Trim();
                xiangqing = reader["详情"].ToString().Trim();

                huidashijian = reader["回答时间"].ToString().Trim();

                data1.Add(huidazhe);
                data2.Add(xiangqing);
                data3.Add(huidashijian);

                count++;
            }

            mycon.Close();

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            string qid = Request.QueryString["id"];
            findquestion(qid);
            findanswer(qid);
        }

        //回答问题
        protected void Button_huida_Click(object sender, EventArgs e)
        {
            string qid = Request.QueryString["id"];
            string ans = TextBox1.Text;
            string did = "100002";


            string sql_con = "server=.;database=yixiang;Integrated Security=SSPI";

            SqlConnection mycon = new SqlConnection();
            mycon.ConnectionString = sql_con;

            mycon.Open();

            string sql_ins1 = "insert into answer(q_id,d_id,an_content,an_time) values('" + qid + "','" + did + "','" + ans + "',getdate())";
            SqlCommand selectCMD = new SqlCommand(sql_ins1, mycon);//数据库操作
            selectCMD.ExecuteNonQuery();

            TextBox1.Text = "回复成功";

            mycon.Close();
        }
    }
}