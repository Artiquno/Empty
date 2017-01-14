<%@ Page Title="Sign up" Language="C#" MasterPageFile="~/Masters/Layout.master" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUp_Default" %>

<asp:Content ID="Content" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row">
        <div class="container-sm container-lg">
            <asp:CreateUserWizard ID="CreateUser" runat="server" ContinueDestinationPageUrl="~/">
                <MailDefinition From="libraria_error_log@hotmail.com" CC="endri-kurushi@hotmail.com" Subject="New User">
                </MailDefinition>
                <WizardSteps>
                    <asp:CreateUserWizardStep runat="server" />
                    <asp:CompleteWizardStep runat="server" />
                </WizardSteps>
            </asp:CreateUserWizard>
        </div>
    </div>
</asp:Content>
