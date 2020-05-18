<%@page import="java.sql.*" %>
<%@page import="javax.servlet.RequestDispatcher" %>

<!DOCTYPE html>
<html>
<head>
	<title>index2 page</title>
	<link rel="stylesheet" type="text/css" href="input.css">
	<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" ></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" ></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="top-nav-bar">
		<div class="search-box">
			<i class="fa fa-bars" id="menu-btn" onclick="openmenu()"></i>
			<i class="fa fa-times" id="close-btn" onclick="closemenu()"></i>
			<img src="logo.png" class="logo">
			<input type="text" name="" class="form-control">
			<span class="input-group-text"><i class="fa fa-search" aria-hidden="true"></i></span>

		</div>
          <div class="menu-bar">
          	<ul>
          		
          		<li><i class=" "></i>
          		<% 
          		Class.forName("oracle.jdbc.driver.OracleDriver");
          		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","rk","sharma");
          		PreparedStatement ps=con.prepareStatement("select name from signup_user where email=? and pass=?");
                ps.setString(1,request.getParameter("email"));
				ps.setString(2,request.getParameter("pass"));
                ResultSet rs=ps.executeQuery();
				RequestDispatcher rd=request.getRequestDispatcher("error.jsp");
				if(rs!=null&&rs.next())
          		out.print("<b style='color:white'>"+rs.getString(1)+"</b>");
                else
				rd.forward(request,response);
                          		
          		
          		%>
          		<ul class="dd">
          		<li><a href="#">profile</a></li>
          		<li><a href="#">special offer</a></li>
          		<li><a href="#">wallet</a></li>
          		<li><a href="index.html">log out</a></li>
          		</ul>
          		</li>
          		<li><a href=""><i class="fa fa-shopping-basket" ></i>Cart</a></li>
          	</ul>
          </div>
	</div>
	<section class="header">
		<div class="side-menu" id="side-menu">
			<ul>
				
				<li>Mobile<i class="fa fa-angle-right"></i>
					 <ul>
                  	<li>oppo</li>					
					<li>Redmi</li>
					<li>Apple</li>
					<li>Realme</li>
                  </ul>
				</li>
				<li>Computer<i class="fa fa-angle-right"></i>
					 <ul>
                  	<li>assus</li>					
					<li>Apple</li>
					<li>DELL</li>
					<li>HP</li>
                  </ul>
				</li>
				<li>Books<i class="fa fa-angle-right"></i>
					 <ul>
                  	<li>love</li>					
					<li>motivation</li>
					<li>enginering</li>
					<li>school</li>
                  </ul>
				</li>
				<li>Fitness<i class="fa fa-angle-right"></i>
					 <ul>
                  	<li>wrist</li>					
					<li>bisape</li>
					<li>leg</li>
					<li>back</li>
                  </ul>
				</li>
				<li>Baby Care<i class="fa fa-angle-right"></i>
					 <ul>
                  	<li>gohnson</li>					
					<li>madimix</li>
					<li>himmlaya</li>
					<li>mamaearth</li>
                  </ul>
				</li>
				<li>Shoes<i class="fa fa-angle-right"></i>
					 <ul>
                  	<li>men</li>					
					<li>women</li>
					<li>kids</li>
                  </ul>
				</li>
				<li>Home and Furnitures<i class="fa fa-angle-right"></i>
					 <ul>
                  	<li>Bed room Furniture</li>					
					<li>living & diningroom Furniture</li>
					<li>home decor</li>
					<li>home lighting</li>
                  </ul>
				</li>
				<li>Kitchen<i class="fa fa-angle-right"></i>
					 <ul>
                  	<li>Gas stoves</li>					
					<li>Kitchen Tools</li>
					<li>Kitchen conainers</li>
					<li>equpments</li>
                  </ul>
				</li><li>Grocery<i class="fa fa-angle-right"></i>
					 <ul>
                  	<li>Cooking & baking items</li>					
					<li>Beverages & healthy drinks</li>
					<li>Ready to Eat</li>
					<li>Sweet and snacks</li>
                  </ul>
				</li>
				<li>Clothes<i class="fa fa-angle-right"></i>
					 <ul>
                  	<li>Men</li>					
					<li>Women</li>
					<li>kids</li>
                  </ul>
				</li>
			</ul>


		</div>
		<div class="slider">
	<div id="slider" class="carousel slide carousel-fade" data-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="onsale/shoessale.jpeg" class="d-block w-100" >
    </div>
    <div class="carousel-item">
      <img src="onsale/mobailsale.png" class="d-block w-100" >
    </div>
    <div class="carousel-item">
      <img src="onsale/electroniconsale.jpeg" class="d-block w-100" >
    </div>
  </div>
  
  <ol class="carousel-indicators">
    <li data-target="#slider" data-slide-to="0" class="active"></li>
    <li data-target="#slider" data-slide-to="1"></li>
    <li data-target="#slider" data-slide-to="2"></li>
  </ol>
