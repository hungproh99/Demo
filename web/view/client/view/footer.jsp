<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>

<div class="footer-v4">
    <div class="footer">
        <div class="container">
            <div class="row">
                <!-- About -->
                <div class="col-md-4 md-margin-bottom-40">
                    <a href="index.html"><img class="footer-logo"
                                              src="" alt=""></a>
                    <br>
                    <ul class="list-unstyled address-list margin-bottom-20">
                        <li><i class="fa fa-angle-right"></i>Ha Noi - Viet Nam</li>
                        <li><i class="fa fa-angle-right"></i>Phone: </li>
                        <li><i class="fa fa-angle-right"></i>Email:</li>
                    </ul>

                    <ul class="list-inline shop-social">
                        <li><a href="#"><i class="fb rounded-md fa fa-facebook"></i></a></li>
                        <li><a href="#"><i class="tw rounded-md fa fa-twitter"></i></a></li>
                        <li><a href="#"><i class="gp rounded-md fa fa-google-plus"></i></a></li>
                        <li><a href="#"><i class="yt rounded-md fa fa-youtube"></i></a></li>
                    </ul>
                </div>
                <!-- End About -->
            </div>
            <!--/end row-->
        </div>
        <!--/end continer-->
    </div>
    <!--/footer-->

    <div class="copyright">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <p>
                        2020 &copy; Development by me | <a href="#">Privacy Policy</a> | <a href="#">Terms of Service</a>
                    </p>
                </div>
                <div class="col-md-6">
                    <ul class="list-inline sponsors-icons pull-right">
                        <li><i class="fa fa-cc-paypal"></i></li>
                        <li><i class="fa fa-cc-visa"></i></li>
                        <li><i class="fa fa-cc-mastercard"></i></li>
                        <li><i class="fa fa-cc-discover"></i></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!--/copyright-->
    <!-- Messenger Plugin chat Code -->
    <div id="fb-root"></div>
    <script>
        window.fbAsyncInit = function () {
            FB.init({
                xfbml: true,
                version: 'v10.0'
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
        }(document, 'script', 'facebook-jssdk'));
    </script>

    <!-- Your Plugin chat code -->
    <div class="fb-customerchat"
         attribution="page_inbox"
         page_id="2149629271967475">
    </div>
</div>