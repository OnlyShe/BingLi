<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.master" CodeBehind="list_answer.aspx.cs" Inherits="yixiang.list_answer" %>
<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">


    <body><div class="index_ul" 
        style="width:60%;border:3px solid #b6b7bc;padding:5px,5px,5px,5px; margin-left: 0px;">
    <h1 style="display:inline;margin:5px 5px 10px 0px;">
        [问题]</h1>
    <h3 style="display:inline;" id="txt_title">
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </h4>
    
    <ul style="font-size:medium;">
    <li style="margin:5px;" id="txt_xiangqing"><a href="#"></a><asp:Label 
            ID="Label2" runat="server" Text="Label"></asp:Label>
&nbsp;</li> 
    </ul>
    
        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>

    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
    </div>

    <p>
        <asp:TextBox ID="TextBox1" runat="server" Height="91px" Width="555px" 
            TextMode="MultiLine"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="Button_huida" runat="server" Height="34px" Text="我要回答" 
            Width="101px" onclick="Button_huida_Click" style="margin-left: 5px" />
    </p>
    <p>
        【其他回答】</p>

    <div class="index_ul" 
        
        style="width:60%; border:3px solid #b6b7bc;padding:10px 5px 15px 5px; margin-left: 0px;">
    <h1 style="display:inline;margin:5px 5px 10px 0px; font-size: small;">
        <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
        </h1>
    <div>
    <ul style="font-size:medium;">
    <li style="margin:5px;"><asp:Label ID="Label6" runat="server" 
            Text="Label"></asp:Label>
        
    </li> 
    </ul>
    </div>
    </h5 style="display:inline;padding-right:20"><asp:Label ID="Label7" 
            runat="server" Text="Label"></asp:Label>
        </h6>
</div>
</body>


</asp:Content>