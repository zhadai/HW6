﻿<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Marines.aspx.vb" Inherits="Marines" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CSCharacters %>" DeleteCommand="DELETE FROM [Table] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Table] ([Name], [Epithet], [Age], [Gender], [Height], [Affiliations], [Occupations], [Devil_Fruit], [Haki], [Bounty], [Picture]) VALUES (@Name, @Epithet, @Age, @Gender, @Height, @Affiliations, @Occupations, @Devil_Fruit, @Haki, @Bounty, @Picture)" SelectCommand="SELECT * FROM [Table] WHERE ([Affiliations] = @Affiliations)" UpdateCommand="UPDATE [Table] SET [Name] = @Name, [Epithet] = @Epithet, [Age] = @Age, [Gender] = @Gender, [Height] = @Height, [Affiliations] = @Affiliations, [Occupations] = @Occupations, [Devil_Fruit] = @Devil_Fruit, [Haki] = @Haki, [Bounty] = @Bounty, [Picture] = @Picture WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Epithet" Type="String" />
            <asp:Parameter Name="Age" Type="String" />
            <asp:Parameter Name="Gender" Type="String" />
            <asp:Parameter Name="Height" Type="String" />
            <asp:Parameter Name="Affiliations" Type="String" />
            <asp:Parameter Name="Occupations" Type="String" />
            <asp:Parameter Name="Devil_Fruit" Type="String" />
            <asp:Parameter Name="Haki" Type="String" />
            <asp:Parameter Name="Bounty" Type="String" />
            <asp:Parameter Name="Picture" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:Parameter DefaultValue="Marines" Name="Affiliations" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Epithet" Type="String" />
            <asp:Parameter Name="Age" Type="String" />
            <asp:Parameter Name="Gender" Type="String" />
            <asp:Parameter Name="Height" Type="String" />
            <asp:Parameter Name="Affiliations" Type="String" />
            <asp:Parameter Name="Occupations" Type="String" />
            <asp:Parameter Name="Devil_Fruit" Type="String" />
            <asp:Parameter Name="Haki" Type="String" />
            <asp:Parameter Name="Bounty" Type="String" />
            <asp:Parameter Name="Picture" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <h1>Marines</h1>
    <hr />
    <br />
    <asp:GridView 
        ID="GridView1" 
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

