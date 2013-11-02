<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPageIntro.master" AutoEventWireup="false" CodeFile="characterDetails.aspx.vb" Inherits="characterDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CSCharacters %>" DeleteCommand="DELETE FROM [Table] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Table] ([Name], [Epithet], [Age], [Gender], [Height], [Affiliations], [Occupations], [Devil_Fruit], [Haki], [Bounty], [Picture]) VALUES (@Name, @Epithet, @Age, @Gender, @Height, @Affiliations, @Occupations, @Devil_Fruit, @Haki, @Bounty, @Picture)" SelectCommand="SELECT * FROM [Table] WHERE ([Id] = @Id)" UpdateCommand="UPDATE [Table] SET [Name] = @Name, [Epithet] = @Epithet, [Age] = @Age, [Gender] = @Gender, [Height] = @Height, [Affiliations] = @Affiliations, [Occupations] = @Occupations, [Devil_Fruit] = @Devil_Fruit, [Haki] = @Haki, [Bounty] = @Bounty, [Picture] = @Picture WHERE [Id] = @Id">
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
            <asp:QueryStringParameter Name="Id" QueryStringField="Id" Type="Int32" />
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
    <div id="picture">
    <asp:DataList ID="characterDataList" runat="server" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            <asp:image ID="charimage" runat="server" ImageURL='<%# Eval ("Picture", "~/images/characters/{0}") %>' />
        </ItemTemplate>
    </asp:DataList>
    </div>
    <div id ="table">
    <asp:DetailsView ID="DetailsView1" 
        runat="server" 
        AutoGenerateRows="False" 
        DataKeyNames="Id" 
        DataSourceID="SqlDataSource1" 
	    CssClass="cssdetailsview"
        HeaderStyle-CssClass="header"
        FieldHeaderStyle-CssClass="fieldheader"
        ItemStyle-CssClass="item"
        AlternatingRowStyle-CssClass="altrow"
        CommandRowStyle-CssClass="command"
        PagerStyle-CssClass="pager"
        >
<AlternatingRowStyle CssClass="altrow"></AlternatingRowStyle>

<CommandRowStyle CssClass="command"></CommandRowStyle>

<FieldHeaderStyle CssClass="fieldheader"></FieldHeaderStyle>
        <Fields>
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Epithet" HeaderText="Epithet" SortExpression="Epithet" />
            <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
            <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
            <asp:BoundField DataField="Height" HeaderText="Height" SortExpression="Height" />
            <asp:BoundField DataField="Affiliations" HeaderText="Affiliations" SortExpression="Affiliations" />
            <asp:BoundField DataField="Occupations" HeaderText="Occupations" SortExpression="Occupations" />
            <asp:BoundField DataField="Devil_Fruit" HeaderText="Devil Fruit" SortExpression="Devil_Fruit" />
            <asp:BoundField DataField="Haki" HeaderText="Haki" SortExpression="Haki" />
            <asp:BoundField DataField="Bounty" HeaderText="Bounty" SortExpression="Bounty" />
            <asp:BoundField DataField="Picture" HeaderText="Picture" SortExpression="Picture" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        </Fields>

<HeaderStyle CssClass="header"></HeaderStyle>

<PagerStyle CssClass="pager"></PagerStyle>
    </asp:DetailsView>
    </div>
</asp:Content>

