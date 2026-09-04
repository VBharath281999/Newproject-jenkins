<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <title>MyShop — Modern E‑Commerce</title>

    <!-- Fonts & Icons -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600&family=Poppins:wght@600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="" crossorigin="anonymous">

    <style>
        :root {
            --bg: #f5f7fb;
            --surface: #ffffff;
            --surface-2: #eef2f7;
            --primary: #111827;
            --secondary: #64748b;
            --accent: #635bff;
            --accent-2: #8b5cf6;
            --success: #10b981;
            --danger: #ef4444;
            --warning: #f59e0b;
            --border: rgba(15, 23, 42, .08);
            --shadow: 0 18px 50px rgba(15, 23, 42, .08);
            --shadow-sm: 0 8px 24px rgba(15, 23, 42, .06);
            --radius: 22px;
            --container: 1240px;
        }

        * { box-sizing: border-box; }

        html { scroll-behavior: smooth; }

        body {
            margin: 0;
            font-family: Inter, system-ui, -apple-system, "Segoe UI", sans-serif;
            color: var(--primary);
            background:
                radial-gradient(circle at 10% 0%, rgba(99,91,255,.08), transparent 28%),
                radial-gradient(circle at 90% 10%, rgba(139,92,246,.07), transparent 25%),
                var(--bg);
            -webkit-font-smoothing: antialiased;
            line-height: 1.5;
        }

        a { color: inherit; text-decoration: none; }

        button, input { font: inherit; }

        button { transition: .2s ease; }

        .container {
            width: min(100% - 32px, var(--container));
            margin: 0 auto;
        }

        /* Header */
        header {
            position: sticky;
            top: 0;
            z-index: 100;
            background: rgba(255,255,255,.82);
            border-bottom: 1px solid var(--border);
            backdrop-filter: blur(18px);
        }

        .header-inner {
            min-height: 78px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 24px;
        }

        .brand {
            display: flex;
            align-items: center;
            gap: 11px;
            font-family: Poppins, sans-serif;
            font-weight: 700;
            font-size: 22px;
            letter-spacing: -.04em;
            white-space: nowrap;
        }

        .brand::before {
            content: "N";
            display: grid;
            place-items: center;
            width: 38px;
            height: 38px;
            border-radius: 12px;
            color: white;
            background: linear-gradient(135deg, var(--accent), var(--accent-2));
            box-shadow: 0 10px 24px rgba(99,91,255,.28);
        }

        .brand .accent { color: var(--accent); }

        nav.main-nav ul {
            display: flex;
            gap: 4px;
            list-style: none;
            margin: 0;
            padding: 0;
            align-items: center;
        }

        nav.main-nav li a {
            display: flex;
            gap: 8px;
            align-items: center;
            padding: 10px 13px;
            border-radius: 12px;
            color: #475569;
            font-weight: 600;
            font-size: 14px;
        }

        nav.main-nav li a:hover {
            color: var(--accent);
            background: #f0efff;
        }

        .header-search {
            display: flex;
            align-items: center;
            gap: 8px;
            min-width: 270px;
            padding: 10px 12px 10px 15px;
            border: 1px solid var(--border);
            background: #f8fafc;
            border-radius: 15px;
            transition: .2s;
        }

        .header-search:focus-within {
            background: white;
            border-color: rgba(99,91,255,.35);
            box-shadow: 0 0 0 4px rgba(99,91,255,.08);
        }

        .header-search input {
            width: 100%;
            border: 0;
            outline: 0;
            background: transparent;
            color: var(--primary);
            font-size: 13px;
        }

        .icon-btn {
            display: grid;
            place-items: center;
            width: 38px;
            height: 38px;
            border: 0;
            border-radius: 12px;
            background: transparent;
            color: #475569;
            cursor: pointer;
        }

        .icon-btn:hover {
            background: #f0efff;
            color: var(--accent);
            transform: translateY(-1px);
        }

        .header-actions {
            display: flex;
            align-items: center;
            gap: 3px;
        }

        .cart {
            position: relative;
            display: grid;
            place-items: center;
            width: 42px;
            height: 42px;
            border-radius: 13px;
            background: #111827;
            color: white;
        }

        .cart:hover { transform: translateY(-2px); }

        .cart-count {
            position: absolute;
            top: -6px;
            right: -6px;
            display: grid;
            place-items: center;
            width: 20px;
            height: 20px;
            border-radius: 50%;
            background: var(--danger);
            color: white;
            font-size: 10px;
            font-weight: 800;
            border: 2px solid white;
        }

        .mobile-toggle {
            display: none;
            border: 0;
            background: transparent;
            cursor: pointer;
        }

        /* Hero */
        .hero {
            position: relative;
            overflow: hidden;
            min-height: 520px;
            display: flex;
            align-items: center;
            margin: 20px auto 0;
            width: min(100% - 32px, 1400px);
            border-radius: 30px;
            color: white;
            background:
                linear-gradient(105deg, rgba(7,12,27,.88) 0%, rgba(7,12,27,.68) 48%, rgba(7,12,27,.25) 100%),
                url("https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1800&q=90") center/cover;
            box-shadow: 0 30px 70px rgba(15,23,42,.16);
        }

        .hero::after {
            content: "";
            position: absolute;
            width: 360px;
            height: 360px;
            right: -120px;
            top: -100px;
            border-radius: 50%;
            background: rgba(99,91,255,.25);
            filter: blur(15px);
        }

        .hero .container {
            position: relative;
            z-index: 2;
        }

        .hero-content { max-width: 700px; }

        .eyebrow {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            padding: 7px 12px;
            border: 1px solid rgba(255,255,255,.18);
            border-radius: 999px;
            background: rgba(255,255,255,.09);
            backdrop-filter: blur(8px);
            font-size: 12px;
            font-weight: 700;
            letter-spacing: .06em;
            text-transform: uppercase;
        }

        .hero h1 {
            margin: 18px 0 15px;
            font-family: Poppins, sans-serif;
            font-size: clamp(38px, 5vw, 66px);
            line-height: 1.03;
            letter-spacing: -.055em;
        }

        .hero p {
            max-width: 650px;
            margin: 0 0 28px;
            color: rgba(255,255,255,.82);
            font-size: 16px;
        }

        .hero-actions {
            display: flex;
            gap: 12px;
            flex-wrap: wrap;
        }

        .btn {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 9px;
            min-height: 46px;
            padding: 0 20px;
            border-radius: 13px;
            border: 0;
            font-weight: 700;
            cursor: pointer;
        }

        .btn-primary {
            color: white;
            background: linear-gradient(135deg, var(--accent), var(--accent-2));
            box-shadow: 0 12px 25px rgba(99,91,255,.28);
        }

        .btn-primary:hover {
            transform: translateY(-2px);
            box-shadow: 0 16px 30px rgba(99,91,255,.34);
        }

        .btn-ghost {
            color: white;
            background: rgba(255,255,255,.09);
            border: 1px solid rgba(255,255,255,.22);
            backdrop-filter: blur(8px);
        }

        .btn-ghost:hover { background: rgba(255,255,255,.16); }

        /* Sections */
        .section { padding: 76px 0 0; }

        .title {
            margin-bottom: 30px;
        }

        .title h2 {
            margin: 0 0 7px;
            font-family: Poppins, sans-serif;
            font-size: 30px;
            letter-spacing: -.035em;
        }

        .title p { margin: 0; }

        .title-center { text-align: center; }

        .muted { color: var(--secondary); }

        .grid {
            display: grid;
            gap: 18px;
        }

        /* Categories */
        .categories {
            grid-template-columns: repeat(6, 1fr);
        }

        .cat-card {
            position: relative;
            overflow: hidden;
            padding: 23px 16px;
            text-align: center;
            border: 1px solid var(--border);
            border-radius: 19px;
            background: rgba(255,255,255,.86);
            box-shadow: var(--shadow-sm);
            cursor: pointer;
            transition: .25s ease;
        }

        .cat-card::before {
            content: "";
            position: absolute;
            width: 90px;
            height: 90px;
            top: -50px;
            right: -35px;
            border-radius: 50%;
            background: rgba(99,91,255,.08);
        }

        .cat-card:hover {
            transform: translateY(-7px);
            border-color: rgba(99,91,255,.2);
            box-shadow: var(--shadow);
        }

        .cat-card .icon {
            position: relative;
            display: grid;
            place-items: center;
            width: 58px;
            height: 58px;
            margin: 0 auto 14px;
            border-radius: 17px;
            color: var(--accent);
            background: #f0efff;
            font-size: 23px;
        }

        .cat-card h4 {
            margin: 0;
            font-size: 14px;
        }

        .cat-card .muted {
            margin-top: 5px;
            font-size: 12px;
        }

        /* Products */
        .products {
            grid-template-columns: repeat(4, 1fr);
        }

        .product {
            position: relative;
            overflow: hidden;
            border: 1px solid var(--border);
            border-radius: 21px;
            background: var(--surface);
            box-shadow: var(--shadow-sm);
            transition: .25s ease;
        }

        .product:hover {
            transform: translateY(-6px);
            box-shadow: var(--shadow);
        }

        .product-media {
            position: relative;
            overflow: hidden;
            background: #f1f5f9;
        }

        .product img {
            display: block;
            width: 100%;
            height: 245px;
            object-fit: cover;
            transition: transform .45s ease;
        }

        .product:hover img { transform: scale(1.06); }

        .product-badge {
            position: absolute;
            z-index: 2;
            top: 13px;
            left: 13px;
            padding: 6px 9px;
            border-radius: 999px;
            color: white;
            background: var(--accent);
            font-size: 10px;
            font-weight: 800;
        }

        .product-badge.sale { background: var(--danger); }

        .product-body {
            padding: 17px;
            display: flex;
            flex-direction: column;
            gap: 10px;
        }

        .product h5 {
            margin: 0;
            font-size: 15px;
            letter-spacing: -.01em;
        }

        .product-category {
            font-size: 12px;
            text-transform: capitalize;
            color: var(--secondary);
        }

        .price-row {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 10px;
        }

        .price {
            font-weight: 800;
            font-size: 18px;
        }

        .old-price {
            margin-left: 5px;
            color: #94a3b8;
            text-decoration: line-through;
            font-size: 12px;
            font-weight: 600;
        }

        .rating {
            color: #f59e0b;
            font-size: 12px;
            white-space: nowrap;
        }

        .rating span {
            color: var(--secondary);
            font-size: 11px;
        }

        .product-footer {
            display: flex;
            gap: 9px;
            padding: 0 17px 17px;
        }

        .add-btn {
            flex: 1;
            min-height: 42px;
            border: 0;
            border-radius: 12px;
            color: white;
            background: #111827;
            cursor: pointer;
            font-weight: 700;
        }

        .add-btn:hover {
            background: var(--accent);
            transform: translateY(-1px);
        }

        .add-btn:disabled {
            background: var(--success);
            cursor: default;
        }

        .wish-btn {
            width: 44px;
            border: 1px solid var(--border);
            border-radius: 12px;
            background: white;
            color: #64748b;
            cursor: pointer;
        }

        .wish-btn:hover {
            color: var(--danger);
            border-color: rgba(239,68,68,.2);
            background: #fff5f5;
        }

        /* Deal */
        .deal {
            display: grid;
            grid-template-columns: 1fr 1fr;
            overflow: hidden;
            border: 1px solid var(--border);
            border-radius: 25px;
            background: white;
            box-shadow: var(--shadow);
        }

        .deal img {
            width: 100%;
            height: 100%;
            min-height: 390px;
            object-fit: cover;
        }

        .deal .content {
            display: flex;
            flex-direction: column;
            justify-content: center;
            padding: 45px;
        }

        .deal-kicker {
            display: inline-flex;
            align-self: flex-start;
            padding: 6px 10px;
            border-radius: 999px;
            background: #fff1f2;
            color: #e11d48;
            font-size: 11px;
            font-weight: 800;
            text-transform: uppercase;
        }

        .deal h3 {
            margin: 13px 0 7px;
            font-family: Poppins, sans-serif;
            font-size: 32px;
            letter-spacing: -.04em;
        }

        .timer {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 9px;
            margin: 22px 0;
        }

        .time-box {
            padding: 12px 7px;
            text-align: center;
            border-radius: 13px;
            color: white;
            background: #111827;
        }

        .time-box > div:first-child {
            font-size: 21px;
            font-weight: 800;
        }

        .deal .price { font-size: 27px; }

        .deal-discount {
            padding: 6px 10px;
            border-radius: 8px;
            color: white;
            background: var(--danger);
            font-size: 12px;
            font-weight: 800;
        }

        /* Testimonials */
        .testimonials {
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            gap: 18px;
        }

        .testimonial {
            padding: 25px;
            border: 1px solid var(--border);
            border-radius: 20px;
            background: white;
            box-shadow: var(--shadow-sm);
        }

        .testimonial .rating {
            font-size: 14px;
            letter-spacing: 2px;
        }

        .testimonial p {
            color: #475569;
            font-size: 14px;
            line-height: 1.7;
        }

        .testimonial img {
            width: 45px !important;
            height: 45px !important;
            border-radius: 50%;
            object-fit: cover;
        }

        /* Newsletter */
        .newsletter {
            position: relative;
            overflow: hidden;
            padding: 48px 25px;
            text-align: center;
            color: white;
            border-radius: 25px;
            background: linear-gradient(135deg, #111827, #312e81);
            box-shadow: var(--shadow);
        }

        .newsletter::after {
            content: "";
            position: absolute;
            width: 260px;
            height: 260px;
            right: -80px;
            top: -130px;
            border-radius: 50%;
            background: rgba(139,92,246,.35);
        }

        .newsletter > * { position: relative; z-index: 1; }

        .newsletter h3 {
            margin: 0 0 7px;
            font-family: Poppins, sans-serif;
            font-size: 28px;
        }

        .newsletter p { color: rgba(255,255,255,.7); }

        .newsletter input {
            width: 340px;
            max-width: 100%;
            min-height: 46px;
            padding: 0 16px;
            border: 1px solid rgba(255,255,255,.15);
            border-radius: 13px;
            outline: none;
            background: rgba(255,255,255,.1);
            color: white;
        }

        .newsletter input::placeholder { color: rgba(255,255,255,.55); }

        /* Footer */
        footer {
            margin-top: 80px;
            padding: 45px 0 25px;
            border-top: 1px solid var(--border);
            background: white;
        }

        .footer-grid {
            display: grid;
            grid-template-columns: 1.4fr 1fr 1fr;
            gap: 40px;
        }

        .footer-title {
            margin-bottom: 10px;
            font-weight: 800;
        }

        .footer-links {
            display: grid;
            gap: 8px;
            color: var(--secondary);
            font-size: 13px;
        }

        .footer-links a:hover { color: var(--accent); }

        /* Responsive */
        @media (max-width: 1100px) {
            .header-search { min-width: 210px; }
            .categories { grid-template-columns: repeat(3, 1fr); }
            .products { grid-template-columns: repeat(3, 1fr); }
        }

        @media (max-width: 900px) {
            nav.main-nav { display: none; }
            .mobile-toggle { display: grid; place-items: center; width: 40px; height: 40px; }
            .header-inner > div:nth-child(2) { margin-left: auto; }
            .header-search { min-width: 220px; }
            .deal { grid-template-columns: 1fr; }
            .deal img { min-height: 280px; max-height: 340px; }
            .footer-grid { grid-template-columns: 1fr 1fr; }
        }

        @media (max-width: 650px) {
            .container { width: min(100% - 22px, var(--container)); }
            .hero { width: calc(100% - 22px); min-height: 500px; border-radius: 22px; }
            .hero h1 { font-size: 38px; }
            .hero p { font-size: 14px; }
            .header-search { display: none; }
            .header-inner { min-height: 68px; }
            .header-actions .icon-btn { display: none; }
            .section { padding-top: 58px; }
            .categories, .products, .testimonials { grid-template-columns: 1fr; }
            .product img { height: 280px; }
            .deal .content { padding: 28px 22px; }
            .timer { gap: 6px; }
            .time-box { padding: 10px 4px; }
            .footer-grid { grid-template-columns: 1fr; gap: 25px; }
        }
    </style>
</head>

<body>
    <header>
        <div class="container header-inner" role="banner">
            <div style="display:flex;align-items:center;gap:18px;">
                <button class="mobile-toggle" id="mobileToggle" aria-label="Open menu"><em class="fas fa-bars"></em></button>
                <a class="brand" href="#">
                    <span>Nexus<span class="accent">Shop</span></span>
                </a>
            </div>

            <nav class="main-nav" id="mainNav" aria-label="Primary navigation">
                <ul>
                    <li><a href="#"><em class="fas fa-home"></em> Home</a></li>
                    <li class="has-dropdown" aria-haspopup="true">
                        <a href="#" id="catMenuBtn"><em class="fas fa-th-large"></em> Categories <em class="fas fa-chevron-down" style="font-size:12px;"></em></a>
                    </li>
                    <li><a href="#"><em class="fas fa-fire"></em> Trending</a></li>
                    <li><a href="#deals"><em class="fas fa-tag"></em> Deals</a></li>
                    <li><a href="#about"><em class="fas fa-info-circle"></em> About</a></li>
                </ul>
            </nav>

            <div style="display:flex;align-items:center;gap:14px;">
                <div class="search" role="search" aria-label="Product search">
                    <input type="search" id="searchInput" placeholder="Search products, categories..." aria-label="Search products" />
                    <button class="icon-btn" id="searchBtn" aria-label="Search"><em class="fas fa-search"></em></button>
                </div>

                <div class="header-actions" role="group" aria-label="Header actions">
                    <a class="icon-btn" title="Account" href="#"><em class="far fa-user"></em></a>
                    <a class="icon-btn" title="Wishlist" href="#"><em class="far fa-heart"></em></a>
                    <a class="cart" href="#" id="cartBtn" title="View cart" aria-label="Cart">
                        <em class="fas fa-shopping-cart"></em>
                        <span class="cart-count" id="cartCount">0</span>
                    </a>
                </div>
            </div>
        </div>

        <!-- Mobile menu (hidden on desktop) -->
        <div id="mobileMenu" style="display:none; background:var(--bg); border-top:1px solid rgba(10,37,64,0.04);">
            <div class="container" style="padding:12px 0;">
                <nav aria-label="Mobile navigation">
                    <ul style="list-style:none;padding:0;margin:0;display:flex;flex-direction:column;gap:8px;">
                        <li><a href="#">Home</a></li>
                        <li><a href="#">Categories</a></li>
                        <li><a href="#">Trending</a></li>
                        <li><a href="#deals">Deals</a></li>
                        <li><a href="#about">About</a></li>
                    </ul>
                </nav>
            </div>
        </div>
    </header>

    <main>
        <!-- Hero -->
        <section class="hero" role="img" aria-label="Hero banner">
            <div class="container hero-content">
                <div class="eyebrow"><em class="fas fa-sparkles"></em> Curated for you</div>
                <h1>New Collection — Premium Picks</h1>
                <p>Discover the latest trends in fashion, technology and accessories — curated just for you. Enjoy limited-time deals and free shipping on selected items.</p>
                <div class="hero-actions">
                    <button class="btn btn-primary" id="shopNow">Shop Now <em class="fas fa-arrow-right"></em></button>
                    <button class="btn btn-ghost" id="exploreDeals">Explore Deals</button>
                </div>
            </div>
        </section>

        <!-- Categories -->
        <section class="section container" aria-labelledby="cat-title">
            <div class="title title-center" id="cat-title">
                <h2 class="section-title">Shop by Category</h2>
                <p class="muted">Browse through our wide range of products across curated categories.</p>
            </div>

            <div class="grid categories" id="categoriesGrid" aria-live="polite"></div>
        </section>

        <!-- Products -->
        <section class="section container" aria-labelledby="prod-title">
            <div class="title title-center" id="prod-title">
                <h2>Trending Products</h2>
                <p class="muted">Popular picks based on recent activity.</p>
            </div>

            <div class="grid products" id="productsGrid" aria-live="polite"></div>
        </section>

        <!-- Deals -->
        <section id="deals" class="section container" aria-labelledby="deals-title">
            <div class="title title-center" id="deals-title">
                <h2>Flash Sale</h2>
                <p class="muted">Limited-time offers — don't miss out!</p>
            </div>

            <div class="deal" style="align-items:stretch;">
                <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1200&q=80" alt="Deal product">
                <div class="content">
                    <h3>MacBook Air M2</h3>
                    <p class="muted">Thin, light and powerful — now with M2 performance.</p>

                    <div class="timer" aria-hidden="false">
                        <div class="time-box">
                            <div id="dealDays">0</div>
                            <div style="font-size:12px;opacity:.85">Days</div>
                        </div>
                        <div class="time-box">
                            <div id="dealHours">00</div>
                            <div style="font-size:12px;opacity:.85">Hours</div>
                        </div>
                        <div class="time-box">
                            <div id="dealMinutes">00</div>
                            <div style="font-size:12px;opacity:.85">Minutes</div>
                        </div>
                        <div class="time-box">
                            <div id="dealSeconds">00</div>
                            <div style="font-size:12px;opacity:.85">Seconds</div>
                        </div>
                    </div>

                    <div style="display:flex;align-items:center;gap:12px;">
                        <div class="price">$999 <span class="old-price" style="font-size:16px">$1,199</span></div>
                        <div class="deal-discount" style="background:#ff4757;color:white;padding:6px 10px;border-radius:8px;font-weight:700">-17%</div>
                    </div>

                    <p style="margin-top:10px;">Only <strong>12</strong> items left at this price!</p>
                    <div style="margin-top:18px;">
                        <button class="btn btn-primary" id="buyDeal">Buy Now</button>
                    </div>
                </div>
            </div>
        </section>

        <!-- Testimonials -->
        <section class="section container" aria-labelledby="test-title">
            <div class="title title-center" id="test-title">
                <h2>What our customers say</h2>
                <p class="muted">Real reviews from verified buyers.</p>
            </div>

            <div class="testimonials" id="testimonials">
                <div class="testimonial">
                    <div class="rating">★★★★★</div>
                    <p>"Fast shipping and excellent customer support. The product exceeded my expectations!"</p>
                    <div style="display:flex;align-items:center;gap:10px">
                        <img src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80" alt="avatar" style="width:40px;height:40px;border-radius:50%;object-fit:cover">
                        <div>
                            <div style="font-weight:700">Ava Martin</div>
                            <div class="muted" style="font-size:13px">Verified buyer</div>
                        </div>
                    </div>
                </div>

                <div class="testimonial">
                    <div class="rating">★★★★☆</div>
                    <p>"Great selection and the checkout was smooth. Will shop again."</p>
                    <div style="display:flex;align-items:center;gap:10px">
                        <img src="https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80" alt="avatar" style="width:40px;height:40px;border-radius:50%;object-fit:cover">
                        <div>
                            <div style="font-weight:700">Michael Lee</div>
                            <div class="muted" style="font-size:13px">Frequent buyer</div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Newsletter -->
        <section class="section container" aria-labelledby="news-title">
            <div class="newsletter" id="newsletter">
                <h3 id="news-title">Stay in the loop</h3>
                <p>Subscribe to get exclusive offers & new arrivals</p>
                <form id="newsletterForm" style="display:flex;justify-content:center;gap:8px;flex-wrap:wrap;" onsubmit="return false;">
                    <input id="newsletterEmail" type="email" placeholder="Enter your email" aria-label="Email address" required>
                    <button class="btn btn-primary" id="subscribeBtn">Subscribe</button>
                </form>
                <div id="newsletterMsg" style="margin-top:10px;font-size:14px;display:none"></div>
            </div>
        </section>
    </main>

    <footer>
        <div class="container footer-grid">
            <div style="max-width:360px">
                <div style="font-weight:700;font-size:18px">NexusShop</div>
                <p class="muted" style="margin-top:8px">A modern e-commerce demo built with HTML, CSS & JavaScript.</p>
                <div style="margin-top:14px;display:flex;gap:10px">
                    <a class="icon-btn" href="#" title="Facebook"><em class="fab fa-facebook"></em></a>
                    <a class="icon-btn" href="#" title="Twitter"><em class="fab fa-twitter"></em></a>
                    <a class="icon-btn" href="#" title="Instagram"><em class="fab fa-instagram"></em></a>
                </div>
            </div>

            <div style="display:flex;gap:70px;justify-content:flex-end;flex-wrap:wrap">
                <div>
                    <div class="footer-title">Company</div>
                    <div class="footer-links"><a href="#about">About</a><a href="#">Careers</a><a href="#">Press</a></div>
                </div>
                <div>
                    <div class="footer-title">Support</div>
                    <div class="footer-links"><a href="#">Help Center</a><a href="#">Shipping & Returns</a><a href="#">Contact</a></div>
                </div>
            </div>
        </div>

        <div style="text-align:center;margin-top:22px;color:var(--muted);font-size:13px">© <span id="year"></span> NexusShop. All rights reserved.</div>
    </footer>

    <script>
        // --- Sample data (can be replaced by server-side data or API) ---
        const CATEGORIES = [{
                id: 'phones',
                name: 'Smartphones',
                icon: 'fa-mobile-alt'
            },
            {
                id: 'laptops',
                name: 'Laptops',
                icon: 'fa-laptop'
            },
            {
                id: 'clothing',
                name: 'Clothing',
                icon: 'fa-tshirt'
            },
            {
                id: 'gadgets',
                name: 'Gadgets',
                icon: 'fa-headphones'
            },
            {
                id: 'footwear',
                name: 'Footwear',
                icon: 'fa-shoe-prints'
            },
            {
                id: 'accessories',
                name: 'Accessories',
                icon: 'fa-watch'
            }
        ];

        const PRODUCTS = [{
                id: 1,
                title: 'iPhone 14 Pro Max',
                price: 1099,
                oldPrice: 1199,
                rating: 5,
                reviews: 128,
                badge: 'New',
                img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80',
                category: 'phones'
            },
            {
                id: 2,
                title: 'MacBook Pro 14"',
                price: 1999,
                rating: 4,
                reviews: 86,
                img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80',
                category: 'laptops'
            },
            {
                id: 3,
                title: 'Apple Watch Series 8',
                price: 349,
                oldPrice: 399,
                rating: 5,
                reviews: 214,
                badge: '-25%',
                img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80',
                category: 'accessories'
            },
            {
                id: 4,
                title: 'Nike Air Max 270',
                price: 150,
                rating: 4,
                reviews: 53,
                img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80',
                category: 'footwear'
            },
            {
                id: 5,
                title: 'Sony A7 IV Camera',
                price: 2499,
                rating: 5,
                reviews: 42,
                img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80',
                category: 'gadgets'
            },
            {
                id: 6,
                title: 'Chanel No. 5',
                price: 120,
                rating: 5,
                reviews: 189,
                img: 'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80',
                category: 'accessories'
            },
            {
                id: 7,
                title: 'Travel Backpack',
                price: 79,
                oldPrice: 99,
                rating: 4,
                reviews: 67,
                img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80',
                category: 'accessories'
            },
            {
                id: 8,
                title: 'Sony WH-1000XM5',
                price: 399,
                rating: 5,
                reviews: 156,
                img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80',
                category: 'gadgets'
            }
        ];

        // --- Render categories & products ---
        const categoriesGrid = document.getElementById('categoriesGrid');
        const productsGrid = document.getElementById('productsGrid');
        const cartCountEl = document.getElementById('cartCount');
        const searchInput = document.getElementById('searchInput');

        let cartCount = 0;

        function renderCategories() {
            categoriesGrid.innerHTML = '';
            CATEGORIES.forEach(cat => {
                const el = document.createElement('div');
                el.className = 'cat-card';
                el.innerHTML = `
                    <div class="icon"><em class="fas ${cat.icon}"></em></div>
                    <h4>${cat.name}</h4>
                    <div class="muted" style="font-size:13px;margin-top:6px">Explore ${cat.name}</div>
                `;
                el.addEventListener('click', () => {
                    searchInput.value = cat.name;
                    filterProducts(cat.name);
                    window.scrollTo({
                        top: document.getElementById('prod-title').offsetTop - 60,
                        behavior: 'smooth'
                    });
                });
                categoriesGrid.appendChild(el);
            });
        }

        function renderProducts(list) {
            productsGrid.innerHTML = '';
            list.forEach(p => {
                const el = document.createElement('article');
                el.className = 'product';
                el.innerHTML = `
                    ${p.badge ? `<div style="position:absolute;margin:12px"><span style="background:${p.badge.startsWith('-')? '#ff4757' : 'var(--success)'};color:white;padding:6px 8px;border-radius:8px;font-weight:700;font-size:12px">${p.badge}</span></div>` : ''}
                    <img src="${p.img}" alt="${escapeHtml(p.title)}">
                    <div class="product-body">
                        <h5>${escapeHtml(p.title)}</h5>
                        <div class="muted">${p.category}</div>
                        <div class="price-row">
                            <div>
                                <div class="price">$${p.price.toLocaleString()}</div>
                                ${p.oldPrice ? `<div class="old-price">${p.oldPrice ? '$'+p.oldPrice.toLocaleString() : ''}</div>` : ''}
                            </div>
                            <div class="rating">${'★'.repeat(Math.round(p.rating))} <span style="font-size:12px;color:var(--muted)">(${p.reviews})</span></div>
                        </div>
                    </div>
                    <div class="product-footer">
                        <button class="add-btn" data-id="${p.id}"><em class="fas fa-cart-plus"></em> Add</button>
                        <button class="wish-btn" aria-label="Add to wishlist"><em class="far fa-heart"></em></button>
                    </div>
                `;
                productsGrid.appendChild(el);
            });

            // wishlist interactions
            productsGrid.querySelectorAll('.wish-btn').forEach(btn => {
                btn.addEventListener('click', () => {
                    const icon = btn.querySelector('em');
                    icon.classList.toggle('far');
                    icon.classList.toggle('fas');
                    btn.style.color = icon.classList.contains('fas') ? 'var(--danger)' : '';
                    showToast(icon.classList.contains('fas') ? 'Added to wishlist' : 'Removed from wishlist');
                });
            });

            // attach listeners to add buttons
            productsGrid.querySelectorAll('.add-btn').forEach(btn => {
                btn.addEventListener('click', (e) => {
                    const id = Number(btn.dataset.id);
                    addToCart(id);
                });
            });
        }

        // --- Utilities ---
        function escapeHtml(text) {
            return String(text).replace(/[&<>"']/g, s => ({
                '&': '&amp;',
                '<': '&lt;',
                '>': '&gt;',
                '"': '&quot;',
                "'": '&#39;'
            } [s]));
        }

        function addToCart(productId) {
            const p = PRODUCTS.find(x => x.id === productId);
            if (!p) return;
            cartCount++;
            cartCountEl.textContent = cartCount;
            showToast(`${p.title} added to cart`);
            // Simple feedback
            const btn = document.querySelector(`.add-btn[data-id="${productId}"]`);
            if (btn) {
                const original = btn.innerHTML;
                btn.innerHTML = 'Added ✓';
                btn.disabled = true;
                setTimeout(() => {
                    btn.innerHTML = original;
                    btn.disabled = false;
                }, 1200);
            }
        }

        function updateCartCount() {
            cartCountEl.textContent = cartCount;
        }

        function filterProducts(query) {
            const q = String(query || '').trim().toLowerCase();
            if (!q) {
                renderProducts(PRODUCTS);
                return;
            }
            const filtered = PRODUCTS.filter(p =>
                p.title.toLowerCase().includes(q) ||
                p.category.toLowerCase().includes(q)
            );
            renderProducts(filtered);
        }

        // --- Search handling ---
        document.getElementById('searchBtn').addEventListener('click', () => filterProducts(searchInput.value));
        searchInput.addEventListener('keydown', (e) => {
            if (e.key === 'Enter') filterProducts(e.target.value);
        });

        // --- Mobile menu toggle ---
        const mobileToggle = document.getElementById('mobileToggle');
        const mobileMenu = document.getElementById('mobileMenu');
        mobileToggle.addEventListener('click', () => {
            mobileMenu.style.display = mobileMenu.style.display === 'none' || !mobileMenu.style.display ? 'block' : 'none';
        });

        // --- Simple dropdown (desktop) ---
        const catMenuBtn = document.getElementById('catMenuBtn');
        catMenuBtn && catMenuBtn.addEventListener('click', (e) => {
            e.preventDefault();
            document.getElementById('cat-title').scrollIntoView({behavior:'smooth', block:'center'});
        });

        // --- Newsletter subscribe (demo) ---
        document.getElementById('newsletterForm').addEventListener('submit', (e) => {
            e.preventDefault();
            const email = document.getElementById('newsletterEmail').value.trim();
            const msg = document.getElementById('newsletterMsg');
            if (!email || !email.includes('@')) {
                msg.style.display = 'block';
                msg.textContent = 'Please enter a valid email address.';
                msg.style.color = '#ffb3b3';
                return;
            }
            msg.style.display = 'block';
            msg.style.color = '#cce7ff';
            msg.textContent = 'Thanks! You are subscribed.';
            document.getElementById('newsletterEmail').value = '';
            setTimeout(() => msg.style.display = 'none', 3000);
        });

        // --- Countdown timer for deal ---
        (function setupDealTimer() {
            // Target: 1 day from now (demo)
            const now = new Date();
            const target = new Date(now.getTime() + (24 * 60 + 36) * 60 * 1000); // 24h36m
            function tick() {
                const diff = target - new Date();
                const days = Math.floor(diff / (24 * 3600 * 1000));
                const hours = Math.floor((diff % (24 * 3600 * 1000)) / (3600 * 1000));
                const mins = Math.floor((diff % (3600 * 1000)) / (60 * 1000));
                const secs = Math.floor((diff % (60 * 1000)) / 1000);
                document.getElementById('dealDays').textContent = days;
                document.getElementById('dealHours').textContent = String(hours).padStart(2, '0');
                document.getElementById('dealMinutes').textContent = String(mins).padStart(2, '0');
                document.getElementById('dealSeconds').textContent = String(secs).padStart(2, '0');
                if (diff <= 0) clearInterval(timer);
            }
            tick();
            const timer = setInterval(tick, 1000);
        })();

        // --- Small UI bindings ---
        document.getElementById('shopNow').addEventListener('click', () => window.scrollTo({
            top: document.getElementById('prod-title').offsetTop - 60,
            behavior: 'smooth'
        }));
        document.getElementById('exploreDeals').addEventListener('click', () => window.location.hash = '#deals');
        document.getElementById('buyDeal').addEventListener('click', () => {
            cartCount += 1;
            updateCartCount();
            showToast('MacBook Air M2 added to cart');
        });

        // --- Modern toast feedback ---
        function showToast(message) {
            let toast = document.getElementById('toast');
            if (!toast) {
                toast = document.createElement('div');
                toast.id = 'toast';
                toast.style.cssText = `
                    position:fixed;right:22px;bottom:22px;z-index:9999;
                    padding:13px 17px;border-radius:14px;color:white;
                    background:#111827;box-shadow:0 18px 40px rgba(15,23,42,.22);
                    font-size:13px;font-weight:700;transform:translateY(20px);
                    opacity:0;transition:.25s ease;
                `;
                document.body.appendChild(toast);
            }
            toast.textContent = '✓  ' + message;
            requestAnimationFrame(() => {
                toast.style.opacity = '1';
                toast.style.transform = 'translateY(0)';
            });
            clearTimeout(window.__toastTimer);
            window.__toastTimer = setTimeout(() => {
                toast.style.opacity = '0';
                toast.style.transform = 'translateY(20px)';
            }, 2200);
        }

        // --- Initialization ---
        (function init() {
            renderCategories();
            renderProducts(PRODUCTS);
            updateCartCount();
            document.getElementById('year').textContent = new Date().getFullYear();
        })();
    </script>
</body>

</html>
