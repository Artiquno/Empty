<%@ Page Title="Management | Filters" Language="C#" MasterPageFile="~/Masters/Management.master" AutoEventWireup="true" CodeFile="Filters.aspx.cs" Inherits="Management_Filters" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DropDownList
        ID="DropDownList1"
        runat="server" 
        AppendDataBoundItems="True"
        AutoPostBack="True"
        DataSourceID="SqlDataSource1"
        DataTextField="Username"
        DataValueField="Id">
        <asp:ListItem Value="">Select Item</asp:ListItem>
    </asp:DropDownList>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource2" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="ISBN10" HeaderText="ISBN10" SortExpression="ISBN10" />
            <asp:BoundField DataField="ISBN13" HeaderText="ISBN13" SortExpression="ISBN13" />
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
            <asp:BoundField DataField="Author" HeaderText="Author" SortExpression="Author" />
            <asp:BoundField DataField="Genre" HeaderText="Genre" SortExpression="Genre" />
            <asp:BoundField DataField="CoverUrl" HeaderText="CoverUrl" SortExpression="CoverUrl" />
            <asp:BoundField DataField="TimesRead" HeaderText="TimesRead" SortExpression="TimesRead" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>

    <asp:SqlDataSource
        ID="SqlDataSource1"
        runat="server"
        ConnectionString="<%$ ConnectionStrings:ConnectionStringLibraria %>"
        SelectCommand="SELECT [Username], [Id] FROM [Users] ORDER BY [Username], [Id]">
    </asp:SqlDataSource>

    <asp:SqlDataSource
        ID="SqlDataSource2"
        runat="server"
        ConnectionString="<%$ ConnectionStrings:ConnectionStringLibraria %>"
        SelectCommand="SELECT Books.Id, Books.ISBN10, Books.ISBN13, Books.Title, Books.Author, Books.Genre, Books.CoverUrl, Books.TimesRead, Books.Description FROM Users_Books INNER JOIN Books ON Users_Books.BookId = Books.Id INNER JOIN Users ON Users_Books.UserId = Users.Id WHERE (Users_Books.UserId = @User )">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="User" PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

