<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="FourEmperors.aspx.vb" Inherits="FourEmperors" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CSCharacters %>" SelectCommand="SELECT [Name], [Epithet], [Affiliations], [Occupations], [Id] FROM [Table] WHERE ([Occupations] = @Occupations)">
        <SelectParameters>
            <asp:Parameter DefaultValue="Four Emperors" Name="Occupations" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <h1>Four Emperors</h1>
    <hr />
    <br />
    <asp:GridView ID="GridView1" 
        runat="server" 
        AutoGenerateColumns="False" 
        DataKeyNames="Id" 
        DataSourceID="SqlDataSource1"
        PageSize="5" 
        Gridlines="None"
        CssClass="cssgridview"
        AlternatingRowStyle-CssClass="alt"
        PagerStyle-CssClass="pgr" AllowPaging="True" AllowSorting="True"
        >
        <Columns>
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Epithet" HeaderText="Epithet" SortExpression="Epithet" />
            <asp:BoundField DataField="Affiliations" HeaderText="Affiliations" SortExpression="Affiliations" />
            <asp:BoundField DataField="Occupations" HeaderText="Occupations" SortExpression="Occupations" />
            <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="characterDetails.aspx?Id={0}" HeaderText="Details" Text="View" />
        </Columns>
    </asp:GridView>
</asp:Content>

