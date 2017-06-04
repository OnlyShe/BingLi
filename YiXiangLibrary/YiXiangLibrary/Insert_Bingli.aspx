<%@ Page  MasterPageFile="~/Site.master"  Language="C#" AutoEventWireup="true" CodeBehind="Insert_Bingli.aspx.cs" Inherits="YiXiangLibrary.Insert_Bingli" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
<div class="insert_bl">
<h3>插入病例</h3>
</div>
    <br />
    <br />
    <asp:Label ID="Label1" runat="server" CssClass="insert_title" 
        Font-Size="Medium" Text="疾病编号："></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server" Height="26px" Width="177px"></asp:TextBox>
    <br />
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" CssClass="insert_title" 
        Font-Size="Medium" Text="疾病描述："></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server" Height="216px" Width="380px"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" ForeColor="Red"></asp:Label>
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" Height="38px" Text="插入" Width="164px" 
        onclick="Button1_Click" />
<br />

</asp:Content>