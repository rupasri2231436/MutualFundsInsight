<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="css/styles.css" /> <!-- Link to external CSS file -->
</head>
<body>
<nav>  
        <div class="logo">  
            <img src="templates/static/images/mutualfund.jpg" alt="SBI Mutual Fund Logo">  
        </div>  
        <ul>  
	        <li>  
	                <a href="home.jsp">Home</a>  
	                  
	            </li> 
            <li>  
                <a href="invest.jsp">Learn to Invest</a>  
                  
            </li>  
            <li>  
                <a href="plan.jsp">Plan Investments</a>  
            </li>  
            <li>  
                <a href="browse.jsp">Browse & Invest</a>  
                
            </li>  
            <li>  
                <a href="services.jsp">Investor Services</a>  
                
            </li>  
        </ul>  
        <div class="search-container">  
            <input type="text" placeholder="Search...">  
            <button>Search</button>  
            <!-- Replaced Quick Invest with Login -->
            <button class="login" onclick="window.location.href='index.jsp'">Login</button>  
        </div>   
    </nav>  
    <div class="loginWindow">
        <div class="loginHeader">Login</div>
        <div class="input-group">
            <input type="text" id="email" placeholder="Email" />
            <input type="password" id="password" placeholder="Password" />
        </div>
        <div class="checkbox-group">
            <input type="checkbox" id="rememberMe">
            <label for="rememberMe">Remember me?</label>
        </div>
        <button class="signinButton" onclick="signIn()">Login</button>
        <div class="forgot-password">
            <a href="#">Forgot Password?</a>
        </div>
        <div class="social-buttons">
            <img src="templates/static/images/google.png" alt="Goog">
            <img src="templates/static/images/facebook.png" alt="Facebook">
            <img src="templates/static/images/linkedin.png" alt="LinkedIn">
        </div>
        <div class="signup-prompt">
            <span>Need an account? <a href="#" onclick="signUp()">SIGN UP</a></span>
        </div>
    </div>

    <script type="text/javascript" src="js/main.js"></script>
    <script type="text/javascript">
        function signIn() {
            var data = JSON.stringify({
                email: document.getElementById("email").value,
                password: document.getElementById("password").value
            });
            var url = "http://localhost:8080/user/login";
            callApi("POST", url, data, getResponse);
        }

        function getResponse(res) {
            if (res == 401) {
                alert("Invalid Credentials!");
            } else {
                location.href = "/home";
            }
        }

        function signUp() {
            location.href = "signup.jsp";
        }
    </script>
</body>
</html>
