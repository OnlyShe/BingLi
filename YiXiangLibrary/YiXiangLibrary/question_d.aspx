﻿<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Bingli_Header.Master" CodeBehind="question_d.aspx.cs" Inherits="YiXiangLibrary.question_d" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>


<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">

<asp:TextBox ID="TextBox1" runat="server" Height="29px" Width="289px"></asp:TextBox>


<asp:Button ID="Button_sousuo" runat="server" Text="搜索" Height="29px" Width="71px" 
        onclick="Button_sousuo_Click" />

<asp:Button ID="Button_tiwen" runat="server" Text="提问" Height="29px" Width="71px" 
        onclick="Button_tiwen_Click" />
    <br />
<br />

<div class="index_ul" style="width:60%;border:3px solid #b6b7bc;padding:5px,5px,5px,5px; margin-left: 0px;">
        <% for (int i = count-1; i >=0; i--)
           { %>

    <h1 style="display:inline;margin:5px 5px 10px 0px;">[问题]</h1>

    <h3 style="display:inline;" ><%Response.Write(data1[i].ToString());%></h4>

    <h3 style="display:block;float:right;" ><a href="list_answer_d.aspx?qid=<%=data5[i] %>&did=<%=did %>"><<了解更多</a></h4>
    
    <ul style="font-size:medium;">
    <li style="margin:5px;" ><%Response.Write(data2[i].ToString());%>&nbsp;</li> 
    </ul>
    
    <h6>【<%Response.Write(data3[i].ToString());%>】【<%Response.Write(data4[i].ToString());%>】</h6>

   
    <br />
    <hr />
    <%} %>
    </div>

</asp:Content>


