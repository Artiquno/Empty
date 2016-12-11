<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Layout.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Login_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row" style="margin-top: 100px"> <!--Note: Fix the style! -->
        <div class="container-sm container-lg">
            <form runat="server" action="Default.aspx" method="post">
                <asp:Login ID="UserLogin" runat="server"></asp:Login>
            </form>
        </div>
    </div> 
</asp:Content>

