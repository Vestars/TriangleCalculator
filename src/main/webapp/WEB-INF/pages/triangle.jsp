<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Calculator Triangle</title>

    <link href="/css/bootstrap.css" rel="stylesheet">
    <link href="/css/bootstrap-theme.css" rel="stylesheet">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="/js/bootstrap.min.js"></script>
</head>
<body>
<h1 align="center">Triangle Calculator by Dmitriy Voronin</h1>
<div class="container">
    <div class="row">
        <div class="col-xs-8 col-xs-offset-2">
            <p class="bg-info border">
                Formula: a<sup>2</sup> + b<sup>2</sup> = c<sup>2</sup>
                <br>
                Where: <b>c</b> - Hypotenuse, <b>a</b> and <b>b</b> - Cathetus.
                <br>
                Input values(example): input: a = 3, b = 4; out: c = 5;
            </p>
            <form:form class="form-inline" modelAttribute="triangle" method="post">
                <div class="form-group">
                    <label for="a">Side a:</label>
                    <form:input type="text" class="form-control" id="a" name="a" placeholder="Enter value" path="a" value="${a}"/>
                </div>
                <div class="form-group">
                    <label for="b"> + Side b:</label>
                    <form:input type="text" class="form-control" id="b" name="b" placeholder="Enter value" path="b" value="${b}"/>
                </div>
                <button type="submit" class="btn btn-default">=</button>
                <div class="form-group">
                    <form:input type="text" class="form-control" id="c" name="c" path="c" value="${c}" readonly="true"/>
                </div>
            </form:form>
        </div>
    </div>
</div>
</body>
</html>
