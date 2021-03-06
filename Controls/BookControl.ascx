﻿<%@ Control Language="C#" AutoEventWireup="true" CodeFile="BookControl.ascx.cs" Inherits="Controls_BookControl" %>

<div class="masonry-grid-item">
    <div class="work work-popup-trigger">
        <div class="work-overlay books-most-read col-md-8">
            <img class="full-width img-responsive" src='/img/works/<%=this.Book.ImageUrl %>' alt='<%=this.Book.AltText %>' />
            <p><strong><%=this.Book.Title %></strong> nga <strong><%=this.Book.Author %></strong></p>
        </div>
        <div class="work-popup-overlay">
            <div class="work-popup-content">
                <a href="javascript:void(0);" class="work-popup-close">Hide</a>
                <div class="margin-b-30">
                    <h3 class="margin-b-5">
                        <%=this.Book.Title %>
                    </h3>
                    <span>
                        <a href="/Librat/?q=<%=this.Book.Author%>">
                            <%=this.Book.Author %>
                        </a>
                    </span>
                </div>
                <div class="row">
                    <div class="col-sm-8 sm-margin-b-20">
                        <div class="margin-t-10 sm-margin-t-0">
                            <%=this.Book.Description %>
                            <ul class="list-inline work-popup-tag">
                                <asp:Repeater runat="server" ID="genreRep">
                                    <ItemTemplate>
                                        <li class="work-popup-tag-item">
                                            <a class="work-popup-tag-link" href='/Librat/?q=<%#Container.DataItem as string %>'>
                                                <%#Container.DataItem as string %>
                                            </a>
                                        </li>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </ul>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="margin-t-10 sm-margin-t-0">
                            <asp:UpdatePanel ID="DownloadPanel" runat="server" ChildrenAsTriggers="true">
                                <ContentTemplate>
                                    <asp:Image ID="Image" runat="server"
                                        CssClass="full-width img-responsive"
                                        OnClick="DL_Click" />
                                    <asp:LoginView runat="server">
                                        <LoggedInTemplate>
                                            <asp:ImageButton ImageUrl="~/img/add-to-cart.jpg" Height="40px"
                                                CssClass="cart-button"
                                                ID="Add" runat="server"
                                                OnClick="AddToCart" Text="Shto në shportë" />
                                        </LoggedInTemplate>
                                    </asp:LoginView>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
