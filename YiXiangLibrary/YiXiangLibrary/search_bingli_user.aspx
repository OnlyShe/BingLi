<%@ Page MasterPageFile="~/Site.master"  Language="C#" AutoEventWireup="true" CodeBehind="search_bingli_user.aspx.cs" Inherits="YiXiangLibrary.search_bingli_user" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">

    <asp:Label ID="Label1" runat="server" CssClass="center_align" 
        Font-Size="X-Large" Text="每一份病例都是一份治愈希望" ></asp:Label>

        <br />
        <div class="center_inline">
            <asp:TextBox ID="TextBox1" runat="server"
            Height="28px" Width="249px" BorderColor="#3399FF"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" BackColor="#3399FF" 
              ForeColor="White" Height="28px" Text="查询" 
                Width="110px" Font-Size="Medium" onclick="Button1_Click" />
        </div>

        <br />

        <br />
        <div class="bl_search clear">
            <div class="bl_biaoyu">他们在这里找到了健康</div>
        </div>

        <div class="bl_all">
            <div class="bl_des">
            <a href="#">
            高血压
            </a>
            </div>
            <div class="bl_des">
            <a href="#">
            高血压
            </a>
            </div>
            <div class="bl_des">
            <a href="#">
            高血压
            </a>
            </div>
            <div class="bl_des">
            <a href="#">
            高血压
            </a>
            </div>
            <div class="bl_des">
            <a href="#">
            高血压
            </a>
            </div>
            <div class="bl_des">
            <a href="#">
            高血压
            </a>
            </div>
        </div>
</asp:Content>
