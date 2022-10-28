<?php

class route
{
    public static function get($routePath)
    {
        require("views/navigation.php");
        require_once("blogadmin/dblayer/postOps.php");
        $post = DBpost::getPostByUrl($routePath);
       
        $outputString = '<style type="text/css">
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
body{
    overflow-x: hidden;
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
    transition: all .4s ease;
    margin-right:40px;
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
    -webkit-transition: all .8s ease-in-out
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
    float: right;
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

@media screen and (min-width:992px) {
    .routehero-wrap {
        height: 100vh;
        min-height: 100%;
        position: absolute;
        top: 0;
        left: 0;
        background-size: cover;
        background-repeat: no-repeat;
        background-position: top center;
        background-attachment: fixed;
        z-index: -1;
    }
    .col-md-4{
        display:flex;
        width:auto;
    }
    .single_post .body {
        padding: 130px;
    }
    .single_post p {
        font-size: 18px;
        line-height: 26px;
        font-weight: 300;
        margin: 0;
    }
}

@media only screen and (min-width: 768px){
    .routehero-wrap {
        height: 100vh;
        min-height: 100%;
        position: absolute;
        top: 0;
        left: 0;
        background-size: cover;
        background-repeat: no-repeat;
        background-position: top center;
        background-attachment: fixed;
        z-index: -1;
    }
    .col-md-4{
        display:flex;
        width:auto;
    }
    .single_post .body {
        padding: 100px;
    }
}

@media screen and (min-width:600px){
    .col-md-4{
        width:auto;
    } 
}

</style>


<div class="routehero-wrap" style=" background-image:url(blogadmin/img/bg_2.jpg);background-size:cover;width:100%;">
<p class="title-route" style="width:45%;text-align:center;">' . $post->getPostTitle() . '</p>
</div>
   



<div id="main-content" class="routeblog-page" >
        <div class="container">
            <div class="row clearfix">
                <div class="col-lg-12 col-md-12 left-box">
                    <div class="card single_post">
                        <div class="body" >
                        
                            <div class="img-post">
                                <img class="d-block img-fluid" src="blogadmin/img/post/' . $post->getImage() . '" alt="First slide" style="width:100%;">
                            </div> <div style="font-size:18px;">' 
                            . $post->getPostDescription() .
            '</div></div>                        
                    </div>
                </div>
               </div>
               <div class="col-lg-12 col-md-12 left-box">
                    <div class="card">
                    <div class="header">
                    <h2>Popular Posts</h2>                        
                    </div>
                <div class="body widget popular-post">
                <div class="row">';
        // $postList = DBpost::getPostBySubCategoryId($post->getPostId());
        // foreach ($postList as $post) {
            $postOnHomeList = DBpost::getpopularPost();
            foreach ($postOnHomeList as $post) {
            $outputString .=  '<div class="single_post" style="width:250px;margin-top: auto;">
                                <p class="m-b-0"><a href="' . $post->getPostUrl() . '">' . ucfirst(strtolower($post->getPostTitle())) . '</a></p>
                                <span>' . $post->getPostCreatedBy() . '</span>
                                <div class="img-post">
                                    <img src="blogadmin/img/post/' . $post->getImage() . '" alt="' . $post->getAltTextImage() . '" >                                        
                                </div>                                            
                            </div>';
        }
        $outputString .= '
                    </div>
                </div>
            </div>
            </div>
        
           

        <div class="col-lg-12 col-md-12 right-box">
        <div class="card">
            <div class="header">
                <h6 class="display-6">Categories</h6>
            </div>
            <div class="body widget">
                    <ul class="list-unstyled categories-clouds m-b-0">';
        if (!empty($post->getMappedSubCategory())) {
            foreach ($post->getMappedSubCategory() as $subcategory) {
                $outputString .= '<li><a href="javascript:void(0);" style="color:blue;">' . $subcategory->getSubCategoryName() . '</a></li>';
            }
        }
        $outputString .=  '</ul>
            </div>
        </div>
        </div>
    </div>
</div>';
        echo $outputString;
        require_once("views/footer.php");
    }
}
