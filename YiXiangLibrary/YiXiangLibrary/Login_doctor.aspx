<%@ Page Language="C#" MasterPageFile="~/Site.master"  AutoEventWireup="true" CodeBehind="Login_doctor.aspx.cs" Inherits="YiXiangLibrary.Login_doctor" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        登录
    </h2>
    <p>
        请输入医生的用户名和密码。
        <a href="Register_doctor.aspx">注册</a> 如果您没有帐户。
        <a href="/Account/Login.aspx">登陆</a>如果您是普通用户。</p>
  
            <div class="accountInfo">
                <fieldset class="login">
                    <legend>帐户信息</legend>
                    <p>
                        <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">用户名:</asp:Label>
                        <asp:TextBox ID="UserName" runat="server" CssClass="textEntry"></asp:TextBox>

                    </p>
                    <p>
                        <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">密码:</asp:Label>
                        <asp:TextBox ID="Password" runat="server" CssClass="passwordEntry" TextMode="Password"></asp:TextBox>
                    </p>
                </fieldset>
                <asp:Label ID="Label1" runat="server"></asp:Label>
                <p class="submitButton">
                    <asp:Button ID="LoginButton" runat="server" CommandName="Login" Text="登录" 
                        onclick="LoginButton_Click1" />
                </p>
                <br />
            </div>
    <br />
</asp:Content>
