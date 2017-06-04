<%@ Page MasterPageFile="~/Site.master" Language="C#" AutoEventWireup="true" CodeBehind="Delete_Bingli.aspx.cs" Inherits="YiXiangLibrary.Delete_Bingli" %>
<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
<div class="insert_bl">
<h3>删除病例</h3>
</div>
<br />
 <asp:GridView ID="GridView1" runat="server" Height="249px" Width="870px" >

    </asp:GridView>  

    <br />
    <asp:Label ID="Label1" runat="server" Font-Size="Medium" Text="删除病例编号："></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server" Height="24px" Width="181px"></asp:TextBox>
    <br />
    <br/>
    <asp:Button ID="Button1" runat="server" Height="28px" Text="删除" 
        Width="117px" onclick="Button1_Click" />

    <asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label>

</asp:Content>