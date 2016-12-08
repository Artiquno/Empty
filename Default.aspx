<%@ Page Language="C#" CodeFile="~/Default.aspx.cs" AutoEventWireup="true" Inherits="Default" %>

<%@ Register Src="~/Controls/BookControl.ascx" TagPrefix="uc1" TagName="BookControl" %>

<!DOCTYPE html>
<html lang="en" class="no-js" xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <meta charset="utf-8" />
    <title>Home | Libraria</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta content="width=device-width, initial-scale=1" name="viewport" />
    <meta content="" name="description" />
    <meta content="" name="author" />

    <!-- GLOBAL MANDATORY STYLES -->
    <link href="http://fonts.googleapis.com/css?family=Hind:300,400,500,600,700" rel="stylesheet" type="text/css" />
    <link href="/vendor/simple-line-icons/css/simple-line-icons.css" rel="stylesheet" type="text/css" />
    <link href="/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />

    <!-- PAGE LEVEL PLUGIN STYLES -->
    <link href="/css/animate.css" rel="stylesheet" />
    <link href="/vendor/swiper/css/swiper.css" rel="stylesheet" type="text/css" />
    <link href="/vendor/magnific-popup/magnific-popup.css" rel="stylesheet" type="text/css" />

    <!-- THEME STYLES -->
    <link href="/css/layout.css" rel="stylesheet" type="text/css" />

    <!-- Favicon -->
    <link rel="shortcut icon" href="/img/favicon.ico" />
</head>

