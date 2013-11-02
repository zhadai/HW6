<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="ContactUs.aspx.vb" Inherits="ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Contact Us</h1>
    <hr />
    <br />
    <p style="margin-left: 40px">Your Email Address:</p>
    <p style="margin-left: 40px">
        <asp:TextBox ID="TBMail" runat="server" Width="205px"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RFVMail" runat="server" ControlToValidate="TBMail" ErrorMessage="***Please enter your email."></asp:RequiredFieldValidator>
    </p>
    <p style="margin-left: 40px">Your Message:</p>
    <p style="margin-left: 40px">
        <asp:TextBox ID="TBMessage" runat="server" Height="200px" TextMode="MultiLine" Width="400px"></asp:TextBox>
    </p>
    <p style="margin-left: 40px">
        <asp:Button ID="BtnClear" runat="server" Text="Clear" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="BtnSubmit" runat="server" Text="Submit" />
    &nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RFVMessage" runat="server" ControlToValidate="TBMessage" ErrorMessage="***Please enter your message."></asp:RequiredFieldValidator>
    </p>

</asp:Content>

