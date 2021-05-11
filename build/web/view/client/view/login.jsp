<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <c:url value="/view/client/static" var="url"></c:url>
            <meta charset="UTF-8">
            <title>Login</title>
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <meta name="description" content="">
            <meta name="author" content="">

            <!-- Favicon -->
            <link rel="shortcut icon" href="favicon.ico">

            <!-- Web Fonts -->
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

        <!-- CSS Page Style -->
        <link rel="stylesheet" href="${url}/css/pages/log-reg-v3.css">

        <!-- Style Switcher -->
        <link rel="stylesheet" href="${url}/css/plugins/style-switcher.css">

        <!-- CSS Theme -->
        <link rel="stylesheet" href="${url}/css/theme-colors/default.css"
              id="style_color">

        <!-- CSS Customization -->
        <link rel="stylesheet" href="${url}/css/custom.css">
    </head>
    <body class="header-fixed">
        <div class="wrapper">
        <!-- Load Facebook SDK for JavaScript -->
        <div id="fb-root"></div>
        <script>
            window.fbAsyncInit = function () {
                FB.init({
                    xfbml: true,
                    version: 'v9.0'
                });
            };

            (function (d, s, id) {
                var js, fjs = d.getElementsByTagName(s)[0];
                if (d.getElementById(id))
                    return;
                js = d.createElement(s);
                js.id = id;
                js.src = 'https://connect.facebook.net/en_US/sdk/xfbml.customerchat.js';
                fjs.parentNode.insertBefore(js, fjs);
            }(document, 'script', 'facebook-jssdk'));</script>

        <!-- Your Chat Plugin code -->
        <div class="fb-customerchat"
             attribution=setup_tool
             page_id="111911823915722">
        </div>
            <!--=== Header v5 ===-->
            <div class="header-v5 header-${url}">
                <!-- Topbar v3 -->
                <jsp:include page="topbar.jsp"></jsp:include>

                    <!-- End Topbar v3 -->

                    <!-- Navbar -->
                <jsp:include page="navbar.jsp"></jsp:include>
                    <!-- End Navbar -->
                </div>
                <!--=== End Header v5 ===-->

                <!--=== Breadcrumbs v4 ===-->
                <div class="breadcrumbs-v4">
                    <div class="container">
                        <span class="page-name">Log In</span>
                        <ul class="breadcrumb-v4-in">
                            <li><a href="index.jsp">Home</a></li>
                            <li class="active">Log In</li>
                        </ul>
                    </div>
                    <!--/end container-->
                </div>
                <!--=== End Breadcrumbs v4 ===-->

                <!--=== Login ===-->
                <div class="log-reg-v3 content-md">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-7 md-margin-bottom-50">
                                <h2 class="welcome-title">Welcome to "No Brand"</h2>
                                <br>
                                <div class="info-block-v2">
                                    <i class="icon icon-layers"></i>
                                    <div class="info-block-in">
                                        <h3>cba</h3>
                                        <p>abc</p>
                                    </div>
                                </div>
                                <div class="info-block-v2">
                                    <i class="icon icon-settings"></i>
                                    <div class="info-block-in">
                                        <h3>321</h3>
                                        <p>123</p>
                                    </div>
                                </div>
                                <div class="info-block-v2">
                                    <i class="icon icon-paper-plane"></i>
                                    <div class="info-block-in">
                                        <h3>zyx</h3>
                                        <p>xyz</p>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-5">
                                <form id="sky-form1" class="log-reg-block sky-form" action="login"
                                      method="post">
                                    <h2>Log in to your account</h2>
                                    <h3>${alertMsg }</h3>


                                <section>
                                    <label class="input login-input">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="fa fa-user"></i></span>
                                            <input type="text" placeholder="User name" name="username"
                                                   class="form-control">
                                        </div>
                                    </label>
                                </section>
                                <section>
                                    <label class="input login-input no-border-top">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                                            <input type="password" placeholder="Password" name="password"
                                                   class="form-control">
                                        </div>
                                    </label>
                                </section>
                                <div class="row margin-bottom-5">
                                    <div class="col-xs-6">
                                        <label class="checkbox"> <input type="checkbox"
                                                                        name="checkbox" /> <i></i> Remember me
                                        </label>
                                    </div>
                                    <div class="col-xs-6 text-right">
                                        <a href="#">Forget your Password?</a>
                                    </div>
                                </div>
                                <button class="btn-u btn-u-sea-shop btn-block margin-bottom-20"
                                        type="submit">Log in</button>

                                <div class="border-wings">
                                    <span>or</span>
                                </div>

                                <div class="row columns-space-removes">
                                    <div class="col-lg-6 margin-bottom-10">
                                        <button type="button" class="btn-u btn-u-md btn-u-fb btn-block">
                                            <i class="fa fa-facebook"></i> Facebook Log In
                                        </button>
                                    </div>
                                    <div class="col-lg-6">
                                        <button type="button" class="btn-u btn-u-md btn-u-tw btn-block">
                                            <i class="fa fa-twitter"></i> Twitter Log In
                                        </button>
                                    </div>
                                </div>
                            </form>

                            <div class="margin-bottom-20"></div>
                            <p class="text-center">
                                Don't have account yet? Learn more and <a
                                    href="${pageContext.request.contextPath }/register">Sign Up</a>
                            </p>
                        </div>
                    </div>
                    <!--/end row-->
                </div>
                <!--/end container-->
            </div>
            <!--=== End Login ===-->

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
            <jsp:include page="footer.jsp"></jsp:include>
                <!--=== End Footer v4 ===-->
            </div>
            <!--/wrapper-->

            <!-- JS Global Compulsory -->
            <script src="${url}/plugins/jquery/jquery.min.js"></script>
        <script src="${url}/plugins/jquery/jquery-migrate.min.js"></script>
        <script src="${url}/plugins/bootstrap/js/bootstrap.min.js"></script>
        <!-- JS Implementing Plugins -->
        <script src="${url}/plugins/back-to-top.js"></script>
        <script src="${url}/plugins/smoothScroll.js"></script>
        <script
        src="${url}/plugins/scrollbar/js/jquery.mCustomScrollbar.concat.min.js"></script>
        <script
        src="${url}/plugins/sky-forms-pro/skyforms/js/jquery.form.min.js"></script>
        <script
        src="${url}/plugins/sky-forms-pro/skyforms/js/jquery.validate.min.js"></script>
        <!-- JS Customization -->
        <script src="${url}/js/custom.js"></script>
        <!-- JS Page Level -->
        <script src="${url}/js/shop.app.js"></script>
        <script src="${url}/js/forms/page_login.js"></script>
        <script src="${url}/js/forms/page_contact_form.js"></script>
        <script>
            jQuery(document).ready(function () {
                App.init();
                Login.initLogin();
                App.initScrollBar();
                PageContactForm.initPageContactForm();
            });
        </script>

    </body>

</html>