<%@ Page Title="" Language="C#" MasterPageFile="~/d_bingli_caozuo.Master" AutoEventWireup="true" CodeBehind="d_bingli_insert.aspx.cs" Inherits="YiXiangLibrary.d_bingli_insert" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>
        添加病历
    </h2>
    <div class="accountInfo">
        <fieldset class="register">
            <legend>病人基本信息</legend>
            <p>
                <asp:Label ID="PatientNameLabel" runat="server" AssociatedControlID="PatientName">姓名:</asp:Label>
                <asp:TextBox ID="PatientName" runat="server" CssClass="textEntry"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="PatientIDLabel" runat="server" AssociatedControlID="PatientID">身份证号:</asp:Label>
                <asp:TextBox ID="PatientID" runat="server" CssClass="textEntry"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="PatientSexLabel" runat="server" AssociatedControlID="PatientSex">性别:</asp:Label>
                <asp:TextBox ID="PatientSex" runat="server" CssClass="textEntry"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="DoctorIDLabel" runat="server" AssociatedControlID="DoctorID">主治医生职工号:</asp:Label>
                <asp:TextBox ID="DoctorID" runat="server" CssClass="textEntry"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="DisIDLabel" runat="server" AssociatedControlID="DisID">病号:</asp:Label>
                <asp:TextBox ID="DisID" runat="server" CssClass="textEntry"></asp:TextBox>
            </p>
            
            <p>
                <asp:Label ID="PatientSymptomLabel" runat="server" AssociatedControlID="PatientSymptom">病症:</asp:Label>
                <asp:TextBox ID="PatientSymptom" runat="server" CssClass="textEntry"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="PatientSickNameLabel" runat="server" AssociatedControlID="PatientSickName">病名:</asp:Label>
                <asp:TextBox ID="PatientSickName" runat="server" CssClass="textEntry"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="PatientSickTreatLabel" runat="server" AssociatedControlID="PatientSickTreat">治疗过程:</asp:Label>
                <asp:TextBox ID="PatientSickTreat" runat="server" CssClass="textEntry"></asp:TextBox>
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
                <asp:Label ID="TimeLabel" runat="server" AssociatedControlID="Time">入院时间:</asp:Label>
                <asp:TextBox ID="Time" runat="server" CssClass="textEntry"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="catchLabel" runat="server" Width="171px" ForeColor="Red"></asp:Label>
            </p>
        </fieldset>

        <p class="submitButton">
        <asp:Button ID="AgainButton" runat="server" CommandName="MoveNext" Text="重置" 
                    ValidationGroup="RegisterUserValidationGroup" 
                onclick="AgainButton_Click"/>
                    <asp:Label ID="Label1" runat="server" AssociatedControlID="PatientID" 
                Width="10px"></asp:Label>
            <asp:Button ID="CreateBingliButton" runat="server" CommandName="MoveNext" Text="添加" 
                    ValidationGroup="RegisterUserValidationGroup" 
                onclick="CreateUserButton_Click"/>
        </p>
    </div>


</asp:Content>
