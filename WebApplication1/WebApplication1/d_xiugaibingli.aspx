<%@ Page Title="" Language="C#" MasterPageFile="~/d_caozuo.Master" AutoEventWireup="true" CodeBehind="d_xiugaibingli.aspx.cs" Inherits="WebApplication1.d_xiugaibingli" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>
        修改病历
    </h2>
    <div class="accountInfo">
        <fieldset class="register">
            <legend>根据病人身份证号修改病人的病症、用药、花费</legend>
            <p>
                <asp:Label ID="PatientIDLabel" runat="server" AssociatedControlID="PatientID">身份证号:</asp:Label>
                <asp:TextBox ID="PatientID" runat="server" CssClass="textEntry"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="PatientSymptomLabel" runat="server" 
                    AssociatedControlID="PatientSymptom" Width="532px">病症:</asp:Label>
                <asp:TextBox ID="PatientSymptom" runat="server" CssClass="textEntry" 
                    Height="16px" Width="141px"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="PatientSickNameLabel" runat="server" AssociatedControlID="PatientSickName">病名:</asp:Label>
                <asp:TextBox ID="PatientSickName" runat="server" CssClass="textEntry"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="PatientMedicineLabel" runat="server" AssociatedControlID="PatientMedicine">用药:</asp:Label>
                <asp:TextBox ID="PatientMedicine" runat="server" CssClass="textEntry"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="CostLabel" runat="server" AssociatedControlID="Cost">花费:</asp:Label>
                <asp:TextBox ID="Cost" runat="server" CssClass="textEntry"></asp:TextBox>
            </p>
            
            <p>
                <asp:Label ID="catchLabel" runat="server" Width="320px" ForeColor="Red"></asp:Label>
            </p>
        </fieldset>

        <p class="submitButton">
        <asp:Button ID="AgainButton" runat="server" CommandName="MoveNext" Text="重置" 
                    ValidationGroup="RegisterUserValidationGroup" 
                onclick="AgainButton_Click" />
                    <asp:Label ID="Label1" runat="server" AssociatedControlID="PatientID" 
                Width="10px"></asp:Label>
            <asp:Button ID="CreateBingliButton" runat="server" CommandName="MoveNext" Text="修改" 
                    ValidationGroup="RegisterUserValidationGroup" 
                onclick="CreateBingliButton_Click"/>
        </p>
    </div>
</asp:Content>