</div>	
		</div>
	</section>

<!---------------------features-catagorise---->
 
<section class="featured-categorise">
	<div class="container">
		<div class="row" >
			<div class="col-md-4">
				<img src="onsale/beauty.jpeg">
			</div>
			<div class="col-md-4">
				<img src="onsale/headphone.png">
			</div>
			<div class="col-md-4">
				<img src="onsale/watches.png">
			</div>
		</div>
	</div>

</section>

<!----------------------------on sale product----------------------->
<section class="on-sale">
	<div class="container">
		<div class="title-box">
			<h2>On Sale</h2>
		</div>
		<div class="row">
          <div class="col-md-3">
          	<div class="product-top">
          		<img src="onsale/headphone1.jpg">
          		<div class="overlay-right">
          			<button type="button" class="btn btn-secondary" title="Quick shop">
          				<i class="fa fa-eye"></i>
          			</button>
          			<button type="button" class="btn btn-secondary" title="Add to wish list">
          				<i class="fa fa-heart-o"></i>
          			</button>
          			<button type="button" class="btn btn-secondary" title="Add to cart">
          				<i class="fa fa-shopping-cart"></i>
          			</button>
          		</div>
          	</div>
          	<div class="product-bottom text-center">
          		<i class="fa fa-star"></i>
          		<i class="fa fa-star"></i>
          		<i class="fa fa-star"></i>
          		<i class="fa fa-star"></i>
          		<i class="fa fa-star-half-o"></i>2
                    <h3>Boat Headphone</h3>
                    <h5>â‚¹1000.00</h5>
          	</div>
          </div>



         <div class="col-md-3">
          	<div class="product-top">
          		<img src="onsale/formalpant.jpg">
          		<div class="overlay-right">
          			<button type="button" class="btn btn-secondary" title="Quick shop">
          				<i class="fa fa-eye"></i>
          			</button>
          			<button type="button" class="btn btn-secondary" title="Add to wish list">
          				<i class="fa fa-heart-o"></i>
          			</button>
          			<button type="button" class="btn btn-secondary" title="Add to cart">
          				<i class="fa fa-shopping-cart"></i>
          			</button>
          		</div>
          	</div>
          	<div class="product-bottom text-center">
          		<i class="fa fa-star"></i>
          		<i class="fa fa-star"></i>
          		<i class="fa fa-star"></i>
          		<i class="fa fa-star"></i>
          		<i class="fa fa-star-half-o"></i>
                    <h3>Boat Headphone</h3>
                    <h5>â‚¹1000.00</h5>
          	</div>
          </div>

          <div class="col-md-3">
          	<div class="product-top">
          		<img src="onsale/shoes.jpg">
          		<div class="overlay-right">
          			<button type="button" class="btn btn-secondary" title="Quick shop">
          				<i class="fa fa-eye"></i>
          			</button>
          			<button type="button" class="btn btn-secondary" title="Add to wish list">
          				<i class="fa fa-heart-o"></i>
          			</button>
          			<button type="button" class="btn btn-secondary" title="Add to cart">
          				<i class="fa fa-shopping-cart"></i>
          			</button>
          		</div>
          	</div>
          	<div class="product-bottom text-center">
          		<i class="fa fa-star"></i>
          		<i class="fa fa-star"></i>
          		<i class="fa fa-star"></i>
          		<i class="fa fa-star"></i>
          		<i class="fa fa-star-half-o"></i>
                    <h3>Boat Headphone</h3>
                    <h5>â‚¹1000.00</h5>
          	</div>
          </div>



           <div class="col-md-3">
          	<div class="product-top">
          		<img src="onsale/formalshirt.jpeg">
          		<div class="overlay-right">
          			<button type="button" class="btn btn-secondary" title="Quick shop">
          				<i class="fa fa-eye"></i>
          			</button>
          			<button type="button" class="btn btn-secondary" title="Add to wish list">
          				<i class="fa fa-heart-o"></i>
          			</button>
          			<button type="button" class="btn btn-secondary" title="Add to cart">
          				<i class="fa fa-shopping-cart"></i>
          			</button>
          		</div>
          	</div>
          	<div class="product-bottom text-center">
          		<i class="fa fa-star"></i>
          		<i class="fa fa-star"></i>
          		<i class="fa fa-star"></i>
          		<i class="fa fa-star"></i>
          		<i class="fa fa-star-half-o"></i>
                    <h3>Boat Headphone</h3>
                    <h5>â‚¹1000.00</h5>
          	</div>
          </div>


		 </div>
	</div>

