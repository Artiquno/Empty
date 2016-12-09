<%@ Control Language="C#" AutoEventWireup="true" CodeFile="BookControl.ascx.cs" Inherits="Controls_BookControl" %>


<div class="masonry-grid-item">
    <!-- Work -->
    <div class="work work-popup-trigger">
        <div class="work-overlay books-most-read col-md-8">
            <img class="full-width img-responsive" src='<%=this.Book.ImageUrl %>' alt='<%=this.Book.AltText %>' />
            <p><%=this.Book.Title %></p>
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
                    <div class="col-sm-8 sm-margin-b-20">
                        <div class="margin-t-10 sm-margin-t-0">
                            <%=this.Book.Description %>
                            <ul class="list-inline work-popup-tag">
                                <li class="work-popup-tag-item">
                                    <a class="work-popup-tag-link" href='/Genres/<%=this.Book.Genre[0] %>'>
                                        <%=this.Book.Genre[0] %>
                                    </a>
                                </li>
                                <li class="work-popup-tag-item">
                                    <a class="work-popup-tag-link" href='/Genres/<%=this.Book.Genre[1] %>'>
                                        <%=this.Book.Genre[1] %>
                                    </a>
                                </li>
                                <li class="work-popup-tag-item">
                                    <a class="work-popup-tag-link" href='/Genres/<%=this.Book.Genre[2] %>'>
                                        <%=this.Book.Genre[2] %>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="margin-t-10 sm-margin-t-0">
                            <img class="full-width img-responsive" src='<%=this.Book.ImageUrl %>' alt='<%=this.Book.AltText %>' />
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
<!-- End Work -->
</div>
