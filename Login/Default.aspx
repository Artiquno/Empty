﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Layout.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Login_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row" style="margin-top: 100px"> <!--Note: Fix the style! -->
        <div class="container-sm container-lg">
            <form runat="server" action="Default.aspx" method="post">
                <div class="text-input">
                    <asp:Label runat="server" Text="Name: " />
                    <asp:TextBox runat="server" ID="Name" />
                </div>
                <div>
                    <asp:Label runat="server" Text=" Password: " />
                    <asp:TextBox runat="server" ID="Pass" TextMode="Password" />
                </div>
                <asp:Button runat="server" Text="Log In" UseSubmitBehavior="true" ID="Submit" OnClick="Submit_Click" />
                <asp:Label runat="server" Text="<br />" ID="Snitch" />
            </form>
        </div>
    </div>
</asp:Content>

