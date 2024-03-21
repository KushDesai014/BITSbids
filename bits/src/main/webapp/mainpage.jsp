<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<%@ page import="java.util.*" %> 
<%@ page import="ENTITY.*" %>
<%@ page import="DAO.*" %>
<%@ page import="DB.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@page isELIgnored="false"%>

<!DOCTYPE html>


<head>
    <meta charset="utf-8">
    <title>kush Biding System</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Inter:wght@700;800&display=swap" rel="stylesheet">
    
    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/animate/animate.min.css" rel="stylesheet">
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
</head>

<body class="bg-secondary">

<%
String name=(String)session.getAttribute("uname");  
sellerDAOImp ob1= new sellerDAOImp(DBConnect.getConn());
List<Seller> seller= ob1.getSeller(name); 
Seller s1[]= new Seller [100];int j=0,f=0;
for(Seller s:seller){
	s1[j]=new Seller();
	s1[j]=s;
	f=1;
}
productDAOImp ob= new productDAOImp(DBConnect.getConn());
List<Product> product= ob.getProduct();
String path="/Users/geetikasuri/Desktop/bits/src/main/webapp/img/";
Product st[]= new Product[100];int k=0;
for (Product p:product)
{
	st[k]= new Product();
	st[k]=p;
	st[k].setPr_img1("img/"+p.getPr_img1());
	st[k].setPr_img2("img/"+p.getPr_img2());
	k++;
}

%>
<!--  -->
    <div class="container-xxl bg-secondary">
        <!-- Spinner Start -->
        <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
            <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
                <span class="sr-only">Loading...</span>
            </div>
        </div>
        <!-- Spinner End -->


        <!-- Navbar Start -->
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
        <!-- Navbar End -->
        
        
        <!-- user profile start -->

<!-- Modal -->
  
<div class="modal fade " style={z-index: 0;} id="profile-modal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content ">
      <div class="modal-header secondary-background text-light mt-5">
        <h5 class="modal-title fs-5" id="exampleModalLabel"> BITSbids </h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body ">
        <div class="container text-center">
        	        <h5 class="modal-title fs-5" id="exampleModalLabel"><%=s1[0].getSellname() %></h5>
        	        <table class="table table-secondary table-striped">
  						<tbody>
    						<tr class="table-secondary">
     						 <th scope="row"  class="table-secondary text-pueple">SELLER ID :</th>
    						 <td><%=s1[0].getSell_id() %></td>
    						</tr>
    						<tr>
     						 <th scope="row">Email ID : </th>
     						 <td>f20212969@hyderabad.bits-pilani.ac.in</td>
    						</tr>
    						<tr>
   							   <th scope="row">Branch : </th>
   							   <td> <%=s1[0].getSell_branch() %></td>
    						</tr>
    						<tr>
   							   <th scope="row">Hostel</th>
   							   <td colspan="2"><%=s1[0].getHostel() %></td>
    						</tr>
    						<tr>
   							   <th scope="row">Contact No. : </th>
   							   <td><%=s1[0].getContactno() %></td>
    						</tr>
    						<tr>
   							   <th scope="row">Balance : </th>
   							   <td>1000(INR)</td>
    						</tr>
  						</tbody>
					</table>
        </div>
      </div>
      <div class="modal-footer ">
       <div class="text-center">
        <button type="button" class="btn btn-secondary " data-bs-dismiss="modal">Close</button>
       </div>
      </div>
    </div>
  </div>
