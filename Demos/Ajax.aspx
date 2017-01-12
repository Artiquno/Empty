<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Ajax.aspx.cs" Inherits="Demos_Ajax" MasterPageFile="~/Masters/Layout.master" %>
<%@ Register Src="~/Controls/ContactForm.ascx" TagName="ContactForm" TagPrefix="en3" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server" style="margin-top: 150px;">
        <asp:ScriptManagerProxy runat="server"></asp:ScriptManagerProxy>
        <asp:UpdatePanel runat="server" ID="Panel">
            <ContentTemplate>
                <asp:Timer runat="server" Interval="1000" OnTick="Timer_Tick">
                </asp:Timer>
                <asp:Label Text="" runat="server" ID="Time" />
            </ContentTemplate>
        </asp:UpdatePanel>
        <asp:UpdateProgress AssociatedUpdatePanelID="Panel" runat="server" DisplayAfter="500">
            <ProgressTemplate>
                Loading... *beep beep boop bop*
            </ProgressTemplate>
        </asp:UpdateProgress>
    </form>
</asp:Content>
