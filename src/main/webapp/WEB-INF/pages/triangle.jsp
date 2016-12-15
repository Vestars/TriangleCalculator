<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
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
            <form class="form-inline" action="/" method="post">
                <c:if test="${a <= 0}">
                    <p class="bg-danger">
                        <c:out value="${a_error}"></c:out>
                        <br>
                    </p>
                </c:if>
                <c:if test="${b <= 0}">
                    <p class="bg-danger">
                        <c:out value="${b_error}"></c:out>
                        <br>
                    </p>
                </c:if>
                <div class="form-group">
                    <label for="a">Side a:</label>
                    <input type="text" class="form-control" id="a" name="a" onkeyup="checkParams()" placeholder="Enter value" value="${a}"/>
                </div>
                <div class="form-group">
                    <label for="b"> + Side b:</label>
                    <input type="text" class="form-control" id="b" name="b" onkeyup="checkParams()" placeholder="Enter value" value="${b}"/>
                </div>
                    <button id="submit" type="submit" class="btn btn-default" disabled="disabled">=</button>
                <div class="form-group">
                    <input type="text" class="form-control" id="c" name="c" value="${c}" readonly="true"/>
                </div>
                <hr>
                <div class="col-xs-offset-11"><p>v <spring:message code="version"></spring:message> </p></div>
            </form>
        </div>
    </div>
</div>
<script>
    function checkParams() {
        var a = $('#a').val();
        var b = $('#b').val();

        if(a.length != 0 && b.length != 0) {
            if(!isNaN(a) && !isNaN(b)){
            $('#submit').removeAttr('disabled');
            }else{
                $('#submit').attr('disabled', 'disabled');
            }
        } else {
            $('#submit').attr('disabled', 'disabled');
        }
    }
</script>
</body>
</html>
