<?php require_once("navigation.php"); ?>
<style type="text/css">
    .card {
        background: #fff;
        transition: .5s;
        border: 0;
        margin-bottom: 30px;
        border-radius: .55rem;
        position: relative;
        width: 100%;
        box-shadow: 0 1px 2px 0 rgb(0 0 0 / 10%);
    }

    .card .body {
        color: #444;
        padding: 20px;
        font-weight: 400;
    }

    .card .header {
        color: #444;
        padding: 20px;
        position: relative;
        box-shadow: none;
    }

    .single_post {
        -webkit-transition: all .4s ease;
        transition: all .4s ease
    }

    .single_post .body {
        padding: 30px
    }

    .single_post .img-post {
        position: relative;
        overflow: hidden;
        max-height: 500px;
        margin-bottom: 30px
    }

    .single_post .img-post>img {
        -webkit-transform: scale(1);
        -ms-transform: scale(1);
        transform: scale(1);
        opacity: 1;
        -webkit-transition: -webkit-transform .4s ease, opacity .4s ease;
        transition: transform .4s ease, opacity .4s ease;
        max-width: 100%;
        filter: none;
        -webkit-filter: grayscale(0);
        -webkit-transform: scale(1.01)
    }

    .single_post .img-post:hover img {
        -webkit-transform: scale(1.02);
        -ms-transform: scale(1.02);
        transform: scale(1.02);
        opacity: .7;
        filter: gray;
        -webkit-filter: grayscale(1);
    }

    .single_post .img-post:hover .social_share {
        display: block
    }

    .single_post .footer {
        padding: 0 30px 30px 30px
    }

    .single_post .footer .actions {
        display: inline-block
    }

    .single_post .footer .stats {
        cursor: default;
        list-style: none;
        padding: 0;
        display: inline-block;
        margin: 0;
        line-height: 35px
    }

    .single_post .footer .stats li {
        border-left: solid 1px rgba(160, 160, 160, 0.3);
        display: inline-block;
        font-weight: 400;
        letter-spacing: 0.25em;
        line-height: 1;
        margin: 0 0 0 2em;
        padding: 0 0 0 2em;
        text-transform: uppercase;
        font-size: 13px
    }

    .single_post .footer .stats li a {
        color: #777
    }

    .single_post .footer .stats li:first-child {
        border-left: 0;
        margin-left: 0;
        padding-left: 0
    }

    .single_post h3 {
        font-size: 20px;
        text-transform: uppercase
    }

    .single_post h3 a {
        color: #242424;
        text-decoration: none
    }

    .single_post p {
        font-size: 16px;
        line-height: 26px;
        font-weight: 300;
        margin: 0
    }

    .single_post .blockquote p {
        margin-top: 0 !important
    }

    .single_post .meta {
        list-style: none;
        padding: 0;
        margin: 0
    }

    .single_post .meta li {
        display: inline-block;
        margin-right: 15px
    }

    .single_post .meta li a {
        font-style: italic;
        color: #959595;
        text-decoration: none;
        font-size: 12px
    }

    .single_post .meta li a i {
        margin-right: 6px;
        font-size: 12px
    }

    .single_post2 {
        overflow: hidden
    }

    .single_post2 .content {
        margin-top: 15px;
        margin-bottom: 15px;
        padding-left: 80px;
        position: relative
    }

    .single_post2 .content .actions_sidebar {
        position: absolute;
        top: 0px;
        left: 0px;
        width: 60px
    }

    .single_post2 .content .actions_sidebar a {
        display: inline-block;
        width: 100%;
        height: 60px;
        line-height: 60px;
        margin-right: 0;
        text-align: center;
        border-right: 1px solid #e4eaec
    }

    .single_post2 .content .title {
        font-weight: 100
    }

    .single_post2 .content .text {
        font-size: 15px
    }

    .right-box .categories-clouds li {
        display: inline-block;
        margin-bottom: 5px
    }

    .right-box .categories-clouds li a {
        display: block;
        border: 1px solid;
        padding: 6px 10px;
        border-radius: 3px
    }

    .right-box .instagram-plugin {
        overflow: hidden
    }

    .right-box .instagram-plugin li {
        float: left;
        overflow: hidden;
        border: 1px solid #fff
    }

    .comment-reply li {
        margin-bottom: 15px
    }

    .comment-reply li:last-child {
        margin-bottom: none
    }

    .comment-reply li h5 {
        font-size: 18px
    }

    .comment-reply li p {
        margin-bottom: 0px;
        font-size: 15px;
        color: #777
    }

    .comment-reply .list-inline li {
        display: inline-block;
        margin: 0;
        padding-right: 20px
    }

    .comment-reply .list-inline li a {
        font-size: 13px
    }

    @media (max-width: 640px) {
        .blog-page .left-box .single-comment-box>ul>li {
            padding: 25px 0
        }

        .blog-page .left-box .single-comment-box ul li .icon-box {
            display: inline-block
        }

        .blog-page .left-box .single-comment-box ul li .text-box {
            display: block;
            padding-left: 0;
            margin-top: 10px
        }

        .blog-page .single_post .footer .stats {
            float: none;
            margin-top: 10px
        }

        .blog-page .single_post .body,
        .blog-page .single_post .footer {
            padding: 30px
        }
    }
