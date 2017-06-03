<%@ Page Title="" Language="C#" MasterPageFile="~/d_bingli_caozuo.Master" AutoEventWireup="true" 
        CodeBehind="d_bingli_select.aspx.cs" Inherits="YiXiangLibrary.d_bingli_select" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

     <div class="d_bingli">
            <h2>
                &nbsp;
                查询病人病历
            </h2>
            <div class="d_bingli_left1">  
            <div class="d_bingli_left">
                <p>输入病人身份证号查询病人详细病历</p>
                <p>
                    <asp:TextBox ID="TextBox2" runat="server" Height="29px" Width="234px"></asp:TextBox>
                </p>
                <p>
                    <asp:Button ID="Button1" runat="server" Text="查询" onclick="Button1_Click1" />
                </p>
               
                  <p>      
                    <asp:Label ID="catchLabel" runat="server" Width="171px" ForeColor="Red"></asp:Label>
                  </p>
                </div>
            </div>
            <div class="d_bingli_left1">
            <div class="d_bingli_left">
             <p> 查询所有病人病历     
                    <asp:Label ID="Label1" runat="server" Width="20px"></asp:Label>
                    <asp:Button ID="Button2"  runat="server" Text="查询" onclick="Button2_Click" />
                 </p>
                 </div>
                 </div>
        <asp:GridView ID="GridView1" runat="server" Height="306px" Width="800px" 
                BackColor="White" BorderColor="#DEDFDE" 
                BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" 
                GridLines="Vertical">
            <AlternatingRowStyle BackColor="White" />
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
                </asp:GridView>
    </div>
</asp:Content>
