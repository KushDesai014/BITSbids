<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@page isELIgnored="false" %>    
    
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

</head>
<body class="bg-secondary">

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
<div class="container">
 <div class="row g-0 align-items-center flex-column-reverse flex-md-row">
           <h1 class=" btn-primary text-white mt-5"><center> ADD USER FORM</center> </h1>
<div class="col-md-6">
<form action="seller_add" method="post" >
 <c:if test="${not empty seller}">
  <p class="text-center text-success">${seller}
  <c:remove var="seller" scope="session"/>
  </c:if>
  
  <div>
    <label for="Studentid" class="form-label mt-4 "><h5 class="text-white">Student Id</h5></label>
    <input type="text" required class="form-control" id="Studentid" name="Studentid">
  </div>
  <div>
    <label for="Studentname" class="form-label mt-4"><h5 class="text-white">Student Name</h5></label>
    <input type="text" required class="form-control" id="Studentname" name="Studentname">
  </div>
  
  <div >
    <label for="inputBranch" class="form-label mt-4"><h5 class="text-white">Student Branch</h5></label>
  	<select id="inputBranch" required class="form-select" name="Branch">
      <option selected>Choose Branch</option>
      <option>CS</option>
      <option>ECE</option>
      <option>EEE</option>
      <option>ENI</option>
      <option>Pharma</option>
      <option>Chemical</option>
      <option>Mechanical</option>
      <option>Civil</option>
      <option>Biology</option>
      <option>Chemistry</option>
      <option>Economics</option>
      <option>Maths</option>
      <option>Physics</option>
    </select>
  </div>
  <div >
    <label for="Batch" class="form-label mt-4" ><h5 class="text-white">Batch</h5></label>
    <select id="Batch" required class="form-select" name="Batch">
      <option selected>Choose Batch</option>
      <option>2019</option>
      <option>2020</option>
      <option>2021</option>
      <option>2022</option>
      <option>2023</option>
      <option>2024</option>
      <option>2025</option>
    </select>
  </div>
  <div >
    <label for="hostel" class="form-label mt-4"><h5 class="text-white">Hostel</h5></label>
    <input type="text" required class="form-control" id="hostel" name="hostel">
  </div>
  <div >
    <label for="cnum" class="form-label mt-4"><h5 class="text-white">Contact Number</h5></label>
    <input type="text" required class="form-control" id="cnum" name="cnum">
  </div>
   
  <div class=" d-grid mt-5">
    <button type="submit" class="btn btn-primary mb-5">ADD</button>
  </div>
</form>
</div>
<div class="col-md-6 animated fadeIn p-5">
                    <div class="owl-carousel header-carousel">
                        <div class="owl-carousel-item">
                            <img id="ff" class="img-fluid" src="img/mainpic.jpeg" alt="">
                        </div>
                        <div class="owl-carousel-item">
                            <img class="img-fluid" src="img/carousel-2.jpg" alt="">
                        </div>
                    </div>
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