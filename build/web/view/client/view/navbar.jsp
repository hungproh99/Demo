<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<c:url value="/view/client/static" var="url"></c:url>
    <div class="navbar navbar-default mega-menu" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-responsive-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="${pageContext.request.contextPath }">
                <img id="logo-header" src="${url}/img/logo-2.png" alt="Logo">
            </a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse navbar-responsive-collapse">
            <!-- Shopping Cart -->
            <jsp:include page="/view/client/view/cart.jsp"></jsp:include>
                <!-- End Shopping Cart -->

                <!-- Nav Menu -->
                <ul class="nav navbar-nav">
                    <!-- Pages -->
                    <li class="dropdown">
                        <a href="javascript:void(0);" class="dropdown-toggle" data-hover="dropdown" data-toggle="dropdown">
                            Pages
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="${pageContext.request.contextPath }">Home Page</a></li>
                        <li><a href="${pageContext.request.contextPath }/login">Login</a></li>
                        <li><a href="${pageContext.request.contextPath }/register">Register</a></li>
                    </ul>
                </li>
                <!-- End Pages -->

                <!-- Promotion -->
                <li class="dropdown">
                    <a href="javascript:void(0);" class="dropdown-toggle" data-hover="dropdown" data-toggle="dropdown">
                        Promotion
                    </a>
                    <ul class="dropdown-menu">
                                <li><a href="#">Clothes</a></li>
                    </ul>
                </li>
                <!-- End Promotion -->

                <!-- Clothes -->
                <li class="dropdown">
                    <a href="javascript:void(0);" class="dropdown-toggle" data-hover="dropdown" data-toggle="dropdown" data-delay="1000">
                        Clothes
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="http://localhost:8080/TestFinal/product/category?cate_id=1">Men</a></li>
                        <li><a href="http://localhost:8080/TestFinal/product/category?cate_id=2">Women</a></li>
                    </ul>
                </li>
                <!-- End Clothes -->

                <!-- About -->
                <li><a href="#">About</a></li>
                <!-- About -->
            </ul>
            <!-- End Nav Menu -->                    
        </div>
    </div>    
</div>            