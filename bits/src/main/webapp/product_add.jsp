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
<div class="container">
 <div class="row g-0 align-items-center flex-column-reverse flex-md-row">
    <h1 class=" btn-primary text-white mt-4 "><center> ADD PRODUCT FORM</center> </h1>
<div class="col-md-6">
<form action="product_add" method="post" enctype="multipart/form-data" >
  <c:if test="${not empty product}">
  <p class="text-center text-success">${product}
  <c:remove var="product" scope="session"/>
  </c:if>
 
  <div>
    <label for="pname" class="form-label mt-4 "><h5 class="text-white">Product Name</h5></label>
    <input type="text" required class="form-control" id="pname" name="pname">
  </div>
  <div>
    <label for="Price" class="form-label mt-4"><h5 class="text-white">Base Price</h5></label>
    <input type="text" required class="form-control" id="Price" name="price">
  </div>
  <div >
    <label for="ava" class="form-label mt-4"><h5 class="text-white">Availability</h5></label>
    <select id="ava" required class="form-select" name="ava">
      <option selected>Choose </option>
      <option>YES</option>
      <option>NO</option>
      
    </select>
  </div>
  <div >
    <label for="img1" class="form-label mt-4"><h5 class="text-white">Product Image</h5></label>
  	<input type="file" required id="img1" name="img1">
  </div>
  <div >
    <label for="img2" class="form-label mt-4"><h5 class="text-white">Product Image</h5></label>
  	<input type="file" required id="img2" name ="img2">
  </div>
  <div >
    <label for="cat" class="form-label mt-4"><h5 class="text-white">Category</h5></label>
  	<select id="cat" required class="form-select" name="cat">
      <option selected>Choose Category</option>
      <option>Electronics</option>
      <option>Clothing</option>
      <option>Home Decor</option>
      <option>Stationery</option>
      <option>Sports</option>
      <option>Electricals</option>
      <option>Books</option>
      <option>Others</option>
    </select>
  </div>
   <div >
    <label for="desc" class="form-label mt-4"><h5 class="text-white">Description</h5></label>
    <input type="text" required class="form-control" id="desc" name="desc">
  </div>
  <div>
    <label for="duration" class="form-label mt-4"><h5 class="text-white">Duration (in days)</h5></label>
    <input type="text" required class="form-control" id="duration" name="duration">
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