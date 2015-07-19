<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> 
<html lang="en" class="no-js">
    <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <!--[if IE]>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">``
        <![endif]-->
        <title>Effect, premium HTML5&AMP;CSS3 template</title>
        <meta name="description" content="Effect, premium HTML5&amp;CSS3 template">
        <meta name="author" content="MosaicDesign">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
        <link rel="stylesheet" type="text/css" href="css/theme-style.css">
        <link rel="stylesheet" href="css/ie.style.css">
        <!--[if lt IE 9]>
        <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
        <![endif]-->
        <!--[if IE 7]>
          <link rel="stylesheet" href="css/font-awesome-ie7.css">
        <![endif]-->
        <script src="js/vendor/modernizr.js"></script>
        <!--[if IE 8]><script src="js/vendor/less-1.3.3.js"></script><![endif]-->
        <!--[if gt IE 8]><!--><script src="js/vendor/less.js"></script><!--<![endif]-->

    </head>
    <body class="body-bg">
        <!-- Header-->
        <jsp:include page="/jsp/header-footer/header.jsp">
	       	<jsp:param value="" name="locationDepth"/>
	    </jsp:include>
        <!-- End header -->
        <section>
            <div class="second-page-container">
                <div class="block">
                    <div class="container">
                        <div class="header-for-light">
                            <h1 class="wow fadeInRight animated" data-wow-duration="1s"><span>Login</span> or <span>Register</span></h1>
                        </div>
                        <div class="row">
                            <article class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                                <div class="block-form box-border wow fadeInLeft animated" data-wow-duration="1s">
                                    <h3><i class="fa fa-unlock"></i>Login</h3>
                                    <p>Please login using your existing account</p>
                                    <form action="#" method="post">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <input type="text" class="form-control" placeholder="Username">
                                            </div>
                                            <div class="col-md-6">
                                                <input type="text" class="form-control" placeholder="Password">
                                            </div>
                                            <div class="col-md-12">
                                                <hr>
                                                <input type="submit"  value="Login"  class="btn-default-1">
                                                <input type="reset" value="Reset password" class="btn-default-1">
                                            </div>
                                        </div>                                    
                                    </form>
                                </div>
                            </article>
                            <article class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                                <div class="block-form box-border wow fadeInRight animated" data-wow-duration="1s">
                                    <h3><i class="fa fa-pencil"></i>Create new account</h3>
                                    <p>Registration allows you to avoid filling in billing and shipping forms every time you checkout on this website.</p>
                                    <hr>
                                    <a href="#" class="btn-default-1">Register</a>
                                </div>
                                <div class="block-form box-border wow fadeInRight animated" data-wow-duration="1s">
                                    <h3><i class="fa fa-bookmark-o"></i>Checkout as Guest</h3>
                                    <p>Checkout as a guest instead!</p>
                                    <hr>
                                    <a href="#" class="btn-default-1">As Guest</a>
                                </div>

                            </article>
                        </div>
                    </div>
                </div>
            </div> 
        </section>

		<!-- footer starts -->
	        <jsp:include page="/jsp/header-footer/footer.jsp">
	        	<jsp:param value="" name="locationDepth"/>
	        </jsp:include>
	    <!-- End Section footer -->
    
        <script src="js/vendor/jquery.js"></script>
        <script src="js/vendor/jquery.easing.1.3.js"></script>
        <script src="js/vendor/bootstrap.js"></script>

        <script src="js/vendor/jquery.flexisel.js"></script>
        <script src="js/vendor/wow.min.js"></script>
        <script src="js/vendor/jquery.transit.js"></script>
        <script src="js/vendor/jquery.jcountdown.js"></script>
        <script src="js/vendor/jquery.jPages.js"></script>
        <script src="js/vendor/owl.carousel.js"></script>

        <script src="js/vendor/responsiveslides.min.js"></script>
        <script src="js/vendor/jquery.elevateZoom-3.0.8.min.js"></script>

        <!-- jQuery REVOLUTION Slider  -->
        <script type="text/javascript" src="js/vendor/jquery.themepunch.plugins.min.js"></script>
        <script type="text/javascript" src="js/vendor/jquery.themepunch.revolution.min.js"></script>
        <script type="text/javascript" src="js/vendor/jquery.scrollTo-1.4.2-min.js"></script>

        <!-- Custome Slider  -->
        <script src="js/main.js"></script>

        <!--Here will be Google Analytics code from BoilerPlate-->
    </body>
</html>