<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
    <body>
        <!-- Header-->
        <jsp:include page="/jsp/header-footer/header.jsp">
        	<jsp:param value="" name="locationDepth"/>
        </jsp:include>
        <!-- End header -->


        <section>
            <div class="second-page-container">
                <div class="container">
                    <div class="row">

                        <div class="col-md-9">
                            <div class="block-breadcrumb">
                                <ul class="breadcrumb">
                                    <li><a href="/jsp/home.jsp">Home</a></li>
                                    <li class="active">Fruits & Vegetables</li>
                                </ul>
                            </div>

                            <div class="header-for-light">
                                <h1 class="wow fadeInRight animated" data-wow-duration="1s">Fruits <span>Vegetables</span></h1>

                            </div>
                            <div class="block-products-modes color-scheme-2">
                                <div class="row">
                                    <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
                                        <div class="product-view-mode">
                                            <a href="#" class="active"><i class="fa fa-th-large"></i></a>
                                            <a href="products-list.html"><i class="fa fa-th-list"></i></a>
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-sm-8 col-md-8 col-lg-8">
                                        <div class="row">
                                            <div class="col-md-3 col-md-offset-1">
                                                <label class="pull-right">Sort by</label>
                                            </div>
                                            <div class="col-md-5">
                                                <select name="sort-type" class="form-control">
                                                    <option value="position:asc">--</option>
                                                    <option value="price:asc"  selected="selected">Price: Lowest first</option>
                                                    <option value="price:desc">Price: Highest first</option>
                                                    <option value="name:asc">Product Name: A to Z</option>
                                                    <option value="name:desc">Product Name: Z to A</option>
                                                    <option value="quantity:desc">In stock</option>
                                                </select>
                                            </div>
                                            <div class="col-md-3">
                                                <select name="products-per-page" class="form-control">
                                                    <option value="10" selected="selected">10</option>
                                                    <option value="20">20</option>
                                                    <option value="30">30</option>
                                                    <option value="100">100</option>
                                                    <option value="all">All</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row" id="offer-grid">
                                <!-- Offer Grid - display by JS - Bhaskar -->
                            </div>

                        </div>
                        <aside class="col-md-3">

                            <div class="main-category-block ">
                                <div class="main-category-title">
                                    <i class="fa fa-list"></i> Category

                                </div>
                            </div>
                            <div class="widget-block">
                                <ul class="list-unstyled ul-side-category">
                                    <li><a href=""><i class="fa fa-angle-right"></i> Man / 2</a>
                                        <ul class="sub-category">
                                            <li><a href="">Dress / 2</a>
                                                <ul class="sub-category">
                                                    <li><a href="#">Dress 1</a></li>
                                                    <li><a href="#">Dress 2</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="">Shirt / 2</a>
                                                <ul class="sub-category">
                                                    <li><a href="#">Shirt 1</a></li>
                                                    <li><a href="#">Shirt 2</a></li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </li>
                                    <li><a href=""><i class="fa fa-angle-right"></i> Woman / 2</a>
                                        <ul class="sub-category">
                                            <li><a href="">Dress / 2 </a>
                                                <ul class="sub-category">
                                                    <li><a href="#">Dress 1</a></li>
                                                    <li><a href="#">Dress 2</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="">Shirt / 2</a>
                                                <ul class="sub-category">
                                                    <li><a href="#">Shirt 1</a></li>
                                                    <li><a href="#">Shirt 2</a></li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="#"><i class="fa fa-angle-right"></i> Tablet / 0</a>
                                    </li>
                                    <li>
                                        <a href="#"><i class="fa fa-angle-right"></i> Laptop / 0</a>
                                    </li>

                                </ul>

                            </div>
                            <div class="product light last-sale">
                                <figure class="figure-hover-overlay">                                                                        
                                    <a href="#"  class="figure-href"></a>
                                    <div class="product-sale">Save <br> 7%</div>
                                    <div class="product-sale-time"><p class="time"></p></div>
                                    <a href="#" class="product-compare"><i class="fa fa-random"></i></a>
                                    <a href="#" class="product-wishlist"><i class="fa fa-heart-o"></i></a>
                                    <img src="http://placehold.it/400x500" class="img-overlay img-responsive" alt="">
                                    <img src="http://placehold.it/400x500" class="img-responsive" alt="">
                                </figure>
                                <div class="product-caption">
                                    <div class="block-name">
                                        <a href="#" class="product-name">Product name</a>
                                        <p class="product-price"><span>$330</span> $320.99</p>

                                    </div>
                                    <div class="product-cart">
                                        <a href="#"><i class="fa fa-shopping-cart"></i> </a>
                                    </div>
                                </div>

                            </div>
                            <div class="widget-title">
                                <i class="fa fa-money"></i> Price range

                            </div>
                            <div class="widget-block">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="input-group">
                                            <span class="input-group-addon">$</span>
                                            <input type="text" id="price-from" class="form-control" value="0">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="input-group">
                                            <span class="input-group-addon">$</span>
                                            <input type="text" id="price-to" class="form-control" value="500">
                                        </div>
                                    </div>
                                </div> 
                            </div>
                            <div class="widget-title">
                                <i class="fa fa-dashboard"></i> Colors

                            </div>
                            <div class="widget-block">
                                <ul class="colors clearfix list-unstyled">
                                    <li><a href="" rel="003d71"></a></li>
                                    <li><a href="" rel="c42c39"></a></li>
                                    <li><a href="" rel="f4bc08"></a></li>
                                    <li><a href="" rel="02882c"></a></li>
                                    <li><a href="" rel="000000"></a></li>
                                    <li><a href="" rel="caccce"></a></li>
                                    <li><a href="" rel="ffffff"></a></li>
                                    <li><a href="" rel="f9e7b6"></a></li>
                                    <li><a href="" rel="ef8a07"></a></li>
                                    <li><a href="" rel="5a433f"></a></li>
                                </ul>
                            </div>
                            <div class="widget-title">
                                <i class="fa fa-thumbs-up"></i> Bestseller
                            </div>
                            <div class="widget-block">
                                <div class="row">
                                    <div class="col-md-4 col-sm-2 col-xs-3">
                                        <img class="img-responsive" src="http://placehold.it/400x500.jpg" alt="" title="">   
                                    </div>
                                    <div class="col-md-8  col-sm-10 col-xs-9">
                                        <div class="block-name">
                                            <a href="#" class="product-name">Product name</a>
                                            <p class="product-price"><span>$330</span> $320.99</p>

                                        </div>
                                        <div class="product-rating">
                                            <div class="stars">
                                                <span class="star active"></span><span class="star active"></span><span class="star active"></span><span class="star active"></span><span class="star active"></span>
                                            </div>
                                            <a href="" class="review hidden-md">8 Reviews</a>
                                        </div>
                                        <p class="description">Lorem ipsum dolor sit amet, con sec tetur adipisicing elit.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="widget-block">
                                <div class="row">
                                    <div class="col-md-4 col-sm-2 col-xs-3">
                                        <img class="img-responsive" src="http://placehold.it/400x500" alt="" title="">   
                                    </div>
                                    <div class="col-md-8 col-sm-10 col-xs-9">
                                        <div class="block-name">
                                            <a href="#" class="product-name">Product name</a>
                                            <p class="product-price"><span>$330</span> $320.99</p>

                                        </div>
                                        <div class="product-rating">
                                            <div class="stars">
                                                <span class="star active"></span><span class="star active"></span><span class="star active"></span><span class="star active"></span><span class="star active"></span>
                                            </div>
                                            <a href="" class="review hidden-md">8 Reviews</a>
                                        </div>
                                        <p class="description">Lorem ipsum dolor sit amet, con sec tetur adipisicing elit.</p>
                                    </div>
                                </div>
                            </div>


                        </aside>

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
        
        <!-- Offer Grid Display -->
        <script src="js/offer-grid.js"></script>

        <!--Here will be Google Analytics code from BoilerPlate-->
    </body>
</html>