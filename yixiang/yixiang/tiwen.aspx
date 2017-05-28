<%@ Page Language="C#" AutoEventWireup="true"MasterPageFile="~/Site.master"  CodeBehind="tiwen.aspx.cs" Inherits="yixiang.tiwen" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">


    <asp:Label ID="Label1" runat="server" Text="标题："></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server" Width="190px"></asp:TextBox>
    <br />
    <asp:Label ID="Label2" runat="server" Text="详情："></asp:Label>
    <br />
    <asp:TextBox ID="TextBox2" runat="server" Height="178px" TextMode="MultiLine" 
        Width="385px"></asp:TextBox>


<body>


</body>


    <br />
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="发表提问" 
        Width="82px" />


</asp:Content>
