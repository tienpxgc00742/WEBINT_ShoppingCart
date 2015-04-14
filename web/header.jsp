<%-- 
    Document   : Header
    Created on : Apr 11, 2015, 11:27:10 AM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>WEBINT_Assignment</title>
        <link href="./Assets/css" rel="stylesheet" type="text/css">
        <link href="./Assets/bootstrap.css" rel="stylesheet">
        <link href="./Assets/bootstrap-responsive.css" rel="stylesheet">
        <!--<link rel="stylesheet" href="./Assets/font-awesome.min.css">-->
        <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
        <link href="./Assets/style.css" rel="stylesheet">
        <link rel="stylesheet" href="./Assets/font-awesome-animation.min.css">
        <link href="http://www.pxcreate.com/template/simplepxcreate/css/jquery.fancybox.css" rel="stylesheet">
        <link href="http://www.pxcreate.com/template/simplepxcreate/css/cloud-zoom.css" rel="stylesheet">
        <link href="http://www.pxcreate.com/template/simplepxcreate/css/portfolio.css" rel="stylesheet">
        <link rel="stylesheet" href="./Assets/layerslider.css" type="text/css">
        <link rel="stylesheet" href="./Assets/layersliderstyle.css" type="text/css">
    </head>
    <body>
    <div class="headerstrip">
        <div class="container">
            <div class="pull-left welcometxt"> Welcome, <a class="orange" href="login.jsp">Login</a> or <a class="orange" href="http://www.pxcreate.com/template/simplepxcreate/register.html">Create new account</a> </div>
            <!-- Top Nav Start -->
            <div class="pull-right">
                <div class="navbar" id="topnav">
                    <div class="navbar-inner">
                        <ul class="nav">
                            <li><a class="home active" href="http://www.pxcreate.com/template/simplepxcreate/index.html#"><i class="fa fa-home"></i> Home </a> </li>
                            <!--Login Function-->
                            <!--<li><a class="myaccount" href="http://www.pxcreate.com/template/simplepxcreate/index.html#"><i class="fa fa-user"></i> My Account </a> </li>-->
                            <li><a class="shoppingcart" href="http://www.pxcreate.com/template/simplepxcreate/index.html#"><i class="fa fa-wrench"></i> Admin</a> </li>
                            <li><a class="shoppingcart" href="http://www.pxcreate.com/template/simplepxcreate/index.html#"><i class="fa fa-sign-out"></i> Sign Out </a> </li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- Top Nav End -->
        </div>
    </div>
    <div class="container">
        <div class="headerdetails"> <div><a class="logo pull-left" href="./Assets/Simplepxcreate.html"><i class="fa fa-shopping-cart fa-4x faa-pulse animated" style="margin-top: -18px"></i><span>&nbsp;&nbsp;&nbsp;Bug is Coming</span></a></div>
            <div class="pull-left">
                <form class="form-search top-search">
                    <input type="text" class="input-medium search-query" placeholder="Search Here…">
                    <button class="btn btn-orange btn-small tooltip-test" data-original-title="Search"><i class="fa fa-search fa fa-white"></i></button>
                </form>
            </div>
            <div class="pull-right">
                <ul class="nav topcart pull-left">
                    <li class="dropdown hover carticon "> <a href="http://www.pxcreate.com/template/simplepxcreate/index.html#" class="dropdown-toggle"> <i class="fa fa-shopping-cart font18"></i> Shopping Cart <span class="label label-orange font14">1 item(s)</span> - $589.50 <b class="caret"></b></a>
                        <ul class="dropdown-menu topcartopen ">
                            <li>
                                <table>
                                    <tbody>
                                        <tr>
                                            <td class="image"><a href="http://www.pxcreate.com/template/simplepxcreate/product.html"><img width="50" height="50" src="./Assets/prodcut-40x40.jpg" alt="product" title="product"></a></td>
                                            <td class="name"><a href="http://www.pxcreate.com/template/simplepxcreate/product.html">MacBook</a></td>
                                            <td class="quantity">x&nbsp;1</td>
                                            <td class="total">$589.50</td>
                                            <td class="remove"><i class="fa fa-remove"></i></td>
                                        </tr>
                                        <tr>
                                            <td class="image"><a href="http://www.pxcreate.com/template/simplepxcreate/product.html"><img width="50" height="50" src="./Assets/prodcut-40x40.jpg" alt="product" title="product"></a></td>
                                            <td class="name"><a href="http://www.pxcreate.com/template/simplepxcreate/product.html">MacBook</a></td>
                                            <td class="quantity">x&nbsp;1</td>
                                            <td class="total">$589.50</td>
                                            <td class="remove"><i class="fa fa-remove "></i></td>
                                        </tr>
                                    </tbody>
                                </table>
                                <table>
                                    <tbody>
                                        <tr>
                                            <td class="textright"><b>VAT (0%):</b></td>
                                            <td class="textright">$0</td>
                                        </tr>
                                        <tr>
                                            <td class="textright"><b>Total:</b></td>
                                            <td class="textright">$589.50</td>
                                        </tr>
                                    </tbody>
                                </table>
                                <div class="well pull-right buttonwrap"> <a class="btn btn-orange" href="http://www.pxcreate.com/template/simplepxcreate/index.html#">View Cart</a> <a class="btn btn-orange" href="http://www.pxcreate.com/template/simplepxcreate/index.html#">Checkout</a> </div>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div id="categorymenu">
    <nav class="subnav">
    <ul class="nav-pills categorymenu container">
    <li><a href="./Assets/Simplepxcreate.html"><i class="fa fa-home font18"></i><span> Home</span></a></li>
    <li><a href="http://www.pxcreate.com/template/simplepxcreate/contact.html"><i class="fa fa-bars font18"></i>  <span> Menu</span></a></li>
    <!--LOGIN FORM-->
    <li><a><i class="fa fa-user font18"></i> <span> Log In</span></a>
    <div>
        <div class="loginbox">
            <form class="form-vertical" action="LoginController"  method="POST">
                <fieldset>
                  <div class="control-group">
                    <label class="control-label">Name:</label>
                    <div class="controls">
                      <input name="txtUser" type="text" class="span3">
                    </div>
                  </div>
                  <div class="control-group">
                    <label class="control-label">Password:</label>
                    <div class="controls">
                      <input name="txtPass" type="password" class="span3">
                    </div>
                  </div>
                    <div class="control-group">
                        <input type="checkbox" name="rbm" value="ON" style="margin-top: -5px"/> Remember me
                    </div>
                    <input class="btn btn-orange" type="submit" value="Log In">
                </fieldset>
              </form>
            </div>
    </div>
    </li>
    </ul>
    </div>
