<%@ page contentType="text/html;charset=UTF-8" language="java" %>  
<!DOCTYPE html>  
<html lang="en">  
<head>  
    <meta charset="UTF-8">  
    <meta name="viewport" content="width=device-width, initial-scale=1.0">  
    <title>SBI Mutual Funds</title>  
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
        nav .search-container {  
            margin-left: auto;  
            display: flex;  
            align-items: center;  
        }  
        nav .search-container input {  
            padding: 5px;  
            border: 1px solid #ccc;  
            border-radius: 4px;  
        }  
        nav .search-container button {  
            padding: 5px 10px;  
            margin-left: 5px;  
            background: #0072bb;  
            color: white;  
            border: none;  
            border-radius: 4px;  
            cursor: pointer;  
        }  
        nav .search-container button:hover {  
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
        section {  
            margin: 20px;  
            padding: 20px;  
            background: white;  
            border-radius: 8px;  
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);  
        }  
        #funds h2 {  
            text-align: center;  
            color: #0072bb;  
        }  
        .fund-options {  
            display: grid;  
            grid-template-columns: repeat(3, 1fr);  
            gap: 20px;  
            margin-bottom: 40px;  
            text-align: center;  
        }  
        .fund-options div {  
            background-color: #e6f7ff;  
            padding: 20px;  
            border-radius: 10px;  
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.15);  
        }  
        .fund-categories {  
            display: flex;  
            justify-content: space-around;  
        }  
        .fund-categories div {  
            background-color: #fff;  
            padding: 20px;  
            border-radius: 8px;  
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.15);  
            width: 300px;  
            text-align: center;  
        }  
        .fund-categories a {  
            text-decoration: none;  
            color: #0072bb;  
        }  
        .fund-categories a:hover {  
            color: #005f8a;  
        }  
        .market-outlook {  
            display: flex;  
            align-items: flex-start;  
            justify-content: space-between;  
            margin-top: 20px;  
        }  
        .market-description {  
            margin-left: 5px;  
            max-width: 800px;  
        }  
        .market-outlook img {  
            max-width: 450px;  
            height: auto;  
        }  
        /* Guides and Blogs sections styles */  
        #blogs, #guides {  
            background-color: #e6f7ff; /* Light blue background color */  
            padding: 40px; /* Increased padding for more space */  
            border-radius: 10px; /* Rounded corners */  
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2); /* Shadow for depth */  
            margin: 20px; /* Space around the section */  
        }  
        .card-container {  
            display: flex;  
            flex-wrap: wrap;  
            justify-content: center;  
            gap: 20px;  
            margin-top: 20px; /* Adjusted margin for better spacing */  
        }  
        .card {  
            background-color: #fff;  
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.15); /* Slightly deeper shadow */  
            border-radius: 8px;  
            overflow: hidden;  
            transition: transform 0.2s ease-in-out;  
            width: 300px; /* Card width */  
            max-width: 100%;  
            padding: 20px; /* Added padding for content spacing */  
            text-align: center; /* Center text within the card */  
        }  
        .card:hover {  
            transform: scale(1.05);  
        }  
        .card a {  
            text-decoration: none; /* Remove underline */  
            color: #0072bb; /* Make links blue */  
        }  
        .card a:hover {  
            color: #005f8a; /* Darker blue on hover */  
        }  
    </style>  
