using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace yixiang
{


    public partial  class Repeater : System.Web.UI.Page
    {
        //protected System.Web.UI.WebControls.Repeater Repeater1;

        private void Page_Load(object sender, System.EventArgs e)
        {

            // 在此处放置用户代码以初始化页面

            if (!this.IsPostBack)
            {

                DataTable mydt = new DataTable();

                DataRow mydr;

                mydt.Columns.Add(new DataColumn("数字", typeof(Int32)));

                mydt.Columns.Add(new DataColumn("平方", typeof(Int32)));

                mydt.Columns.Add(new DataColumn("立方", typeof(Int32)));



                for (int i = 0; i <= 10; i++)
                {

                    mydr = mydt.NewRow();

                    mydr[0] = i;

                    mydr[1] = i * i;

                    mydr[2] = i * i * i;

                    mydt.Rows.Add(mydr);

                }

                this.Repeater1.DataSource = mydt;

                this.Repeater1.DataBind();

            }

        }

        #region Web 窗体设计器生成的代码

        override protected void OnInit(EventArgs e)
        {

            //

            // CODEGEN: 该调用是 ASP.NET Web 窗体设计器所必需的。

            //

            InitializeComponent();

            base.OnInit(e);

        }



        /// <summary>

        /// 设计器支持所需的方法 - 不要使用代码编辑器修改

        /// 此方法的内容。

        /// </summary>

        private void InitializeComponent()
        {

            this.Repeater1.ItemCommand += new System.Web.UI.WebControls.RepeaterCommandEventHandler(this.Repeater1_ItemCommand);

            this.Load += new System.EventHandler(this.Page_Load);



        }

        #endregion



        private void Repeater1_ItemCommand(object source, System.Web.UI.WebControls.RepeaterCommandEventArgs e)
        {



        }
    }
}