</div> 

        <!-- user profile End -->
   
        
        
        


        <!-- Header Start -->
        <div class="container-fluid header bg-secondary">
            <div class="row g-0 align-items-center flex-column-reverse flex-md-row">
                <div class="col-md-6 p-5 mt-lg-5">
                    <h1 class="display-5 text-light animated fadeIn mb-4">Find The <span class="text-primary">Perfect Place</span> To Sell and Purchase Items</h1>
                    <p class="animated fadeIn mb-4 pb-2">Unlock transactions, foster connections. Discover, buy, and sell seamlessly in our marketplace. 
                    Your go-to platform for effortless and rewarding buying and selling experiences awaits.</p>
                </div>
                <div class="col-md-6 animated fadeIn">
                    <div class="owl-carousel header-carousel">
                        <div class="owl-carousel-item">
                            <img class="img-fluid" src="img/pic1.png" alt="">
                        </div>
                        <div class="owl-carousel-item">
                            <img class="img-fluid" src="img/pic2.png" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Header End -->


        <!-- Search Start -->
        <div class="container-fluid bg-primary mb-5 wow fadeIn m-5" data-wow-delay="0.1s" style="padding: 35px;">
            <div class="container">
                <div class="row g-2">
                    <div class="col-md-10">
                        <div class="row g-2">
                            <div class="col-md-12">
                                <input type="text" id="search-bar" class="form-control border-0 py-3" placeholder="Search products...">
    <div id="suggestions"></div>

    <script>
        const products = ['scenery', 'headphones', 'nail polish', 'pens', 'novels','men\'s jewellery', 't shirt', 'jacket', 'posters', 'extension','anime', 'kettle'];
        let searchBar = document.getElementById('search-bar');
        let suggestions = document.getElementById('suggestions');
        let selectedIndex = -1;

        searchBar.addEventListener('keyup', (e) => {
            let userInput = e.target.value;
            let filteredProducts = products.filter((product) => {
                return product.toLowerCase().startsWith(userInput.toLowerCase());
            });

            if (filteredProducts.length) {
                populateSuggestions(filteredProducts);
            } else {
                suggestions.innerHTML = '';
            }
        });

        searchBar.addEventListener('keydown', (e) => {
            if (e.key === 'ArrowDown') {
                e.preventDefault();
                if (selectedIndex < suggestions.childElementCount - 1) {
                    selectedIndex++;
                }
                setSelectedItem();
            } else if (e.key === 'ArrowUp') {
                e.preventDefault();
                if (selectedIndex > 0) {
                    selectedIndex--;
                }
                setSelectedItem();
            } else if (e.key === 'Enter') {
                e.preventDefault();
                if (selectedIndex > -1) {
                    searchBar.value = suggestions.children[selectedIndex].textContent;
                }
                suggestions.innerHTML = '';
                selectedIndex = -1;
            }
        });

        function populateSuggestions(products) {
            suggestions.innerHTML = '';
            products.forEach((product) => {
                let listItem = document.createElement('li');
                listItem.textContent = product;
                suggestions.appendChild(listItem);
            });
            setSelectedItem();
        }

        function setSelectedItem() {
            let listItems = suggestions.children;
            if (selectedIndex > -1) {
                listItems[selectedIndex].style.backgroundColor = 'rgba(0, 0, 255, 0.2)';
                searchBar.value = listItems[selectedIndex].textContent;
            }
            for (let i = 0; i < listItems.length; i++) {
                if (i !== selectedIndex) {
                    listItems[i].style.backgroundColor = 'white';
                }
            }
        }
    </script>
                            	<div id="results-container"></div>
                            	
                            </div>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <a href="" class="btn btn-primary py-3 px-5 me-3 animated fadeIn">Search</a>
                        
                    </div>	
                </div>
                <div class="result-box">
                    </div>
            </div>
        </div>
        <!-- Search End -->

        <!-- items Start -->
        <div class="container-xxl py-5">
            <div class="container">
                <div class="row g-0 gx-5 align-items-end">
                    <div class="col-lg-6">
                        <div class="text-start mx-auto mb-5 wow slideInLeft" data-wow-delay="0.1s">
                            <h1 class="mb-3 text-light">Items on Bid</h1>
                            <p>Here's the list of the items that are up for grabs. Choose your pick and bid your heart away.</p>
                        </div>
                    </div>
                </div>
                <div class="tab-content">
                    <div id="tab-1" class="tab-pane fade show p-0 active">
                        <div class="row g-4">
                            <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                                <div class="property-item rounded overflow-hidden">
                                    <div class="sq position-relative overflow-hidden">
                                      <a href="product_page.jsp?value=<%=0%>&name=<%=0%>"><img class="sqimg object-fit-cover"  width="400" height="400" src=<%= st[0].getPr_img1() %> alt=""></a>
                                      
                                    </div>
                                    <div class="p-4 pb-0">
                                        <h5 class="text-primary mb-3">₹<%= st[0].getPr_price() %></h5>
                                        <a class="d-block h5 mb-2 text-light" href=""><%= st[0].getPr_name() %></a>                                    
                                    </div>
                                    <div class="d-flex border-top">
                                        <small class="flex-fill text-center py-2"><i class="fa text-primary me-2"></i>Time Remaining: 11h:47m:53s</small>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                                <div class="property-item rounded overflow-hidden">
                                    <div class="sq position-relative overflow-hidden">
                                        <a href="product_page.jsp?value=<%=1%>&name=<%=1%>"><img class="sqimg  object-fit-cover"  width="400" height="400" src=<%= st[1].getPr_img1() %> alt=""></a>
                                   
                                    </div>
                                    <div class="p-4 pb-0">
                                        <h5 class="text-primary mb-3">₹<%= st[1].getPr_price() %></h5>
                                        <a class="d-block h5 mb-2 text-light" href=""><%= st[1].getPr_name() %></a>                                    
                                    </div>
                                    <div class="d-flex border-top">
                                        <small class="flex-fill text-center py-2"><i class="fa text-primary me-2"></i>Time Remaining: 11h:47m:53s</small>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                                <div class="property-item rounded overflow-hidden">
                                    <div class="sq position-relative overflow-hidden">
                                       <a href="product_page.jsp?value=<%=2%>&name=<%=2%>"><img class="sqimg  object-fit-cover" width="400" height="400" src=<%= st[2].getPr_img1() %> alt=""></a>
                                    </div>
                                    <div class="p-4 pb-0">
                                        <h5 class="text-primary mb-3">₹<%= st[2].getPr_price() %></h5>
                                        <a class="d-block h5 mb-2 text-light" href=""><%= st[2].getPr_name() %></a>                                    
                                    </div>
                                    <div class="d-flex border-top">
                                        <small class="flex-fill text-center py-2"><i class="fa text-primary me-2"></i>Time Remaining: 11h:47m:53s</small>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                                <div class="property-item rounded overflow-hidden">
                                    <div class="sq position-relative overflow-hidden">
                                        <a href="product_page.jsp?value=<%=3%>&name=<%=3%>"><img class="sqimg object-fit-cover"  width="400" height="400" src=<%= st[3].getPr_img1() %> alt=""></a>
                                    </div>
                                    <div class="p-4 pb-0">
                                        <h5 class="text-primary mb-3">₹<%= st[3].getPr_price() %></h5>
                                        <a class="d-block h5 mb-2 text-light" href=""><%= st[3].getPr_name() %></a>                                    
                                    </div>
                                    <div class="d-flex border-top">
                                        <small class="flex-fill text-center py-2"><i class="fa text-primary me-2"></i>Time Remaining: 11h:47m:53s</small>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                                <div class="property-item rounded overflow-hidden">
                                    <div class="sq position-relative overflow-hidden">
                                        <a href="product_page.jsp?value=<%=4%>&name=<%=4%>"><img class="sqimg  object-fit-cover" width="400" height="400" src=<%= st[4].getPr_img1() %> alt=""></a>
                                    </div>
                                    <div class="p-4 pb-0">
                                        <h5 class="text-primary mb-3">₹<%= st[4].getPr_price() %></h5>
                                        <a class="d-block h5 mb-2 text-light" href=""><%= st[4].getPr_name() %></a>                                    
                                    </div>
                                    <div class="d-flex border-top">
                                        <small class="flex-fill text-center py-2"><i class="fa text-primary me-2"></i>Time Remaining: 11h:47m:53s</small>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                                <div class="property-item rounded overflow-hidden">
                                    <div class="sq position-relative overflow-hidden">
                                        <a href="product_page.jsp?value=<%=5%>&name=<%=5%>"><img class="sqimg  object-fit-cover" width="400" height="400" src=<%= st[5].getPr_img1() %> alt=""></a>
                                    </div>
                                    <div class="p-4 pb-0">
                                        <h5 class="text-primary mb-3">₹<%= st[5].getPr_price() %></h5>
                                        <a class="d-block h5 mb-2 text-light" href=""><%= st[5].getPr_name() %></a>                                    
                                    </div>
                                    <div class="d-flex border-top">
                                        <small class="flex-fill text-center py-2"><i class="fa text-primary me-2"></i>Time Remaining: 11h:47m:53s</small>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                                <div class="property-item rounded overflow-hidden">
                                    <div class="sq position-relative overflow-hidden">
                                        <a href="product_page.jsp?value=<%=6%>&name=<%=6%>"><img class="sqimg object-fit-cover"  width="400" height="400" src=<%= st[6].getPr_img1() %> alt=""></a>
                                    </div>
                                    <div class="p-4 pb-0">
                                        <h5 class="text-primary mb-3">₹<%= st[6].getPr_price() %></h5>
                                        <a class="d-block h5 mb-2 text-light" href=""><%= st[6].getPr_name() %></a>                                    
                                    </div>
                                    <div class="d-flex border-top">
                                        <small class="flex-fill text-center py-2"><i class="fa text-primary me-2"></i>Time Remaining: 11h:47m:53s</small>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                                <div class="property-item rounded overflow-hidden">
                                    <div class="sq position-relative overflow-hidden">
                                        <a href="product_page.jsp?value=<%=7%>&name=<%=7%>"><img class="sqimg  object-fit-cover" width="400" height="400" src=<%= st[7].getPr_img1() %> alt=""></a>
                                    </div>
                                    <div class="p-4 pb-0">
                                        <h5 class="text-primary mb-3">₹<%= st[7].getPr_price() %></h5>
                                        <a class="d-block h5 mb-2 text-light" href=""><%= st[7].getPr_name() %></a>                                    
                                    </div>
                                    <div class="d-flex border-top">
                                        <small class="flex-fill text-center py-2"><i class="fa text-primary me-2"></i>Time Remaining: 11h:47m:53s</small>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                                <div class="property-item rounded overflow-hidden">
                                    <div class="sq position-relative overflow-hidden">
                                        <a href="product_page.jsp?value=<%=8%>&name=<%=8%>"><img class="sqimg  object-fit-cover" width="400" height="400" src=<%= st[8].getPr_img1() %> alt=""></a>
                                    </div>
                                    <div class="p-4 pb-0">
                                        <h5 class="text-primary mb-3">₹<%= st[8].getPr_price() %></h5>
                                        <a class="d-block h5 mb-2 text-light" href=""><%= st[8].getPr_name() %></a>                                    
                                    </div>
                                    <div class="d-flex border-top">
                                        <small class="flex-fill text-center py-2"><i class="fa text-primary me-2"></i>Time Remaining: 11h:47m:53s</small>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                                <div class="property-item rounded overflow-hidden">
                                    <div class="sq position-relative overflow-hidden">
                                        <a href="product_page.jsp?value=<%=9%>&name=<%=9%>"><img class="sqimg object-fit-cover"  width="400" height="400" src=<%= st[9].getPr_img1() %> alt=""></a>
                                    </div>
                                    <div class="p-4 pb-0">
                                        <h5 class="text-primary mb-3">₹<%= st[9].getPr_price() %></h5>
                                        <a class="d-block h5 mb-2 text-light" href=""><%= st[9].getPr_name() %></a>                                    
                                    </div>
                                    <div class="d-flex border-top">
                                        <small class="flex-fill text-center py-2"><i class="fa text-primary me-2"></i>Time Remaining: 11h:47m:53s</small>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                                <div class="property-item rounded overflow-hidden">
                                    <div class="sq position-relative overflow-hidden">
                                        <a href="product_page.jsp?value=<%=10%>&name=<%=10%>"><img class="sqimg  object-fit-cover" width="400" height="400" src=<%= st[10].getPr_img1() %> alt=""></a>
                                    </div>
                                    <div class="p-4 pb-0">
                                        <h5 class="text-primary mb-3">₹<%= st[10].getPr_price() %></h5>
                                        <a class="d-block h5 mb-2 text-light" href=""><%= st[10].getPr_name() %></a>                                    
                                    </div>
                                    <div class="d-flex border-top">
                                        <small class="flex-fill text-center py-2"><i class="fa text-primary me-2"></i>Time Remaining: 11h:47m:53s</small>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                                <div class="property-item rounded overflow-hidden">
                                    <div class="sq position-relative overflow-hidden">
                                       <a href="product_page.jsp?value=<%=11%>&name=<%=11%>"><img class="sqimg  object-fit-cover" width="400" height="400" src=<%= st[11].getPr_img1() %> alt=""></a>
                                    </div>
                                    <div class="p-4 pb-0">
                                        <h5 class="text-primary mb-3">₹<%= st[11].getPr_price() %></h5>
                                        <a class="d-block h5 mb-2 text-light" href=""><%= st[11].getPr_name() %></a>                                    
                                    </div>
                                    <div class="d-flex border-top">
                                        <small class="flex-fill text-center py-2"><i class="fa text-primary me-2"></i>Time Remaining: 11h:47m:53s</small>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                                <div class="property-item rounded overflow-hidden">
                                    <div class="sq position-relative overflow-hidden">
                                        <a href="product_page.jsp?value=<%=12%>&name=<%=12%>"><img class="sqimg object-fit-cover"  width="400" height="400" src=<%= st[12].getPr_img1() %> alt=""></a>
                                    </div>
                                    <div class="p-4 pb-0">
                                        <h5 class="text-primary mb-3">₹<%= st[12].getPr_price() %></h5>
                                        <a class="d-block h5 mb-2 text-light" href=""><%= st[12].getPr_name() %></a>                                    
                                    </div>
                                    <div class="d-flex border-top">
                                        <small class="flex-fill text-center py-2"><i class="fa text-primary me-2"></i>Time Remaining: 11h:47m:53s</small>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- items End -->


       

        <!-- Footer Start -->
        <div class="container-fluid bg-dark text-white-50 footer pt-5 mt-5 wow fadeIn" data-wow-delay="0.1s">
            <div class="container">
                <div class="copyright">
                    <div class="row">
                        <div class="col-md-6 text-center text-md-start mb-3 mb-md-0">
                            &copy; <a class="border-bottom" href="#">BITSbids</a>, All Right Reserved. 
                        </div>
                        <div class="col-md-6 text-center text-md-end">
                            <div class="footer-menu">
                                <a href="">Home</a>
                                <a href="">Cookies</a>
                                <a href="">Help</a>
                                <a href="">FAQs</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer End -->


        <!-- Back to Top -->
        <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
    </div>

    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/wow/wow.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
    <script src="js/autocomplete.js"></script>   
</body>

</html>