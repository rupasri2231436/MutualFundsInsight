<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Mutual Funds Page</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
        }

        header {
            text-align: center;
            background-color: #ffffff;
            padding: 20px;
            margin-bottom: 20px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }

        header h1 {
            font-size: 32px;
            color: #333;
        }

        /* Navbar Styles */
        nav {
            background: #ffffff;
            display: flex;
            align-items: center;
            padding: 10px 20px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
        }

        nav .logo {
            margin-right: auto;
        }

        nav .logo img {
            height: 40px;
        }

        nav ul {
            list-style: none;
            display: flex;
            margin: 0;
            padding: 0;
        }

        nav ul li {
            position: relative;
            margin: 0 15px;
        }

        nav ul li a {
            text-decoration: none;
            color: #0072bb;
            padding: 5px 10px;
        }

        nav ul li:hover .dropdown {
            display: block;
        }

        .dropdown {
            display: none;
            position: absolute;
            background: white;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            z-index: 1000;
            margin-top: 5px;
            padding: 10px;
        }

        .dropdown a {
            display: block;
            padding: 5px 10px;
            color: #0072bb;
            text-decoration: none;
        }

        .dropdown a:hover {
            background: #f4f4f4;
        }

        .search-container {
            margin-left: auto;
            display: flex;
            align-items: center;
        }

        .search-container input {
            padding: 5px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .search-container button {
            padding: 5px 10px;
            margin-left: 5px;
            background: #0072bb;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .search-container button:hover {
            background: #005f8a;
        }

        .quick-invest {
            background: #0072bb;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            margin-left: 15px;
        }

        .quick-invest:hover {
            background: #005f8a;
        }

        .for-you {
            background-color: #e0e0e0;
            padding: 20px;
            margin-bottom: 20px;
        }

        .for-you h2 {
            font-size: 24px;
            margin-bottom: 15px;
        }

        .for-you-content .item {
            margin-bottom: 15px;
        }

        .for-you-content .item h3 {
            font-size: 18px;
            color: #0056b3;
        }

        .for-you-content .item p {
            color: #333;
        }

        .for-you-content .item span {
            font-size: 12px;
            color: #999;
        }

        .starter-kit {
            background-color: #ffffff;
            padding: 30px;
            text-align: center;
            margin-bottom: 20px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }

        .starter-kit h2 {
            font-size: 28px;
            color: #333;
        }

        .starter-kit p {
            color: #555;
        }

        .starter-kit button {
            background-color: #007bff;
            color: white;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
            margin-top: 15px;
            border-radius: 5px;
        }

        .starter-kit button:hover {
            background-color: #0056b3;
        }

        .trending, .fund-guru {
            background-color: #ffffff;
            padding: 20px;
            margin-bottom: 20px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }

        .trending h2, .fund-guru h2 {
            font-size: 24px;
            margin-bottom: 15px;
        }

        .card {
            display: inline-block;
            width: 30%;
            margin-right: 3%;
            background-color: #f9f9f9;
            padding: 20px;
            box-shadow: 0 1px 5px rgba(0, 0, 0, 0.1);
            border-radius: 5px;
        }

        .card h3 {
            font-size: 18px;
            color: #333;
        }

        .card p {
            color: #666;
        }

        .card:last-child {
            margin-right: 0;
        }

        /* Styles for the Investor Self Service Zone */
        .self-service {
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 50px 20px;
            background-color: #fff;
            margin-bottom: 20px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }

        .self-service img {
            max-width: 150px;
            margin-right: 30px;
        }

        .self-service .form {
            display: flex;
            flex-direction: column;
            max-width: 500px;
            width: 100%;
        }

        .self-service button {
            padding: 10px;
            background-color: #007bff;
            color: white;
            border: none;
            cursor: pointer;
            border-radius: 4px;
            font-size: 16px;
        }

        .self-service button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <!-- Navbar Section -->
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
            <button class="login" onclick="window.location.href='index.jsp'">Login</button>
        </div>   
    </nav>

    <!-- Investor Self Service Zone -->
    <section class="self-service">
        <img src="templates/static/images/service.jpg" alt="Service Image">
        <div class="form">
            <h2>Investor Self Service Zone</h2>
            <p>Manage your account with ease</p>
            <button>Submit</button>
        </div>
    </section>

    <div class="container">
        <!-- Header Section -->
        <header>
            <h1>Beginner's Guide to Mutual Funds</h1>
            <p>Your one-stop guide to investing in mutual funds.</p>
        </header>

        <!-- For You Section -->
        <section class="for-you">
            <h2>Recommended For You</h2>
            <div class="for-you-content">
                <div class="item">
                    <h3>First-time Investors</h3>
                    <p>If you're new to investing, here's how to start.</p>
                    <span>1 Week ago</span>
                </div>
                <div class="item">
                    <h3>Best Long-term Funds</h3>
                    <p>See our top picks for long-term growth.</p>
                    <span>2 Weeks ago</span>
                </div>
            </div>
        </section>

        <!-- Starter Kit Section -->
        <section class="starter-kit">
            <h2>Get Your Mutual Fund Starter Kit</h2>
            <p>Everything you need to start your investment journey</p>
            <button>Download Starter Kit</button>
        </section>

        <!-- Trending Mutual Funds Section -->
        <section class="trending">
            <h2>Trending Mutual Funds</h2>
            <div class="card">
                <h3>Fund 1</h3>
                <p>Details about Fund 1</p>
            </div>
            <div class="card">
                <h3>Fund 2</h3>
                <p>Details about Fund 2</p>
            </div>
            <div class="card">
                <h3>Fund 3</h3>
                <p>Details about Fund 3</p>
            </div>
        </section>

        <!-- Fund Guru Section -->
        <section class="fund-guru">
            <h2>Ask the Fund Guru</h2>
            <p>Have questions? Our experts have the answers.</p>
        </section>
    </div>
</body>
</html>