</style>
<br />
<div id="main-content" class="blog-page">
    <div class="container">
        <div class="row clearfix">
            <div class="col-lg-8 col-md-12 left-box">
                <div class="card single_post">
                    <div class="card-image">
                        <div class="embed-responsive embed-responsive-16by9">
                            <iframe class="embed-responsive-item" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3845.8847855951285!2d75.01758341432938!3d15.436768560177267!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bb8d370eace81bb%3A0xf20b739d863002a2!2sDharwadHubballiTutor!5e0!3m2!1sen!2sin!4v1608529670560!5m2!1sen!2sin"  
                                style="border: 0" 
                                allowfullscreen="" 
                                width="100%"
                                aria-hidden="false" 
                                tabindex="0"></iframe>
                        </div>
                    </div>
                    <div class="body clearfix">
                        <h2> About Us</h2>
                        <img class="float-left" src="../blogadmin/img/<?php echo $business->getBusinessLogoImage()  ?>" width="150px" height="150px"/>
                      
                        
                            <?php
                            $string = strip_tags($business->getBusinessAboutBusiness());
                            echo $string;
                            ?>
                        
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-12 right-box">
                <div class="card">
                    <div class="header">
                        <h2>Contact Details</h2>
                    </div>
                    <div class="body widget">
                        <address>
                            <ul class="list-group list-group-flush">
                                <li class="list-group-item">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-telephone-outbound-fill" viewBox="0 0 16 16">
                                        <path fill-rule="evenodd" d="M1.885.511a1.745 1.745 0 0 1 2.61.163L6.29 2.98c.329.423.445.974.315 1.494l-.547 2.19a.678.678 0 0 0 .178.643l2.457 2.457a.678.678 0 0 0 .644.178l2.189-.547a1.745 1.745 0 0 1 1.494.315l2.306 1.794c.829.645.905 1.87.163 2.611l-1.034 1.034c-.74.74-1.846 1.065-2.877.702a18.634 18.634 0 0 1-7.01-4.42 18.634 18.634 0 0 1-4.42-7.009c-.362-1.03-.037-2.137.703-2.877L1.885.511zM11 .5a.5.5 0 0 1 .5-.5h4a.5.5 0 0 1 .5.5v4a.5.5 0 0 1-1 0V1.707l-4.146 4.147a.5.5 0 0 1-.708-.708L14.293 1H11.5a.5.5 0 0 1-.5-.5z" />
                                    </svg><i class="bi bi-telephone-outbound-fill"></i>
                                    <?php echo $business->getBusinessContact(); ?>
                                </li>
                                <li class="list-group-item"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-envelope-fill" viewBox="0 0 16 16">
                                        <path d="M.05 3.555A2 2 0 0 1 2 2h12a2 2 0 0 1 1.95 1.555L8 8.414.05 3.555ZM0 4.697v7.104l5.803-3.558L0 4.697ZM6.761 8.83l-6.57 4.027A2 2 0 0 0 2 14h12a2 2 0 0 0 1.808-1.144l-6.57-4.027L8 9.586l-1.239-.757Zm3.436-.586L16 11.801V4.697l-5.803 3.546Z" />
                                    </svg> <?php echo $business->getBusinessEmail(); ?>
                                </li>
                                <li class="list-group-item">
                                    <p><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-geo-fill" viewBox="0 0 16 16">
                                            <path fill-rule="evenodd" d="M4 4a4 4 0 1 1 4.5 3.969V13.5a.5.5 0 0 1-1 0V7.97A4 4 0 0 1 4 3.999zm2.493 8.574a.5.5 0 0 1-.411.575c-.712.118-1.28.295-1.655.493a1.319 1.319 0 0 0-.37.265.301.301 0 0 0-.057.09V14l.002.008a.147.147 0 0 0 .016.033.617.617 0 0 0 .145.15c.165.13.435.27.813.395.751.25 1.82.414 3.024.414s2.273-.163 3.024-.414c.378-.126.648-.265.813-.395a.619.619 0 0 0 .146-.15.148.148 0 0 0 .015-.033L12 14v-.004a.301.301 0 0 0-.057-.09 1.318 1.318 0 0 0-.37-.264c-.376-.198-.943-.375-1.655-.493a.5.5 0 1 1 .164-.986c.77.127 1.452.328 1.957.594C12.5 13 13 13.4 13 14c0 .426-.26.752-.544.977-.29.228-.68.413-1.116.558-.878.293-2.059.465-3.34.465-1.281 0-2.462-.172-3.34-.465-.436-.145-.826-.33-1.116-.558C3.26 14.752 3 14.426 3 14c0-.599.5-1 .961-1.243.505-.266 1.187-.467 1.957-.594a.5.5 0 0 1 .575.411z" />
                                        </svg>
                                        <?php echo $business->getBusinessAddress(); ?></p>
                                </li>
                                <li class="list-group-item" align="center">
                                    <?php
                                    foreach ($socialMediaHandles as $handle) {
                                        echo '<a class="social-icon" href="' . $handle->getHandle() . '">' . $handle->getIcon() . '</a>';
                                    }
                                    ?>
                                </li>
                            </ul>
                        </address>
                    </div>
                </div>

                <div class="card">
                    <div class="header">
                        <h2>Newsletter </h2>
                    </div>
                    <div class="body widget newsletter">
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="Enter Email">
                            <a class="btn btn-primary">Subscribe</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
    <?php require_once("footer.php"); ?>