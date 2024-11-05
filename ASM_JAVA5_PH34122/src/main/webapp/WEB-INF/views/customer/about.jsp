<%@ page pageEncoding="utf-8"%>

<%--<center><h2 style="color:red;font-weight:bold;text-transform:uppercase;">GIỚI THIỆU CỬA HÀNG</h2></center>--%>
<center><h1 style="color:red;font-weight:bold;text-transform:uppercase;font-family:'Times New Roman', Times, serif;">GIỚI THIỆU CỬA HÀNG</h1></center>

<link href="https://fonts.googleapis.com/css?family=Roboto+Condensed:300,300i,400,400i,700,700i" rel="stylesheet">
<style>
    body {
        -webkit-font-smoothing: antialiased;
        text-rendering: optimizeLegibility;
        font-family: "Roboto Condensed", sans-serif;
        letter-spacing: 0px;
        font-size: 16px;
        color: #848687;
        font-weight: 400;
        line-height: 30px;
        background-color: #f3f5f7;
    }
    h1,
    h2,
    h3,
    h4,
    h5,
    h6 {
        color: #1c1e1e;
        margin: 0px 0px 15px 0px;
        font-weight: 400;
        font-family: "Roboto Condensed", sans-serif;
    }
    h1 {
        font-size: 30px;
        line-height: 42px;
    }
    h2 {
        font-size: 24px;
        line-height: 32px;
    }
    h3 {
        font-size: 22px;
        line-height: 30px;
    }
    h4 {
        font-size: 18px;
        line-height: 26px;
    }
    h5 {
        font-size: 14px;
        font-weight: 400;
    }
    h6 {
        font-size: 12px;
        font-weight: 400;
    }
    p {
        margin: 0 0 24px;
        line-height: 1.8;
    }
    p:last-child {
        margin: 0px;
    }
    ul,
    ol {
        list-style: none;
        margin: 0;
        padding: 0;
    }
    a {
        text-decoration: none;
        color: #1c1e1e;
        -webkit-transition: all 0.3s;
        -moz-transition: all 0.3s;
        transition: all 0.3s;
    }
    a:focus,
    a:hover {
        text-decoration: none;
        color: #fb730f;
    }
    sub {
        bottom: 0em;
    }
    .lead {
        font-size: 21px;
        font-weight: 400;
        line-height: 1.6;
        font-family: "Roboto Condensed", sans-serif;
        color: #1c1e1e;
        margin-bottom: 30px;
    }
    blockquote {
        padding: 10px 32px;
        margin: 0 0 30px;
        font-size: 17.5px;
        border-left: 5px solid #fb730f;
    }

    .blockquote-text {
        font-family: "Roboto Condensed", sans-serif;
        color: #1c1e1e;
        font-weight: 400;
        font-size: 20px;
        line-height: 1.6;
    }
    .blockquote-author {
        font-weight: 400;
        font-size: 14px;
        text-transform: capitalize;
        color: #fff;
    }
    strong {
        color: #1c1e1e;
    }
    hr {
        border-top: 1px solid #e8ecf0;
        margin-bottom: 40px;
        margin-top: 40px;
    }
    .counter-block {
        text-align: center;
    }
    .counter-icon {
        border: 2px solid #19b3e6;
        display: inline-block;
        width: 100px;
        height: 100px;
        border-radius: 100%; /* line-height: 5.2; */
        padding: 25px;
        margin-bottom: 30px;
    }
    .counter-content {
        text-align: center;
    }
    .counter-text {
        font-size: 32px;
        margin-bottom: 8px;
    }

    /** timeline box structure **/
    .timeline {
        list-style: none;
        padding: 20px;
        position: relative;
        z-index: 1;
    }
    .timeline:before {
        top: 50px;
        bottom: 0;
        position: absolute;
        content: " ";
        width: 5px;
        background-color: #0cafe5;
        left: 50%;
        margin-left: -1.5px;
    }
    .tldate {
        display: block;
        width: 200px;
        background: #414141;
        border: 3px solid #212121;
        color: #ededed;
        margin: 0 auto;
        padding: 3px 0;
        font-weight: bold;
        text-align: center;
        -webkit-box-shadow: 0 0 11px rgba(0, 0, 0, 0.35);
    }
    .timeline li {
        margin-bottom: 25px;
        position: relative;
    }
    .timeline li:before,
    .timeline li:after {
        content: " ";
        display: table;
    }
    .timeline li:after {
        clear: both;
    }
    .timeline li:before,
    .timeline li:after {
        content: " ";
        display: table;
    }

    /** timeline panels **/
    .timeline li .timeline-panel {
        width: 46%;
        float: left;
    }

    /** panel arrows **/
    .timeline li .timeline-panel:before {
    }
    .timeline li .timeline-panel:after {
        position: absolute;
        top: 27px;
        right: -14px;
        display: inline-block;
        border-top: 14px solid transparent;
        border-left: 14px solid #fff;
        border-right: 0 solid #fff;
        border-bottom: 14px solid transparent;
        content: " ";
    }
    .timeline li .timeline-panel.noarrow:before,
    .timeline li .timeline-panel.noarrow:after {
        top: 0;
        right: 0;
        display: none;
        border: 0;
    }
    .timeline li.timeline-inverted .timeline-panel {
        float: right;
    }
    .timeline li.timeline-inverted .timeline-panel:before {
        border-left-width: 0;
        border-right-width: 15px;
        left: -15px;
        right: auto;
    }
    .timeline li.timeline-inverted .timeline-panel:after {
        border-left-width: 0;
        border-right-width: 14px;
        left: -14px;
        right: auto;
    }

    /** timeline circle icons **/
    .timeline li .tl-circ {
        position: absolute;
        top: 23px;
        left: 50%;
        text-align: center;
        background: #0cafe5;
        color: #fff;
        width: 25px;
        height: 25px;
        line-height: 35px;
        margin-left: -11px;
        border: 5px solid #0084bf;
        border-top-right-radius: 50%;
        border-top-left-radius: 50%;
        border-bottom-right-radius: 50%;
        border-bottom-left-radius: 50%;
        z-index: 99999;
    }

    /** timeline content **/
    .tl-heading h3 {
        margin-bottom: 20px;
        color: #0084bf;
        border-bottom: 1px solid #e6e9ec;
        padding-bottom: 10px;
    }
    .tl-body p,
    .tl-body ul {
        margin-bottom: 0;
    }
    .tl-body > p + p {
        margin-top: 5px;
    }
    .testimonial-carousel {
    }
    .testimonial-block {
        padding: 30px;
    }
    .testimonial-content {
    }
    .testimonial-text {
        font-size: 18px;
        line-height: 30px;
        color: #1c1e1e;
    }
    .testimonial-block h4 {
        margin-bottom: 5px;
    }
    .testimonial-carousel .owl-theme .owl-nav {
        display: none;
    }
    .testimonial-carousel .owl-theme .owl-dots {
        text-align: center !important;
        position: relative;
        bottom: 0px;
    }
    .testimonial-carousel .owl-theme .owl-dots .owl-dot {
        display: inline-block;
        zoom: 1;
    }
    .testimonial-carousel .owl-theme .owl-dots .owl-dot span {
        width: 11px;
        height: 11px;
        margin: 5px 4px;
        background: #cdd1d3;
        border-radius: 5px;
        display: block;
        -webkit-backface-visibility: visible;
        transition: opacity 200ms ease;
    }
    .testimonial-carousel .owl-theme .owl-dots .owl-dot.active span,
    .owl-theme .owl-dots .owl-dot:hover span {
        background: #fb730f;
    }


