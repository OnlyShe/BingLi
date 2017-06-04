<%@ Page MasterPageFile="~/Site.master"  Language="C#" AutoEventWireup="true" CodeBehind="Bingli.aspx.cs" Inherits="YiXiangLibrary.Bingli" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
<div style="width:100%;">
    <div class="bingli_div" style="width:68%;display:inline-block;border-right:1px solid gray;">
    <%  for(int i=0;i<count;i++)
        { %>
   
        <a href="#">
        <div class="bingli_juti">
        <h2>[好转]</h2>
        <h3><%Response.Write(data1[i].ToString());%></h3>
        <br />
        <h4><%Response.Write(data2[i].ToString()); %></h4>
        <br />
        <br />
        <h4>[发布人]</h4>
        <h4><%Response.Write(data3[i].ToString()); %></h4>
        </div>
        </a>
    <%} %>
    </div>
    <div class="bingli_div" style="width:28%;display:block;float:right;">
        <div class="bingli_warm">
            <h3>[温馨提示]</h3>
            <br />
            <h4>
            但愿身长健,浮世拚悠悠。
            <br />——曾觌
            </h4>
            <br />
            <h4>
            只祈彼此身长健,同处何曾有别离。
            </br/>——魏了翁 
            </h4>
            <br />
            <h4>
            浮云富贵非公愿,只愿公身健。
            <br />——魏了翁
            </h4>
        </div>
    </div>
</div>
</asp:Content>
