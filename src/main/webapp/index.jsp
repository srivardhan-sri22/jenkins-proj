<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8"/>
<meta name="viewport" content="width=device-width,initial-scale=1"/>
<title>NexusShop — Premium Collection</title>
<link href="https://fonts.googleapis.com/css2?family=Playfair+Display:ital,wght@0,700;0,900;1,700&family=DM+Sans:wght@300;400;500&family=Space+Mono:wght@400;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous">
<style>
:root{
  --ink:#0d0d0d;
  --paper:#faf8f4;
  --gold:#c9a84c;
  --gold-light:#e8d5a0;
  --rust:#c4522a;
  --sage:#4a6741;
  --card:#ffffff;
  --muted:#8a8580;
  --radius:4px;
  --r-lg:16px;
}
*{box-sizing:border-box;margin:0;padding:0}
html{scroll-behavior:smooth}
body{font-family:'DM Sans',sans-serif;background:var(--paper);color:var(--ink);-webkit-font-smoothing:antialiased;overflow-x:hidden}
a{color:inherit;text-decoration:none}
img{display:block}

/* ── NOISE OVERLAY ── */
body::before{
  content:'';position:fixed;inset:0;pointer-events:none;z-index:999;
  background-image:url("data:image/svg+xml,%3Csvg viewBox='0 0 256 256' xmlns='http://www.w3.org/2000/svg'%3E%3Cfilter id='n'%3E%3CfeTurbulence type='fractalNoise' baseFrequency='0.9' numOctaves='4' stitchTiles='stitch'/%3E%3C/filter%3E%3Crect width='100%25' height='100%25' filter='url(%23n)' opacity='0.035'/%3E%3C/svg%3E");
  opacity:.4;
}

/* ── HEADER ── */
header{
  position:sticky;top:0;z-index:50;
  background:var(--paper);
  border-bottom:1px solid rgba(13,13,13,.08);
  backdrop-filter:blur(8px);
}
.header-inner{
  max-width:1300px;margin:0 auto;padding:0 32px;
  display:flex;align-items:center;justify-content:space-between;height:68px;gap:20px;
}
.brand{
  font-family:'Playfair Display',serif;font-weight:900;font-size:22px;letter-spacing:-0.01em;
  display:flex;align-items:center;gap:2px;
}
.brand .dot{color:var(--gold)}
.brand .thin{font-weight:700;font-style:italic;color:var(--muted)}
nav ul{list-style:none;display:flex;gap:4px;align-items:center}
nav ul li a{
  padding:7px 13px;border-radius:var(--radius);font-size:14px;font-weight:500;
  transition:background .15s,color .15s;color:var(--muted);
}
nav ul li a:hover{background:rgba(13,13,13,.05);color:var(--ink)}
.search-wrap{
  display:flex;align-items:center;gap:8px;
  background:#f0ede8;border-radius:100px;padding:8px 16px;min-width:220px;
  border:1px solid transparent;transition:border .2s;
}
.search-wrap:focus-within{border-color:var(--gold)}
.search-wrap input{border:0;background:transparent;outline:none;font-size:13px;font-family:'DM Sans',sans-serif;width:100%;color:var(--ink)}
.search-wrap button{background:transparent;border:0;cursor:pointer;color:var(--muted);font-size:13px}
.header-acts{display:flex;align-items:center;gap:6px}
.icon-btn{
  background:transparent;border:0;cursor:pointer;color:var(--ink);
  width:38px;height:38px;border-radius:var(--radius);display:inline-grid;place-items:center;
  font-size:15px;transition:background .15s;position:relative;
}
.icon-btn:hover{background:rgba(13,13,13,.06)}
.cart-badge{
  position:absolute;top:4px;right:4px;background:var(--rust);color:#fff;
  font-size:10px;font-weight:700;width:17px;height:17px;border-radius:50%;
  display:grid;place-items:center;font-family:'Space Mono',monospace;
}
.mobile-toggle{display:none}