</section>

<!-----------------new product-------------------->




<section class="new-products">
	<div class="container">
		<div class="title-box">
			<h2>New Arrival</h2>
		</div>
		<div class="row">
          <div class="col-md-3">
          	<div class="product-top">
          		<img src="onsale/headphone1.jpg">
          		<div class="overlay-right">
          			<button type="button" class="btn btn-secondary" title="Quick shop">
          				<i class="fa fa-eye"></i>
          			</button>
          			<button type="button" class="btn btn-secondary" title="Add to wish list">
          				<i class="fa fa-heart-o"></i>
          			</button>
          			<button type="button" class="btn btn-secondary" title="Add to cart">
          				<i class="fa fa-shopping-cart"></i>
          			</button>
          		</div>
          	</div>
          	<div class="product-bottom text-center">
          		<i class="fa fa-star"></i>
          		<i class="fa fa-star"></i>
          		<i class="fa fa-star"></i>
          		<i class="fa fa-star"></i>
          		<i class="fa fa-star-half-o"></i>2
                    <h3>Boat Headphone</h3>
                    <h5>â‚¹1000.00</h5>
          	</div>
          </div>



         <div class="col-md-3">
          	<div class="product-top">
          		<img src="onsale/formalpant.jpg">
          		<div class="overlay-right">
          			<button type="button" class="btn btn-secondary" title="Quick shop">
          				<i class="fa fa-eye"></i>
          			</button>
          			<button type="button" class="btn btn-secondary" title="Add to wish list">
          				<i class="fa fa-heart-o"></i>
          			</button>
          			<button type="button" class="btn btn-secondary" title="Add to cart">
          				<i class="fa fa-shopping-cart"></i>
          			</button>
          		</div>
          	</div>
          	<div class="product-bottom text-center">
          		<i class="fa fa-star"></i>
          		<i class="fa fa-star"></i>
          		<i class="fa fa-star"></i>
          		<i class="fa fa-star"></i>
          		<i class="fa fa-star-half-o"></i>
                    <h3>Boat Headphone</h3>
                    <h5>â‚¹1000.00</h5>
          	</div>
          </div>

          <div class="col-md-3">
          	<div class="product-top">
          		<img src="onsale/shoes.jpg">
          		<div class="overlay-right">
          			<button type="button" class="btn btn-secondary" title="Quick shop">
          				<i class="fa fa-eye"></i>
          			</button>
          			<button type="button" class="btn btn-secondary" title="Add to wish list">
          				<i class="fa fa-heart-o"></i>
          			</button>
          			<button type="button" class="btn btn-secondary" title="Add to cart">
          				<i class="fa fa-shopping-cart"></i>
          			</button>
          		</div>
          	</div>
          	<div class="product-bottom text-center">
          		<i class="fa fa-star"></i>
          		<i class="fa fa-star"></i>
          		<i class="fa fa-star"></i>
          		<i class="fa fa-star"></i>
          		<i class="fa fa-star-half-o"></i>
                    <h3>Boat Headphone</h3>
                    <h5>â‚¹1000.00</h5>
          	</div>
          </div>



           <div class="col-md-3">
          	<div class="product-top">
          		<img src="onsale/formalshirt.jpeg">
          		<div class="overlay-right">
          			<button type="button" class="btn btn-secondary" title="Quick shop">
          				<i class="fa fa-eye"></i>
          			</button>
          			<button type="button" class="btn btn-secondary" title="Add to wish list">
          				<i class="fa fa-heart-o"></i>
          			</button>
          			<button type="button" class="btn btn-secondary" title="Add to cart">
          				<i class="fa fa-shopping-cart"></i>
          			</button>
          		</div>
          	</div>
          	<div class="product-bottom text-center">
          		<i class="fa fa-star"></i>
          		<i class="fa fa-star"></i>
          		<i class="fa fa-star"></i>
          		<i class="fa fa-star"></i>
          		<i class="fa fa-star-half-o"></i>
                    <h3>Boat Headphone</h3>
                    <h5>â‚¹1000.00</h5>
          	</div>
          </div>


            <div class="col-md-3">
          	<div class="product-top">
          		<img src="onsale/shoes.jpg">
          		<div class="overlay-right">
          			<button type="button" class="btn btn-secondary" title="Quick shop">
          				<i class="fa fa-eye"></i>
          			</button>
          			<button type="button" class="btn btn-secondary" title="Add to wish list">
          				<i class="fa fa-heart-o"></i>
          			</button>
          			<button type="button" class="btn btn-secondary" title="Add to cart">
          				<i class="fa fa-shopping-cart"></i>
          			</button>
          		</div>
          	</div>
          	<div class="product-bottom text-center">
          		<i class="fa fa-star"></i>
          		<i class="fa fa-star"></i>
          		<i class="fa fa-star"></i>
          		<i class="fa fa-star"></i>
          		<i class="fa fa-star-half-o"></i>
                    <h3>Boat Headphone</h3>
                    <h5>â‚¹1000.00</h5>
          	</div>
          </div>


           <div class="col-md-3">
          	<div class="product-top">
          		<img src="onsale/shoes.jpg">
          		<div class="overlay-right">
          			<button type="button" class="btn btn-secondary" title="Quick shop">
          				<i class="fa fa-eye"></i>
          			</button>
          			<button type="button" class="btn btn-secondary" title="Add to wish list">
          				<i class="fa fa-heart-o"></i>
          			</button>
          			<button type="button" class="btn btn-secondary" title="Add to cart">
          				<i class="fa fa-shopping-cart"></i>
          			</button>
          		</div>
          	</div>
          	<div class="product-bottom text-center">
          		<i class="fa fa-star"></i>
          		<i class="fa fa-star"></i>
          		<i class="fa fa-star"></i>
          		<i class="fa fa-star"></i>
          		<i class="fa fa-star-half-o"></i>
                    <h3>Boat Headphone</h3>
                    <h5>â‚¹1000.00</h5>
          	</div>
          </div>

       
        <div class="col-md-3">
          	<div class="product-top">
          		<img src="onsale/shoes.jpg">
          		<div class="overlay-right">
          			<button type="button" class="btn btn-secondary" title="Quick shop">
          				<i class="fa fa-eye"></i>
          			</button>
          			<button type="button" class="btn btn-secondary" title="Add to wish list">
          				<i class="fa fa-heart-o"></i>
          			</button>
          			<button type="button" class="btn btn-secondary" title="Add to cart">
          				<i class="fa fa-shopping-cart"></i>
          			</button>
          		</div>
          	</div>
          	<div class="product-bottom text-center">
          		<i class="fa fa-star"></i>
          		<i class="fa fa-star"></i>
          		<i class="fa fa-star"></i>
          		<i class="fa fa-star"></i>
          		<i class="fa fa-star-half-o"></i>
                    <h3>Boat Headphone</h3>
                    <h5>â‚¹1000.00</h5>
          	</div>
          </div>

           <div class="col-md-3">
          	<div class="product-top">
          		<img src="onsale/shoes.jpg">
          		<div class="overlay-right">
          			<button type="button" class="btn btn-secondary" title="Quick shop">
          				<i class="fa fa-eye"></i>
          			</button>
          			<button type="button" class="btn btn-secondary" title="Add to wish list">
          				<i class="fa fa-heart-o"></i>
          			</button>
          			<button type="button" class="btn btn-secondary" title="Add to cart">
          				<i class="fa fa-shopping-cart"></i>
          			</button>
          		</div>
          	</div>
          	<div class="product-bottom text-center">
          		<i class="fa fa-star"></i>
          		<i class="fa fa-star"></i>
          		<i class="fa fa-star"></i>
          		<i class="fa fa-star"></i>
          		<i class="fa fa-star-half-o"></i>
                    <h3>Boat Headphone</h3>
                    <h5>â‚¹1000.00</h5>
          	</div>
          </div>



		 </div>
	</div>
