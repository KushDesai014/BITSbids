<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@page isELIgnored="false" %>    
<!DOCTYPE html>
<html>
<head>;
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
    <h1 class=" btn-primary text-white mt-4 "><center> Register Form</center> </h1>
    <c:if test="${not empty success}">
  <p class="text-center text-success">${success}
  <c:remove var="success" scope="session"/>
  </c:if>
<div class="col-md-6">
<form action="register" method="post" >
  <div>
    <label for="uname" class="form-label mt-4 "><h5 class="text-white">Email id</h5></label>
    <input type="email" required class="form-control" id="uname" name="uname">
 <script>
    function validateEmail(email) {
      var re = /^f\d{8}@hyderabad\.bits-pilani\.ac\.in$/;
      return re.test(email);
    }

    var emailInput = document.getElementById("uname");
    emailInput.addEventListener("input", function() {
      var isValid = validateEmail(emailInput.value);
      if (isValid) {
        emailInput.setCustomValidity("");
      } else {
        emailInput.setCustomValidity("Please enter a valid email address.");
      }
    });
 </script>
  </div>
  
  <div>
    <label for="pass" class="form-label mt-4"><h5 class="text-white">PassWord</h5></label>
    <input type="password" required class="form-control" id="pass" name="pass">
  </div>
  <div>
    <label for="cpass" class="form-label mt-4"><h5 class="text-white">Confirm PassWord</h5></label>
    <input type="password" required class="form-control" id="cpass" name="cpass">
  </div>
  
  <div class=" d-grid mt-5">
    <button type="submit" class="btn btn-primary">ADD</button>
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