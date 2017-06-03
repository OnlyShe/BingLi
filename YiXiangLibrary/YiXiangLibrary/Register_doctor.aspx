<%@ Page Language="C#" MasterPageFile="~/Site.master"  AutoEventWireup="true" CodeBehind="Register_doctor.aspx.cs" Inherits="YiXiangLibrary.Register_doctor" %>
<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
                    <div class="accountInfo">
                        <fieldset class="register">
                            <legend>帐户信息</legend>
                            <p>
                                <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">用户名:</asp:Label>
                                <asp:TextBox ID="UserName" runat="server" CssClass="textEntry"></asp:TextBox>

                            </p>
                            <p>
                                <asp:Label ID="yiyuanid" runat="server">医院编号:</asp:Label>
                                <asp:TextBox ID="yyid" runat="server" CssClass="textEntry"></asp:TextBox>

                            </p>
                            <p>
                                <asp:Label ID="Label1" runat="server">身份证编号:</asp:Label>
                                <asp:TextBox ID="did" runat="server" CssClass="textEntry"></asp:TextBox>
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
                        <asp:Label ID="Label2" runat="server"></asp:Label>
                        <p class="submitButton">
                            <asp:Button ID="CreateUserButton" runat="server" Text="创建用户" 
                                onclick="CreateUserButton_Click"  />
                        </p>
                    </div>

</asp:Content>
