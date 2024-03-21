<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@page isELIgnored="false" %> 
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<%@ page import="java.util.*" %> 
<%@ page import="ENTITY.*" %>
<%@ page import="DAO.*" %>
<%@ page import="DB.*" %> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/animate/animate.min.css" rel="stylesheet">
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</head>
<body class="bg-secondary">
<%   
//Product p=(Product)session.getAttribute("Product");  
//String st=p.getPr_img1();
//String st2=p.getPr_img2();
//double st_price=p.getPr_price();
//String st_name=p.getPr_name();
%>


 <div class="container-fluid nav-bar bg-transparent" style={z-index: -1;}>
            <nav class="navbar navbar-expand-lg bg-primary navbar-dark px-4">
                <a href="index.html" class="navbar-brand d-flex align-items-center text-center">
                    <div class="icon p-2 me-2">
                        <img class="img-fluid" src="img/icon-deal.png" alt="Icon" style="width: 30px; height: 30px;">
                    </div>
                    <h1 class="m-0 text-primary ">BITSbids</h1>
                </a>
                <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarCollapse">
                    <div class="navbar-nav ms-auto">
                        <a href="mainpage.jsp" class="nav-item nav-link active">Home</a>
                        <a href="#!" data-bs-toggle="modal" data-bs-target="#profile-modal" class="nav-item nav-link">Profile</a>
                    	<a href="product_add.jsp" class="nav-item nav-link ">Add Product</a>
                    	
                    </div>
                    
                    <a href="login.jsp" class="btn btn-primary px-3 d-none d-lg-flex">LOGOUT</a>
                </div>
            </nav>
        </div>
        


<div class="container mt-5 px-5">
 	<div class="row mt-5">
 	 <div class="col-md-5">
 	  <div id="carouselExampleIndicators" class="carousel slide">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
   </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src=st width="650" height="500" class="d-block object-fit-cover" alt="...">
    </div>
    <div class="carousel-item">
      <img src=st2 width="650" height="500" class="d-block object-fit-cover" alt="...">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
</div>
 	 <div class="col-md-7 px-4 ">
 			<h2 class="text-light w-50px fs-12px fw-b">Scenery</h2>
 			<p>Product Code: </p>
 			<p class="">Current Bid : 1000</p>
 			<button type="button" class="btn btn-primary col-md-7 mt-2">Finalize Bid</button>
 			<label class="mt-3 col-md-7">Chat with the Seller</label>
 			<textarea name="" id="" class="mt-2	col-md-7" cols="30" rows="6"></textarea>
 			<button type="button" class="btn btn-primary col-md-7 mt-2">Send Message</button>
 	 </div>
 	</div>
</div>
   <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/wow/wow.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>

</body>
</html>