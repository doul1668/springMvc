<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>登录</title>
    <link href="../../css/bootstrap.css" rel="stylesheet">
    <script src="../../js/jquery-1.12.1.js"></script>
    <script src="../../js/bootstrap.js"></script>
    <style type="text/css">
        body {
            background-color: #eee;
        }
        #divContainer {
            margin-top: 10%;
        }
        .form-signin {
            max-width: 25%;
            margin: 0 auto;
        }
        #button-submit {
            margin-top: 5%;
        }
    </style>
    <script type="javascript">
        function login() {
            var email=$("#input-email").val();
            var password=$("input-password").val();
            $.ajax({
                type: "POST",
                url: "some.php",
                data: "name=John&location=Boston",
                success: function(msg) {
                    alert( "Data Saved: " + msg );
                }
            });
        }
    </script>
</head>
<body>
<div id="divContainer" class="container">
    <form class="form-signin">
        <h2>请登录</h2>
        <input type="email" id="input-email" class="form-control" placeholder="邮件地址" required autofocus>
        <input type="password" id="input-password" class="form-control" placeholder="密码" required>
        <button id="button-submit" class="btn btn-lg btn-primary btn-block" type="submit" onclick="login();">登录</button>
    </form>
</div>
</body>
</html>