﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace yixiang
{
    public partial class SiteMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
              /*  this.NavigationMenu.Orientation = Orientation.Horizontal;//设置菜单水平显示
                this.NavigationMenu.StaticDisplayLevels = 1;//只显示第一级菜单
                this.NavigationMenu.Target = "_blank";//指定在新的窗口打开页面
                MenuItem register = new MenuItem();//定义子菜单
                register.Text = "注册用户";
                register.NavigateUrl = "~/register.aspx";
                this.NavigationMenu.Items[0].ChildItems.Add(register);//添加子菜单
                MenuItem Login = new MenuItem();
                Login.Text = "登录";
                Login.NavigateUrl = "~/Login.aspx";
                this.NavigationMenu.Items[0].ChildItems.Add(Login);
                MenuItem help = new MenuItem();//定义第二项菜单的子菜单
                help.Text = "帮助";
                help.NavigateUrl = "~/help.aspx";
                this.NavigationMenu.Items[1].ChildItems.Add(help);
                MenuItem About = new MenuItem();
                About.Text = "关于";
                About.NavigateUrl = "~/About.aspx";
                this.NavigationMenu.Items[1].ChildItems.Add(About);*/
                
            }
        }
    }
}
