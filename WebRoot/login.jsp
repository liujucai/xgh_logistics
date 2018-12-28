<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>礼品管理系统 Bate1.0 - 登录</title>
    <meta name="keywords" content="计分系统 Bate1.0">
    <meta name="description" content="计分系统 Bate1.0">

    <link rel="shortcut icon" href="favicon.ico"> 
    <link href="res/css/bootstrap.min.css" rel="stylesheet">
    <link href="res/css/font-awesome.css" rel="stylesheet">

    <link href="res/css/animate.css" rel="stylesheet">
    <link href="res/css/style.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <meta http-equiv="refresh" content="0;ie.html" />
    <![endif]-->
    <script>if(window.top !== window.self){ window.top.location = window.location;}</script>
</head>

<body class="gray-bg">

    <div class="middle-box text-center loginscreen  animated fadeInDown">
        <div>
            <div>

                <h1 class="logo-name">G+</h1>

            </div>
            <h3>欢迎登陆恒之源礼品管理系统</h3>

            <form class="m-t" role="form" action="mgr/login.cs">
                <div class="form-group">
                    <input type="text" class="form-control" name="account" placeholder="用户名" required="">
                </div>
                <div class="form-group">
                    <input type="password" class="form-control" name="pwd" placeholder="密码" required="">
                </div>
                <button type="submit" class="btn btn-primary block full-width m-b">登 录</button>


<!--                 <p class="text-muted text-center"> <a href="login.html#"><small>忘记密码了？</small></a> | <a href="register.html">注册一个新账号</a> -->
                </p>

            </form>
        </div>
    </div>

    <!-- 全局js -->
    <script src="res/js/jquery.min.js"></script>
    <script src="res/js/bootstrap.min.js"></script>

    <!--统计代码，可删除-->

</body>

</html>