</section>


<!--------------------website Features---------------------->
<section class="website-features">
	<div class="container">
		<div class="row">
			<div class="col-md-3 feature-box">
				<img src="onsale/originallogo.jpg">
				<div class="feature-text">
					<p><b>100% Original Items</b> are available at company</p>
				</div>
			</div>

			<div class="col-md-3 feature-box">
				<img src="onsale/returnlogo.png">
				<div class="feature-text">
					<p><b>Return within 10 days</b> of reciveing your order.</p>
				</div>
			</div>

			<div class="col-md-3 feature-box">
				<img src="onsale/deliverylogo.jpg">
				<div class="feature-text">
					<p><b>Get free delivary for every</b> order on more then price.</p>
				</div>
			</div>

			<div class="col-md-3 feature-box">
				<img src="onsale/paylogo.png">
				<div class="feature-text">
					<p><b>pay online through multiple</b> options(card/net banking)</p>
				</div>
			</div>

		</div>
	</div>
</section>




<!----------------footer----------------->

<section class="footer">
	<div class="container  text-center">
		<div class="row">
			<div class="col-md-3">
				<h1>Usefull Links</h1>
				<p>Privacy Policy</p>
				<p>Terms of use</p>
				<p>Return Policy</p>
				<p>Discount Coupons</p>

			</div>

			<div class="col-md-3">
				<h1>Company</h1>
				<p>About Us</p>
				<p>Contact Us</p>
				<p>Career</p>
				<p>Affliate</p>

			</div>

			<div class="col-md-3">
				<h1>Follow Us On</h1>
				<p><i class="fa fa-facebook-official"></i>  Facebook</p>
				<p><i class="fa fa-youtube-play"></i>  Youtube</p>
				<p><i class="fa fa-linkedin"></i>  Linkedin</p>
				<p><i class="fa fa-twitter"></i> Twitter</p>

			</div>
				<div class="col-md-3 footer-image">
				<h1>Download App</h1>
				<img src="onsale/applogo.jpeg">
			</div>
		</div>
		<hr>
		<h3 class="copright"> Made by <i class="fa fa-heart-o"></i> <b>Ritesh kumar</b></h3>
	</div>


</section>


<script >
	function openmenu(){
		document.getElementById("side-menu").style.display="block";
		document.getElementById("menu-btn").style.display="none";
		document.getElementById("close-btn").style.display="block";
	}
	function closemenu(){
		document.getElementById("side-menu").style.display="none";
		document.getElementById("menu-btn").style.display="block";
		document.getElementById("close-btn").style.display="none";
	}
</script>



</body>
</html>