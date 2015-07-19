<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ page import="java.util.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
        <link rel="stylesheet" type="text/css" href="../../css/theme-style.css">
        <link rel="stylesheet" href="../../css/ie.style.css">
        <!--[if lt IE 9]>
        <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
        <![endif]-->
        <!--[if IE 7]>
          <link rel="stylesheet" href="../../css/font-awesome-ie7.css">
        <![endif]-->
        <script src="../../js/vendor/modernizr.js"></script>
        <!--[if IE 8]><script src="../../js/vendor/less-1.3.3.js"></script><![endif]-->
        <!--[if gt IE 8]><!--><script src="../../js/vendor/less.js"></script><!--<![endif]-->

    </head>
    <body>
        <!-- Header-->
        <jsp:include page="/jsp/header-footer/header.jsp">
        	<jsp:param value="../../" name="locationDepth"/>
        </jsp:include>
        <!-- End header -->
        
        <script>
        	var OFFER_ID = '<s:property value="%{detail.productId}"/>';
        	var OFFER_NAME = '<s:property value="%{detail.name}"/>';
        	var OFFER_IMAGE = '<s:property value="%{detail.image1}"/>';
        	var ADD_TO_CART_JSON = '';
        	var price;
        </script>

        <section>
            <div class="second-page-container">
                <div class="container">
                    <div class="row">

                        <div class="col-md-9">
                            <div class="block-breadcrumb">
                                <ul class="breadcrumb">
                                    <li><a href="#">Home</a></li>
                                    <li><a href="#">Detail</a></li>
                                    <li class="active"><s:property value="%{detail.name}"/></li>
                                </ul>
                            </div>

                            <div class="header-for-light">
                                <h1 class="wow fadeInRight animated" data-wow-duration="1s"><s:property value="%{detail.name}"/> <span></span> </h1>

                            </div>

                            <div class="block-product-detail">
                                <div class="row">
                                    <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                                        <div class="product-image">
                                            <img id="product-zoom"  src='../../img/preview/product/small/product2.jpg' data-zoom-image="../../img/preview/product/large/product2.jpg" alt="">
                                            <div id="gal1">

                                                <a href="../../<s:property value="%{detail.image1}"/>" data-lightbox="product" data-title="Product name" data-image="../../img/preview/product/small/product1.jpg" data-zoom-image="../../<s:property value="%{detail.image1}"/>">
                                                    <img id="img_01" src="../../img/preview/product/thumb/product1.jpg" alt="">
                                                </a>

                                                <a href="../../<s:property value="%{detail.image2}"/>" data-lightbox="product" data-title="Product name" data-image="../../img/preview/product/small/product2.jpg" data-zoom-image="../../<s:property value="%{detail.image2}"/>">
                                                    <img id="img_01" src="../../img/preview/product/thumb/product2.jpg"  alt="">
                                                </a>

                                                <a href="../../img/preview/product/large/product3.jpg" data-lightbox="product" data-title="Product name"  data-image="../../img/preview/product/small/product3.jpg" data-zoom-image="../../img/preview/product/large/product3.jpg">
                                                    <img id="img_01" src="../../img/preview/product/thumb/product3.jpg" />
                                                </a>
                                            </div>
                                        </div>

                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">


                                        <div class="product-detail-section">
                                            <h3><s:property value="%{detail.name}"/></h3>
                                            <div class="product-rating">
                                                <div class="stars">
                                                    <span class="star"></span><span class="star active"></span><span class="star active"></span><span class="star active"></span><span class="star active"></span>
                                                </div>
                                                <a href="" class="review">150 Reviews</a> 
                                            </div>

                                            <div class="product-information">
                                                <div class="clearfix"> 
                                                    <label class="pull-left">Brand:</label> <a href="#"><s:property value="%{detail.company}"/></a><br>
                                                </div>
                                                <div class="clearfix"> 
                                                    <label class="pull-left">Category:</label> <s:property value="%{detail.category}"/>
                                                </div>
                                                <div class="clearfix"> 
                                                    <label class="pull-left">Collection:</label> <s:property value="%{detail.subCategory}"/>
                                                </div>
                                                <div class="clearfix"> 
                                                    <label class="pull-left">Product Code:</label> <s:property value="%{detail.productId}"/>
                                                </div>
                                                <div class="clearfix">
                                                    <label class="pull-left">Quantity:</label>
                                                    <select name="size" class="form-control">
                                                        <option value="" selected="selected">...</option>
                                                        <option value="1">1 k.g.</option>
                                                        <option value="2">2 k.g.</option>
                                                        <option value="3">3 k.g.</option>
                                                    </select>
                                                </div>
                                                <div class="clearfix">
                                                    <label class="pull-left">Availability:</label>
                                                    <p id="product-inventory"></p><s:property value="%{detail.inventoryUnit}"/>
                                                </div>
                                                <div class="clearfix">
                                                    <label class="pull-left">Description:</label>
                                                    <p class="description"><s:property value="%{detail.description}"/></p>
                                                </div>
                                                <div class="clearfix">
                                                    <label class="pull-left">Price:</label>
                                                    <p class="product-price" id="product-cost"></p>
                                                </div>
                                                <div class="clearfix">
                                                    <label class="pull-left">Quantity:</label>
                                                    <input type="number" class="form-control" id="quantityIntake" value="1">
                                                </div>
                                                <div class="clearfix">
                                                    <label class="pull-left">Total:</label>
                                                    <p class="product-price" id="product-total-cost"></p>
                                                </div>
                                                <div class="shopping-cart-buttons">

                                                    <a href="#" class="shoping" id="addToCartButton" title="Add this Item to your Cart">
                                                    	<i class="fa fa-shopping-cart"></i>  Add to cart
                                                    </a>
                                                    <a href="#" title="Wishlist"><i class="fa fa-heart-o"></i></a>
                                                    <a href="#" title="Compare"><i class="fa fa-random"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="box-border block-form">
                                <!-- Nav tabs -->
                                <ul class="nav nav-pills  nav-justified">
                                    <li class="active"><a href="#description" data-toggle="tab">Description</a></li>
                                    <li><a href="#additional" data-toggle="tab" class="disabled">Additional</a></li>
                                    <li><a href="#review" data-toggle="tab">Review</a></li>
                                </ul>

                                <!-- Tab panes -->
                                <div class="tab-content">
                                    <div class="tab-pane active" id="description">
                                        <br>
                                        <h3>Product Details</h3>
                                        <hr>
                                        <s:property value="%{detail.detailDescription}"/>
                                    </div>
                                    <div class="tab-pane" id="additional">
                                        <br>
                                        <div class="row">
                                            <div class="col-md-4">
                                                <h3>Sizes</h3>
                                                <hr>
                                                <p>
                                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit ollit anim id est laborum.
                                                </p>

                                            </div>
                                            <div class="col-md-4 block-color">
                                                <h3>Colors</h3>
                                                <hr>
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
                                                    <li><a href="" rel="ff9bb5"></a></li>
                                                    <li><a href="" rel="8c56a9"></a></li>
                                                </ul>

                                            </div>
                                            <div class="col-md-4">
                                                <h3>Other</h3>
                                                <hr>
                                                <p>
                                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit ollit anim id est laborum.
                                                </p>
                                            </div>
                                        </div>

                                    </div>
                                    <div class="tab-pane" id="review">
                                        <br>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <h3>Clients review</h3>
                                                <hr>
                                                <div class="review-header">
                                                    <h5>John Smith</h5>
                                                    <div class="product-rating">
                                                        <div class="stars">
                                                            <span class="star active"></span><span class="star active"></span><span class="star active"></span><span class="star active"></span><span class="star active"></span>
                                                        </div>
                                                    </div>
                                                    <small class="text-muted">26/06/2014</small>
                                                </div>
                                                <div class="review-body">
                                                    <p>Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>

                                                </div>
                                                <hr>
                                                <div class="review-header">
                                                    <h5>Tom Carry</h5>
                                                    <div class="product-rating">
                                                        <div class="stars">
                                                            <span class="star"></span><span class="star active"></span><span class="star active"></span><span class="star active"></span><span class="star active"></span>
                                                        </div>
                                                    </div>
                                                    <small class="text-muted">05/07/2014</small>
                                                </div>
                                                <div class="review-body">
                                                    <p>Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>

                                                </div>
                                                <hr>
                                            </div>
                                        </div>
                                        <form role="form" method="post" action="#">
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="inputFirstName" class="control-label">First Name:<span class="text-error">*</span></label>
                                                        <div>
                                                            <input type="text" class="form-control" id="inputFirstName">
                                                        </div>
                                                    </div>


                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="inputCompany" class="control-label">Company:</label>
                                                        <div>
                                                            <input type="text" class="form-control" id="inputCompany">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <textarea class="form-control">    </textarea>
                                                    </div>
                                                </div>
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <label  class="control-label">Your Rate:</label>
                                                        <div class="product-rating">
                                                            <div class="stars">
                                                                <span class="star"></span><span class="star"></span><span class="star"></span><span class="star"></span><span class="star"></span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <input type="submit"  class="btn-default-1" value="Add Review">
                                        </form>

                                    </div>

                                </div>



                            </div>



                        </div>
                        <div class="col-md-3">
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
                                    <div class="product-sale">Sale <br> 7%</div>
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

                        </div>

                    </div>
                </div>  
            </div>

        </section>

		<!-- Footer Starts -->
        <jsp:include page="/jsp/header-footer/footer.jsp">
        	<jsp:param value="../../" name="locationDepth"/>
        </jsp:include>
        <!-- End Section footer -->
        <script src="../../js/vendor/jquery.js"></script>
        <script src="../../js/vendor/jquery.easing.1.3.js"></script>
        <script src="../../js/vendor/bootstrap.js"></script>

        <script src="../../js/vendor/jquery.flexisel.js"></script>
        <script src="../../js/vendor/wow.min.js"></script>
        <script src="../../js/vendor/jquery.transit.js"></script>
        <script src="../../js/vendor/jquery.jcountdown.js"></script>
        <script src="../../js/vendor/jquery.jPages.js"></script>
        <script src="../../js/vendor/owl.carousel.js"></script>

        <script src="../../js/vendor/responsiveslides.min.js"></script>
        <script src="../../js/vendor/jquery.elevateZoom-3.0.8.min.js"></script>

        <!-- jQuery REVOLUTION Slider  -->
        <script type="text/javascript" src="../../js/vendor/jquery.themepunch.plugins.min.js"></script>
        <script type="text/javascript" src="../../js/vendor/jquery.themepunch.revolution.min.js"></script>
        <script type="text/javascript" src="../../js/vendor/jquery.scrollTo-1.4.2-min.js"></script>

        <!-- Lightbox2 Author by Lokesh Dhakar  
        [lokeshdhakar.com](http://www.lokeshdhakar.com)  
        [twitter.com/lokesh](http://twitter.com/lokesh)  
            * Free for use in both personal and commercial projects.
            * Attribution requires leaving author name, author homepage link, and the license info intact-->
        <script type="text/javascript" src="../../js/vendor/lightbox.js"></script>
        <!-- Custome Slider  -->
        <script src="../../js/main.js"></script>
        
        <!-- Offer Detail Cost & Inventory Display -->
        <script src="../../js/offer-detail.js"></script>
        <script src="../../js/addToCart.js"></script>

        <!--Here will be Google Analytics code from BoilerPlate-->
    </body>
</html>