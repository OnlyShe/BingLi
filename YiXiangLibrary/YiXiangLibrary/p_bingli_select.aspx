<%@ Page Title="病人查询自己病历" Language="C#" MasterPageFile="~/p_bingli_caozuo.Master" AutoEventWireup="true" CodeBehind="p_bingli_select.aspx.cs" Inherits="YiXiangLibrary.p_bingli_select" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div class="d_bingli"> 
<div class="d_bingli_left1">  
            <div class="d_bingli_left">
                <p>身份证号查询病历</p>
                <p>
                    <asp:TextBox ID="PatientIDcard" runat="server" Height="29px" Width="234px"></asp:TextBox>
                </p>
                <p>
                    <asp:Button ID="Button1" runat="server" Text="查询" onclick="Button1_Click1" />
                </p>
                </div>
            </div>
        <p>
            <asp:Label ID="catchLabel" runat="server" ForeColor="Red" Height="30px" 
             Width="221px"></asp:Label>
        </p>
        <p>
            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="Black" 
                GridLines="Vertical" BackColor="White" BorderColor="#DEDFDE" 
                BorderStyle="None" BorderWidth="1px" Width="800px">
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
        </p>
        
        </div>
</asp:Content>