<%-- 
    Document   : index
    Created on : Apr 9, 2015, 7:22:08 PM
    Author     : 
    ____  ___  ___________.__               
    \   \/  /  \__    ___/|__| ____   ____  
     \     /     |    |   |  |/ __ \ /    \ 
     /     \     |    |   |  \  ___/|   |  \
    /___/\  \ /\ |____|   |__|\___  >___|  /
          \_/ \/                  \/     \/ 
--%>

<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="java.util.List"%>
<%@page import="Model.Product"%>
<%@page import="Model.DataProcess"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HomePage</title>

    </head>
    <body>
        <jsp:include page="header.jsp"/>


        <div id="maincontainer" style="margin-top: -65px">
            <section id="product">
                <div class="container"> 
                    <!-- Popular Category-->
                    <section id="categorycar" class="container mt40">
                        <h1 class="heading1"><span class="maintext"> <i class="fa fa-reorder"></i> Select Category</span></h1>
                        <div class="categorycarousalrelative">
                            <div class="caroufredsel_wrapper" style="display: block; text-align: start; float: none; position: relative; top: auto; right: 30px; bottom: auto; left: auto; z-index: auto; width: 1170px; height: 73px; margin: 0px; overflow: hidden; cursor: move;">
                                <ul id="categorycarousal" data-option-key="filter" class="option-set clearfix" style="text-align: left; float: none; position: absolute; top: 0px; right: auto; bottom: auto; left: 43px; margin: 0px; width: 6378px; height: 73px; z-index: auto;">
                                    <li style="margin-right: 6px;"><a href="#filter" class="selected" data-option-value="*" class=""><img src="http://www.menards.com/main/store//20090519001/assets/images5/landingPages/Vendors/Adorne/b.all3.jpg"></a></li></a>                                                                                                           
                                    <li style="margin-right: 6px;"><a href="#filter" data-option-value="*" class=""><img src="http://www.hanoicomputer.vn/media/brand/4_MSI.png"></a></li></a>                                                                        
                                    <li style="margin-right: 6px;"><a href="#filter" data-option-value=".Asus" class=""><img src="http://www.hanoicomputer.vn/media/brand/3_Asus.png"></a></li></a>                                    
                                    <li style="margin-right: 6px;"><a href="#filter" data-option-value=".ecommerce" class=""><img src="http://www.hanoicomputer.vn/media/brand/227_Sapphire.png"></a></li></a>
                                </ul></div>
                            <div class="clearfix"></div>
                            <a id="prevcat" class="prev" href="#" style="display: block;"><i class="fa fa-chevron-left"></i></a> <a id="nextcat" class="next" href="#" style="display: block;"><i class="fa fa-chevron-right"></i></a> </div>
                    </section>
                    <ul id="portfoliocontainer" class="clickable clearfix isotope" style="position: relative; overflow: hidden; height: 876px; width: 1160px;">
                        <!--                        <li class="element html5 simple css3 span3 isotope-item" data-symbol="Hg" data-category="transition" style="position: absolute; left: 0px; top: 0px; transform: translate3d(0px, 0px, 0px) scale3d(1, 1, 1); opacity: 1;">
                                                    <div class="thumbnail"> <a class="fancyboxpopup" href="img/product1.jpg"><img src="img/product1a.jpg" alt=""><span class="viewfancypopup">&nbsp;</span><span class="viewfancypopup">&nbsp;</span><span class="viewfancypopup">&nbsp;</span></a>
                                                        <div class="caption"> <a class="portfoliotital" href="portfolio.html">Portfolio Title 1</a>
                                                            <span class="mr10"><i class="fa fa-tag"></i> Html5, Simple, Css3 </span>
                                                        </div>
                                                    </div>
                                                </li>-->
                        <%
                            DataProcess dp = new DataProcess();
                            List<Product> products = dp.getAllProduct();
                            for (Product pro : products) {
                        %>
                        <li class="element Asus span3 isotope-item" data-symbol="Hg" data-category="transition> <a class="prdocutname" href="product.html"><%=pro.getName()%></a>
                            <div class="thumbnail"> <span class="sale tooltip-test" style="margin-top: 15px" data-original-title="" title=""> <i class="fa fa-gift font24"></i> <br>
                                    Sale</span> <a href="#"><img alt="" src="<%=pro.getImage()%>" style="width:270px;height:250px"></a>
                                <div class="shortlinks" style="display: none;">
                                    <button data-original-title="Cart" class="btn btn-orange tooltip-test"> <i class="fa fa-shopping-cart fa fa-white"></i> </button>
                                    <button data-original-title="Wishlist" class="btn btn-orange btn-small tooltip-test"> <i class="fa fa-heart fa fa-white"></i> </button>
                                    <button data-original-title="Compare" class="btn btn-orange btn-small tooltip-test"> <i class="fa fa-refresh fa fa-white"></i> </button>
                                </div>
                                <div class="price">
                                    <div class="pricenew">$4459.00</div>
                                    <div class="priceold">$<%=pro.getPrice()%></div>
                                    <div class="ratingstar"> <i class="fa fa-star"> </i><i class="fa fa-star"> </i><i class="fa fa-star"> </i> <i class="fa fa-star-empty"></i> <i class="fa fa-star-empty"></i></div>
                                </div>
                            </div>
                        </li>
                        <%}%>




                    </ul>
                    <!-- Category Products-->
                    <section id="category">

                        <!-- Sorting-->
                        <!--                        <div class="sorting well mt20">
                                                    <form class=" form-inline pull-left">
                                                        Sort By :
                                                        <select class="span2">
                                                            <option>Default</option>
                                                            <option>Name</option>
                                                            <option>Pirce</option>
                                                            <option>Rating </option>
                                                            <option>Color</option>
                                                        </select>
                                                        &nbsp;&nbsp;
                                                        Show:
                                                        <select class="span1">
                                                            <option>10</option>
                                                            <option>15</option>
                                                            <option>20</option>
                                                            <option>25</option>
                                                            <option>30</option>
                                                        </select>
                                                    </form>
                                                    <div class="btn-group pull-right">
                                                        <button class="btn" id="list"><i class="fa fa-th-list"></i> </button>
                                                        <button class="btn btn-orange" id="grid"><i class="fa fa-th fa fa-white"></i></button>
                                                    </div>
                                                </div>-->
                        <!-- Category-->


                    </section>
                </div>
            </section>
        </div>
        <script src="http://www.pxcreate.com/template/simplepxcreate/js/jquery.isotope.min.js"></script>
        <jsp:include page="footer.jsp"/>
    </body>
</html>
