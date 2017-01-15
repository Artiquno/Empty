<%@ Page Title="Profile" Language="C#" MasterPageFile="~/Masters/Layout.master" AutoEventWireup="true" CodeFile="MyProfile.aspx.cs" Inherits="MyProfile" %>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row">
        <div class="container-sm container-lg">
            <asp:LoginName CssClass="username" runat="server" FormatString="<h1>{0}</h1>" />
            <div class="input-group">
                <asp:Label AssociatedControlID="FirstName" CssClass="label" runat="server">First Name: </asp:Label>
                <asp:TextBox runat="server" ID="FirstName" />
                <asp:RequiredFieldValidator
                    CssClass="error"
                    ErrorMessage="Do not leave empty"
                    ControlToValidate="FirstName"
                    runat="server" Display="Dynamic" />
                <asp:RegularExpressionValidator
                    CssClass="error"
                    ErrorMessage="Alphabet only"
                    ControlToValidate="FirstName"
                    runat="server"
                    ValidationExpression="^[a-zA-Z ]*$" Display="Dynamic" />
            </div>
            <div class="input-group">
                <asp:Label AssociatedControlID="LastName" CssClass="label" runat="server">Last Name: </asp:Label>
                <asp:TextBox runat="server" ID="LastName" />
                <asp:RequiredFieldValidator
                    CssClass="error"
                    ErrorMessage="Do not leave empty"
                    ControlToValidate="LastName"
                    runat="server" Display="Dynamic" />
                <asp:RegularExpressionValidator
                    CssClass="error"
                    ErrorMessage="Alphabet only"
                    ControlToValidate="LastName"
                    runat="server"
                    ValidationExpression="^[a-zA-Z ]*$" Display="Dynamic" />
            </div>
            <asp:Button runat="server" OnClick="Submit_Click" Text="Submit" />
            <asp:ChangePassword ID="ChangePass" runat="server" ContinueDestinationPageUrl="./MyProfile.aspx"></asp:ChangePassword>
        </div>
    </div>
</asp:Content>
