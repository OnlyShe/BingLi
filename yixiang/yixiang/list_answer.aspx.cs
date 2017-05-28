using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
namespace yixiang
{
    public partial class list_answer : System.Web.UI.Page
    {
        void findquestion(string name)
        {
            string bookname = name;
            string sql_do = "select q_content as 详情,u_name as 提问者,q_time as 提问时间,q_title as 标题 from question,users where q_title like '%" + bookname + "%'and users.u_id=question.u_id ";
            string sql_con = "Persist Security Info=False;User id=sa;pwd=123456;database=yixiang;server=(local) ";

            SqlConnection mycon = new SqlConnection();
            mycon.ConnectionString = sql_con;//连接数据库
            mycon.Open();

            SqlCommand selectCMD = new SqlCommand(sql_do, mycon);//数据库操作

            SqlDataAdapter custda = new SqlDataAdapter();//适配器custda
            custda.SelectCommand = selectCMD;//绑定适配器

            //DataSet ds = new DataSet();//获得适配器数据
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
        void findanswer(string name)
        {
            string id = name;
            string sql_do = "select an_content as 详情,d_name as 回答者,an_time as 回答时间 from answer,doctors where q_id = '"+id +"'and doctors.d_id=answer.d_id ";
            string sql_con = "Persist Security Info=False;User id=sa;pwd=123456;database=yixiang;server=(local) ";

            SqlConnection mycon = new SqlConnection();
            mycon.ConnectionString = sql_con;//连接数据库
            mycon.Open();

            SqlCommand selectCMD = new SqlCommand(sql_do, mycon);//数据库操作

            SqlDataAdapter custda = new SqlDataAdapter();//适配器custda
            custda.SelectCommand = selectCMD;//绑定适配器

            //DataSet ds = new DataSet();//获得适配器数据
            DataTable ds = new DataTable();
            custda.Fill(ds);

            if (ds.Rows.Count > 0)
            {
                string xiangqing = ds.Rows[0]["详情"].ToString();
                Label6.Text = xiangqing;

                string tiwenzhe = '【' + ds.Rows[0]["回答者"].ToString() + '】';
                Label5.Text = tiwenzhe;

                string tiwenshijian = '【' + ds.Rows[0]["回答时间"].ToString() + '】';
                Label7.Text = tiwenshijian;
            }
            else
            {
                Label7.Text = "木有";
                Label6.Text = "木有";
                Label5.Text = "木有";
            }

            mycon.Close();

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            string bookname = "";
            findquestion(bookname);
            findanswer("100001");
        }

        protected void Button_huida_Click(object sender, EventArgs e)
        {
            string ans = TextBox1.Text;
            string did="100002";
            string qid = "100001";

            string sql_con = "Persist Security Info=False;User id=sa;pwd=123456;database=yixiang;server=(local) ";

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