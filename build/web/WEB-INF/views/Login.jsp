
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <!-- Page title -->
    <title>HOMER | WebApp admin </title>

    <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
    <!--<link rel="shortcut icon" type="image/ico" href="favicon.ico" />-->
    <!-- Vendor styles -->
    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/fontawesome/css/font-awesome.css"  type="text/css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/metisMenu/dist/metisMenu.css" type="text/css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/animate.css/animate.css" type="text/css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap/dist/css/bootstrap.css" type="text/css"/>

    <!-- App styles -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/fonts/pe-icon-7-stroke/css/pe-icon-7-stroke.css" type="text/css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/fonts/pe-icon-7-stroke/css/helper.css" type="text/css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style1.css" type="text/css"/> 

</head>
<body class="blank">
    
<%@ page isErrorPage="true"%>

<%@ page errorPage="error.jsp"%>

<!-- Simple splash screen-->
<div class="splash"> <div class="color-line"></div><div class="splash-title"><h1>Homer - Responsive Admin Theme</h1><p>Special Admin Theme for small and medium webapp with very clean and aesthetic style and feel. </p><div class="spinner"> <div class="rect1"></div> <div class="rect2"></div> <div class="rect3"></div> <div class="rect4"></div> <div class="rect5"></div> </div> </div> </div>
<!--[if lt IE 7]>
<p class="alert alert-danger">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
<![endif]-->

<div class="color-line"></div>


<div class="login-container">
    <div class="row">
        <div class="col-md-12">
            <div class="text-center m-b-md">
                <h3>PLEASE LOGIN TO APP</h3>
                <small>This is the best app ever!</small>
            </div>
            <div class="hpanel">
                <div class="panel-body">
                        <form action="${pageContext.request.contextPath}/LoginServlet.admin" method="POST" id="loginForm">
                            <div class="form-group">
                                <label class="control-label" for="username">Username</label>
                                <input type="text" placeholder="example@gmail.com" title="Please enter you username" required="" value="" name="name" id="username" class="form-control">
                                <span class="help-block small">Your unique username to app</span>
                            </div>
                            <div class="form-group">
                                <label class="control-label" for="password">Password</label>
                                <input type="password" title="Please enter your password" placeholder="******" required="" value="" name="password" id="password" class="form-control">
                                <span class="help-block small">Yur strong password</span>
                            </div>
                            <div class="checkbox">
                                <input type="checkbox" class="i-checks" checked>
                                     Remember login
                                <p class="help-block small">(if this is a private computer)</p>
                            </div>
                            <button class="btn btn-success btn-block">Login</button>
                            <!--<a class="btn btn-default btn-block" href="#" hidden="">Register</a>--?
                        </form>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12 text-center">
            <strong>HOMER</strong> - AngularJS Responsive WebApp <br/> 2015 Copyright Company Name
        </div>
    </div>
</div>


<!-- Vendor scripts -->
<script src="${pageContext.request.contextPath}/css/jquery/dist/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/css/jquery-ui/jquery-ui.min.js"></script>
<script src="${pageContext.request.contextPath}/css/slimScroll/jquery.slimscroll.min.js"></script>
<script src="${pageContext.request.contextPath}/css/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/css/metisMenu/dist/metisMenu.min.js"></script>
<script src="${pageContext.request.contextPath}/css/iCheck/icheck.min.js"></script>
<script src="${pageContext.request.contextPath}/css/sparkline/index.js"></script>

<!-- App scripts -->
<script src="${pageContext.request.contextPath}/scripts/homer.js"></script>

</body>
</html>
