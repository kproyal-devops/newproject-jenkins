<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover">
    <title>Horizon — Immersive E‑Commerce Experience</title>
    <!-- Fonts & Icons (Enhanced) -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,300;14..32,400;14..32,500;14..32,600;14..32,700;14..32,800&family=Playfair+Display:wght@700;800;900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Inter', sans-serif;
            background: #fefefe;
            color: #1E2A32;
            scroll-behavior: smooth;
            overflow-x: hidden;
        }

        :root {
            --primary-deep: #0B1E2C;
            --accent-vibrant: #E34D4C;
            --accent-glow: #FF8A5C;
            --soft-bg: #F9F7F5;
            --card-white: #FFFFFF;
            --muted-text: #6B7A8A;
            --border-light: rgba(0, 0, 0, 0.04);
            --shadow-sm: 0 12px 28px rgba(0, 0, 0, 0.05), 0 2px 4px rgba(0, 0, 0, 0.02);
            --shadow-hover: 0 20px 35px -12px rgba(0, 0, 0, 0.12);
            --radius-xl: 28px;
            --radius-md: 20px;
            --transition: all 0.3s cubic-bezier(0.2, 0.9, 0.4, 1.1);
        }

        .container {
            max-width: 1280px;
            margin: 0 auto;
            padding: 0 32px;
        }

        /* glassmorphism header */
        header {
            position: sticky;
            top: 0;
            z-index: 100;
            background: rgba(255, 255, 255, 0.92);
            backdrop-filter: blur(16px);
            border-bottom: 1px solid var(--border-light);
            transition: var(--transition);
        }

        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 18px 0;
            gap: 20px;
        }

        .brand-logo {
            font-family: 'Playfair Display', serif;
            font-weight: 800;
            font-size: 28px;
            letter-spacing: -0.02em;
            background: linear-gradient(135deg, #1E2A32, #E34D4C);
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
            transition: var(--transition);
        }

        .brand-logo span {
            background: none;
            color: #E34D4C;
            -webkit-background-clip: unset;
            background-clip: unset;
        }

        .nav-links {
            display: flex;
            gap: 28px;
            list-style: none;
        }

        .nav-links a {
            text-decoration: none;
            font-weight: 550;
            color: #1E2A32;
            transition: var(--transition);
            font-size: 0.95rem;
            display: flex;
            align-items: center;
            gap: 6px;
        }

        .nav-links a i {
            font-size: 1rem;
            transition: var(--transition);
        }

        .nav-links a:hover {
            color: var(--accent-vibrant);
        }

        .search-modern {
            background: var(--soft-bg);
            border-radius: 60px;
            padding: 8px 18px;
            display: flex;
            align-items: center;
            gap: 12px;
            border: 1px solid transparent;
            transition: var(--transition);
        }

        .search-modern:focus-within {
            border-color: var(--accent-vibrant);
            background: white;
            box-shadow: 0 2px 12px rgba(227, 77, 76, 0.1);
        }

        .search-modern input {
            background: transparent;
            border: none;
            outline: none;
            font-size: 0.9rem;
            width: 200px;
        }

        .header-actions {
            display: flex;
            gap: 16px;
            align-items: center;
        }

        .cart-icon {
            position: relative;
            cursor: pointer;
            background: var(--soft-bg);
            padding: 10px 12px;
            border-radius: 40px;
            transition: var(--transition);
        }

        .cart-count {
            position: absolute;
            top: -6px;
            right: -8px;
            background: var(--accent-vibrant);
            color: white;
            font-size: 12px;
            font-weight: 700;
            width: 20px;
            height: 20px;
            border-radius: 30px;
            display: grid;
            place-items: center;
            box-shadow: 0 2px 6px rgba(0,0,0,0.1);
        }

        .mobile-toggle {
            display: none;
            font-size: 26px;
            background: none;
            border: none;
            cursor: pointer;
        }

        /* Hero section - cinematic */
        .hero-luxe {
            background: linear-gradient(102deg, #0F2027 0%, #203A43 50%, #2C5364 100%);
            border-radius: 0 0 48px 48px;
            margin-bottom: 16px;
            position: relative;
            overflow: hidden;
        }

        .hero-grid {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 60px 0;
            gap: 48px;
            flex-wrap: wrap;
        }

        .hero-text {
            flex: 1;
            color: white;
        }

        .hero-text .badge {
            background: rgba(255,255,255,0.15);
            backdrop-filter: blur(4px);
            display: inline-block;
            padding: 6px 14px;
            border-radius: 40px;
            font-size: 13px;
            letter-spacing: 0.5px;
            margin-bottom: 20px;
        }

        .hero-text h1 {
            font-size: 56px;
            font-weight: 800;
            line-height: 1.1;
            font-family: 'Playfair Display', serif;
            margin-bottom: 24px;
        }

        .hero-text p {
            font-size: 18px;
            opacity: 0.9;
            margin-bottom: 32px;
            max-width: 500px;
        }

        .btn-group {
            display: flex;
            gap: 16px;
            flex-wrap: wrap;
        }

        .btn-primary {
            background: #E34D4C;
            border: none;
            padding: 14px 32px;
            border-radius: 44px;
            font-weight: 700;
            color: white;
            cursor: pointer;
            transition: 0.2s;
            font-size: 15px;
            display: inline-flex;
            align-items: center;
            gap: 12px;
        }

        .btn-outline-light {
            background: transparent;
            border: 1.5px solid rgba(255,255,255,0.5);
            padding: 14px 32px;
            border-radius: 44px;
            font-weight: 600;
            color: white;
            cursor: pointer;
            transition: 0.2s;
        }

        .hero-visual {
            flex: 1;
            display: flex;
            justify-content: center;
        }

        .hero-visual img {
            max-width: 100%;
            filter: drop-shadow(0 20px 30px rgba(0,0,0,0.25));
            border-radius: 32px;
        }

        /* section headers */
        .section-header {
            text-align: center;
            margin-bottom: 48px;
        }
        .section-header h2 {
            font-size: 38px;
            font-family: 'Playfair Display', serif;
            font-weight: 700;
            color: #1E2A32;
        }
        .section-header p {
            color: var(--muted-text);
            margin-top: 8px;
        }

        /* category cards modern */
        .category-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(160px, 1fr));
            gap: 28px;
            margin-bottom: 30px;
        }
        .cat-card-modern {
            background: var(--card-white);
            border-radius: 32px;
            padding: 24px 12px;
            text-align: center;
            transition: var(--transition);
            cursor: pointer;
            box-shadow: var(--shadow-sm);
            border: 1px solid rgba(0,0,0,0.02);
        }
        .cat-card-modern:hover {
            transform: translateY(-8px);
            box-shadow: var(--shadow-hover);
            background: #fff;
        }
        .cat-icon {
            font-size: 42px;
            background: linear-gradient(145deg, #FDF2F0, #FFF);
            width: 80px;
            height: 80px;
            display: flex;
            align-items: center;
            justify-content: center;
            border-radius: 60px;
            margin: 0 auto 18px;
            color: #E34D4C;
        }

        /* product grid - elevated */
        .products-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(270px, 1fr));
            gap: 32px;
        }
        .product-card {
            background: white;
            border-radius: 28px;
            overflow: hidden;
            transition: var(--transition);
            box-shadow: var(--shadow-sm);
        }
        .product-card:hover {
            transform: translateY(-10px);
            box-shadow: var(--shadow-hover);
        }
        .product-img {
            width: 100%;
            height: 260px;
            object-fit: cover;
            transition: transform 0.5s ease;
        }
        .product-card:hover .product-img {
            transform: scale(1.02);
        }
        .product-info {
            padding: 20px;
        }
        .price-tag {
            font-weight: 800;
            font-size: 22px;
            color: #1E2A32;
        }
        .old-price {
            font-size: 14px;
            text-decoration: line-through;
            color: var(--muted-text);
            margin-left: 8px;
        }
        .rating i {
            color: #FFB83B;
            font-size: 13px;
        }
        .add-to-cart {
            background: #1E2A32;
            border: none;
            width: 100%;
            padding: 14px;
            border-radius: 40px;
            font-weight: 600;
            color: white;
            margin-top: 14px;
            cursor: pointer;
            transition: 0.2s;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 10px;
        }
        .add-to-cart:hover {
            background: #E34D4C;
        }

        /* flash sale premium */
        .flash-sale {
            background: linear-gradient(120deg, #FEF6F0 0%, #FFF0E6 100%);
            border-radius: 48px;
            padding: 48px;
            display: flex;
            gap: 40px;
            align-items: center;
            flex-wrap: wrap;
        }
        .flash-img {
            flex: 1.2;
            border-radius: 32px;
            overflow: hidden;
        }
        .flash-img img {
            width: 100%;
            height: 320px;
            object-fit: cover;
            border-radius: 28px;
        }
        .flash-details {
            flex: 1;
        }
        .timer-modern {
            display: flex;
            gap: 18px;
            margin: 28px 0;
        }
        .time-unit {
            background: white;
            border-radius: 24px;
            padding: 12px 18px;
            min-width: 80px;
            text-align: center;
            box-shadow: 0 6px 14px rgba(0,0,0,0.02);
        }
        .time-number {
            font-size: 32px;
            font-weight: 800;
        }

        /* testimonials */
        .testimonial-scroll {
            display: flex;
            gap: 28px;
            overflow-x: auto;
            padding: 16px 4px 24px;
            scrollbar-width: thin;
        }
        .testi-card {
            min-width: 320px;
            background: white;
            border-radius: 32px;
            padding: 28px;
            box-shadow: var(--shadow-sm);
        }

        /* newsletter new */
        .newsletter-lux {
            background: #1E2A32;
            border-radius: 48px;
            padding: 56px 32px;
            text-align: center;
            color: white;
        }
        .newsletter-lux input {
            padding: 16px 24px;
            border-radius: 60px;
            border: none;
            width: 320px;
            max-width: 70%;
            background: rgba(255,255,255,0.1);
            color: white;
            margin-right: 12px;
        }
        .newsletter-lux input::placeholder {
            color: rgba(255,255,255,0.6);
        }

        footer {
            padding: 56px 0 32px;
            border-top: 1px solid var(--border-light);
            margin-top: 48px;
        }

        @media (max-width: 980px) {
            .nav-links, .search-modern {
                display: none;
            }
            .mobile-toggle {
                display: block;
            }
            .hero-text h1 {
                font-size: 42px;
            }
            .container {
                padding: 0 24px;
            }
        }
        @media (max-width: 680px) {
            .flash-sale {
                flex-direction: column;
            }
            .products-grid {
                grid-template-columns: 1fr;
            }
        }
        button {
            background: none;
            border: none;
        }
        .cart-sidebar {
            position: fixed;
            top: 0;
            right: -420px;
            width: 380px;
            height: 100vh;
            background: white;
            box-shadow: -8px 0 32px rgba(0,0,0,0.08);
            z-index: 1000;
            transition: 0.35s ease;
            padding: 28px;
            display: flex;
            flex-direction: column;
            backdrop-filter: blur(10px);
        }
        .cart-sidebar.open {
            right: 0;
        }
        .overlay {
            position: fixed;
            inset: 0;
            background: rgba(0,0,0,0.3);
            backdrop-filter: blur(2px);
            z-index: 999;
            display: none;
        }
    </style>
</head>
<body>

<header>
    <div class="container header-inner">
        <button class="mobile-toggle" id="mobileMenuBtn"><i class="fas fa-bars"></i></button>
        <div class="brand-logo">HORIZON<span>.</span></div>
        <ul class="nav-links">
            <li><a href="#"><i class="fas fa-store"></i> Shop</a></li>
            <li><a href="#deals"><i class="fas fa-bolt"></i> Flash</a></li>
            <li><a href="#"><i class="fas fa-chart-line"></i> Trends</a></li>
            <li><a href="#"><i class="fas fa-gem"></i> Luxury</a></li>
        </ul>
        <div class="search-modern">
            <i class="fas fa-search" style="color:#E34D4C;"></i>
            <input type="text" id="globalSearch" placeholder="Search for style...">
        </div>
        <div class="header-actions">
            <div class="cart-icon" id="openCartBtn">
                <i class="fas fa-bag-shopping"></i>
                <span class="cart-count" id="cartTotalCount">0</span>
            </div>
            <i class="far fa-user-circle" style="font-size: 24px; cursor: pointer;"></i>
        </div>
    </div>
    <!-- mobile nav hidden initially -->
    <div id="mobileNavPanel" style="display:none; background: white; border-top: 1px solid #eee; padding: 16px 24px;">
        <ul style="list-style: none; display: flex; flex-direction: column; gap: 16px;">
            <li><a href="#">Shop</a></li>
            <li><a href="#deals">Flash Sale</a></li>
            <li><a href="#">Trending</a></li>
            <li><a href="#">Luxury</a></li>
        </ul>
    </div>
</header>

<main>
    <!-- HERO SECTION REIMAGINED -->
    <div class="hero-luxe">
        <div class="container hero-grid">
            <div class="hero-text">
                <div class="badge"><i class="fas fa-fire"></i> LIMITED EDITION</div>
                <h1>Beyond the <br>Everyday.</h1>
                <p>Discover iconic designs, premium materials, and timeless style. Elevate your collection.</p>
                <div class="btn-group">
                    <button class="btn-primary" id="heroShopBtn"><i class="fas fa-arrow-right"></i> Explore Collection</button>
                    <button class="btn-outline-light" id="heroDealBtn">Flash Sale <i class="fas fa-tag"></i></button>
                </div>
            </div>
            <div class="hero-visual">
                <img src="https://images.unsplash.com/photo-1531297484001-80022131f5a1?auto=format&fit=crop&w=800&q=80" alt="hero product">
            </div>
        </div>
    </div>

    <!-- Categories section -->
    <div class="container" style="margin-top: 60px;">
        <div class="section-header">
            <h2>Curated Collections</h2>
            <p>Explore by essence & style</p>
        </div>
        <div class="category-grid" id="categoryContainer"></div>
    </div>

    <!-- Trending products -->
    <div class="container" style="margin-top: 64px;">
        <div class="section-header">
            <h2>Editor's Pick</h2>
            <p>Most sought-after this season</p>
        </div>
        <div class="products-grid" id="productGrid"></div>
    </div>

    <!-- DEALS SECTION premium -->
    <div class="container" id="deals" style="margin: 72px auto;">
        <div class="flash-sale">
            <div class="flash-img">
                <img src="https://images.unsplash.com/photo-1611186871348-b1ce696e52c9?auto=format&fit=crop&w=800&q=80" alt="deal">
            </div>
            <div class="flash-details">
                <h2 style="font-size: 34px;">⚡ Last Call: Studio Edition</h2>
                <p style="margin: 12px 0 8px;">Ultra-sleek design, unmatched performance. Up to 30% off.</p>
                <div class="timer-modern" id="countdownTimer">
                    <div class="time-unit"><div class="time-number" id="days">00</div><div>Days</div></div>
                    <div class="time-unit"><div class="time-number" id="hours">00</div><div>Hrs</div></div>
                    <div class="time-unit"><div class="time-number" id="minutes">00</div><div>Mins</div></div>
                    <div class="time-unit"><div class="time-number" id="seconds">00</div><div>Secs</div></div>
                </div>
                <div class="price-tag" style="font-size: 32px;">$899 <span class="old-price">$1299</span></div>
                <button class="btn-primary" id="flashDealBtn" style="margin-top: 24px; background: #E34D4C;">Grab Deal <i class="fas fa-bolt"></i></button>
            </div>
        </div>
    </div>

    <!-- Testimonials modern -->
    <div class="container">
        <div class="section-header"><h2>Trusted Voices</h2><p>Loved by creatives worldwide</p></div>
        <div class="testimonial-scroll" id="testimonialsList">
            <!-- injected via js -->
        </div>
    </div>

    <!-- Newsletter -->
    <div class="container" style="margin: 60px auto;">
        <div class="newsletter-lux">
            <i class="fas fa-envelope-open-text" style="font-size: 44px; margin-bottom: 12px;"></i>
            <h3 style="font-size: 28px;">Join the inner circle</h3>
            <p style="margin-bottom: 28px;">First access to drops & exclusive perks</p>
            <form id="newsForm" onsubmit="return false;">
                <input type="email" id="newsEmail" placeholder="Your email address">
                <button class="btn-primary" id="subscribeNewsBtn" style="background: white; color:#1E2A32;">Subscribe</button>
            </form>
            <div id="newsMsg" style="margin-top: 12px; font-size: 14px;"></div>
        </div>
    </div>
</main>

<footer>
    <div class="container" style="display: flex; justify-content: space-between; flex-wrap: wrap; gap: 32px;">
        <div><h3 style="font-family: 'Playfair Display';">HORIZON</h3><p class="muted-text" style="color: #6B7A8A;">Where design meets emotion.</p></div>
        <div><p>© 2025 Horizon — All rights reserved</p></div>
    </div>
</footer>

<!-- Cart Sidebar -->
<div class="overlay" id="cartOverlay"></div>
<div class="cart-sidebar" id="cartSidebar">
    <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 32px;">
        <h3><i class="fas fa-shopping-bag"></i> Cart</h3>
        <button id="closeCartBtn" style="font-size: 24px; cursor: pointer;">&times;</button>
    </div>
    <div id="cartItemsList" style="flex:1; overflow-y: auto;"></div>
    <div style="border-top: 1px solid #eee; padding-top: 16px;">
        <div style="display: flex; justify-content: space-between; font-weight: 800;"><span>Total:</span><span id="cartTotalPrice">$0</span></div>
        <button class="add-to-cart" style="background: #E34D4C; margin-top: 20px;">Checkout →</button>
    </div>
</div>

<script>
    // ------------------- DATA (expanded for richness) -------------------
    const categories = [
        { id: 'audio', name: 'Audio', icon: 'fas fa-headphones' },
        { id: 'wearables', name: 'Wearables', icon: 'fas fa-clock' },
        { id: 'studio', name: 'Studio', icon: 'fas fa-camera' },
        { id: 'edition', name: 'Limited', icon: 'fas fa-gem' },
        { id: 'essentials', name: 'Essentials', icon: 'fas fa-bag-shopping' },
    ];

    const products = [
        { id: 101, title: "Aether Headphones", price: 349, oldPrice: 499, rating: 5, reviews: 234, img: "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=600&q=80", category: "audio", badge: "hot" },
        { id: 102, title: "Chronos Smartwatch", price: 279, oldPrice: 389, rating: 4.5, reviews: 188, img: "https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=600&q=80", category: "wearables" },
        { id: 103, title: "Nebula Studio Monitor", price: 599, rating: 5, reviews: 92, img: "https://images.unsplash.com/photo-1546868871-7041f2a55e12?auto=format&fit=crop&w=600&q=80", category: "studio" },
        { id: 104, title: "Orion Backpack", price: 129, oldPrice: 199, rating: 4, reviews: 312, img: "https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=600&q=80", category: "essentials" },
        { id: 105, title: "Lumina Ring Light", price: 89, rating: 4.8, reviews: 77, img: "https://images.unsplash.com/photo-1516035069371-29a1b244cc32?auto=format&fit=crop&w=600&q=80", category: "studio" },
        { id: 106, title: "Horizon Capsule", price: 199, oldPrice: 299, rating: 5, reviews: 103, img: "https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80", category: "edition", badge: "limited" },
    ];

    let cartItems = []; // { id, title, price, qty, img }
    let cartCount = 0;

    // helpers
    function updateCartUI() {
        const cartCountSpan = document.getElementById('cartTotalCount');
        const cartItemsContainer = document.getElementById('cartItemsList');
        const totalSpan = document.getElementById('cartTotalPrice');
        let total = 0;
        cartItemsContainer.innerHTML = '';
        if(cartItems.length === 0){
            cartItemsContainer.innerHTML = '<div class="muted-text" style="text-align:center; padding: 40px 0;">Your cart feels empty ✨</div>';
        } else {
            cartItems.forEach((item, idx) => {
                total += item.price * item.qty;
                const div = document.createElement('div');
                div.style.display = 'flex'; div.style.gap = '12px'; div.style.marginBottom = '18px'; div.style.alignItems = 'center';
                div.innerHTML = `<img src="${item.img}" style="width: 60px; height: 60px; border-radius: 16px; object-fit: cover;"><div style="flex:1"><strong>${item.title}</strong><div>$${item.price}</div><div>Qty: ${item.qty}</div></div><button class="remove-item" data-id="${item.id}" style="background:#f0f0f0; border-radius:30px; padding:6px 12px;">✕</button>`;
                cartItemsContainer.appendChild(div);
            });
            document.querySelectorAll('.remove-item').forEach(btn => {
                btn.addEventListener('click', (e) => {
                    const id = Number(btn.dataset.id);
                    removeFromCart(id);
                });
            });
        }
        cartCount = cartItems.reduce((acc, i) => acc + i.qty, 0);
        cartCountSpan.innerText = cartCount;
        totalSpan.innerText = `$${total.toFixed(2)}`;
    }

    function addToCart(product) {
        const existing = cartItems.find(i => i.id === product.id);
        if(existing) {
            existing.qty++;
        } else {
            cartItems.push({ ...product, qty: 1, img: product.img });
        }
        updateCartUI();
        const btn = document.querySelector(`.add-btn-${product.id}`);
        if(btn) { btn.innerHTML = '<i class="fas fa-check"></i> Added'; setTimeout(() => { if(btn) btn.innerHTML = '<i class="fas fa-cart-plus"></i> Add'; }, 900); }
    }
    function removeFromCart(id){
        cartItems = cartItems.filter(i => i.id !== id);
        updateCartUI();
    }

    // render products
    function renderProducts(filter = "") {
        const grid = document.getElementById('productGrid');
        let filtered = products;
        if(filter) filtered = products.filter(p => p.title.toLowerCase().includes(filter) || p.category.toLowerCase().includes(filter));
        grid.innerHTML = '';
        filtered.forEach(p => {
            const card = document.createElement('div');
            card.className = 'product-card';
            card.innerHTML = `
                <img class="product-img" src="${p.img}" alt="${p.title}">
                <div class="product-info">
                    <div style="display: flex; justify-content: space-between;"><strong>${p.title}</strong> <span class="rating">${'★'.repeat(Math.floor(p.rating))} ${p.reviews}</span></div>
                    <div><span class="price-tag">$${p.price}</span> ${p.oldPrice ? `<span class="old-price">$${p.oldPrice}</span>` : ''}</div>
                    <button class="add-to-cart add-btn-${p.id}" data-product='${JSON.stringify(p)}'><i class="fas fa-cart-plus"></i> Add to Bag</button>
                </div>
            `;
            grid.appendChild(card);
        });
        document.querySelectorAll('[class*="add-btn-"]').forEach(btn => {
            btn.addEventListener('click', (e) => {
                const prodData = JSON.parse(btn.dataset.product);
                addToCart(prodData);
            });
        });
    }

    function renderCategories() {
        const catContainer = document.getElementById('categoryContainer');
        catContainer.innerHTML = '';
        categories.forEach(c => {
            const catDiv = document.createElement('div');
            catDiv.className = 'cat-card-modern';
            catDiv.innerHTML = `<div class="cat-icon"><i class="${c.icon}"></i></div><h4>${c.name}</h4><p class="muted-text" style="font-size:13px;">${c.name} edit</p>`;
            catDiv.addEventListener('click', () => {
                document.getElementById('globalSearch').value = c.name;
                renderProducts(c.name);
                window.scrollTo({ top: 500, behavior: 'smooth' });
            });
            catContainer.appendChild(catDiv);
        });
    }

    // testimonials dynamic
    const testimonials = [
        { name: "Sophia Chen", text: "Unreal quality & fast delivery. Horizon changed my style game.", rating: 5, img: "https://randomuser.me/api/portraits/women/68.jpg" },
        { name: "Marcus Rivera", text: "The limited editions are insane. Packaging is premium.", rating: 5, img: "https://randomuser.me/api/portraits/men/32.jpg" },
    ];
    function loadTestimonials() {
        const container = document.getElementById('testimonialsList');
        container.innerHTML = testimonials.map(t => `
            <div class="testi-card"><div class="rating">${'★'.repeat(t.rating)}</div><p style="margin: 12px 0;">“${t.text}”</p><div style="display:flex; align-items:center; gap:12px;"><img src="${t.img}" style="width: 44px; height:44px; border-radius:60px; object-fit:cover;"><div><strong>${t.name}</strong></div></div></div>
        `).join('');
    }

    // countdown (2 days from now)
    function initCountdown() {
        const target = new Date();
        target.setDate(target.getDate() + 1);
        target.setHours(target.getHours() + 18);
        function tick(){
            const diff = target - new Date();
            if(diff<=0){ clearInterval(interval); document.getElementById('days').innerText='00';return; }
            const days = Math.floor(diff/(1000*60*60*24));
            const hours = Math.floor((diff%(1000*60*60*24))/(1000*60*60));
            const mins = Math.floor((diff%(1000*60*60))/(1000*60));
            const secs = Math.floor((diff%(1000*60))/1000);
            document.getElementById('days').innerText = days;
            document.getElementById('hours').innerText = String(hours).padStart(2,'0');
            document.getElementById('minutes').innerText = String(mins).padStart(2,'0');
            document.getElementById('seconds').innerText = String(secs).padStart(2,'0');
        }
        tick(); const interval = setInterval(tick, 1000);
    }

    // events
    document.getElementById('globalSearch').addEventListener('input', (e) => renderProducts(e.target.value.toLowerCase()));
    document.getElementById('heroShopBtn').addEventListener('click', () => { window.scrollTo({ top: 550, behavior: 'smooth' }); });
    document.getElementById('heroDealBtn').addEventListener('click', () => { document.getElementById('deals').scrollIntoView({ behavior: 'smooth' }); });
    document.getElementById('flashDealBtn').addEventListener('click', () => {
        const dealProduct = { id: 999, title: "Studio Edition", price: 899, img: "https://images.unsplash.com/photo-1611186871348-b1ce696e52c9?auto=format&fit=crop&w=200&q=80" };
        addToCart(dealProduct);
    });
    document.getElementById('openCartBtn').addEventListener('click', () => { document.getElementById('cartSidebar').classList.add('open'); document.getElementById('cartOverlay').style.display = 'block'; });
    document.getElementById('closeCartBtn').addEventListener('click', () => { document.getElementById('cartSidebar').classList.remove('open'); document.getElementById('cartOverlay').style.display = 'none'; });
    document.getElementById('cartOverlay').addEventListener('click', () => { document.getElementById('cartSidebar').classList.remove('open'); document.getElementById('cartOverlay').style.display = 'none'; });
    document.getElementById('subscribeNewsBtn').addEventListener('click', () => {
        const email = document.getElementById('newsEmail').value;
        const msgDiv = document.getElementById('newsMsg');
        if(!email.includes('@')) { msgDiv.innerText = 'Valid email required'; msgDiv.style.color='#ffb3b3'; } 
        else { msgDiv.innerText = '🎉 Welcome to Horizon Collective!'; msgDiv.style.color='#cce7ff'; document.getElementById('newsEmail
