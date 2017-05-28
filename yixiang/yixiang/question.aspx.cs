using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Collections;


namespace yixiang
{
    public partial class question : System.Web.UI.Page
    {
        public ArrayList data1 = new ArrayList();
        public ArrayList data2 = new ArrayList();
        public ArrayList data3 = new ArrayList();
        public ArrayList data4 = new ArrayList();
        public int count = 0;

        void findquestion(string name)
        {
            data1.Clear();
            data2.Clear();
            data3.Clear();
            data4.Clear();
            count = 0;
            

            string title = name;
            string sql_do = "select q_content as 详情,u_name as 提问者,q_time as 提问时间,q_title as 标题 from question,users where q_title like '%" + title + "%'and users.u_id=question.u_id ";
            string sql_con = "Persist Security Info=False;User id=sa;pwd=123456;database=yixiang;server=(local) ";
            string biaoti = "", xiangqing = "", tiwenzhe = "",tiwenshijian;

            SqlConnection mycon = new SqlConnection();
            mycon.ConnectionString = sql_con;//连接数据库
            mycon.Open();
            SqlCommand selectCMD = new SqlCommand(sql_do, mycon);//数据库操作

            SqlDataReader reader = selectCMD.ExecuteReader();
            while (reader.Read())
            {
                biaoti = reader["标题"].ToString().Trim();
                xiangqing = reader["详情"].ToString().Trim();
                tiwenzhe=reader["提问者"].ToString().Trim();
                tiwenshijian = reader["提问时间"].ToString().Trim();

                data1.Add(biaoti);
                data2.Add(xiangqing);
                data3.Add(tiwenzhe);
                data4.Add(tiwenshijian);

                /*Label1.Text = biaoti;
                Label2.Text = xiangqing; 
                Label3.Text = tiwenzhe;
                Label4.Text = tiwenshijian;*/

                count++;
            }
            reader.Close();


           /* SqlDataAdapter custda = new SqlDataAdapter();//适配器custda
            custda.SelectCommand = selectCMD;//绑定适配器

            //DataSet ds = new DataSet();//获得适配器数据
            DataTable ds = new DataTable();
            custda.Fill(ds);

            for (int i = 0; i < ds.Rows.Count; i++)
            {
                
                Label1.Text = biaoti;

                xiangqing = ds.Rows[i]["详情"].ToString();
                Label2.Text = xiangqing;

                tiwenzhe = '【' + ds.Rows[i]["提问者"].ToString() + '】';
                Label3.Text = tiwenzhe;

                tiwenshijian = '【' + ds.Rows[i]["提问时间"].ToString() + '】';
                Label4.Text = tiwenshijian;
            }*/
            /*if (ds.Rows.Count > 0)
            {
             * [问题]<
    
    
    
  
    
    
        

    
创建控件时出错 - rpImage类型“System.Web.UI.WebControls.Repeater”不具有名为“div”的公共属性。
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
            */
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