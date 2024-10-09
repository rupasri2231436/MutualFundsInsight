<%@ page contentType="text/html;charset=UTF-8" language="java" %>  
<!DOCTYPE html>  
<html lang="en">  
<head>  
    <meta charset="UTF-8">  
    <meta name="viewport" content="width=device-width, initial-scale=1.0">  
    <title>Investor Self Service Zone</title>  
    <style>  
        body {  
            font-family: Arial, sans-serif;  
            margin: 0;  
            padding: 0;  
            background-color: #f4f4f4;  
        }  
        header {  
            background: #0072bb;  
            color: white;  
            padding: 10px 20px;  
            text-align: center;  
        }  
        nav {  
            background: #ffffff;  
            display: flex;  
            align-items: center;  
            padding: 10px 20px;  
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);  
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
        footer {  
            text-align: center;  
            padding: 20px;  
            background: #0072bb;  
            color: white;  
            position: relative;  
            bottom: 0;  
            width: 100%;  
        }  
        .services-section {  
            background-color: #005cbf;  
            color: white;  
            padding: 50px 0;  
        }  
        .services-section h2 {  
            text-align: center;  
            margin-bottom: 30px;  
        }  
        .services-grid {  
            display: flex;  
            justify-content: center;  
            gap: 20px;  
            flex-wrap: wrap;  
        }  
        .service-card {  
            background-color: white;  
            color: #0072bb;  
            border-radius: 8px;  
            padding: 20px;  
            width: 200px;  
            text-align: center;  
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);  
        }  
        .other-services-section {  
            background-color: #eaeff3;  
            padding: 50px 0;  
        }  
        .other-services-section h2 {  
            text-align: center;  
            margin-bottom: 30px;  
        }  
        .other-services-list {  
            display: flex;  
            justify-content: space-around;  
        }  
        .footer-section {  
            background-color: #003366;  
            color: white;  
            padding: 20px;  
            text-align: center;  
        }  
        .footer-links {  
            display: flex;  
            justify-content: space-around;  
            padding: 20px;  
        }  
        .footer-links ul {  
            list-style-type: none;  
            padding: 0;  
        }  
        .footer-links ul li {  
            margin-bottom: 10px;  
        }  
        .footer-links ul li a {  
            color: white;  
            text-decoration: none;  
        }  
    </style>  
</head>  
<body>  
    <nav>  
        <div class="logo">  
            <img src="logo-url.png" alt="SBI Mutual Fund Logo">  
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
                <a href="#">Investor Services</a>  
                <div class="dropdown">  
                    <a href="#">Option 1</a>  
                    <a href="#">Option 2</a>  
                </div>  
            </li>  
        </ul>  
        <div class="search-container">  
            <input type="text" placeholder="Search...">  
            <button>Search</button>  
            <button class="login" onclick="window.location.href='index.jsp'">Login</button>  
        </div>   
    </nav>  

    <section class="services-section">  
        <h2>Investor Self Service Zone</h2>  
        <div class="search-bar">  
            <input type="text" placeholder="Enter Your PAN or Folio Number">  
            <button>Go</button>  
        </div>  
    </section>  

    <section class="services-section">  
        <h2>Explore Our Services</h2>  
        <div class="services-grid">  
            <div class="service-card">  
                <h3>Update Email ID</h3>
                <a href="updateemail.jsp">Change email ID registered </a>   
                 
            </div>  
            <div class="service-card">  
                <h3>Update Mobile Number</h3>  
                <p>Change registered mobile number in your folios</p>  
            </div>  
            <div class="service-card">  
                <h3>Manage Nominees</h3>  
                <p>Update nominee details in your folios</p>  
            </div>  
            <div class="service-card">  
                <h3>Manage Bank Accounts</h3>  
                <p>Update your Bank Account for folios</p>  
            </div>  S
            <div class="service-card">  
                <h3>Consolidate Folios</h3>  
                <p>Consolidate folios linked to your PAN</p>  
            </div>  
            <div class="service-card">  
                <h3>Modify KYC</h3>  
                <p>Update your KYC details</p>  
            </div>  
        </div>  
        <div class="view-all">  
            <a href="#">View All Services</a>  
        </div>  
    </section>  

    <section class="other-services-section">  
        <h2>Other Services</h2>  
        <div class="other-services-list">  
            <ul>  
                <li>Update FATCA Details</li>  
                <li>Electronic Payouts</li>  
                <li>Complaint Redressal</li>  
                <li>Investment Options</li>  
            </ul>  
            <ul>  
                <li>Redeemed Scheme Details</li>  
                <li>Warrant Status</li>  
                <li>Unclaimed Transactions</li>  
                <li>Grievance Redressal</li>  
            </ul>  
        </div>  
    </section>  

    <footer class="footer-section">  
        <div class="footer-links">  
            <ul>  
                <li><a href="#">Corporate Profile</a></li>  
                <li><a href="#">Careers</a></li>  
                <li><a href="#">Privacy Policy</a></li>  
            </ul>  
            <ul>  
                <li><a href="#">Sitemap</a></li>  
                <li><a href="#">Contact Us</a></li>  
                <li><a href="#">Disclaimer</a></li>  
            </ul>  
        </div>  
        <p>&copy; 2024 SBI Mutual Fund. All Rights Reserved.</p>  
    </footer>  
</body>  
</html>
