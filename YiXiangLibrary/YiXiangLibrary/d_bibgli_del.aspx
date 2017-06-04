<%@ Page Title="医生删除病历" Language="C#" MasterPageFile="~/d_bingli_caozuo.Master" AutoEventWireup="true" CodeBehind="d_bibgli_del.aspx.cs" Inherits="YiXiangLibrary.d_bibgli_del" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>
        删除病历
    </h2>
    <div class="d_bingli">
        <div class="d_bingli_left1"> 
            <div class="accountInfo">
                <fieldset class="register">
                    <legend>根据病人姓名以及身份证号删除病历</legend>
                    <p>
                        <asp:Label ID="PatientNameLabel" runat="server" AssociatedControlID="PatientName">姓名:</asp:Label>
                        <asp:TextBox ID="PatientName" runat="server" CssClass="textEntry" Height="19px"></asp:TextBox>
                    </p>
                    <p>
                        <asp:Label ID="PatientIDLabel" runat="server" AssociatedControlID="PatientID">身份证号:</asp:Label>
                        <asp:TextBox ID="PatientID" runat="server" CssClass="textEntry" Height="17px"></asp:TextBox>
                    </p>
                    <p>
                    <asp:Label ID="catchLabel" runat="server" Width="233px" ForeColor="Red"></asp:Label>
                    </p>
                </fieldset>

                <p class="submitButton">
                    <asp:Button ID="AgainButton" runat="server" CommandName="MoveNext" Text="重置" 
                            ValidationGroup="RegisterUserValidationGroup" 
                        onclick="AgainButton_Click"/>
                            <asp:Label ID="Label1" runat="server" AssociatedControlID="PatientID" 
                        Width="10px"></asp:Label>
                    <asp:Button ID="DelButton" runat="server" CommandName="MoveNext" Text="删除" 
                            ValidationGroup="RegisterUserValidationGroup" 
                        onclick="DelButton_Click"/>
                </p>
            </div>
        </div>
    </div>
</asp:Content>
