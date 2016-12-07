<%@ Page Language="C#" CodeFile="~/Default.aspx.cs" AutoEventWireup="true" Inherits="Default" %>

<%@ Register Src="~/Controls/BookControl.ascx" TagPrefix="uc1" TagName="BookControl" %>



<!DOCTYPE html>
<html lang="en" class="no-js">

<head runat="server">
    <meta charset="utf-8" />
    <title>Home | Libraria</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1" name="viewport" />
    <meta content="" name="description" />
    <meta content="" name="author" />

    <!-- GLOBAL MANDATORY STYLES -->
    <link href="http://fonts.googleapis.com/css?family=Hind:300,400,500,600,700" rel="stylesheet" type="text/css">
    <link href="/vendor/simple-line-icons/css/simple-line-icons.css" rel="stylesheet" type="text/css" />
    <link href="/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />

    <!-- PAGE LEVEL PLUGIN STYLES -->
    <link href="/css/animate.css" rel="stylesheet">
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
                            <img class="logo-img logo-img-main" src="img/logo.png" alt="Asentus Logo">
                            <img class="logo-img logo-img-active" src="img/logo-dark.png" alt="Asentus Logo">
                        </a>
                    </div>
                    <!-- End Logo -->
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse nav-collapse">
                    <div class="menu-container">
                        <ul class="nav navbar-nav navbar-nav-right">
                            <li class="js_nav-item nav-item selected"><a class="nav-item-child" href="#"><span class="icon-arrow-right">&nbsp;</span>Home</a></li>
                            <li class="js_nav-item nav-item"><a class="nav-item-child nav-item-hover" href="/Librat/">Librat</a></li>
                            <%--
                            <li class="js_nav-item nav-item"><a class="nav-item-child nav-item-hover" href="#service">Service</a></li>
                            <li class="js_nav-item nav-item"><a class="nav-item-child nav-item-hover" href="#work">Work</a></li>
                            --%>
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

    <!-- Service -->
    <div id="service">
        <div class="bg-color-sky-light" data-auto-height="true">
            <div class="content-lg container">
                <div class="row row-space-2 margin-b-4">
                    <div class="col-sm-4 sm-margin-b-4">
                        <div class="service" data-height="height">
                            <div class="service-element">
                                <i class="service-icon icon-chemistry"></i>
                            </div>
                            <div class="service-info">
                                <h3>Art Of Coding</h3>
                                <p class="margin-b-5">Lorem ipsum dolor amet consectetur ut consequat siad esqudiat dolor</p>
                            </div>
                            <a href="#" class="content-wrapper-link"></a>
                        </div>
                    </div>
                    <div class="col-sm-4 sm-margin-b-4">
                        <div class="service bg-color-base wow fadeInDown" data-height="height" data-wow-duration=".3" data-wow-delay=".1s">
                            <div class="service-element">
                                <i class="service-icon color-white icon-screen-tablet"></i>
                            </div>
                            <div class="service-info">
                                <h3 class="color-white">Responsive Design</h3>
                                <p class="color-white margin-b-5">Lorem ipsum dolor amet consectetur ut consequat siad esqudiat dolor</p>
                            </div>
                            <a href="#" class="content-wrapper-link"></a>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="service" data-height="height">
                            <div class="service-element">
                                <i class="service-icon icon-badge"></i>
                            </div>
                            <div class="service-info">
                                <h3>Feature Reach</h3>
                                <p class="margin-b-5">Lorem ipsum dolor amet consectetur ut consequat siad esqudiat dolor</p>
                            </div>
                            <a href="#" class="content-wrapper-link"></a>
                        </div>
                    </div>
                </div>
                <!--// end row -->

                <div class="row row-space-2">
                    <div class="col-sm-4 sm-margin-b-4">
                        <div class="service" data-height="height">
                            <div class="service-element">
                                <i class="service-icon icon-notebook"></i>
                            </div>
                            <div class="service-info">
                                <h3>Useful Documentation</h3>
                                <p class="margin-b-5">Lorem ipsum dolor amet consectetur ut consequat siad esqudiat dolor</p>
                            </div>
                            <a href="#" class="content-wrapper-link"></a>
                        </div>
                    </div>
                    <div class="col-sm-4 sm-margin-b-4">
                        <div class="service" data-height="height">
                            <div class="service-element">
                                <i class="service-icon icon-speedometer"></i>
                            </div>
                            <div class="service-info">
                                <h3>Fast Delivery</h3>
                                <p class="margin-b-5">Lorem ipsum dolor amet consectetur ut consequat siad esqudiat dolor</p>
                            </div>
                            <a href="#" class="content-wrapper-link"></a>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="service" data-height="height">
                            <div class="service-element">
                                <i class="service-icon icon-badge"></i>
                            </div>
                            <div class="service-info">
                                <h3>Free Plugins</h3>
                                <p class="margin-b-5">Lorem ipsum dolor amet consectetur ut consequat siad esqudiat dolor</p>
                            </div>
                            <a href="#" class="content-wrapper-link"></a>
                        </div>
                    </div>
                </div>
                <!--// end row -->
            </div>
        </div>
    </div>
    <!-- End Service -->

    <!-- Promo Banner -->
    <div class="promo-banner">
        <div class="container-sm content-lg">
            <h2 class="promo-banner-title">Displaying the Result</h2>
            <p class="promo-banner-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo.</p>
        </div>
    </div>
    <!-- End Promo Banner -->

    <!-- Pricing -->
    <div id="pricing">
        <div class="bg-color-sky-light">
            <div class="content-lg container">
                <div class="row row-space-2">
                    <div class="col-sm-4 sm-margin-b-4">
                        <!-- Pricing -->
                        <div class="pricing">
                            <div class="margin-b-30">
                                <i class="pricing-icon icon-chemistry"></i>
                                <h3>Starter Kit <span>- $</span> 49</h3>
                                <p>Lorem ipsum dolor amet consectetur ut consequat siad esqudiat dolor</p>
                            </div>
                            <ul class="list-unstyled pricing-list margin-b-50">
                                <li class="pricing-list-item">Basic Features</li>
                                <li class="pricing-list-item">Up to 5 products</li>
                                <li class="pricing-list-item">50 Users Panels</li>
                            </ul>
                            <a href="pricing.html" class="btn-theme btn-theme-sm btn-default-bg text-uppercase">Choose</a>
                        </div>
                        <!-- End Pricing -->
                    </div>
                    <div class="col-sm-4 sm-margin-b-4">
                        <!-- Pricing -->
                        <div class="pricing pricing-active">
                            <div class="margin-b-30">
                                <i class="pricing-icon icon-badge"></i>
                                <h3>Professional <span>- $</span> 149</h3>
                                <p>Lorem ipsum dolor amet consectetur ut consequat siad esqudiat dolor</p>
                            </div>
                            <ul class="list-unstyled pricing-list margin-b-50">
                                <li class="pricing-list-item">Basic Features</li>
                                <li class="pricing-list-item">Up to 100 products</li>
                                <li class="pricing-list-item">100 Users Panels</li>
                            </ul>
                            <a href="pricing.html" class="btn-theme btn-theme-sm btn-default-bg text-uppercase">Choose</a>
                        </div>
                        <!-- End Pricing -->
                    </div>
                    <div class="col-sm-4">
                        <!-- Pricing -->
                        <div class="pricing">
                            <div class="margin-b-30">
                                <i class="pricing-icon icon-shield"></i>
                                <h3>Advanced <span>- $</span> 249</h3>
                                <p>Lorem ipsum dolor amet consectetur ut consequat siad esqudiat dolor</p>
                            </div>
                            <ul class="list-unstyled pricing-list margin-b-50">
                                <li class="pricing-list-item">Extended Features</li>
                                <li class="pricing-list-item">Unlimited products</li>
                                <li class="pricing-list-item">Unlimited Users Panels</li>
                            </ul>
                            <a href="pricing.html" class="btn-theme btn-theme-sm btn-default-bg text-uppercase">Choose</a>
                        </div>
                        <!-- End Pricing -->
                    </div>
                </div>
                <!--// end row -->
            </div>
        </div>
    </div>
    <!-- End Pricing -->

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
                <p class="color-heading margin-b-0">FSHN etj etj etj</p>
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
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBsXUGTFS09pLVdsYEE9YrO2y4IAncAO2U&amp;callback=initMap" async defer></script>

    <!-- PAGE LEVEL SCRIPTS -->
    <script src="/js/layout.js" type="text/javascript"></script>
    <script src="/js/components/wow.js" type="text/javascript"></script>
    <script src="/js/components/swiper.js" type="text/javascript"></script>
    <script src="/js/components/magnific-popup.js" type="text/javascript"></script>
    <script src="/js/components/masonry.js" type="text/javascript"></script>
    <script src="/js/components/gmap.js" type="text/javascript"></script>

</body>
</html>
