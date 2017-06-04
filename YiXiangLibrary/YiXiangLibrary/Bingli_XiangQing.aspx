<%@ Page MasterPageFile="~/Bingli_Header.master" Language="C#" AutoEventWireup="true" CodeBehind="Bingli_XiangQing.aspx.cs" Inherits="YiXiangLibrary.Bingli_XiangQing" %>
<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div style="padding:10px 15px;">
    <asp:Label ID="Label1" runat="server" CssClass="center_align" 
        Font-Size="X-Large" Text="高血压"></asp:Label>
    <br />
    <asp:Label ID="Label2" runat="server" Text="医生" CssClass="center_align" 
        Font-Size="Small" ForeColor="#999999"></asp:Label>
    <br />
    <asp:Label ID="Label3" runat="server" Font-Size="Medium" Text="具体描述"></asp:Label>
  </div>
</asp:Content>
