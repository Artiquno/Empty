<%@ Page Title="Management | Books" Language="C#" MasterPageFile="~/Masters/Management.master" AutoEventWireup="true" CodeFile="Books.aspx.cs" Inherits="Management_Books" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView
        ID="GridView1"
        runat="server"
        AllowPaging="True"
        AllowSorting="True"
        AutoGenerateColumns="False"
        CellPadding="4"
        DataKeyNames="Id"
        DataSourceID="SqlDataSource1"
        EmptyDataText="There are no data records to display."
        ForeColor="#333333"
        GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" ButtonType="Button" />
            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
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

    <asp:DetailsView
        ID="DetailsView1"
        runat="server"
        AutoGenerateRows="False"
        DataKeyNames="Id"
        DataSourceID="SqlDataSource1"
        Height="50px"
        Width="125px"
        DefaultMode="Insert" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
        <EditRowStyle BackColor="#2461BF" />
        <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="ISBN10" HeaderText="ISBN10" SortExpression="ISBN10" />
            <asp:BoundField DataField="ISBN13" HeaderText="ISBN13" SortExpression="ISBN13" />
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
            <asp:BoundField DataField="Author" HeaderText="Author" SortExpression="Author" />
            <asp:BoundField DataField="Genre" HeaderText="Genre" SortExpression="Genre" />
            <asp:BoundField DataField="CoverUrl" HeaderText="CoverUrl" SortExpression="CoverUrl" />
            <asp:BoundField DataField="TimesRead" HeaderText="TimesRead" SortExpression="TimesRead" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <asp:CommandField ShowInsertButton="True" ButtonType="Button" />
        </Fields>
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
    </asp:DetailsView>

    <asp:SqlDataSource
        ID="SqlDataSource1"
        runat="server"
        ConnectionString="<%$ ConnectionStrings:ConnectionStringLibraria %>"
        DeleteCommand="DELETE FROM [Books] WHERE [Id] = @Id"
        InsertCommand="INSERT INTO [Books] ([ISBN10], [ISBN13], [Title], [Author], [Genre], [CoverUrl], [TimesRead], [Description]) VALUES (@ISBN10, @ISBN13, @Title, @Author, @Genre, @CoverUrl, @TimesRead, @Description)"
        ProviderName="<%$ ConnectionStrings:ConnectionStringLibraria.ProviderName %>"
        SelectCommand="SELECT [Id], [ISBN10], [ISBN13], [Title], [Author], [Genre], [CoverUrl], [TimesRead], [Description] FROM [Books]"
        UpdateCommand="UPDATE [Books] SET [ISBN10] = @ISBN10, [ISBN13] = @ISBN13, [Title] = @Title, [Author] = @Author, [Genre] = @Genre, [CoverUrl] = @CoverUrl, [TimesRead] = @TimesRead, [Description] = @Description WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int64" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ISBN10" Type="String" />
            <asp:Parameter Name="ISBN13" Type="String" />
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="Author" Type="String" />
            <asp:Parameter Name="Genre" Type="String" />
            <asp:Parameter Name="CoverUrl" Type="String" />
            <asp:Parameter Name="TimesRead" Type="Int32" />
            <asp:Parameter Name="Description" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ISBN10" Type="String" />
            <asp:Parameter Name="ISBN13" Type="String" />
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="Author" Type="String" />
            <asp:Parameter Name="Genre" Type="String" />
            <asp:Parameter Name="CoverUrl" Type="String" />
            <asp:Parameter Name="TimesRead" Type="Int32" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Id" Type="Int64" />
        </UpdateParameters>
    </asp:SqlDataSource>
    
</asp:Content>

