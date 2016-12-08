<%@ Page Title="Home | Libraria" Language="C#" CodeFile="~/Default.aspx.cs" AutoEventWireup="true" Inherits="Default" MasterPageFile="~/Masters/Layout.master" %>

<%@ Register Src="~/Controls/BookControl.ascx" TagPrefix="uc1" TagName="BookControl" %>

<%-- Head --%>
<asp:Content runat="server" ContentPlaceHolderID="head">

    <link href="/css/animate.css" rel="stylesheet" />
    <link href="/vendor/swiper/css/swiper.css" rel="stylesheet" type="text/css" />
    <link href="/vendor/magnific-popup/magnific-popup.css" rel="stylesheet" type="text/css" />

    <script src="/js/layout.js" type="text/javascript"></script>

</asp:Content>

<%-- Body --%>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <div class="promo-block">
        <div class="container">
            <div class="margin-b-40">
                <h1 class="promo-block-title">Libraria Online</h1>
                <p class="promo-block-text">Për të gjithë të apasionuarit e librave</p>
            </div>
        </div>
    </div>

    <!--========== PAGE LAYOUT ==========-->
    <!-- Products -->
    <div id="products">
        <div class="container content-lg">
            <div class="row text-center">
                <div class="col-sm-6 col-sm-offset-3">
                    <h2>Librat më të lexuar</h2>
                    <%--<p>Lorem ipsum dolor sit amet consectetur adipiscing elit sed tempor incididunt ut laboret dolore magna aliqua enim minim veniam exercitation</p>--%>
                </div>
            </div>
            <!--// end row -->

            <div class="row">
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
        </div>
    </div>
    <!-- End Products -->

    <!-- Promo Banner -->
    <div class="promo-banner">
        <div class="container-sm content-lg">
            <h2 class="promo-banner-title">Shisni librat tuaj të vjetër</h2>
            <p class="promo-banner-text">Nëse keni një libër të vjetër për të shitur, na kontaktoni <a href="/Kontakt/">këtu</a>.</p>
        </div>
    </div>
    <!-- End Promo Banner -->

    <!-- Testimonials -->
    <div class="content-md container">
        <div class="row">
            <div class="col-sm-9">
                <h2>Nga klientët tanë</h2>

                <!-- Swiper Testimonials -->
                <div class="swiper-slider swiper-testimonials">
                    <!-- Swiper Wrapper -->
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <blockquote class="blockquote">
                                <div class="margin-b-20">
                                    Të gjithë librat më të bukur, nga Shakespeare tek Mondi, kjo librari i ka të gjitha!
                                </div>
                                <p><span class="fweight-700 color-link">Arthur Dent</span>, Klient i Librarisë Online</p>
                            </blockquote>
                        </div>
                        <div class="swiper-slide">
                            <blockquote class="blockquote">
                                <div class="margin-b-20">
                                    Sa herë që shoh varietetin e librave dhe autorëve në këtë librari, mbetem e mahnitur!
                                </div>
                                <p><span class="fweight-700 color-link">Marie Curie</span>, Kliente e Librarisë Online</p>
                            </blockquote>
                        </div>
                        <div class="swiper-slide">
                            <blockquote class="blockquote">
                                <div class="margin-b-20">
                                    Në momentin kur miqtë më thanë që ekziston një librari online me të gjithë librat më të bukur, unë nuk i besova menjëherë.
                                </div>
                                <div class="margin-b-20">
                                    Megjithatë e provova, dhe ndihem shumë i lumtur që e bëra këtë, sepse ky është vendi ku shpenzoj të gjithë ditën.
                                </div>
                                <p><span class="fweight-700 color-link">Gandalf Dumbledore</span>, Neglizhues fëmijësh</p>
                            </blockquote>
                        </div>
                        <div class="swiper-slide">
                            <blockquote class="blockquote">
                                <div class="margin-b-20">
                                    Nuk mendoj se kam parë ndonjëherë një koleksion kaq të gjerë librash në të gjithë jetën time.
                                </div>
                                <div class="margin-b-20">
                                    Mendoj se dhe murgjit e Kaleth do ta kishin zili!
                                </div>
                                <p><span class="fweight-700 color-link">Arwen Undómiel</span>, Kliente e Librarisë Online</p>
                            </blockquote>
                        </div>
                    </div>
                    <!-- End Swiper Wrapper -->

                    <!-- Pagination -->
                    <div class="swiper-testimonials-pagination"></div>
                </div>
                <!-- End Swiper Testimonials -->
            </div>
        </div>
        <!--// end row -->
    </div>
    <!-- End Testimonials -->

    <div id="contact">
        <div class="gmap">
            <div id="map" class="map height-400"></div>
            <address class="gmap-address">
                <p class="color-heading margin-b-0">Faculteti i Shkencave të Natyrës, Tiranë, Shqipëri</p>
            </address>
        </div>
    </div>
    <!--========== END PAGE LAYOUT ==========-->
</asp:Content>
