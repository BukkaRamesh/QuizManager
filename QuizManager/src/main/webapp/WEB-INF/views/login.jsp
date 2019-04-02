<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@include file="pageLeft.jsp"%>
<!doctype html>
<html>
<head>
</head>
<body>
<div class="wrapper fadeInDown">
  <div id="formContent" class="form-group">
    <div class="fadeIn first">
		<img src="./resources/images/Usericon.png" alt="" />
    </div>
    <!-- Login Form -->
    <form action="${pageContext.request.contextPath}/login" id="loginForm" method="post" class="form-horizontal">
    
    	<div class="form-group">
     	  <input type="text" id="login" class="fadeIn second" name="email" placeholder="Email Address" value="${personDetails.email}">
     	</div>
     	 
     	<div class="form-group">
      	  <input type="password" id="password" class="fadeIn third" name="password" placeholder=" Password"><br><br>
		     <div style="color: red">
		     ${errormsg}
		     </div>
        </div>
      
        <div class="form-group" style="text-align: center;">
		  <label style="color: #17A589">You stay In here</label>
			<select id="disabledSelect" class="form-control" name="stayIn">
				<c:forEach var="cities" items="${getcities}">
					<option value=${cities}>${cities}</option>
				</c:forEach>
			</select>
		</div>
        <div class="form-group" style="text-align: center;">
            <input type="checkbox" id="agreeForTerms" name="agreeForTerms">I agree to terms 
            <a href="#" data-toggle="modal" data-target="#myModal" class="col-blue">Terms &Conditions and Privacy Policy</a>
       </div>
	    
      <input type="submit" class="fadeIn fourth" value="Log In">
      <input type="button"  class="fadeIn fourth" value="SignUp" onclick="window.location.href='./registration'">
    </form>

    <!-- Remind Passowrd -->
    <div id="formFooter">
      <a class="underlineHover" href="${pageContext.request.contextPath}/forgotPassword">Forgot Password?</a>
      <a class="underlineHover" href="https://echequedev.devtpit.com">eCheque</a>
      
    </div>

  </div>
</div>
<div class="Rajesh Vanga">

</div>

<!-- Modal -->
<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog modal-lg">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header pt-n">
        
        <h3 class="font-21">Terms and Conditions</h3>
        <button type="button" class="close font-21" data-dismiss="modal">&times;</button>
      </div>
      <div class="modal-body">
        <p class="font-12">Last updated: March 20, 2019</p>
        <p>Please read these Terms and Conditions. </p>
		<p>Your access to and use of the Service is conditioned upon your acceptance.</p>
      </div>
      
      <div class="modal-footer">
        <button type="button" class="btn btn-primary g-bg-blue waves-effect" data-dismiss="modal">Close</button>
      </div>
      
      <div class="modal-footer">
        <button type="button" class="btn btn-primary g-bg-blue waves-effect" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>
<div class="theme-bg"></div>

</body>
</html>