<body id="body" data-spy="scroll" data-target=".header">

    <!--========== HEADER ==========-->
    <header class="header navbar-fixed-top">
        <!-- Navbar -->
        <nav class="navbar" role="navigation">
            <div class="container">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="menu-container js_nav-item">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".nav-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="toggle-icon"></span>
                    </button>

                    <!-- Logo -->
                    <div class="logo">
                        <a class="logo-wrap" href="#body">
                            <img class="logo-img logo-img-main" src="img/logo.png" alt="Asentus Logo" />
                            <img class="logo-img logo-img-active" src="img/logo-dark.png" alt="Asentus Logo" />
                        </a>
                    </div>
                    <!-- End Logo -->
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse nav-collapse">
                    <div class="menu-container">
                        <ul class="nav navbar-nav navbar-nav-right">
                            <li class="js_nav-item nav-item selected"><a class="nav-item-child" href="#"><span class="icon-arrow-right">&nbsp;</span>Home</a></li>
                            <li class="js_nav-item nav-item">
                                <a class="nav-item-child nav-item-hover" href="/Librat/">Librat</a>
                                <ul class="navbar fallback">
                                    <li class="js_nav-item nav-item"><a class="nav-item-child" href="/Genre/Fantazi/">Fantazi</a></li>
                                    <li class="js_nav-item nav-item"><a class="nav-item-child" href="/Genre/SciFi/">Sci-Fi</a></li>
                                    <li class="js_nav-item nav-item"><a class="nav-item-child" href="/Genre/Komedi/">Komedi</a></li>
                                </ul>
                            </li>
                            <li class="js_nav-item nav-item"><a class="nav-item-child nav-item-hover" href="/About/">Rreth Nesh</a></li>
                            <li class="js_nav-item nav-item"><a class="nav-item-child nav-item-hover" href="/Kontakt/">Kontakt</a></li>
                            <li class="js_nav-item nav-item"><a class="nav-item-child nav-item-hover" href="/Login/">Log In</a></li>
                        </ul>
                    </div>
                </div>
                <!-- End Navbar Collapse -->
            </div>
        </nav>
        <!-- Navbar -->
    </header>
    <!--========== END HEADER ==========-->

    <!--========== SLIDER ==========-->
    <div class="promo-block">
        <div class="container">
            <div class="margin-b-40">
                <h1 class="promo-block-title">Libraria Online</h1>
                <p class="promo-block-text">Për të gjithë të apasionuarit e librave</p>
            </div>
        </div>
    </div>
    <!--========== SLIDER ==========-->

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
                                    Megjithatë e provova, dhe ndihem shumë e lumtur që e bëra këtë, sepse ky është vendi ku shpenzoj të gjithë ditën.
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
                <p class="color-heading margin-b-0">Faculteti i Shkencave të Natyrës</p>
            </address>
        </div>
    </div>
    <!--========== END PAGE LAYOUT ==========-->

    <!--========== FOOTER ==========-->
    <footer class="footer">
        <div class="section-seperator">
            <div class="content-md container">
                <div class="row">
                    <div class="col-sm-2 sm-margin-b-30">
                        <ul class="list-unstyled footer-list">
                            <li class="footer-list-item"><a href="#">Kreu</a></li>
                            <li class="footer-list-item"><a href="/About/">Rreth Nesh</a></li>
                            <li class="footer-list-item"><a href="/Librat/">Librat</a></li>
                            <li class="footer-list-item"><a href="/Kontakt/">Kontakt</a></li>
                        </ul>
                    </div>
                    <div class="col-sm-2">
                        <ul class="list-unstyled footer-list">
                            <li class="footer-list-item"><a href="#">Privacy Policy</a></li>
                            <li class="footer-list-item"><a href="#">Terms &amp; Conditions</a></li>
                        </ul>
                    </div>
                    <div class="col-sm-4 sm-margin-b-30">
                        <ul class="list-unstyled footer-list list-inline">
                            <li class="footer-list-item"><a href="http://twitter.com/"><img src="/img/widgets/twitter-icon.png" alt="" /></a></li>
                            <li class="footer-list-item"><a href="http://www.facebook.com/"><img src="/img/widgets/fb-icon.png" alt="" /></a></li>
                            <li class="footer-list-item"><a href="http://www.instagram.com/"><img src="/img/widgets/ig-icon.png" alt="" /></a></li>
                            <li class="footer-list-item"><a href="/rss"><img src="/img/widgets/rss-icon.png" alt="" /></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!--========== END FOOTER ==========-->

    <!-- Back To Top -->
    <a href="javascript:void(0);" class="js-back-to-top back-to-top">Top</a>

    <!-- JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
    <!-- CORE PLUGINS -->
    <script src="/vendor/jquery.min.js" type="text/javascript"></script>
    <script src="/vendor/jquery-migrate.min.js" type="text/javascript"></script>
    <script src="/vendor/bootstrap/js/bootstrap.js" type="text/javascript"></script>

    <!-- PAGE LEVEL PLUGINS -->
    <script src="/vendor/jquery.easing.js" type="text/javascript"></script>
    <script src="/vendor/jquery.back-to-top.js" type="text/javascript"></script>
    <script src="/vendor/jquery.smooth-scroll.js" type="text/javascript"></script>
    <script src="/vendor/jquery.wow.min.js" type="text/javascript"></script>
    <script src="/vendor/swiper/js/swiper.jquery.js" type="text/javascript"></script>
    <script src="/vendor/magnific-popup/jquery.magnific-popup.min.js" type="text/javascript"></script>
    <script src="/vendor/masonry/jquery.masonry.pkgd.min.js" type="text/javascript"></script>
    <script src="/vendor/masonry/imagesloaded.pkgd.min.js" type="text/javascript"></script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBsXUGTFS09pLVdsYEE9YrO2y4IAncAO2U&amp;callback=initMap" async="async" defer="defer"></script>

    <!-- PAGE LEVEL SCRIPTS -->
    <script src="/js/layout.js" type="text/javascript"></script>
    <script src="/js/components/wow.js" type="text/javascript"></script>
    <script src="/js/components/swiper.js" type="text/javascript"></script>
    <script src="/js/components/magnific-popup.js" type="text/javascript"></script>
    <script src="/js/components/masonry.js" type="text/javascript"></script>
    <script src="/js/components/gmap.js" type="text/javascript"></script>

    <!-- Dropdown script for nav bar -->
    <script src="js/nav-dropdown.js"></script>
</body>
</html>
