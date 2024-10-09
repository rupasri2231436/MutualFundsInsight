<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Signup</title>
    <style>
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
        }

        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 110vh;
            background-color: #f4f4f4;
        }

        .signup-container {
            width: 100%;
            max-width: 450px;
            padding: 20px;
        }

        .signup-window {
            background-color: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 4px 12px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        .signup-header {
            font-size: 24px;
            margin-bottom: 20px;
            color: #333;
        }

        .signup-form input {
            width: 100%;
            padding: 12px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 14px;
        }

        .signup-button {
            width: 100%;
            padding: 12px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
        }

        .signup-button:hover {
            background-color: #0056b3;
        }

        .already-account {
            margin-top: 20px;
            font-size: 14px;
        }

        .already-account a {
            color: #007bff;
            text-decoration: none;
        }

        .divider {
            margin: 20px 0;
            font-size: 14px;
            position: relative;
        }

        .divider span {
            background-color: white;
            padding: 0 10px;
            position: relative;
            z-index: 1;
        }

        .divider::before {
            content: '';
            position: absolute;
            top: 50%;
            left: 0;
            width: 100%;
            height: 1px;
            background-color: #ccc;
            z-index: 0;
        }

        .social-login {
            display: flex;
            flex-direction: column;
            gap: 10px;
        }

        .social-button {
            width: 100%;
            padding: 12px;
            font-size: 14px;
            border-radius: 5px;
            cursor: pointer;
            border: none;
        }

        .facebook {
            background-color: #3b5998;
            color: white;
        }

        .google {
            background-color: white;
            color: black;
            border: 1px solid #ccc;
        }

        .google:hover {
            background-color: #f1f1f1;
        }
    </style>
</head>
<body>
    <div class="signup-container">
        <div class="signup-window">
            <h2 class="signup-header">Signup</h2>

            <form class="signup-form" action="your_signup_backend.jsp" method="POST">
                <input type="email" name="email" placeholder="Email ID" required>
                <input type="text" name="firstName" placeholder="First Name" required>
                <input type="text" name="lastName" placeholder="Last Name" required>
                <input type="text" name="phone" placeholder="Phone Number" required>
                <input type="text" name="username" placeholder="Username" required>
                <input type="password" name="password" placeholder="Password" required>
                <input type="password" name="confirmPassword" placeholder="Confirm Password" required>

                <button type="submit" class="signup-button">Signup</button>
            </form>

            <div class="already-account">
                Already have an account? <a href="index.jsp">Login</a>
            </div>

            <div class="divider">
                <span>Or</span>
            </div>

            <div class="social-login">
                <button class="social-button facebook">Login with Facebook</button>
                <button class="social-button google">Login with Google</button>
            </div>
        </div>
    </div>
</body>
</html>
