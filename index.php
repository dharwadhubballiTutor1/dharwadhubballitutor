<?php
$appName = "/dharwadhubballitutor";
$request = $_SERVER['REQUEST_URI'];
switch ($request) {
    case $appName . '/':
        require __DIR__ . '/views/index.php';
        break;
    case '':
        require __DIR__ . '/views/index.php';
        break;
    case $appName . '/contact/':
        require __DIR__ . '/views/contact.php';
        break;
    case $appName . '/about/':
        require __DIR__ . '/views/about.php';
        break;
    case $appName . '/termsandconditions/':
        require __DIR__ . '/views/termsandconditions.php';
        break;

    case $appName . '/PrivacyPolicy/':
        require __DIR__ . '/views/PrivacyPolicy.php';
        break;
    case $appName . '/admin/login.php':
        require __DIR__ . '/admin/views/login.php';
        break;



    default:
        require __DIR__ . '/views/route.php';
        route::get($request);
        break;
}
