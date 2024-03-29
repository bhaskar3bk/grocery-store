<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
    <c:set var="name" value="abc" scope="request" />
        <!-- Header-->
        <jsp:include page="/jsp/header-footer/header.jsp">
        	<jsp:param value="" name="locationDepth"/>
        </jsp:include>
        <!-- End header -->
        <section>
            <div class="revolution-container">
                <div class="revolution">
                    <ul class="list-unstyled">	<!-- SLIDE  -->
                        <li data-transition="fade" data-slotamount="7" data-masterspeed="1500" >
                            <!-- MAIN IMAGE -->
                            <img src="http://placehold.it/1920x1200"  alt="slidebg1"  data-bgfit="cover" data-bgposition="left top" data-bgrepeat="no-repeat">
                            <!-- LAYERS -->
                            <div class="tp-caption skewfromrightshort customout"
                                 data-x="20"
                                 data-y="160"
                                 data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                                 data-speed="500"
                                 data-start="300"
                                 data-easing="Power4.easeOut"
                                 data-endspeed="500"
                                 data-endeasing="Power4.easeIn"
                                 data-captionhidden="on"
                                 style="z-index: 4">
                                <img src="img/preview/slider/1.png" alt="">
                            </div>
                            <div class="tp-caption skewfromrightshort customout"
                                 data-x="20"
                                 data-y="224"
                                 data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                                 data-speed="500"
                                 data-start="500"
                                 data-easing="Power4.easeOut"
                                 data-endspeed="500"
                                 data-endeasing="Power4.easeIn"
                                 data-captionhidden="on"
                                 style="z-index: 4">
                                <img src="img/preview/slider/1-2.png" alt="">
                            </div>
                            <div class="tp-caption skewfromrightshort customout"
                                 data-x="20"
                                 data-y="335"
                                 data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                                 data-speed="500"
                                 data-start="700"
                                 data-easing="Power4.easeOut"
                                 data-endspeed="500"
                                 data-endeasing="Power4.easeIn"
                                 data-captionhidden="on"
                                 style="z-index: 4">
                                <img src="img/preview/slider/1-1.png" alt="">
                            </div>
                            <div class="tp-caption customin customout hidden-xs"
                                 data-x="20"
                                 data-y="430"
                                 data-customin="x:0;y:100;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:1;scaleY:3;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:0% 0%;"
                                 data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                                 data-speed="500"
                                 data-start="1000"
                                 data-easing="Power4.easeOut"
                                 data-endspeed="500"
                                 data-endeasing="Power4.easeIn"
                                 data-captionhidden="on"
                                 style="z-index: 2">
                                <a href="#" class="btn-home">Shop All</a>
                            </div>
                            <div class="tp-caption customin customout hidden-xs"
                                 data-x="145"
                                 data-y="430"
                                 data-customin="x:0;y:100;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:1;scaleY:3;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:0% 0%;"
                                 data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                                 data-speed="500"
                                 data-start="1200"
                                 data-easing="Power4.easeOut"
                                 data-endspeed="500"
                                 data-endeasing="Power4.easeIn"
                                 data-captionhidden="on"
                                 style="z-index: 2">
                                <a href="#" class="btn-home">Read more</a>
                            </div>
                        </li>
                        <li data-transition="fade" data-slotamount="7" data-masterspeed="1500" >
                            <!-- MAIN IMAGE -->
                            <img src="http://placehold.it/1920x1200"  alt="slidebg1"  data-bgfit="cover" data-bgposition="left top" data-bgrepeat="no-repeat">
                            <!-- LAYERS -->
                            <div class="tp-caption skewfromrightshort customout"
                                 data-x="20"
                                 data-y="204"
                                 data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                                 data-speed="500"
                                 data-start="500"
                                 data-easing="Power4.easeOut"
                                 data-endspeed="500"
                                 data-endeasing="Power4.easeIn"
                                 data-captionhidden="on"
                                 style="z-index: 2">
                                <img src="img/preview/slider/1-2.png" alt="">
                            </div>
                            <div class="tp-caption skewfromrightshort customout"
                                 data-x="20"
                                 data-y="315"
                                 data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                                 data-speed="500"
                                 data-start="700"
                                 data-easing="Power4.easeOut"
                                 data-endspeed="500"
                                 data-endeasing="Power4.easeIn"
                                 data-captionhidden="on"
                                 style="z-index: 2">
                                <img src="img/preview/slider/1-1.png" alt="">
                            </div>
                            <div class="tp-caption customin customout hidden-xs"
                                 data-x="20"
                                 data-y="410"
                                 data-customin="x:0;y:100;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:1;scaleY:3;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:0% 0%;"
                                 data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                                 data-speed="500"
                                 data-start="1000"
                                 data-easing="Power4.easeOut"
                                 data-endspeed="500"
                                 data-endeasing="Power4.easeIn"
                                 data-captionhidden="on"
                                 style="z-index: 3">
                                <a href="#" class="btn-home">Shop All</a>
                            </div>
                            <div class="tp-caption customin customout hidden-xs"
                                 data-x="145"
                                 data-y="410"
                                 data-customin="x:0;y:100;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:1;scaleY:3;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:0% 0%;"
                                 data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                                 data-speed="500"
                                 data-start="1200"
                                 data-easing="Power4.easeOut"
                                 data-endspeed="500"
                                 data-endeasing="Power4.easeIn"
                                 data-captionhidden="on"
                                 style="z-index: 4">
                                <a href="#" class="btn-home">Read more</a>
                            </div>


                        </li>
                        <li data-transition="fade" data-slotamount="7" data-masterspeed="1500" >
                            <!-- MAIN IMAGE -->
                            <img src="http://placehold.it/1920x1200"  alt="slidebg1"  data-bgfit="cover" data-bgposition="left top" data-bgrepeat="no-repeat">
                            <!-- LAYERS -->
                            <div class="tp-caption skewfromrightshort customout"
                                 data-x="20"
                                 data-y="160"
                                 data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                                 data-speed="500"
                                 data-start="300"
                                 data-easing="Power4.easeOut"
                                 data-endspeed="500"
                                 data-endeasing="Power4.easeIn"
                                 data-captionhidden="on"
                                 style="z-index: 4">
                                <img src="img/preview/slider/1.png" alt="">
                            </div>
                            <div class="tp-caption skewfromrightshort customout"
                                 data-x="20"
                                 data-y="224"
                                 data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                                 data-speed="500"
                                 data-start="500"
                                 data-easing="Power4.easeOut"
                                 data-endspeed="500"
                                 data-endeasing="Power4.easeIn"
                                 data-captionhidden="on"
                                 style="z-index: 4">
                                <img src="img/preview/slider/1-2.png" alt="">
                            </div>
                            <div class="tp-caption skewfromrightshort customout"
                                 data-x="20"
                                 data-y="335"
                                 data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                                 data-speed="500"
                                 data-start="700"
                                 data-easing="Power4.easeOut"
                                 data-endspeed="500"
                                 data-endeasing="Power4.easeIn"
                                 data-captionhidden="on"
                                 style="z-index: 4">
                                <img src="img/preview/slider/1-1.png" alt="">
                            </div>
                            <div class="tp-caption customin customout hidden-xs"
                                 data-x="20"
                                 data-y="430"
                                 data-customin="x:0;y:100;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:1;scaleY:3;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:0% 0%;"
                                 data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                                 data-speed="500"
                                 data-start="1000"
                                 data-easing="Power4.easeOut"
                                 data-endspeed="500"
                                 data-endeasing="Power4.easeIn"
                                 data-captionhidden="on"
                                 style="z-index: 2">
                                <a href="#" class="btn-home">Shop All</a>
                            </div>
                            <div class="tp-caption customin customout hidden-xs"
                                 data-x="145"
                                 data-y="430"
                                 data-customin="x:0;y:100;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:1;scaleY:3;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:0% 0%;"
                                 data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                                 data-speed="500"
                                 data-start="1200"
                                 data-easing="Power4.easeOut"
                                 data-endspeed="500"
                                 data-endeasing="Power4.easeIn"
                                 data-captionhidden="on"
                                 style="z-index: 2">
                                <a href="#" class="btn-home">Read more</a>
                            </div>
                        </li>

                    </ul>
                    <div class="revolutiontimer"></div>
                </div>
            </div>
        </section>

        <section>
            <div>
                <div class="container">
                    <div class="row">
                        <div class="col-md-4 col-sm-4 col-xs-12">
                            <article class="banner">
                                <a href="#">
                                    <img src="http://placehold.it/900x677" class="img-responsive" alt="">
                                </a> 
                            </article>
                        </div>
                        <div class="col-md-4 col-sm-4 col-xs-12">
                            <article class="banner">
                                <a href="#">
                                    <img src="http://placehold.it/900x677" class="img-responsive" alt="">
                                </a> 
                            </article>
                        </div>
                        <div class="col-md-4 col-sm-4 col-xs-12">
                            <article class="banner">
                                <a href="#">
                                    <img src="http://placehold.it/900x677" class="img-responsive" alt="">
                                </a> 
                            </article>
                        </div>
                    </div>
                </div>  
            </div>

        </section>

        <section>
            <div class="block  color-scheme-3">
                <div class="container">
                    <div class="row">
                        <div class="col-md-3">
                            <div class="title-block wow fadeInLeft">

                                <div class="icon text-center"><i class="fa fa-child"></i></div>
                                <h1>Child shirt</h1>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor  </p>
                                <div class="text-center">
                                    <div class="toolbar-for-light" id="nav-child">
                                        <a href="javascript:;" data-role="prev" class="prev"><i class="fa fa-angle-left"></i></a>
                                        <a href="javascript:;" data-role="next" class="next"><i class="fa fa-angle-right"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-9">
                            <div id="owl-child"  class="owl-carousel">
                                <div class="text-center">
                                    <article class="product light wow fadeInUp">
                                        <figure class="figure-hover-overlay">                                                                        
                                            <a href="#"  class="figure-href"></a>
                                            <div class="product-new">new</div>
                                            <div class="product-sale">11% <br>off</div>
                                            <a href="#" class="product-compare"><i class="fa fa-random"></i></a>
                                            <a href="#" class="product-wishlist"><i class="fa fa-heart-o"></i></a>
                                            <img class="img-responsive" src="http://placehold.it/400x500" alt="" title="">
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

                                    </article>
                                </div>
                                <div class="text-center">
                                    <article class="product light wow fadeInUp">
                                        <figure class="figure-hover-overlay">                                                                        
                                            <a href="#"  class="figure-href"></a>
                                            <div class="product-new">new</div>
                                            <a href="#" class="product-compare"><i class="fa fa-random"></i></a>
                                            <a href="#" class="product-wishlist"><i class="fa fa-heart-o"></i></a>
                                            <img class="img-responsive" src="http://placehold.it/400x500" alt="" title="">

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

                                    </article>
                                </div>
                                <div class="text-center">
                                    <article class="product light wow fadeInUp">
                                        <figure class="figure-hover-overlay">                                                                        
                                            <a href="#"  class="figure-href"></a>
                                            <div class="product-new">new</div>
                                            <a href="#" class="product-compare"><i class="fa fa-random"></i></a>
                                            <a href="#" class="product-wishlist"><i class="fa fa-heart-o"></i></a>
                                            <img class="img-responsive" src="http://placehold.it/400x500" alt="" title="">

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

                                    </article>
                                </div>
                                <div class="text-center">
                                    <article class="product light wow fadeInUp">
                                        <figure class="figure-hover-overlay">                                                                        
                                            <a href="#"  class="figure-href"></a>
                                            <div class="product-new">new</div>
                                            <div class="product-sale">9% <br>off</div>
                                            <a href="#" class="product-compare"><i class="fa fa-random"></i></a>
                                            <a href="#" class="product-wishlist"><i class="fa fa-heart-o"></i></a>
                                            <img class="img-responsive" src="http://placehold.it/400x500" alt="" title="">
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

                                    </article>

                                </div>
                                <div class="text-center">
                                    <article class="product light wow fadeInUp">
                                        <figure class="figure-hover-overlay">                                                                        
                                            <a href="#"  class="figure-href"></a>
                                            <div class="product-new">new</div>
                                            <div class="product-sale">12% <br>off</div>
                                            <a href="#" class="product-compare"><i class="fa fa-random"></i></a>
                                            <a href="#" class="product-wishlist"><i class="fa fa-heart-o"></i></a>
                                            <img class="img-responsive" src="http://placehold.it/400x500" alt="" title="">
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

                                    </article>
                                </div>
                            </div>  
                        </div>
                    </div>
                </div>
            </div>
        </section>


        <section>
            <div class="block">
                <div class="container">
                    <div class="block-product-tab">
                        <div class="tab-bg"></div>
                        <div class="toolbar-for-light" id="nav-tabs">
                            <a href="javascript:;" data-role="prev" class="prev"><i class="fa fa-angle-left"></i></a>
                            <a href="javascript:;" data-role="next" class="next"><i class="fa fa-angle-right"></i></a>
                        </div>  
                        <ul class="nav nav-pills">
                            <li class="active"><a href="#new" data-toggle="tab">New Arrivals</a><div class="header-bottom-line"></div></li>
                            <li><a href="#featured" data-toggle="tab" class="disabled">Featured</a><div class="header-bottom-line"></div></li>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane active animated fadeIn" id="new">
                                <div id="owl-new"  class="owl-carousel">
                                    <div class="text-center">
                                        <article class="product light">
                                            <figure class="figure-hover-overlay">                                                                        
                                                <a href="#"  class="figure-href"></a>
                                                <div class="product-new">new</div>
                                                <div class="product-sale">11% <br> off</div>
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

                                        </article>
                                    </div>
                                    <div class="text-center">
                                        <article class="product light">
                                            <figure class="figure-hover-overlay">                                                                        
                                                <a href="#"  class="figure-href"></a>
                                                <div class="product-new">new</div>
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

                                        </article>
                                    </div>
                                    <div class="text-center">
                                        <article class="product light">
                                            <figure class="figure-hover-overlay">                                                                        
                                                <a href="#"  class="figure-href"></a>
                                                <div class="product-new">new</div>
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

                                        </article>
                                    </div>
                                    <div class="text-center">
                                        <article class="product light">
                                            <figure class="figure-hover-overlay">                                                                        
                                                <a href="#"  class="figure-href"></a>
                                                <div class="product-new">new</div>
                                                <div class="product-sale">17% <br> off</div>
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

                                        </article>

                                    </div>
                                    <div class="text-center">
                                        <article class="product light">
                                            <figure class="figure-hover-overlay">                                                                        
                                                <a href="#"  class="figure-href"></a>
                                                <div class="product-new">new</div>
                                                <div class="product-sale">7% <br> off</div>
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

                                        </article>
                                    </div>
                                </div>
                            </div>

                            <div class="tab-pane animated fadeIn" id="featured">
                                <div id="owl-featured"  class="owl-carousel">

                                    <div class="text-center">
                                        <article class="product light">
                                            <figure class="figure-hover-overlay">                                                                        
                                                <a href="#"  class="figure-href"></a>
                                                <div class="product-new">new</div>
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

                                        </article>
                                    </div>
                                    <div class="text-center">
                                        <article class="product light">
                                            <figure class="figure-hover-overlay">                                                                        
                                                <a href="#"  class="figure-href"></a>
                                                <div class="product-new">new</div>
                                                <div class="product-sale">17% <br> off</div>
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

                                        </article>

                                    </div>
                                    <div class="text-center">
                                        <article class="product light">
                                            <figure class="figure-hover-overlay">                                                                        
                                                <a href="#"  class="figure-href"></a>
                                                <div class="product-new">new</div>
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

                                        </article>
                                    </div>
                                    <div class="text-center">
                                        <article class="product light">
                                            <figure class="figure-hover-overlay">                                                                        
                                                <a href="#"  class="figure-href"></a>
                                                <div class="product-new">new</div>
                                                <div class="product-sale">11% <br> off</div>
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

                                        </article>
                                    </div>

                                    <div class="text-center">
                                        <article class="product light">
                                            <figure class="figure-hover-overlay">                                                                        
                                                <a href="#"  class="figure-href"></a>
                                                <div class="product-new">new</div>
                                                <div class="product-sale">7% <br> off</div>
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

                                        </article>
                                    </div>

                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </section>

        <section>
            <div>
                <div class="container">
                    <div class="header-with-icon">
                        <i class="fa fa-tags"></i> Summer sale
                        <div class="toolbar-for-light" id="nav-bestseller">
                            <a href="javascript:;" data-role="prev" class="prev"><i class="fa fa-angle-left"></i></a>
                            <a href="javascript:;" data-role="next" class="next"><i class="fa fa-angle-right"></i></a>
                        </div>
                    </div>
                    <div id="owl-bestseller"  class="owl-carousel">
                        <div class="text-center">
                            <article class="product light">
                                <figure class="figure-hover-overlay">                                                                        
                                    <a href="#"  class="figure-href"></a>
                                    <div class="product-new">new</div>
                                    <div class="product-sale">11% <br> off</div>
                                    <a href="#" class="product-compare"><i class="fa fa-random"></i></a>
                                    <a href="#" class="product-wishlist"><i class="fa fa-heart-o"></i></a>
                                    <img src="http://placehold.it/400x500" class="img-overlay img-responsive" alt="">
                                    <img src="http://placehold.it/400x500" class="img-responsive" alt="">
                                </figure>
                                <div class="product-caption">
                                    <div class="block-name">
                                        <a href="#" class="product-name">Lorem ipsum dolor sit amet con sec</a>
                                        <p class="product-price"><span>$330</span> $320.99</p>

                                    </div>
                                    <div class="product-cart">
                                        <a href="#"><i class="fa fa-shopping-cart"></i> </a>
                                    </div>
                                    <div class="product-rating">
                                        <div class="stars">
                                            <span class="star"></span><span class="star active"></span><span class="star active"></span><span class="star active"></span><span class="star active"></span>
                                        </div>
                                        <a href="" class="review">8 Reviews</a>
                                    </div>
                                    <p class="description">Lorem ipsum dolor sit amet, con sec tetur adipisicing elit, sed do eiusmod</p>
                                </div>

                            </article>
                        </div>
                        <div class="text-center">
                            <article class="product light">
                                <figure class="figure-hover-overlay">                                                                        
                                    <a href="#"  class="figure-href"></a>
                                    <a href="#" class="product-compare"><i class="fa fa-random"></i></a>
                                    <a href="#" class="product-wishlist"><i class="fa fa-heart-o"></i></a>
                                    <img src="http://placehold.it/400x500" class="img-overlay img-responsive" alt="">
                                    <img src="http://placehold.it/400x500" class="img-responsive" alt="">

                                </figure>
                                <div class="product-caption">
                                    <div class="block-name">
                                        <a href="#" class="product-name">Lorem ipsum dolor sit amet con sec</a>
                                        <p class="product-price"><span>$330</span> $320.99</p>

                                    </div>
                                    <div class="product-cart">
                                        <a href="#"><i class="fa fa-shopping-cart"></i> </a>
                                    </div>
                                    <div class="product-rating">
                                        <div class="stars">
                                            <span class="star active"></span><span class="star active"></span><span class="star active"></span><span class="star active"></span><span class="star active"></span>
                                        </div>
                                        <a href="" class="review">8 Reviews</a>
                                    </div>
                                    <p class="description">Lorem ipsum dolor sit amet, con sec tetur adipisicing elit, sed do eiusmod</p>
                                </div>

                            </article>
                        </div>
                        <div class="text-center">
                            <article class="product light">
                                <figure class="figure-hover-overlay">                                                                        
                                    <a href="#"  class="figure-href"></a>

                                    <div class="product-new">new</div>
                                    <a href="#" class="product-compare"><i class="fa fa-random"></i></a>
                                    <a href="#" class="product-wishlist"><i class="fa fa-heart-o"></i></a>
                                    <img src="http://placehold.it/400x500" class="img-overlay img-responsive" alt="">
                                    <img src="http://placehold.it/400x500" class="img-responsive" alt="">

                                </figure>
                                <div class="product-caption">
                                    <div class="block-name">
                                        <a href="#" class="product-name">Lorem ipsum dolor sit amet con sec</a>
                                        <p class="product-price"><span>$330</span> $320.99</p>

                                    </div>
                                    <div class="product-cart">
                                        <a href="#"><i class="fa fa-shopping-cart"></i> </a>
                                    </div>
                                    <div class="product-rating">
                                        <div class="stars">
                                            <span class="star active"></span><span class="star active"></span><span class="star active"></span><span class="star active"></span><span class="star active"></span>
                                        </div>
                                        <a href="" class="review">8 Reviews</a>
                                    </div>
                                    <p class="description">Lorem ipsum dolor sit amet, con sec tetur adipisicing elit, sed do eiusmod</p>
                                </div>

                            </article>
                        </div>
                        <div class="text-center">
                            <article class="product light">
                                <figure class="figure-hover-overlay">                                                                        
                                    <a href="#"  class="figure-href"></a>
                                    <div class="product-sale">17% <br> off</div>
                                    <a href="#" class="product-compare"><i class="fa fa-random"></i></a>
                                    <a href="#" class="product-wishlist"><i class="fa fa-heart-o"></i></a>
                                    <img src="http://placehold.it/400x500" class="img-overlay img-responsive" alt="">
                                    <img src="http://placehold.it/400x500" class="img-responsive" alt="">
                                </figure>
                                <div class="product-caption">
                                    <div class="block-name">
                                        <a href="#" class="product-name">Lorem ipsum dolor sit amet con sec</a>
                                        <p class="product-price"><span>$330</span> $320.99</p>

                                    </div>
                                    <div class="product-cart">
                                        <a href="#"><i class="fa fa-shopping-cart"></i> </a>
                                    </div>
                                    <div class="product-rating">
                                        <div class="stars">
                                            <span class="star"></span><span class="star active"></span><span class="star active"></span><span class="star active"></span><span class="star active"></span>
                                        </div>
                                        <a href="" class="review">8 Reviews</a>
                                    </div>
                                    <p class="description">Lorem ipsum dolor sit amet, con sec tetur adipisicing elit, sed do eiusmod</p>
                                </div>

                            </article>

                        </div>
                        <div class="text-center">
                            <article class="product light">
                                <figure class="figure-hover-overlay">                                                                        
                                    <a href="#"  class="figure-href"></a>
                                    <div class="product-new">new</div>
                                    <div class="product-sale">7% <br> off</div>
                                    <a href="#" class="product-compare"><i class="fa fa-random"></i></a>
                                    <a href="#" class="product-wishlist"><i class="fa fa-heart-o"></i></a>
                                    <img src="http://placehold.it/400x500" class="img-overlay img-responsive" alt="">
                                    <img src="http://placehold.it/400x500" class="img-responsive" alt="">
                                </figure>
                                <div class="product-caption">
                                    <div class="block-name">
                                        <a href="#" class="product-name">Lorem ipsum dolor sit amet con sec</a>
                                        <p class="product-price"><span>$330</span> $320.99</p>

                                    </div>
                                    <div class="product-cart">
                                        <a href="#"><i class="fa fa-shopping-cart"></i> </a>
                                    </div>
                                    <div class="product-rating">
                                        <div class="stars">
                                            <span class="star"></span><span class="star"></span><span class="star"></span><span class="star"></span><span class="star"></span>
                                        </div>
                                        <a href="" class="review">8 Reviews</a>
                                    </div>
                                    <p class="description">Lorem ipsum dolor sit amet, con sec tetur adipisicing elit, sed do eiusmod</p>
                                </div>

                            </article>
                        </div>




                    </div>
                </div>
            </div>
        </section>

        <section>
            <div class="block">
                <div class="container">
                    <div class="row">
                        <article class="col-md-4">
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
                                            <a href="" class="review">8 Reviews</a>
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
                                            <a href="" class="review">8 Reviews</a>
                                        </div>
                                        <p class="description">Lorem ipsum dolor sit amet, con sec tetur adipisicing elit.</p>
                                    </div>
                                </div>
                            </div>
                        </article>
                        <article class="col-md-4">
                            <div class="widget-title">
                                <i class="fa fa-user"></i> Our Store
                            </div> 
                            <p>
                                <span class="dropcap">L</span>orem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                            </p>
                            <blockquote>
                                Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                            </blockquote>
                        </article>
                        <article class="col-md-4">
                            <div class="widget-title">
                                <i class="fa fa-comments"></i> Latest Posts
                            </div>
                            <div class="widget-block">
                                <div class="row">
                                    <div class="col-md-4  col-sm-2 col-xs-4">
                                        <img class="img-responsive" src="http://placehold.it/400x300" alt="" title="">   
                                    </div>
                                    <div class="col-md-8  col-sm-10 col-xs-8">
                                        <div class="block-name">
                                            <a href="#" class="product-name">Summer sale</a>

                                        </div>
                                        <p class="description">Lorem ipsum dolor sit amet, con sec tetur adipisicing elit.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="widget-block">
                                <div class="row">
                                    <div class="col-md-4 col-sm-2 col-xs-4">
                                        <img class="img-responsive" src="http://placehold.it/400x300" alt="" title="">   
                                    </div>
                                    <div class="col-md-8 col-sm-10 col-xs-8">
                                        <div class="block-name">
                                            <a href="#" class="product-name">Call now</a>

                                        </div>
                                        <p class="description">Lorem ipsum dolor sit amet, con sec tetur adipisicing elit.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="widget-block">
                                <div class="row">
                                    <div class="col-md-4 col-sm-2 col-xs-4">
                                        <img class="img-responsive" src="http://placehold.it/400x300" alt="" title="">   
                                    </div>
                                    <div class="col-md-8 col-sm-10 col-xs-8">
                                        <div class="block-name">
                                            <a href="#" class="product-name">Good day</a>

                                        </div>
                                        <p class="description">Lorem ipsum dolor sit amet, con sec tetur adipisicing elit.</p>
                                    </div>
                                </div>
                            </div>
                        </article>
                    </div>
                    <article class="banner">
                        <a href="#">
                            <img src="http://placehold.it/1200x230" class="img-responsive" alt="">
                        </a> 
                    </article>
                    <div class="row">
                        <article class="col-md-4">
                            <div class="widget-title">
                                <i class="fa fa-tags"></i> Tags
                            </div>
                            <div class="widget-block">
                                <ul class="list-unstyled tags">
                                    <li><a href="#">men</a></li>
                                    <li><a href="#">women</a></li>
                                    <li><a href="#">clothes</a></li>
                                    <li><a href="#">top</a></li>
                                    <li><a href="#">sale</a></li>
                                    <li><a href="#">dresses</a></li>
                                    <li><a href="#">short</a></li>
                                    <li><a href="#">skirt</a></li>
                                    <li><a href="#">top</a></li>
                                    <li><a href="#">bestseller</a></li>
                                    <li><a href="#">new</a></li>
                                </ul>
                            </div>
                        </article>
                        <article class="col-md-4">
                            <div class="widget-title">
                                <i class="fa fa-tasks"></i> Catalog
                            </div>
                            <div class="widget-block">
                                <ul class="list-unstyled catalog">
                                    <li><a href="#"><i class="fa fa-male"></i>Clothes for men</a></li>
                                    <li><a href="#"><i class="fa fa-female"></i>Dresses for women</a></li>
                                    <li><a href="#"><i class="fa fa-child"></i>Shirts for child</a></li>
                                </ul>
                            </div>
                        </article>
                        <article class="col-md-4">
                            <div class="widget-title">
                                <i class="fa fa-thumbs-up"></i> Services
                            </div>
                            <div class="panel-group" id="accordion">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" class="collapsed">
                                                Money exchange
                                            </a>
                                        </h4>
                                    </div>
                                    <div id="collapseOne" class="panel-collapse collapse">
                                        <div class="panel-body">
                                            Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo.
                                        </div>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" class="collapsed">
                                                Packing your request
                                            </a>
                                        </h4>
                                    </div>
                                    <div id="collapseTwo" class="panel-collapse collapse">
                                        <div class="panel-body">
                                            Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor.
                                        </div>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree" class="collapsed">
                                                Send as Gift
                                            </a>
                                        </h4>
                                    </div>
                                    <div id="collapseThree" class="panel-collapse collapse">
                                        <div class="panel-body">
                                            Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolort. 
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </article>
                    </div>
                </div>
            </div>
        </section>
        <section class="partners">
            <div class="block color-scheme-dark-90">
                <div class="container">
                    <div class="header-for-dark">
                        <h1 class="wow fadeInRight animated" data-wow-duration="2s">Business <span>partners</span></h1>
                    </div>
                    <div id="owl-partners"  class="owl-carousel">
                        <div class="partner">
                            <img src="img/preview/logo1.png" class="img-responsive" alt="">
                        </div>
                        <div class="partner">
                            <img src="img/preview/logo2.png" class="img-responsive"  alt="">
                        </div>
                        <div class="partner">
                            <img src="img/preview/logo3.png" class="img-responsive"  alt="">
                        </div>
                        <div class="partner">
                            <img src="img/preview/logo4.png" class="img-responsive"  alt="">
                        </div>
                        <div class="partner">
                            <img src="img/preview/logo5.png" class="img-responsive"  alt="">
                        </div>
                        <div class="partner">
                            <img src="img/preview/logo6.png" class="img-responsive"  alt="">
                        </div>
                        <div class="partner">
                            <img src="img/preview/logo7.png" class="img-responsive"  alt="">
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