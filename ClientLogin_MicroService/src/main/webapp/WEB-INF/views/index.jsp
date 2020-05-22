<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
  <style>
.center {
  text-align: center;
  border: 3px solid green;
}

input[type=password], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}
input[type=text], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=submit] {
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

div {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
</style>
  
</head>
<body>

<div class="container-fluid">

<div class="row">
      <div class="col-sm-12 center" style="background-color:Black;">
      
      <font size="6"
          face="verdana"
          color="white">
          Spring Boot Oauth2 Security Project
        </font>
              
      </div>
            
 </div>

</div>

<hr>

<div class="container-fluid">

<div class="row">
      
      <div class="col-sm-6 " style="background-color:white;">
      
      </div>
      
      <div class="col-sm-6 " style="background-color:white;">
      
     <h3>Login</h3>

<div class="float-left">

<c:if test="${not empty errorMessge}">
    <div style="color:red; font-weight: bold; margin: 30px 0px;">${errorMessge}</div>
    </c:if>
 
 
   
  <form id="loginform"  action="/login"  method="post">
                                    
    <label for="username">Username</label>
    <input type="text" id="username" name="username" placeholder="Enter Your Username....">

    <label for="password">Password</label>
    <input type="password" id="password" name="password" placeholder="Enter Your Password..">

    
  
    <input type="submit" value="Submit">
    <div class="form-group">
                                    <div class="col-md-12 control">
                                        <div style="border-top: 1px solid#888; padding-top:15px; font-size:85%" >
                                            Don't have an account?
                                        <a href="/newRegistration" >
                                            Sign Up Here
                                        </a>|<a href="#">Forgot password?</a>
                                        
                                        
                                    
                                </div>  </div>   </div>
  </form>
</div>

      </div>
            
 </div>
 

</div>





</body>
</html>