</head>  
<body>  
    <nav>  
        <div class="logo">  
            <img src="templates/static/images/mutualfund.jpg" alt="SBI Mutual Fund Logo">  
        </div>  
        <ul>  
            <li><a href="home.jsp">Home</a></li>  
            <li><a href="invest.jsp">Learn to Invest</a></li>  
            <li><a href="plan.jsp">Plan Investments</a></li>  
            <li><a href="browse.jsp">Browse & Invest</a></li>  
            <li><a href="services.jsp">Investor Services</a></li>  
        </ul>  
        <div class="search-container">  
            <input type="text" placeholder="Search...">  
            <button>Search</button>  
            <button class="login" onclick="window.location.href='index.jsp'">Login</button>  
        </div>   
    </nav>  

    <section id="funds">  
        <h2>Explore our funds by...</h2>  
        <div class="fund-options">  
            <div>  
                <h3>Wealth Creation</h3>  
                <p>Funds which offer Long Term Capital Appreciation</p>  
            </div>  
            <div>  
                <h3>Retirement Planning</h3>  
                <p>For Income Post Retirement</p>  
            </div>  
            <div>  
                <h3>Tax Saving</h3>  
                <p>Save Taxes Under Section 80 C</p>  
            </div>  
            <div>  
                <h3>Liquidity Parking</h3>  
                <p>Park your surplus funds</p>  
            </div>  
            <div>  
                <h3>Balanced Funds</h3>  
                <p>Manage market volatility effectively</p>  
            </div>  
            <div>  
                <h3>Plan for your child</h3>  
                <p>Invest for your child's better future</p>  
            </div>  
        </div>  

        <div class="fund-categories">  
            <div>  
                <h4><a href="https://www.sbimf.com/mutual-fund/equity-mutual-funds">Equity Funds</a></h4>  
                <p>Invest for long term goals (5+ years)</p>  
            </div>  
            <div>  
                <h4><a href="https://www.sbimf.com/mutual-fund/hybrid-mutual-funds">Hybrid Funds</a></h4>  
                <p>Invest for mid term goals (2-5 years)</p>  
            </div>  
            <div>  
                <h4><a href="https://www.sbimf.com/mutual-fund/debt-mutual-funds">Debt Funds</a></h4>  
                <p>Invest for short term goals</p>  
            </div>  
        </div>  
    </section>  

    <section id="market-outlook">  
        <h2>Monthly Market Outlook</h2>  
        <div class="market-outlook">  
            <img src="https://www.sbimf.com/images/default-source/default-album/sep_24_thumbnail22b4f66984af465eb4de3d1359d68eb4.jpg?sfvrsn=9b1bb083_0" alt="Monthly Market Outlook">  
            <div class="market-description">  
                <p>Our monthly market outlook provides a comprehensive analysis of current economic trends, market performance, and potential investment opportunities. It covers a wide range of topics.</p>  
                <a href="https://www.sbimf.com/Content/Images/video-icon.svg">Watch Video</a>  
            </div>  
        </div>  
    </section>  

    <!-- Guides Section -->  
    <section id="guides">  
        <h2>Investment Guides</h2>  
        <div class="card-container">  
            <div class="card">  
                <div class="card-details">  
                    <li><a href="#">Guide to Wealth Creation</a></li>  
                </div>  
            </div>  
            <div class="card">  
                <div class="card-details">  
                    <li><a href="#">Retirement Planning Guide</a></li>  
                </div>  
            </div>  
            <div class="card">  
                <div class="card-details">  
                    <li><a href="#">Tax Saving Investments</a></li>  
                </div>  
            </div>  
            <div class="card">  
                <div class="card-details">  
                    <li><a href="#">Navigating through market volatility</a></li>  
                </div>  
            </div>  
        </div>  
    </section>  

    <!-- Blogs Section -->  
    <section id="blogs">  
        <h2>Latest Blogs</h2>  
        <div class="card-container">  
            <div class="card">  
                <div class="card-details">  
                    <li><a href="#">Understanding the Current Market Trends</a></li>  
                </div>  
            </div>  
            <div class="card">  
                <div class="card-details">  
                    <li><a href="#">How to Optimize Your Investment Portfolio</a></li>  
                </div>  
            </div>  
            <div class="card">  
                <div class="card-details">  
                    <li><a href="#">Top Strategies for Long-Term Investing</a></li>  
                </div>  
            </div>  
            <div class="card">  
                <div class="card-details">  
                    <li><a href="#">Mutual Funds: Myths and Facts</a></li>  
                </div>  
            </div>  
        </div>  
    </section>  

    <footer>  
        <p>Our customers trust us with ₹3,82,00,00,000</p>  
        <p>33 Years of performance | 450K+ happy investors | 100 cities across India</p>  
         
    </footer>  
</body>  
</html>  
