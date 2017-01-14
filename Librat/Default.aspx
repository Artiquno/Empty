<%@ Page Title="Librat | Libraria" Language="C#" MasterPageFile="~/Masters/Layout.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Librat_Default" %>

<%@ Register Src="~/Controls/BookControl.ascx" TagPrefix="uc1" TagName="BookControl" %>

<asp:Content runat="server" ContentPlaceHolderID="head">
    <link href="/vendor/magnific-popup/magnific-popup.css" rel="stylesheet" type="text/css" />
</asp:Content>

<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <asp:ScriptManagerProxy runat="server">
        <Scripts>
            <asp:ScriptReference Path="/js/work-popup.js" />
        </Scripts>
    </asp:ScriptManagerProxy>
    <div class="row">
        <div class="container content-lg">
            <div class="row">
                <h1 class="text-center"><asp:Literal runat="server" ID="Search" Text=''/></h1>
                <div class="content-md container">
                    <div class="masonry-grid row row-space-2">
                        <asp:Repeater ID="repeaterBooks" runat="server">
                            <ItemTemplate>
                                <uc1:BookControl runat="server" ID="BookControl" Book='<%#(Container.DataItem as Book) %>' />
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class='page-container text-center'>
                    <asp:HyperLink runat="server" ImageHeight="50" ImageUrl="~/img/pager/previous.png" ID="PagerPrev" Visible="false" />
                    <h4 style="display: inline;">Faqja <asp:Literal Mode="Encode" ID="CurrPage" runat="server" Text="1"/></h4>
                    <asp:HyperLink runat="server" ImageHeight="50" ImageUrl="~/img/pager/next.png" ID="PagerNext" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
