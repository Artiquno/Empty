<%@ Control Language="C#" AutoEventWireup="true" CodeFile="TempControl.ascx.cs" Inherits="Controls_TempControl" %>

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
                    <div class="col-sm-8 work-popup-content-divider sm-margin-b-20">
                        <div class="margin-t-10 sm-margin-t-0">
                            <p>This is custom made.</p>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.</p>
                            <ul class="list-inline work-popup-tag">
                                <li class="work-popup-tag-item"><a class="work-popup-tag-link" href="#">Design,</a></li>
                                <li class="work-popup-tag-item"><a class="work-popup-tag-link" href="#">Coding,</a></li>
                                <li class="work-popup-tag-item"><a class="work-popup-tag-link" href="#">Portfolio</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="margin-t-10 sm-margin-t-0">
                            <p class="margin-b-5"><strong>Project Leader:</strong> John Doe</p>
                            <p class="margin-b-5"><strong>Designer:</strong> Alisa Keys</p>
                            <p class="margin-b-5"><strong>Developer:</strong> Mark Doe</p>
                            <p class="margin-b-5"><strong>Customer:</strong> Keenthemes</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Work -->
</div>
