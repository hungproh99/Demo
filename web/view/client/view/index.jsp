<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<c:url value="/view/client/static" var="url"></c:url>
    <!DOCTYPE html>
    <html>
        <head>
            <meta charset="UTF-8">
            <title>Shop online</title>
            <link rel='stylesheet' type='text/css'
                  href='//fonts.googleapis.com/css?family=Open+Sans:400,300,600&amp;subset=cyrillic,latin'>

            <!-- CSS Global Compulsory -->
            <link rel="stylesheet"
                  href="${url}/plugins/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="${url}/css/shop.style.css">

        <!-- CSS Header and Footer -->
        <link rel="stylesheet" href="${url}/css/headers/header-v5.css">
        <link rel="stylesheet" href="${url}/css/footers/footer-v4.css">

        <!-- CSS Implementing Plugins -->
        <link rel="stylesheet" href="${url}/plugins/animate.css">
        <link rel="stylesheet" href="${url}/plugins/line-icons/line-icons.css">
        <link rel="stylesheet"
              href="${url}/plugins/font-awesome/css/font-awesome.min.css">
        <link rel="stylesheet"
              href="${url}/plugins/scrollbar/css/jquery.mCustomScrollbar.css">
        <link rel="stylesheet"
              href="${url}/plugins/owl-carousel/owl-carousel/owl.carousel.css">
        <link rel="stylesheet"
              href="${url}/plugins/revolution-slider/rs-plugin/css/settings.css">

        <!-- CSS Theme -->
        <link rel="stylesheet" href="${url}/css/theme-colors/default.css"
              id="style_color">

        <!-- CSS Customization -->
        <link rel="stylesheet" href="${url}/css/custom.css">
    </head>
    <body class="header-fixed">
        <div class="wrapper">
            <!--=== Header v5 ===-->
            <div class="header-v5 header-static">
                <!-- Topbar v3 -->
                <jsp:include page="/view/client/view/topbar.jsp"></jsp:include>
                    <!-- End Topbar v3 -->

                    <!-- Navbar -->
                <jsp:include page="/view/client/view/navbar.jsp"></jsp:include>
                    <!-- End Navbar -->
                </div>
                <!--=== End Header v5 ===-->


                <!--=== Product Content ===-->
                <div class="container content-md">
                    <!--=== Illustration v1 ===-->
                    <div class="row margin-bottom-60">
                        <div class="col-md-6 md-margin-bottom-30">
                            <div class="overflow-h">
                                <div class="illustration-v1 illustration-img1">
                                    <div class="illustration-bg">
                                        <div class="illustration-ads ad-details-v1">
                                            <h3>
                                                SUMMER <strong>SALE</strong> 30% - 60% <strong>off</strong>
                                            </h3>
                                            <a class="btn-u btn-brd btn-brd-hover btn-u-light" 
                                               href="${pageContext.request.contextPath }/product/list">Shop Now</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="overflow-h">
                            <a class="illustration-v1 illustration-img2" href="${pageContext.request.contextPath }/product/list"> <span
                                    class="illustration-bg"> <span
                                        class="illustration-ads ad-details-v2"> <span
                                            class="item-time">Summer 2020</span> <span class="item-name">Lacoste</span>
                                    </span>
                                </span>
                            </a>
                        </div>
                    </div>
                </div>
                <!--/end row-->
                <!--=== End Illustration v1 ===-->

                <!--=== Illustration v3 ===-->
                <div class="row margin-bottom-50">
                    <div class="heading heading-v1 margin-bottom-40">
                        <h2>Latest products</h2>
                    </div>

                    <!--=== Illustration v2 ===-->
                    <div class="row illustration-v2 ">

                        <c:forEach items="${pwelcome }" var="p">
                            <c:url value="/view/client/static/img/prd/${p.image }" var="imgUrl"></c:url>

                                <div class="col-md-3 col-sm-6 md-margin-bottom-10">
                                    <div class="product-img">
                                        <a href="${pageContext.request.contextPath }/product/detail?id=${p.id}">
                                        <img width="270" height="300" src="${imgUrl }" alt="" alt=""></a>  
                                    <a class="add-to-cart" href="${pageContext.request.contextPath }/product/detail?id=${p.id}">
                                        <i class="fa fa-shopping-cart"></i>Add to cart</a>
                                </div>
                                <div class="product-description product-description-brd">
                                    <div class="overflow-h margin-bottom-5">
                                        <div class="pull-left">
                                            <h4 class="title-price">
                                                <a
                                                    href="${pageContext.request.contextPath }/product/detail?id=${p.id}">${p.name }</a>

                                            </h4>
                                            <span class="gender text-uppercase">${p.category.name }</span>
                                            <span class="gender">${p.des }</span>

                                        </div>
                                        <div class="product-price">
                                            <span class="title-price">$ ${p.price }</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                    <!--=== End Illustration v2 ===-->
                </div>
                <!--=== End Product Content ===-->

                <div class="container">
                    <!--=== Product Service ===-->
                    <div class="row margin-bottom-60">
                        <div class="col-md-4 product-service md-margin-bottom-30">
                            <div class="product-service-heading">
                                <i class="fa fa-truck"></i>
                            </div>
                            <div class="product-service-in">
                                <h3>Free Delivery</h3>
                            </div>
                        </div>
                        <div class="col-md-4 product-service md-margin-bottom-30">
                            <div class="product-service-heading">
                                <i class="icon-earphones-alt"></i>
                            </div>
                            <div class="product-service-in">
                                <h3>Customer Service</h3>
                            </div>
                        </div>
                        <div class="col-md-4 product-service">
                            <div class="product-service-heading">
                                <i class="icon-refresh"></i>
                            </div>
                            <div class="product-service-in">
                                <h3>Free Returns</h3>
                            </div>
                        </div>
                    </div>
                    <!--/end row-->
                    <!--=== End Product Service ===-->
                    <!--=== Sponsors ===-->
                    <div class="container content">
                        <div class="heading heading-v1 margin-bottom-40">
                            <h2>Sponsors</h2>
                        </div>

                        <ul class="list-inline owl-slider-v2">
                            <li class="item first-child"><img
                                    src="${url}/img/clients/07.png" alt=""></li>
                            <li class="item"><img src="${url}/img/clients/08.png" alt="">
                            </li>
                            <li class="item"><img src="${url}/img/clients/10.png" alt="">
                            </li>
                            <li class="item"><img src="${url}/img/clients/11.png" alt="">
                            </li>
                            <li class="item"><img src="${url}/img/clients/09.png" alt="">
                            </li>
                            <li class="item"><img src="${url}/img/clients/12.png" alt="">
                            </li>
                            <li class="item"><img src="${url}/img/clients/07.png" alt="">
                            </li>
                            <li class="item"><img src="${url}/img/clients/08.png" alt="">
                            </li>
                            <li class="item"><img src="${url}/img/clients/09.png" alt="">
                            </li>
                            <li class="item"><img src="${url}/img/clients/10.png" alt="">
                            </li>
                            <li class="item"><img src="${url}/img/clients/11.png" alt="">
                            </li>
                            <li class="item"><img src="${url}/img/clients/12.png" alt="">
                            </li>
                        </ul>
                        <!--/end owl-carousel-->
                    </div>
                    <!--=== End Sponsors ===-->

                </div>
            </div>
        </div>
        <!--/wrapper-->
        <!--=== Shop Suvbscribe ===-->
        <div class="shop-subscribe">
            <div class="container">
                <div class="row">
                    <div class="col-md-8 md-margin-bottom-20">
                        <h2>
                            subscribe to our weekly <strong>newsletter</strong>
                        </h2>
                    </div>
                    <div class="col-md-4">
                        <div class="input-group">
                            <input type="text" class="form-control"
                                   placeholder="Email your email..."> <span
                                   class="input-group-btn">
                                <button class="btn" type="button">
                                    <i class="fa fa-envelope-o"></i>
                                </button>
                            </span>
                        </div>
                    </div>
                </div>
            </div>
            <!--/end container-->
        </div>
        <!--=== End Shop Suvbscribe ===-->


        <!--=== Footer v4 ===-->
        <jsp:include page="/view/client/view/footer.jsp"></jsp:include>
            <!--=== End Footer v4 ===-->
            <!-- JS Global Compulsory -->
            <script src="${url}/plugins/jquery/jquery.min.js"></script>
        <script src="${url}/plugins/jquery/jquery-migrate.min.js"></script>
        <script src="${url}/plugins/bootstrap/js/bootstrap.min.js"></script>
        <!-- JS Implementing Plugins -->
        <script src="${url}/plugins/back-to-top.js"></script>
        <script src="${url}/plugins/smoothScroll.js"></script>
        <script src="${url}/plugins/jquery.parallax.js"></script>
        <script src="${url}/plugins/owl-carousel/owl-carousel/owl.carousel.js"></script>
        <script
        src="${url}/plugins/scrollbar/js/jquery.mCustomScrollbar.concat.min.js"></script>
        <script
        src="${url}/plugins/revolution-slider/rs-plugin/js/jquery.themepunch.tools.min.js"></script>
        <script
        src="${url}/plugins/revolution-slider/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
        <!-- JS Customization -->
        <script src="${url}/js/custom.js"></script>
        <!-- JS Page Level -->
        <script src="${url}/js/shop.app.js"></script>
        <script src="${url}/js/plugins/owl-carousel.js"></script>
        <script src="${url}/js/plugins/revolution-slider.js"></script>
        <script>
            jQuery(document).ready(function () {
                App.init();
                App.initScrollBar();
                App.initParallaxBg();
                OwlCarousel.initOwlCarousel();
                RevolutionSlider.initRSfullWidth();
            });
        </script>
    </body>
</html>