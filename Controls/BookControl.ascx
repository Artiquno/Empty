<%@ Control Language="C#" AutoEventWireup="true" CodeFile="BookControl.ascx.cs" Inherits="Controls_BookControl" %>
<%@ Register Src="~/Controls/GenreControl.ascx" TagPrefix="uc1" TagName="GenreControl" %>


<div class="masonry-grid-item">
    <!-- Work -->
    <div class="work work-popup-trigger">
        <div class="work-overlay">
            <img class="full-width img-responsive" src='<%=this.Book.ImageUrl %>' alt='<%=this.Book.AltText %>' />
            <%--<asp:Image ID="imgMain" runat="server" CssClass="full-width img-responsive" />--%>
        </div>
        <div class="work-popup-overlay">
            <div class="work-popup-content">
                <a href="javascript:void(0);" class="work-popup-close">Hide</a>
                <div class="margin-b-30">
                    <h3 class="margin-b-5">
                        <%=this.Book.Title %>
                    </h3>
                    <span>
                        <%=this.Book.Author %>
                    </span>
                </div>
                <div class="row">
                    <div class="margin-t-10 sm-margin-t-0">
                        <%=this.Book.Description %>
                        <%-- ToDo : Genre Repeater
                        <ul class="list-inline work-popup-tag">
                            <asp:Repeater ID="repeaterGenre" runat="server">
                                <ItemTemplate>
                                    <uc1:GenreControl runat="server" ID="GenreControl" Book='<%#(Container.DataItem as Book) %>'/>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul> --%>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Work -->
</div>
