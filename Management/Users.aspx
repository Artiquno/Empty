<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Management.master" AutoEventWireup="true" CodeFile="Users.aspx.cs" Inherits="Management_Users" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <asp:GridView
        ID="GridView1"
        runat="server"
        AllowPaging="True"
        AllowSorting="True"
        DataSourceID="SqlDataSource1"
        AutoGenerateColumns="False"
        CellPadding="4"
        ForeColor="#333333"
        GridLines="None"
        DataKeyNames="Id">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" ButtonType="Button" />
            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="true" SortExpression="Id" InsertVisible="False" />
            <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
            <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
            <asp:CheckBoxField DataField="Admin" HeaderText="Admin" SortExpression="Admin" />
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
        DefaultMode="Insert"
        CellPadding="4"
        ForeColor="#333333"
        GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
        <EditRowStyle BackColor="#2461BF" />
        <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
            <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
            <asp:CheckBoxField DataField="Admin" HeaderText="Admin" SortExpression="Admin" />
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
        DeleteCommand="DELETE FROM [Users] WHERE [Id] = @Id"
        InsertCommand="INSERT INTO [Users] ([Username], [Password], [Admin]) VALUES (@Username, @Password, @Admin)"
        ProviderName="<%$ ConnectionStrings:ConnectionStringLibraria.ProviderName %>"
        SelectCommand="SELECT [Id], [Username], [Password], [Admin] FROM [Users]"
        UpdateCommand="UPDATE [Users] SET [Username] = @Username, [Password] = @Password, [Admin] = @Admin WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int64" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Username" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="Admin" Type="Boolean" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Username" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="Admin" Type="Boolean" />
            <asp:Parameter Name="Id" Type="Int64" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

