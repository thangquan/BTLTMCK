<!--
	Author: W3layouts
	Author URL: http://w3layouts.com
	License: Creative Commons Attribution 3.0 Unported
	License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
<head>
  <title>Login</title>
 <!-- custom-theme -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Elegant Login Form Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //custom-theme  -->
<link rel="stylesheet" href="Login2/css/style.css">
   <!-- font-awesome icons -->
<link href="Login2/css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons -->
<link href="//fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet">
  </head>
  <style>
            #AlertBox {
                text-align: center;
                color:red;
                font-size: 20px;
                font-weight: bold;
            }

        </style>
  <body>
<div class="login-form w3_form">
  <!--  Title-->
            
           <div class="login w3_login">
                <h2 class="login-header w3_header" >Log in</h2>
                
		<div id="logreg-forms" class="w3l_grid">
                    <div><p id="AlertBox">
                        <c:choose>
                            <c:when test="${sessionScope.message==null}">
                            </c:when>
                            <c:when test="${sessionScope.message!=null}">
                                ${sessionScope.message}
                            </c:when>
                        </c:choose>
                    </p></div>
                        <form class="login-container form-signin" action="LoginControl" method="post">
                             <input type="text" placeholder="Username" name="user"   required="" >
                             <input type="password" placeholder="Password" name="pass" required="">
                             <input type="submit" value="Submit">
                        </form>
<div class="second-section w3_section">
     <div class="bottom-header w3_bottom">
          <h3>OR</h3>
     </div>
     <div class="social-links w3_social">
         <ul>
         <!-- facebook -->
             <li> <a class="facebook" href="#" target="blank"><i class="fa fa-facebook"></i></a></li>

         <!-- twitter -->
             <li> <a class="twitter" href="#" target="blank"><i class="fa fa-twitter"></i></a></li>

         <!-- google plus -->
             <li> <a class="googleplus" href="#" target="blank"><i class="fa fa-google-plus"></i></a></li>
       </ul>
   </div>
</div>
                 
<div class="bottom-text w3_bottom_text">
      <p>No account yet?<a href="#">Signup</a></p>
      <h4> <a href="#">Forgot your password?</a></h4>
</div>

                  </div>
       </div>
  
</div>
  
      <script>
            function toggleResetPswd(e) {
                e.preventDefault();
                $('#logreg-forms .form-signin').toggle() // display:block or none
                $('#logreg-forms .form-reset').toggle() // display:block or none
            }

            function toggleSignUp(e) {
                e.preventDefault();
                $('#logreg-forms .form-signin').toggle(); // display:block or none
                $('#logreg-forms .form-signup').toggle(); // display:block or none
            }

//            $(() => {
//                // Login Register Form
//                $('#logreg-forms #forgot_pswd').click(toggleResetPswd);
//                $('#logreg-forms #cancel_reset').click(toggleResetPswd);
//                $('#logreg-forms #btn-signup').click(toggleSignUp);
//                $('#logreg-forms #cancel_signup').click(toggleSignUp);
//            })
            $(function () {
                $('#AlertBox').removeClass('hide');
                $('#AlertBox').delay(4000).slideUp(500);
            });
        </script>
</body>
</html>