<!--    </header>-->
    </body>
        <script type="text/javascript" src="./Assets/js/js"></script><script src="./Assets/js/main.js"></script>
        <script src="./Assets/js/jquery.js"></script> 
        <script type="text/javascript" src="./Assets/js/jquery.easing.js"></script> 
        <script src="./Assets/js/respond.min.js"></script> 
        <script src="./Assets/js/bootstrap.min.js"></script> 
        <script defer="" src="./Assets/js/jquery.fancybox.js"></script> 
        <script defer="" src="./Assets/js/jquery.flexslider.js"></script> 
        <script src="./Assets/js/jquery-transit-modified.js" type="text/javascript"></script> 
        <script src="./Assets/js/layerslider.transitions.js" type="text/javascript"></script> 
        <script src="./Assets/js/layerslider.kreaturamedia.jquery.js" type="text/javascript"></script> 
        <script type="text/javascript" src="./Assets/js/jquery.tweet.js"></script> 
        <script src="./Assets/js/cloud-zoom.1.0.2.js"></script> 
        <script type="text/javascript" src="./Assets/js/jquery.validate.js"></script> 
        <script type="text/javascript" src="./Assets/js/jquery.carouFredSel-6.1.0-packed.js"></script> 
        <script type="text/javascript" src="./Assets/js/jquery.mousewheel.min.js"></script> 
        <script type="text/javascript" src="./Assets/js/jquery.touchSwipe.min.js"></script> 
        <script type="text/javascript" src="./Assets/js/jquery.gmap.js"></script>
        <script type="text/javascript" src="./Assets/js/jquery.countdown.js"></script>
        <script defer="" src="./Assets/js/custom.js"></script>
        <script defer="" src="./Assets/js/custom2.js"></script>
</html>