/* ── HERO ── */
.hero{
  position:relative;overflow:hidden;
  min-height:92vh;display:flex;
  background:var(--ink);color:#fff;
}
.hero-bg{
  position:absolute;inset:0;
  background:url('https://images.unsplash.com/photo-1441986300917-64674bd600d8?auto=format&fit=crop&w=1600&q=85') center/cover no-repeat;
  opacity:.35;transform:scale(1.04);
  animation:zoomin 18s ease-out forwards;
}
@keyframes zoomin{to{transform:scale(1)}}
.hero-overlay{
  position:absolute;inset:0;
  background:linear-gradient(135deg,rgba(13,13,13,.85) 0%,rgba(13,13,13,.2) 60%,transparent 100%);
}
.hero-inner{
  position:relative;z-index:2;max-width:1300px;margin:0 auto;padding:0 32px;
  display:flex;flex-direction:column;justify-content:center;align-items:flex-start;
  gap:28px;padding-top:80px;padding-bottom:80px;
}
.hero-tag{
  display:inline-flex;align-items:center;gap:8px;
  font-family:'Space Mono',monospace;font-size:11px;letter-spacing:.18em;text-transform:uppercase;
  color:var(--gold);border:1px solid rgba(201,168,76,.3);padding:6px 14px;border-radius:100px;
  animation:fadein .8s .2s both;
}
.hero h1{
  font-family:'Playfair Display',serif;font-size:clamp(42px,7vw,88px);
  line-height:1.02;letter-spacing:-0.03em;max-width:700px;
  animation:slidein .9s .3s both;
}
.hero h1 em{font-style:italic;color:var(--gold-light)}
.hero p{
  font-size:17px;line-height:1.65;max-width:480px;color:rgba(255,255,255,.75);
  font-weight:300;animation:fadein .9s .5s both;
}
.hero-btns{display:flex;gap:12px;flex-wrap:wrap;animation:fadein .9s .65s both}
.btn{
  display:inline-flex;align-items:center;gap:9px;padding:13px 24px;
  border-radius:var(--radius);font-weight:500;cursor:pointer;font-size:15px;
  border:0;font-family:'DM Sans',sans-serif;transition:transform .18s,box-shadow .18s;
}
.btn:hover{transform:translateY(-2px)}
.btn-gold{background:var(--gold);color:#0d0d0d;box-shadow:0 4px 24px rgba(201,168,76,.35)}
.btn-gold:hover{box-shadow:0 8px 32px rgba(201,168,76,.5)}
.btn-outline{background:transparent;border:1px solid rgba(255,255,255,.25);color:#fff}
.btn-outline:hover{background:rgba(255,255,255,.08)}
.hero-stats{
  display:flex;gap:40px;border-top:1px solid rgba(255,255,255,.12);
  padding-top:28px;width:100%;animation:fadein .9s .8s both;
}
.hero-stat .num{
  font-family:'Playfair Display',serif;font-size:28px;font-weight:700;color:var(--gold-light);
}
.hero-stat .lbl{font-size:12px;color:rgba(255,255,255,.5);letter-spacing:.08em;text-transform:uppercase;margin-top:2px}
.hero-scroll{
  position:absolute;bottom:32px;left:50%;transform:translateX(-50%);
  display:flex;flex-direction:column;align-items:center;gap:8px;color:rgba(255,255,255,.4);
  font-size:11px;letter-spacing:.15em;text-transform:uppercase;z-index:2;
  animation:bounce 2s 1.5s infinite;
}
.hero-scroll .line{width:1px;height:40px;background:rgba(255,255,255,.2)}
@keyframes bounce{0%,100%{transform:translateX(-50%) translateY(0)}50%{transform:translateX(-50%) translateY(8px)}}
@keyframes fadein{from{opacity:0}to{opacity:1}}
@keyframes slidein{from{opacity:0;transform:translateY(24px)}to{opacity:1;transform:translateY(0)}}

/* ── MARQUEE ── */
.marquee-wrap{
  background:var(--ink);color:var(--gold);overflow:hidden;
  padding:14px 0;border-top:1px solid rgba(201,168,76,.15);
}
.marquee-track{
  display:flex;gap:48px;white-space:nowrap;
  animation:scroll 28s linear infinite;
  font-family:'Space Mono',monospace;font-size:12px;letter-spacing:.14em;text-transform:uppercase;
}
@keyframes scroll{from{transform:translateX(0)}to{transform:translateX(-50%)}}
.marquee-item{display:flex;align-items:center;gap:12px}
.marquee-item::after{content:'✦';opacity:.4;margin-left:12px}

/* ── SECTION WRAPPER ── */
.section{padding:88px 0}
.container{max-width:1300px;margin:0 auto;padding:0 32px}
.sec-head{margin-bottom:52px}
.sec-label{
  font-family:'Space Mono',monospace;font-size:11px;letter-spacing:.18em;
  text-transform:uppercase;color:var(--gold);display:flex;align-items:center;gap:10px;margin-bottom:12px;
}
.sec-label::before{content:'';width:24px;height:1px;background:var(--gold)}
.sec-title{
  font-family:'Playfair Display',serif;font-size:clamp(28px,4vw,44px);
  font-weight:900;letter-spacing:-0.02em;line-height:1.1;
}
.sec-sub{color:var(--muted);font-size:15px;margin-top:10px;font-weight:300;line-height:1.6}

/* ── CATEGORIES ── */
.cat-grid{
  display:grid;grid-template-columns:repeat(6,1fr);gap:16px;
}
.cat-card{
  background:var(--card);border-radius:var(--r-lg);padding:28px 16px;
  text-align:center;border:1px solid rgba(13,13,13,.06);
  cursor:pointer;transition:transform .22s,box-shadow .22s,border-color .22s;
  position:relative;overflow:hidden;
}
.cat-card::before{
  content:'';position:absolute;bottom:0;left:0;right:0;height:3px;
  background:var(--gold);transform:scaleX(0);transform-origin:left;
  transition:transform .25s;
}
.cat-card:hover::before{transform:scaleX(1)}
.cat-card:hover{transform:translateY(-8px);box-shadow:0 24px 56px rgba(13,13,13,.1);border-color:rgba(201,168,76,.2)}
.cat-icon{
  width:54px;height:54px;border-radius:50%;background:linear-gradient(135deg,#f8f4ec,#ede7d6);
  display:grid;place-items:center;margin:0 auto 14px;font-size:22px;color:var(--gold);
  transition:background .22s;
}
.cat-card:hover .cat-icon{background:linear-gradient(135deg,var(--gold),#e0b84a)}
.cat-card:hover .cat-icon i{color:#fff}
.cat-card h4{font-size:13px;font-weight:600;letter-spacing:.02em}
.cat-card small{color:var(--muted);font-size:11px}

/* ── PRODUCTS ── */
.prod-grid{display:grid;grid-template-columns:repeat(4,1fr);gap:24px}
.product{
  background:var(--card);border-radius:var(--r-lg);overflow:hidden;
  display:flex;flex-direction:column;
  border:1px solid rgba(13,13,13,.05);
  transition:transform .22s,box-shadow .22s;
  position:relative;
}
.product:hover{transform:translateY(-6px);box-shadow:0 32px 64px rgba(13,13,13,.1)}
.product-img{position:relative;overflow:hidden;height:220px}
.product-img img{width:100%;height:100%;object-fit:cover;transition:transform .5s ease}
.product:hover .product-img img{transform:scale(1.06)}
.prod-badge{
  position:absolute;top:14px;left:14px;z-index:1;
  padding:5px 10px;border-radius:var(--radius);font-size:11px;font-weight:700;
  font-family:'Space Mono',monospace;letter-spacing:.04em;
}
.badge-new{background:var(--sage);color:#fff}
.badge-sale{background:var(--rust);color:#fff}
.prod-actions{
  position:absolute;top:14px;right:14px;z-index:1;
  display:flex;flex-direction:column;gap:8px;
  opacity:0;transform:translateX(12px);transition:opacity .25s,transform .25s;
}
.product:hover .prod-actions{opacity:1;transform:translateX(0)}
.prod-act-btn{
  width:34px;height:34px;border-radius:var(--radius);border:0;
  background:rgba(255,255,255,.92);backdrop-filter:blur(4px);
  cursor:pointer;display:grid;place-items:center;font-size:13px;
  color:var(--ink);transition:background .15s,color .15s;box-shadow:0 2px 12px rgba(0,0,0,.08);
}
.prod-act-btn:hover{background:var(--gold);color:#fff}
.product-body{padding:18px;display:flex;flex-direction:column;gap:6px;flex:1}
.prod-cat{font-size:11px;color:var(--muted);letter-spacing:.1em;text-transform:uppercase;font-family:'Space Mono',monospace}
.prod-name{font-size:15px;font-weight:600;line-height:1.3}
.prod-rating{display:flex;align-items:center;gap:6px;font-size:12px;color:var(--gold)}
.prod-rating span{color:var(--muted)}
.price-row{display:flex;align-items:center;justify-content:space-between;margin-top:4px}
.price{font-family:'Playfair Display',serif;font-weight:700;font-size:20px}
.old-price{color:var(--muted);text-decoration:line-through;font-size:13px}
.add-btn{
  margin:0 18px 18px;padding:12px;border-radius:var(--radius);
  background:var(--ink);color:#fff;border:0;cursor:pointer;
  font-family:'DM Sans',sans-serif;font-weight:600;font-size:14px;
  display:flex;align-items:center;justify-content:center;gap:8px;
  transition:background .2s,transform .15s;
}
.add-btn:hover{background:var(--gold);color:#0d0d0d;transform:translateY(-1px)}

/* ── DEAL BANNER ── */
.deal-section{background:var(--ink);padding:80px 0;color:#fff;overflow:hidden;position:relative}
.deal-section::before{
  content:'';position:absolute;inset:0;
  background:radial-gradient(ellipse 60% 80% at 70% 50%,rgba(201,168,76,.12),transparent);
}
.deal-inner{
  display:grid;grid-template-columns:1fr 1fr;gap:0;align-items:stretch;
  border-radius:var(--r-lg);overflow:hidden;position:relative;z-index:1;
}
.deal-img{position:relative;overflow:hidden;min-height:420px}
.deal-img img{width:100%;height:100%;object-fit:cover;filter:brightness(.85)}
.deal-img-overlay{
  position:absolute;inset:0;
  background:linear-gradient(90deg,transparent 40%,var(--ink) 100%);
}
.deal-content{
  padding:60px 52px;display:flex;flex-direction:column;justify-content:center;gap:20px;
  background:var(--ink);
}
.deal-label{
  font-family:'Space Mono',monospace;font-size:11px;letter-spacing:.18em;
  text-transform:uppercase;color:var(--rust);display:flex;align-items:center;gap:10px;
}
.deal-label::before{content:'';width:24px;height:1px;background:var(--rust)}
.deal h2{
  font-family:'Playfair Display',serif;font-size:clamp(28px,3.5vw,44px);
  font-weight:900;letter-spacing:-0.02em;line-height:1.1;
}
.deal h2 em{font-style:italic;color:var(--gold-light)}
.timer{display:flex;gap:12px;margin:8px 0}
.t-box{
  text-align:center;min-width:72px;
  background:rgba(255,255,255,.05);border:1px solid rgba(255,255,255,.08);
  border-radius:var(--radius);padding:14px 8px;
}
.t-num{font-family:'Space Mono',monospace;font-size:26px;font-weight:700;color:var(--gold)}
.t-lbl{font-size:10px;color:rgba(255,255,255,.4);letter-spacing:.12em;text-transform:uppercase;margin-top:4px}
.deal-price{display:flex;align-items:baseline;gap:14px}
.deal-price .price{font-family:'Playfair Display',serif;font-size:40px;color:#fff}
.deal-price .old{color:rgba(255,255,255,.35);text-decoration:line-through;font-size:18px}
.deal-price .save{background:var(--rust);color:#fff;padding:4px 10px;border-radius:var(--radius);font-size:13px;font-weight:700;font-family:'Space Mono',monospace}

/* ── TESTIMONIALS ── */
.test-grid{display:grid;grid-template-columns:repeat(3,1fr);gap:24px}
.test-card{
  background:var(--card);border-radius:var(--r-lg);padding:32px;
  border:1px solid rgba(13,13,13,.06);transition:border-color .2s,box-shadow .2s;
  position:relative;
}
.test-card:hover{border-color:rgba(201,168,76,.3);box-shadow:0 12px 40px rgba(13,13,13,.07)}
.test-stars{color:var(--gold);font-size:14px;letter-spacing:.04em;margin-bottom:16px}
.test-quote{font-size:15px;line-height:1.7;color:var(--ink);font-weight:300}
.test-quote::before{content:'\201C';font-family:'Playfair Display',serif;font-size:40px;color:var(--gold-light);line-height:.6;display:block;margin-bottom:10px}
.test-person{display:flex;align-items:center;gap:12px;margin-top:22px;padding-top:18px;border-top:1px solid rgba(13,13,13,.06)}
.test-avatar{width:44px;height:44px;border-radius:50%;object-fit:cover;border:2px solid var(--gold-light)}
.test-name{font-weight:600;font-size:14px}
.test-role{font-size:12px;color:var(--muted)}

/* ── NEWSLETTER ── */
.newsletter-wrap{
  background:linear-gradient(135deg,#1a1208,#0d0d0d);
  border-radius:var(--r-lg);padding:72px 64px;
  display:grid;grid-template-columns:1fr 1fr;gap:48px;align-items:center;
  border:1px solid rgba(201,168,76,.12);position:relative;overflow:hidden;
}
.newsletter-wrap::before{
  content:'✦';font-size:320px;color:rgba(201,168,76,.04);
  position:absolute;right:-60px;top:-80px;line-height:1;pointer-events:none;
}
.nl-title{font-family:'Playfair Display',serif;font-size:clamp(24px,3vw,38px);font-weight:900;color:#fff;margin-bottom:10px}
.nl-sub{color:rgba(255,255,255,.5);font-size:15px;font-weight:300;line-height:1.6}
.nl-form{display:flex;gap:10px}
.nl-form input{
  flex:1;padding:14px 20px;border-radius:var(--radius);border:1px solid rgba(255,255,255,.12);
  background:rgba(255,255,255,.07);color:#fff;font-family:'DM Sans',sans-serif;font-size:14px;outline:none;
  transition:border-color .2s;
}
.nl-form input::placeholder{color:rgba(255,255,255,.35)}
.nl-form input:focus{border-color:var(--gold)}
#newsletterMsg{font-size:13px;margin-top:10px;font-family:'Space Mono',monospace}

/* ── FOOTER ── */
footer{padding:56px 0 32px;border-top:1px solid rgba(13,13,13,.07)}
.footer-inner{display:grid;grid-template-columns:2fr 1fr 1fr 1fr;gap:48px;margin-bottom:48px}
.footer-brand .name{font-family:'Playfair Display',serif;font-size:22px;font-weight:900;margin-bottom:12px}
.footer-brand .name em{font-style:italic;color:var(--gold)}
.footer-brand p{color:var(--muted);font-size:14px;line-height:1.7;font-weight:300}
.footer-social{display:flex;gap:8px;margin-top:18px}
.social-btn{
  width:36px;height:36px;border-radius:var(--radius);border:1px solid rgba(13,13,13,.1);
  display:grid;place-items:center;font-size:14px;color:var(--muted);
  transition:background .15s,color .15s,border-color .15s;cursor:pointer;
}
.social-btn:hover{background:var(--ink);color:#fff;border-color:var(--ink)}
.footer-col h5{font-size:12px;letter-spacing:.12em;text-transform:uppercase;font-family:'Space Mono',monospace;margin-bottom:18px;color:var(--ink)}
.footer-col ul{list-style:none}
.footer-col ul li{margin-bottom:10px}
.footer-col ul li a{color:var(--muted);font-size:14px;transition:color .15s}
.footer-col ul li a:hover{color:var(--ink)}
.footer-bottom{display:flex;justify-content:space-between;align-items:center;padding-top:28px;border-top:1px solid rgba(13,13,13,.06);color:var(--muted);font-size:13px}

/* ── RESPONSIVE ── */
@media(max-width:1100px){
  .cat-grid{grid-template-columns:repeat(3,1fr)}
  .prod-grid{grid-template-columns:repeat(3,1fr)}
  .footer-inner{grid-template-columns:1fr 1fr}
}
@media(max-width:900px){
  nav{display:none}.mobile-toggle{display:inline-grid}
  .deal-inner{grid-template-columns:1fr}
  .deal-img{min-height:260px}
  .deal-img-overlay{background:linear-gradient(180deg,transparent 40%,var(--ink) 100%)}
  .newsletter-wrap{grid-template-columns:1fr;padding:48px 32px}
  .test-grid{grid-template-columns:1fr 1fr}
  .prod-grid{grid-template-columns:repeat(2,1fr)}
}
@media(max-width:600px){
  .hero-stats{gap:24px;flex-wrap:wrap}
  .cat-grid{grid-template-columns:repeat(2,1fr)}
  .prod-grid{grid-template-columns:1fr}
  .test-grid{grid-template-columns:1fr}
  .nl-form{flex-direction:column}
  .footer-inner{grid-template-columns:1fr}
  .footer-bottom{flex-direction:column;gap:8px;text-align:center}
  .header-inner{padding:0 16px}
  .container{padding:0 16px}
}

/* ── SCROLL REVEAL ── */
.reveal{opacity:0;transform:translateY(30px);transition:opacity .65s ease,transform .65s ease}
.reveal.visible{opacity:1;transform:none}
</style>
</head>
<body>

<!-- HEADER -->
<header>
  <div class="header-inner">
    <div style="display:flex;align-items:center;gap:16px">
      <button class="icon-btn mobile-toggle" id="mobileToggle"><i class="fas fa-bars"></i></button>
      <a class="brand" href="#"><em>Nexus</em><span class="dot">.</span><span class="thin">Shop</span></a>
    </div>
    <nav>
      <ul>
        <li><a href="#">Home</a></li>
        <li><a href="#">Collections</a></li>
        <li><a href="#">Trending</a></li>
        <li><a href="#deals">Flash Sale</a></li>
        <li><a href="#about">About</a></li>
      </ul>
    </nav>
    <div style="display:flex;align-items:center;gap:12px">
      <div class="search-wrap">
        <input type="search" id="searchInput" placeholder="Search products…">
        <button id="searchBtn"><i class="fas fa-search"></i></button>
      </div>
      <div class="header-acts">
        <button class="icon-btn" title="Account"><i class="far fa-user"></i></button>
        <button class="icon-btn" title="Wishlist"><i class="far fa-heart"></i></button>
        <button class="icon-btn" id="cartBtn" title="Cart">
          <i class="fas fa-bag-shopping"></i>
          <span class="cart-badge" id="cartCount">0</span>
        </button>
      </div>
    </div>
  </div>
  <div id="mobileMenu" style="display:none;background:var(--paper);border-top:1px solid rgba(13,13,13,.06)">
    <div class="container" style="padding:16px 32px">
      <ul style="list-style:none;display:flex;flex-direction:column;gap:12px">
        <li><a href="#" style="font-weight:500">Home</a></li>
        <li><a href="#" style="font-weight:500">Collections</a></li>
        <li><a href="#" style="font-weight:500">Trending</a></li>
        <li><a href="#deals" style="font-weight:500">Flash Sale</a></li>
      </ul>
    </div>
  </div>
</header>

<!-- HERO -->
<section class="hero">
  <div class="hero-bg"></div>
  <div class="hero-overlay"></div>
  <div class="hero-inner container">
    <div class="hero-tag"><i class="fas fa-star" style="font-size:9px"></i> New Collection — Spring 2026</div>
    <h1>Curated for the<br><em>discerning</em> few.</h1>
    <p>Premium picks in fashion, technology and lifestyle — thoughtfully selected for those who expect more.</p>
    <div class="hero-btns">
      <button class="btn btn-gold" id="shopNow">Shop Collection <i class="fas fa-arrow-right"></i></button>
      <button class="btn btn-outline" id="exploreDeals">Flash Sale <i class="fas fa-bolt"></i></button>
    </div>
    <div class="hero-stats">
      <div class="hero-stat"><div class="num">12K+</div><div class="lbl">Happy Customers</div></div>
      <div class="hero-stat"><div class="num">800+</div><div class="lbl">Products</div></div>
      <div class="hero-stat"><div class="num">4.9★</div><div class="lbl">Avg. Rating</div></div>
    </div>
  </div>
  <div class="hero-scroll"><div class="line"></div>Scroll</div>
</section>

<!-- MARQUEE -->
<div class="marquee-wrap">
  <div class="marquee-track" id="marquee"></div>
</div>

<!-- CATEGORIES -->
<section class="section reveal">
  <div class="container">
    <div class="sec-head">
      <div class="sec-label">Browse</div>
      <h2 class="sec-title">Shop by Category</h2>
      <p class="sec-sub">From tech to fashion — find exactly what you're looking for.</p>
    </div>
    <div class="cat-grid" id="categoriesGrid"></div>
  </div>
</section>

<!-- PRODUCTS -->
<section class="section reveal" style="padding-top:0">
  <div class="container">
    <div class="sec-head">
      <div class="sec-label">Trending Now</div>
      <h2 class="sec-title">Popular Picks</h2>
      <p class="sec-sub">Items flying off the shelves — curated from recent activity.</p>
    </div>
    <div class="prod-grid" id="productsGrid"></div>
  </div>
</section>

<!-- DEAL -->
<section class="deal-section reveal" id="deals">
  <div class="container">
    <div class="deal-inner">
      <div class="deal-img">
        <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=900&q=80" alt="MacBook Air M2">
        <div class="deal-img-overlay"></div>
      </div>
      <div class="deal-content">
        <div class="deal-label">Limited Time Only</div>
        <h2>MacBook Air <em>M2</em></h2>
        <p style="color:rgba(255,255,255,.55);font-weight:300;font-size:15px;line-height:1.6">Thin, light, and extraordinarily powerful — the M2 chip redefines what a laptop can do.</p>
        <div class="timer">
          <div class="t-box"><div class="t-num" id="dealDays">0</div><div class="t-lbl">Days</div></div>
          <div class="t-box"><div class="t-num" id="dealHours">00</div><div class="t-lbl">Hours</div></div>
          <div class="t-box"><div class="t-num" id="dealMinutes">00</div><div class="t-lbl">Mins</div></div>
          <div class="t-box"><div class="t-num" id="dealSeconds">00</div><div class="t-lbl">Secs</div></div>
        </div>
        <div class="deal-price">
          <span class="price">$999</span>
          <span class="old">$1,199</span>
          <span class="save">−17%</span>
        </div>
        <p style="color:rgba(255,255,255,.4);font-size:13px;font-family:'Space Mono',monospace">Only <strong style="color:var(--gold)">12</strong> units at this price</p>
        <div style="margin-top:8px">
          <button class="btn btn-gold" id="buyDeal">Add to Cart <i class="fas fa-bag-shopping"></i></button>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- TESTIMONIALS -->
<section class="section reveal">
  <div class="container">
    <div class="sec-head">
      <div class="sec-label">Reviews</div>
      <h2 class="sec-title">What They're Saying</h2>
      <p class="sec-sub">Real words from real customers — unfiltered.</p>
    </div>
    <div class="test-grid">
      <div class="test-card">
        <div class="test-stars">★★★★★</div>
        <div class="test-quote">Fast shipping and genuinely excellent customer care. The product exceeded every expectation I had.</div>
        <div class="test-person">
          <img class="test-avatar" src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80" alt="Ava Martin">
          <div><div class="test-name">Ava Martin</div><div class="test-role">Verified Buyer</div></div>
        </div>
      </div>
      <div class="test-card">
        <div class="test-stars">★★★★★</div>
        <div class="test-quote">Great selection and the smoothest checkout I've experienced. I'll be coming back without question.</div>
        <div class="test-person">
          <img class="test-avatar" src="https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=80&q=80" alt="Michael Lee">
          <div><div class="test-name">Michael Lee</div><div class="test-role">Frequent Buyer</div></div>
        </div>
      </div>
      <div class="test-card">
        <div class="test-stars">★★★★★</div>
        <div class="test-quote">The quality is unreal for the price. Delivered in two days and packaged beautifully. Highly recommend.</div>
        <div class="test-person">
          <img class="test-avatar" src="https://images.unsplash.com/photo-1580489944761-15a19d654956?auto=format&fit=crop&w=80&q=80" alt="Sara Patel">
          <div><div class="test-name">Sara Patel</div><div class="test-role">Verified Buyer</div></div>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- NEWSLETTER -->
<section class="section reveal" style="padding-top:0">
  <div class="container">
    <div class="newsletter-wrap">
      <div>
        <p class="nl-sub" style="color:var(--gold);font-family:'Space Mono',monospace;font-size:11px;letter-spacing:.18em;text-transform:uppercase;margin-bottom:10px">✦ Stay in the Loop</p>
        <div class="nl-title">Get exclusive offers<br>before anyone else.</div>
        <p class="nl-sub" style="margin-top:10px">Join 12,000+ subscribers. No spam — ever.</p>
      </div>
      <div>
        <form class="nl-form" id="newsletterForm" onsubmit="return false">
          <input type="email" id="newsletterEmail" placeholder="Your email address" required>
          <button class="btn btn-gold" id="subscribeBtn">Subscribe</button>
        </form>
        <div id="newsletterMsg"></div>
      </div>
    </div>
  </div>
</section>

<!-- FOOTER -->
<footer id="about">
  <div class="container">
    <div class="footer-inner">
      <div class="footer-brand">
        <div class="name"><em>Nexus</em>Shop</div>
        <p>A premium e-commerce experience — curated products, seamless checkout, and exceptional service.</p>
        <div class="footer-social">
          <a class="social-btn" href="#" title="Facebook"><i class="fab fa-facebook-f"></i></a>
          <a class="social-btn" href="#" title="Instagram"><i class="fab fa-instagram"></i></a>
          <a class="social-btn" href="#" title="X"><i class="fab fa-x-twitter"></i></a>
          <a class="social-btn" href="#" title="Pinterest"><i class="fab fa-pinterest-p"></i></a>
        </div>
      </div>
      <div class="footer-col">
        <h5>Company</h5>
        <ul>
          <li><a href="#">About Us</a></li>
          <li><a href="#">Careers</a></li>
          <li><a href="#">Press</a></li>
          <li><a href="#">Blog</a></li>
        </ul>
      </div>
      <div class="footer-col">
        <h5>Support</h5>
        <ul>
          <li><a href="#">Help Center</a></li>
          <li><a href="#">Shipping & Returns</a></li>
          <li><a href="#">Track Order</a></li>
          <li><a href="#">Contact</a></li>
        </ul>
      </div>
      <div class="footer-col">
        <h5>Legal</h5>
        <ul>
          <li><a href="#">Privacy Policy</a></li>
          <li><a href="#">Terms of Use</a></li>
          <li><a href="#">Cookie Policy</a></li>
        </ul>
      </div>
    </div>
    <div class="footer-bottom">
      <span>© <span id="year"></span> NexusShop. All rights reserved.</span>
      <span style="display:flex;align-items:center;gap:6px;font-size:12px"><i class="fas fa-lock" style="color:var(--gold)"></i> Secure & Encrypted Checkout</span>
    </div>
  </div>
</footer>

<script>
const CATEGORIES=[
  {id:'phones',name:'Smartphones',icon:'fa-mobile-screen-button'},
  {id:'laptops',name:'Laptops',icon:'fa-laptop'},
  {id:'clothing',name:'Clothing',icon:'fa-shirt'},
  {id:'gadgets',name:'Gadgets',icon:'fa-headphones'},
  {id:'footwear',name:'Footwear',icon:'fa-shoe-prints'},
  {id:'accessories',name:'Accessories',icon:'fa-watch'},
];
const PRODUCTS=[
  {id:1,title:'iPhone 14 Pro Max',price:1099,oldPrice:1199,rating:5,reviews:128,badge:'New',badgeType:'new',img:'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80',category:'phones'},
  {id:2,title:'MacBook Pro 14"',price:1999,rating:4,reviews:86,img:'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80',category:'laptops'},
  {id:3,title:'Apple Watch Series 8',price:349,oldPrice:399,rating:5,reviews:214,badge:'-25%',badgeType:'sale',img:'https://images.unsplash.com/photo-1434494878577-86c23bcb06b9?auto=format&fit=crop&w=600&q=80',category:'accessories'},
  {id:4,title:'Nike Air Max 270',price:150,rating:4,reviews:53,img:'https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=600&q=80',category:'footwear'},
  {id:5,title:'Sony A7 IV Camera',price:2499,rating:5,reviews:42,img:'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80',category:'gadgets'},
  {id:6,title:'Chanel No. 5',price:120,rating:5,reviews:189,img:'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80',category:'accessories'},
  {id:7,title:'Travel Backpack Pro',price:79,oldPrice:99,rating:4,reviews:67,img:'https://images.unsplash.com/photo-1622560480654-d96214fdc887?auto=format&fit=crop&w=600&q=80',category:'accessories'},
  {id:8,title:'Sony WH-1000XM5',price:399,rating:5,reviews:156,img:'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=600&q=80',category:'gadgets'},
];

let cartCount=0;
const cartCountEl=document.getElementById('cartCount');
const searchInput=document.getElementById('searchInput');

function esc(t){return String(t).replace(/[&<>"']/g,s=>({'&':'&amp;','<':'&lt;','>':'&gt;','"':'&quot;',"'":'&#39;'}[s]))}

function renderCategories(){
  const g=document.getElementById('categoriesGrid');
  g.innerHTML='';
  CATEGORIES.forEach(c=>{
    const el=document.createElement('div');
    el.className='cat-card';
    el.innerHTML=`<div class="cat-icon"><i class="fas ${c.icon}"></i></div><h4>${c.name}</h4><small>Explore →</small>`;
    el.addEventListener('click',()=>{searchInput.value=c.name;filterProducts(c.name);document.getElementById('productsGrid').scrollIntoView({behavior:'smooth',block:'start'})});
    g.appendChild(el);
  });
}

function renderProducts(list){
  const g=document.getElementById('productsGrid');
  g.innerHTML='';
  if(!list.length){
    g.innerHTML='<div style="grid-column:1/-1;text-align:center;color:var(--muted);padding:48px 0;font-family:\'Space Mono\',monospace;font-size:13px">No products found.</div>';
    return;
  }
  list.forEach(p=>{
    const el=document.createElement('article');
    el.className='product';
    el.innerHTML=`
      <div class="product-img">
        ${p.badge?`<div class="prod-badge badge-${p.badgeType||'new'}">${esc(p.badge)}</div>`:''}
        <img src="${p.img}" alt="${esc(p.title)}" loading="lazy">
        <div class="prod-actions">
          <button class="prod-act-btn" title="Wishlist"><i class="far fa-heart"></i></button>
          <button class="prod-act-btn" title="Quick View"><i class="far fa-eye"></i></button>
        </div>
      </div>
      <div class="product-body">
        <div class="prod-cat">${esc(p.category)}</div>
        <div class="prod-name">${esc(p.title)}</div>
        <div class="prod-rating">${'★'.repeat(Math.round(p.rating))}${'☆'.repeat(5-Math.round(p.rating))} <span>(${p.reviews})</span></div>
        <div class="price-row">
          <div class="price">$${p.price.toLocaleString()}</div>
          ${p.oldPrice?`<div class="old-price">$${p.oldPrice.toLocaleString()}</div>`:''}
        </div>
      </div>
      <button class="add-btn" data-id="${p.id}"><i class="fas fa-bag-shopping"></i> Add to Cart</button>
    `;
    g.appendChild(el);
  });
  g.querySelectorAll('.add-btn').forEach(b=>b.addEventListener('click',()=>addToCart(Number(b.dataset.id))));
}

function addToCart(id){
  const p=PRODUCTS.find(x=>x.id===id); if(!p) return;
  cartCount++;cartCountEl.textContent=cartCount;
  const btn=document.querySelector(`.add-btn[data-id="${id}"]`);
  if(btn){const orig=btn.innerHTML;btn.innerHTML='<i class="fas fa-check"></i> Added!';btn.disabled=true;btn.style.background='var(--sage)';btn.style.color='#fff';
    setTimeout(()=>{btn.innerHTML=orig;btn.disabled=false;btn.style.background='';btn.style.color=''},1400)}
}

function filterProducts(q){
  const s=(q||'').trim().toLowerCase();
  renderProducts(s?PRODUCTS.filter(p=>p.title.toLowerCase().includes(s)||p.category.toLowerCase().includes(s)):PRODUCTS);
}

// Marquee
const items=['Free Shipping Over $50','New Arrivals Daily','Secure Checkout','24/7 Customer Support','30-Day Returns','Premium Quality Guaranteed'];
const t=document.getElementById('marquee');
const full=[...items,...items].map(i=>`<span class="marquee-item">${i}</span>`).join('');
t.innerHTML=full+full;

// Search
document.getElementById('searchBtn').addEventListener('click',()=>filterProducts(searchInput.value));
searchInput.addEventListener('keydown',e=>{if(e.key==='Enter')filterProducts(e.target.value)});

// Mobile toggle
document.getElementById('mobileToggle').addEventListener('click',()=>{
  const m=document.getElementById('mobileMenu');
  m.style.display=m.style.display==='none'||!m.style.display?'block':'none';
});

// Newsletter
document.getElementById('newsletterForm').addEventListener('submit',e=>{
  e.preventDefault();
  const em=document.getElementById('newsletterEmail').value.trim();
  const msg=document.getElementById('newsletterMsg');
  if(!em||!em.includes('@')){msg.style.color='#ff9999';msg.textContent='Please enter a valid email.';return}
  msg.style.color='var(--gold-light)';msg.textContent='✓ You\'re subscribed — welcome aboard!';
  document.getElementById('newsletterEmail').value='';
  setTimeout(()=>msg.textContent='',3500);
});

// Deal timer
(function(){
  const target=new Date(Date.now()+(24*60+36)*60*1000);
  function tick(){
    const d=target-new Date();
    if(d<=0)return;
    document.getElementById('dealDays').textContent=Math.floor(d/86400000);
    document.getElementById('dealHours').textContent=String(Math.floor((d%86400000)/3600000)).padStart(2,'0');
    document.getElementById('dealMinutes').textContent=String(Math.floor((d%3600000)/60000)).padStart(2,'0');
    document.getElementById('dealSeconds').textContent=String(Math.floor((d%60000)/1000)).padStart(2,'0');
  }
  tick();setInterval(tick,1000);
})();

// Scroll reveal
const observer=new IntersectionObserver(entries=>entries.forEach(e=>{if(e.isIntersecting)e.target.classList.add('visible')}),{threshold:.1});
document.querySelectorAll('.reveal').forEach(el=>observer.observe(el));

// Buttons
document.getElementById('shopNow').addEventListener('click',()=>document.getElementById('productsGrid').scrollIntoView({behavior:'smooth'}));
document.getElementById('exploreDeals').addEventListener('click',()=>document.getElementById('deals').scrollIntoView({behavior:'smooth'}));
document.getElementById('buyDeal').addEventListener('click',()=>{cartCount++;cartCountEl.textContent=cartCount;const b=document.getElementById('buyDeal');b.innerHTML='Added! <i class="fas fa-check"></i>';setTimeout(()=>b.innerHTML='Add to Cart <i class="fas fa-bag-shopping"></i>',1500)});

// Init
renderCategories();
renderProducts(PRODUCTS);
document.getElementById('year').textContent=new Date().getFullYear();
</script>
</body>
</html>
