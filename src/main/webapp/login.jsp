<%@page import="cn.techtutorial.model.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%
	User auth = (User) request.getSession().getAttribute("auth");
	if (auth != null) {
		response.sendRedirect("index.jsp");
	}
	ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
	if (cart_list != null) {
		request.setAttribute("cart_list", cart_list);
	}
	%>
<!DOCTYPE html>
<html>
<head>
<%@include file="/includes/head.jsp"%>
<title>E-Commerce Cart</title>

  <link href="css/login.css" rel="stylesheet" type="text/css"/>
</head>
<body>
	

        <div class="container-fluid" style="width: 100vw; height: 100vh">
            <%@include file="/includes/navbar.jsp"%>
<!--		<div class="card w-50 mx-auto my-5">
			<div class="card-header text-center">User Login</div>
			<div class="card-body">
				<form action="user-login" method="post">
					<div class="form-group">
						<label>Email address</label> 
						<input type="email" name="login-email" class="form-control" placeholder="Enter email">
					</div>
					<div class="form-group">
						<label>Password</label> 
						<input type="password" name="login-password" class="form-control" placeholder="Password">
					</div>
					<div class="text-center">
						<button type="submit" class="btn btn-primary">Login</button>
                                                 <a href = "<%=request.getContextPath()%>/RegisterServlet" id = "link-register">Click here to Register</a>
					</div>
				</form>
			</div>
		</div>-->


<section class="card vh-100">
  <div class="container-fluid h-custom">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-md-9 col-lg-6 col-xl-5">
          <div class="box">
 
    <span class="c1"></span>
    <span class="c2"></span>
    <span class="c3"></span>
    <span class="c4"></span>
    <span class="c5"></span>
    <span class="c6"></span>
    <span class="c7"></span>
    <span class="c8"></span>
    <span class="c9"></span>
    <span class="c10"></span>
    <span class="c11"></span>
    <span class="c12"></span>
    <span class="c13"></span>
    <span class="c14"></span>
    <span class="c15"></span>
    <span class="c16"></span>
    <span class="c17"></span>
    <span class="c18"></span>
    <span class="c19"></span>
    <span class="c20"></span>
    <span class="c21"></span>
    <span class="c22"></span>
    <span class="c23"></span>
    <span class="c24"></span>
    <span class="c25"></span>
    <span class="c26"></span>
    <span class="c27"></span>
    <span class="c28"></span>
    <span class="c29"></span>
    <span class="c30"></span>
    <span class="c31"></span>
    <span class="c32"></span>
    <span class="c33"></span>
    <span class="c34"></span>
    <span class="c35"></span>
    <span class="c36"></span>
    <div class="image" style="background-image:url(https://nhaxinh.com/wp-content/uploads/2022/06/nha-xinh-mau-phong-khach-7-6-22.jpg)"></div>
  
</div>
        
      </div>
      <div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1">
        <form action="user-login" method="post">
         
          <!-- Email input -->
          <div class="form-outline mb-4 form-group">
              <label class="form-label" for="form3Example3">Email address</label>
            <input type="email" id="form3Example3" class="form-control form-control-lg"
              placeholder="Enter a valid email address" name="login-email"/>
            
          </div>

          <!-- Password input -->
          <div class="form-outline mb-3 form-group">
              <label class="form-label" for="form3Example4">Password</label>
            <input type="password" name="login-password" id="form3Example4" class="form-control form-control-lg"
              placeholder="Enter password" />
            
          </div>

          <div class="d-flex justify-content-between align-items-center">
            <!-- Checkbox -->
            <div class="form-check mb-0">
              <input class="form-check-input me-2" type="checkbox" value="" id="form2Example3" />
              <label class="form-check-label" for="form2Example3" name="login-password" >
                Remember me
              </label>
            </div>
<!--            <a href="#!" class="text-body">Forgot password?</a>-->
          </div>

          <div class="text-center text-lg-start mt-4 pt-2">
            <button type="submit" class="btn btn-primary btn-lg"
              style="padding-left: 2.5rem; padding-right: 2.5rem;">Login</button>
            <p class="small fw-bold mt-2 pt-1 mb-0">Don't have an account? <a href="#!"
                class="link-danger">Register</a></p>
          </div>

        </form>
      </div>
    </div>
  </div>

</section>
	</div>

	<%@include file="/includes/footer.jsp"%>
</body>
</html>