<%@ Page Title="Log in" Language="C#" MasterPageFile="~/Masters/Layout.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login_Default" %>

<asp:Content ID="Content" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row"> 
        <div class="container-sm container-lg">
            <asp:LoginView runat="server">
                <AnonymousTemplate>
                    <asp:Login ID="UserLogin" runat="server" CreateUserText="Sign up here" CreateUserUrl="~/SignUp.aspx" DestinationPageUrl="~/"></asp:Login>
                    <br />
                    <asp:PasswordRecovery ID="PassRec" runat="server">
                        <MailDefinition CC="endri-kurushi@hotmail.com" Subject="Password Recovery from Libraria">

                        </MailDefinition>
                    </asp:PasswordRecovery>
                </AnonymousTemplate>
                <LoggedInTemplate>
                    <p>
                        You are already signed in as <asp:LoginName CssClass="username" runat="server" />
                        (<asp:LoginStatus runat="server" />)
                    </p>
                </LoggedInTemplate>
            </asp:LoginView>
        </div>
    </div> 
</asp:Content>

