<%--
  Created by IntelliJ IDEA.
  User: frahm
  Date: 11/10/2018
  Time: 7:23 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css"
          integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp"
          crossorigin="anonymous">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
          integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
          crossorigin="anonymous">
</head>
<header>
</header>
<body>
<%--when its small screen thats when responsiveness comes in, dark gives it light text--%>
<nav class="navbar navbar-expand-sm navbar-dark bg-dark">
    <div class="container">
        <a class="navbar-brand" href="index.jsp">Milwaukee Job Fair</a>
        <button class="navbar-toggler " data-toggle="collapse" data-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active">
                    <a href="index.jsp" class="nav-link">Home</a>
                </li>
                <li class="nav-item ">
                    <a href="schedule.jsp" class="nav-link">Schedule</a>
                </li>
                <li class="nav-item ">
                    <a href="about.jsp" class="nav-link">About</a>
                </li>
            </ul>
        </div>
        <div class="dropdown ml-auto">
            <button type="button" id="dropdownMenu" data-toggle="dropdown"
                    class="btn btn-outline-secondary dropdown-toggle">Login <span class="caret"></span></button>
            <ul class="dropdown-menu dropdown-menu-right">
                <li>
                    <form class="form" role="form" method="post" action="login.do">
                        <div class="form-group">
                            <input name="name" placeholder="User Name" class="form-control form-control-sm"
                                   type="text" required>
                        </div>
                        <div class="form-group">
                            <input name="password" placeholder="Password" class="form-control form-control-sm"
                                   type="password" required>
                        </div>
                        <div class="form-group">
                            <button type="submit" class="btn btn-dark btn-block">Login</button>
                        </div>
                    </form>
                </li>
            </ul>
        </div>
    </div>
</nav>



<h1 class="text-center pt-2">Milwaukee Job Fair</h1>
<div class="container ">
<p class>
    Are you looking for a job? Are you tired of sending resumes left and right and never getting an answer? If you are,
    dress in your best professional clothes, bring resumes and visit our Milwaukee Career Fairs. You will have the
    opportunity to meet top-employers and to interview for several positions during the course of the day, meeting the
    people who actually make the hiring decisions. You will save a lot of time since there will be no need to craft a
    customized personal statement for each company you visit: You’ll be able to tell them why you wish to work for them,
    and you’ll have the chance to sell yourself.
</p>
<p>
    Our employers send their managers to carry out onsite interviews. Don’t wait for someone to call you for an
    interview. Sign up for our next career fair and give off a first impression that makes a lasting career.
</p>
</div>


<!-- HOME ICON SECTION -->
<section id="home-icons" class="py-5">
    <div class="container">
        <!-- three 4 col divs -->
        <div class="row">
            <!-- margin bottom, center the text -->
            <div class="col-md-4 mb-2 text-center">
                <!-- gear icon three times as large and margin bottom -->
                <i class="fas fa-building fa-3x mb-2"></i>
                <h3>Employers</h3>
                <p>Add events to the portal as you find out about them!</p>
                <div class="dropdown ml-auto">
                    <button type="button" id="dropdownMenu" data-toggle="dropdown"
                            class="btn btn-dark btn-block">Login <span class="caret"></span></button>
                    <ul class="dropdown-menu dropdown-menu-right">
                        <li>
                            <form class="form" role="form" method="post" action="login.do">
                                <div class="form-group">
                                    <input name="name" placeholder="User Name" class="form-control form-control-sm"
                                           type="text" required>
                                </div>
                                <div class="form-group">
                                    <input name="password" placeholder="Password" class="form-control form-control-sm"
                                           type="password" required>
                                </div>
                                <div class="form-group">
                                    <button type="submit" class="btn btn-dark btn-block">Login</button>
                                </div>
                            </form>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-md-4 mb-2 text-center">
                <i class="fas fa-users fa-3x mb-2"></i>
                <h3>Recruiters</h3>
                <p>Learn the Tricks of the trade from other professionals</p>
                <a href="about.jsp" class="btn btn-dark btn-block">Learn More</a>
            </div>
            <div class="col-md-4 mb-2 text-center">
                <i class="fas fa-thumbs-up fa-3x mb-2"></i>
                <h3>Job Seekers</h3>
                <p>Learn how to land the big one from our team of experts!</p>
                <a href="schedule.jsp" class="btn btn-dark btn-block">See our Schedule</a>
            </div>
        </div>
    </div>
</section>

</div>

<footer id="main-footer" class="text-center fixed-bottom bg-dark text-white">
    <div class="container">
        <div class="row">
            <div class="col">
                <p>Copyright &copy; <span id="year"></span> Milwaukee Job Fair</p>
            </div>
        </div>
    </div>
</footer>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="http://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
        integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"
        integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T"
        crossorigin="anonymous"></script>
<script>
    $('#year').text(new Date().getFullYear());
    //Change slider speed - 6 seconds and pauses when you hover over image
    $('.carousel').carousel({
        interval: 6000,
        pause: 'hover'
    });
</script>
</body>


</html>
