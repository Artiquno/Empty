<%@ Page Title="Profile" Language="C#" MasterPageFile="~/Masters/Layout.master" AutoEventWireup="true" CodeFile="MyProfile.aspx.cs" Inherits="MyProfile" %>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row">
        <div class="container-sm container-lg">
            <asp:LoginView runat="server">
                <AnonymousTemplate>
                    <h1>You are not logged in! Go <a href="Login.aspx">here</a> to log in.</h1>
                </AnonymousTemplate>
                <LoggedInTemplate>
                    <asp:LoginName CssClass="username" runat="server" FormatString="<h1>{0}</h1>"/>
                    <asp:ChangePassword ID="ChangePass" runat="server"></asp:ChangePassword>
                </LoggedInTemplate>
            </asp:LoginView>
        </div>
    </div>
</asp:Content>
