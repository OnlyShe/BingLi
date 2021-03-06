﻿<%@ Page Title="注册" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Register.aspx.cs" Inherits="YiXiangLibrary.Account.Register" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">

                    <h2>
                        创建新帐户
                    </h2>
                    <p>
                        使用以下表单创建新帐户。
                    </p>

                    <div class="accountInfo">
                        <fieldset class="register">
                            <legend>帐户信息</legend>
                            <p>
                                <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">用户名:</asp:Label>
                                <asp:TextBox ID="UserName" runat="server" CssClass="textEntry"></asp:TextBox>

                            </p>
                            <p>
                                <asp:Label ID="realname" runat="server"  AssociatedControlID="RealNameText">真实姓名:</asp:Label>
                                <asp:TextBox ID="RealNameText" runat="server" CssClass="textEntry"></asp:TextBox>

                            </p>
                            <p>
                                <asp:Label ID="idLabel" runat="server" AssociatedControlID="uid">身份证号:</asp:Label>
                                <asp:TextBox ID="uid" runat="server" CssClass="textEntry"></asp:TextBox>

                            </p>
                            <p>
                                <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">密码:</asp:Label>
                                <asp:TextBox ID="Password" runat="server" CssClass="passwordEntry" TextMode="Password"></asp:TextBox>

                            </p>
                            <p>
                                <asp:Label ID="ConfirmPasswordLabel" runat="server" AssociatedControlID="ConfirmPassword">确认密码:</asp:Label>
                                <asp:TextBox ID="ConfirmPassword" runat="server" CssClass="passwordEntry" TextMode="Password"></asp:TextBox>

                            </p>
                        </fieldset>
                        <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
                        <p class="submitButton">
                            <asp:Button ID="CreateUserButton" runat="server" Text="创建用户" 
                                onclick="CreateUserButton_Click"  />
                        </p>
                    </div>

</asp:Content>
