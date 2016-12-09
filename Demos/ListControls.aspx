<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ListControls.aspx.cs" Inherits="Demos_ListControls" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form runat="server">
    <div>
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem Value="GoldenFlower">Golden Flower</asp:ListItem>
            <asp:ListItem Value="Typha">Typha Plant</asp:ListItem>
            <asp:ListItem Value="EchoFlower">Echo Flower</asp:ListItem>
            <asp:ListItem Value="Flowey">Flowey The Flower</asp:ListItem>
        </asp:DropDownList>
    
        <asp:CheckBoxList ID="CheckBoxList1" runat="server">
            <asp:ListItem Value="GoldenFlower">Golden Flower</asp:ListItem>
            <asp:ListItem Value="Typha">Typha Plant</asp:ListItem>
            <asp:ListItem Value="EchoFlower">Echo Flower</asp:ListItem>
            <asp:ListItem Value="Flowey">Flowey The Flower</asp:ListItem>
        </asp:CheckBoxList>
    
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    </div>
    </form>
</body>
</html>