</style>
<br>

<div class="content">


    <div class="panel p-0">
        <div id="carouselExampleIndicators" class="carousel slide">
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active"></button>
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1"></button>
                <!-- <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2"></button> -->
            </div>
            <div class="carousel-inner">
                <div class="carousel-item active">

                    <img src="https://s.net.vn/FMuf" class="d-block w-100  rounded-4" alt="..." height="500px">

                </div>
                <div class="carousel-item">
                    <img src="https://s.net.vn/WJ1O" class="d-block w-100 rounded-4" alt="..." height="500px">
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
                <span class="carousel-control-prev-icon rounded-5 text-black"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
                <span class="carousel-control-next-icon"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
    </div>

    <br>
    <br>
    <br>
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="box">
                    <!-- about description -->
                    <div class="box-head">
                        <h2 class="head-title" style="font-weight: bold; color: red;">FPT SHOP là một công ty lớn với</h2>                    </div>
                    <div class="box-body">

                        <p class="lead">FPT SHOP là một trang web bán điện thoại trực tuyến do công ty FPT SHOP
                            tạo ra và chi phối. Để có thể tạo được sự thuận tiện đến khách hàng khi mua sản phẩm thì
                            ngoài các chi nhánh chúng tôi còn mở ra một trang web bán hàng trực tuyến. Trang web có tất
                            cả
                            các sản phẩm diện thoại của công ty chúng tôi. Khách hàng có thể thoải mái lựa chọn phù hợp
                            với như cầu
                            của mình.</p>
                    </div>
                    <!-- /.about description -->
                </div>
            </div>
        </div>
    </div>



    <br>

    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="box">
                    <div class="box-head">
                        <h2 class="head-title"><strong style="color:red;">FPT SHOP là một công ty lớn với</strong></h2>                    </div>
                    <br>
                    <div class="box-body">
                        <div class="row">
                            <!-- counter-block -->
                            <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                                <div class="counter-block">
                                    <div class="counter-icon">
                                        <img src="https://i.imgur.com/Ks4p2CI.png" alt="">
                                    </div>
                                    <div class="counter-content">
                                        <h3 class="counter-text">1,00,000 <sup>+</sup></h3>
                                        <h4>Sản phẩm</h4>
                                    </div>
                                </div>
                            </div>
                            <!-- /.counter-block -->
                            <!-- counter-block -->
                            <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                                <div class="counter-block">
                                    <div class="counter-icon">
                                        <img src="https://i.imgur.com/SKWmhOf.png" alt="">
                                    </div>
                                    <div class="counter-content">
                                        <h3 class="counter-text">80,000 <sup>+</sup></h3>
                                        <h4>Khách hàng</h4>
                                    </div>
                                </div>
                            </div>
                            <!-- /.counter-block -->
                            <!-- counter-block -->
                            <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                                <div class="counter-block">
                                    <div class="counter-icon">
                                        <img src="https://i.imgur.com/oA74u3i.png" alt="">
                                    </div>
                                    <div class="counter-content">
                                        <h3 class="counter-text">100 <sup>+</sup></h3>
                                        <h4>Chi nhánh</h4>
                                    </div>
                                </div>
                            </div>
                            <!-- /.counter-block -->
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <br>
        <br>

        <!-- /.counters -->
        <!-- features -->
        <div class="container">
            <div class="row">
                <!-- features-block -->
                <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 mt40  mb40">
                    <div class="feature">
                        <div class="feature-content">
                            <h3>Nhiệm vụ</h3>
                            <p>Mang đến sự dễ dàng và thuận tiện khi khách hàng mua sản phẩm.</p>
                        </div>
                    </div>
                </div>
                <!-- /.features-block -->
                <!-- features-block -->
                <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 mt40  mb40">
                    <div class="feature">
                        <div class="feature-content">
                            <h3>Tầm nhìn</h3>
                            <p>Mở rộng chuỗi cửa hàng ra cả nước, phục vụ cho tất cả các khách hàng.</p>
                        </div>
                    </div>
                </div>
                <!-- /.features-block -->
                <!-- features-block -->
                <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 mt40 mb40">
                    <div class="feature">
                        <div class="feature-content">
                            <h3>Giá cả</h3>
                            <p>Gía cả phù hợp với từng sản phẩm. Ngoài ra chũng tôi còn có dịch vụ giảm giá và
                                miễn phí vận chuyển.</p>
                        </div>
                    </div>
                </div>
                <!-- /.features-block -->
            </div>
        </div>

        <br>
        <br>
        <br>

        <!-- /.features -->
        <!-- timeline -->
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="box">
                        <div class="box-head">
                            <h2 class="head-title">Thời gian phát triển FPT SHOP</h2>
                        </div>
                        <br>
                        <div class="box-body">
                            <div class="row">
                                <!-- timeline-block -->
                                <ul class="timeline">
                                    <li>
                                        <div class="tl-circ"></div>
                                        <div class="timeline-panel">
                                            <div class="tl-heading">
                                                <h3>2010 - 2013</h3>
                                            </div>
                                            <div class="tl-body">
                                                <h4>Lịch sử</h4>
                                                <p>Xây dựng ý tưởng mở công ty FPT SHOP. Tìm kiếm nguồn vốn, nguồn nhân
                                                    lực, quản lý, ... </p>
                                            </div>
                                        </div>
                                    </li>
                                    <!-- /.timeline-block -->
                                    <!-- timeline-block -->
                                    <li class="timeline-inverted">
                                        <div class="tl-circ"></div>
                                        <div class="timeline-panel">
                                            <div class="tl-heading">
                                                <h3>2013 - 2014</h3>
                                            </div>
                                            <div class="tl-body">
                                                <h4>Lịch sử</h4>
                                                <p>Công ty FPT SHOP được thành lập. Tiếp tục khó khắn trong việc tìm kiếm
                                                    khách hàng.</p>
                                            </div>
                                        </div>
                                    </li>
                                    <!-- /.timeline-block -->
                                    <!-- timeline-block -->
                                    <li>
                                        <div class="tl-circ"></div>
                                        <div class="timeline-panel">
                                            <div class="tl-heading">
                                                <h3>2014 - 2017</h3>
                                            </div>
                                            <div class="tl-body">
                                                <h4>Lịch sử</h4>
                                                <p>Công ty đi vào thời kỳ ổn định.
                                                </p>
                                            </div>
                                        </div>
                                    </li>
                                    <!-- /.timeline-block -->
                                    <!-- timeline-block -->
                                    <li class="timeline-inverted">
                                        <div class="tl-circ"></div>
                                        <div class="timeline-panel">
                                            <div class="tl-heading">
                                                <h3>2017 - 2024</h3>
                                            </div>
                                            <div class="tl-body">
                                                <h4>Lịch sử</h4>
                                                <p>Công ty FPT SHOP đã phát triển mạnh. Mở thêm nhiều chi nhánh và trang
                                                    web FPT SHOP để phục vụ nhiều khách hàng hơn.</p>
                                            </div>
                                        </div>
                                    </li>
                                    <!-- /.timeline-block -->
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <br>
        <br>
        <br>
        <br>
        <br>



        <div class="footer">
            <div class="container">
                <div class="row">
                    <!-- footer-company-links -->
                    <!-- footer-contact links -->
                    <div class=" col-lg-3 col-md-3 col-sm-3 col-xs-12">
                        <div class="footer-widget">
                            <h3 class="footer-title">Thông tin hỗ trợ</h3>
                            <div class="contact-info">
                                <span class="contact-icon"><i class="fa fa-map-marker"></i></span>
                                <span class="contact-text">Bắc Tù Liêm<br>Thành phố Hà Nội, Việt Nam</span>
                            </div>
                            <div class="contact-info">
                                <span class="contact-icon"><i class="fa fa-phone"></i></span>
                                <span class="contact-text">+84 39-204-6063</span>
                            </div>
                            <div class="contact-info">
                                <span class="contact-icon"><i class="fa fa-envelope"></i></span>
                                <span class="contact-text">thanhnnph34122@fpt.edu.vn</span>
                            </div>
                        </div>
                    </div>
                    <!-- /.footer-useful-links -->
                    <div class=" col-lg-3 col-md-3 col-sm-3 col-xs-12">
                        <div class="footer-widget">
                            <h3 class="footer-title">Tiện ích</h3>
                            <ul class="arrow">
                                <li><a href="index.html">Trang chủ </a></li>
                                <li><a href="product-list.html">Điện thoại</a></li>
                                <li><a href="about.html">Thông tin</a></li>
                                <li><a href="blog-default.html">Bài viết</a></li>
                                <li><a href="contact-us.html">Liên hệ, hỗ trợ</a></li>
                            </ul>
                        </div>
                    </div>
                    <!-- /.footer-useful-links -->
                    <!-- footer-policy-list-links -->
                    <div class=" col-lg-3 col-md-3 col-sm-3 col-xs-12">
                        <div class="footer-widget">
                            <h3 class="footer-title">Chính sách</h3>
                            <ul class="arrow">
                                <li><a href="#">Thanh toán</a></li>
                                <li><a href="#">Hủy, trả hàng</a></li>
                                <li><a href="#">Giao hàng và vận chuyển</a></li>
                                <li><a href="#">Chính sách bảo mật</a></li>
                            </ul>
                        </div>
                    </div>
                    <!-- /.footer-policy-list-links -->
                    <!-- footer-social links -->
                    <div class=" col-lg-3 col-md-3 col-sm-3 col-xs-12">
                        <div class="footer-widget">
                            <h3 class="footer-title">Liên lạc với chúng tôi</h3>
                            <div class="ft-social">
                                <span><a href="#" class="btn-social btn-facebook"><i class="fa fa-facebook"></i></a></span>
                                <span><a href="#" class="btn-social btn-twitter"><i class="fa fa-twitter"></i></a></span>
                                <span><a href="#" class="btn-social btn-googleplus"><i class="fa fa-google-plus"></i></a></span>
                                <span><a href="#" class=" btn-social btn-linkedin"><i class="fa fa-linkedin"></i></a></span>
                                <span><a href="#" class=" btn-social btn-pinterest"><i class="fa fa-pinterest-p"></i></a></span>
                                <span><a href="#" class=" btn-social btn-instagram"><i class="fa fa-instagram"></i></a></span>
                            </div>
                        </div>
                    </div>
                    <!-- /.footer-social links -->
                </div>
            </div>

        </div>


    </div>

</div>