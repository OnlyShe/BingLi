<%@ Page Title="" Language="C#" MasterPageFile="~/p_caozuo.Master" AutoEventWireup="true" CodeBehind="p_caozuo.aspx.cs" Inherits="WebApplication1.p_caozuo1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
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
                BorderStyle="None" BorderWidth="1px" Width="503px">
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
           <%-- <asp:GridView ID="GridView1" runat="server"  CellPadding="4"

                        ForeColor="#333333" GridLines="None" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing"

                        OnRowUpdating="GridView1_RowUpdating" OnRowCancelingEdit="GridView1_RowCancelingEdit">

                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />

                        <Columns>

                            <asp:BoundField DataField="身份证号码" HeaderText="用户ID" ReadOnly="True" />

                            <asp:BoundField DataField="姓名" HeaderText="用户姓名" />

                            <asp:BoundField DataField="员工性别" HeaderText="性别" />

                            <asp:BoundField DataField="家庭住址" HeaderText="家庭住址" />

                            <asp:CommandField HeaderText="选择" ShowSelectButton="True" />

                            <asp:CommandField HeaderText="编辑" ShowEditButton="True" />

                            <asp:CommandField HeaderText="删除" ShowDeleteButton="True" />

                        </Columns>

                        <RowStyle ForeColor="#000066" />

                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />

                        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />

                        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />

                    </asp:GridView>--%>
        </p>
        
        </div>
</asp:Content>
