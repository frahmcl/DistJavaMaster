<%--
  Created by IntelliJ IDEA.
  User: frahm
  Date: 11/18/2018
  Time: 8:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css"
          integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp"
          crossorigin="anonymous">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
          integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
          crossorigin="anonymous">
</head>
<body>
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

<section id="about" class="py-3">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <h1>Considering the Milwaukee Job Fair?</h1>
                <p>Whether you're local or out of town, job seeking or job posting, we can accomodate your every need!</p>
                <ul>
                    <li>Business size at our fair range from 20-1000!</li>
                    <li>Easily Accessible Location from busline!</li>
                    <li>We have been listed in National Magazine for Best Job Fair</li>
                    <li>Our Longevity speaks for itself, we have been around for 40 years!</li>
                    <li>Over 200 Booths available</li>
                    <li>We serve Tech/Medical/Government/Clerical</li>
                    <li>What are you waiting for?</li>
                </ul>
            </div>
            <div class="col-md-6">
                <!-- show on medium screens and above -->
                <img src="https://source.unsplash.com/random/700x700/?office" alt="" class="img-fluid rounded-circle d-none d-md-block about-img">
            </div>
        </div>
    </div>
</section>

<!-- FAQ -->
<section id="faq" class="p-5 bg-dark text-white ">
    <div class="container">
        <h1 class="text-center">Frequently Asked Questions</h1>
        <!-- horizontal line -->
        <hr>
        <div class="row">
            <div class="col-md-6">
                <div id="accordion">
                    <div class="card bg-dark text-white">
                        <div class="card-header">
                            <h5 class="mb-0">
                                <a href="#collapseOne" class="text-white"  data-toggle="collapse" data-parent="accordion">
                                    Where are you located?
                                </a>
                            </h5>
                        </div>
                        <div id="collapseOne" class="collapse">
                            <div class="card-body">
                                Lorem ipsum dolor sit, amet consectetur adipisicing elit. Cum, pariatur atque
                                veniam voluptatem,
                                minima ea fugit in reiciendis doloribus expedita eum eligendi amet beatae
                                laboriosam! Nisi alias
                                voluptatibus voluptatum dignissimos fugit, ipsa laboriosam recusandae ab voluptate
                                vel eos distinctio. Assumenda!
                            </div>
                        </div>
                    </div>
                    <div class="card bg-dark text-white">
                        <div class="card-header">
                            <h5 class="mb-0">
                                <a href="#collapseTwo" class="text-white"  data-toggle="collapse" data-parent="accordion">
                                    How long does it last?
                                </a>
                            </h5>
                        </div>
                        <div id="collapseTwo" class="collapse">
                            <div class="card-body">
                                Lorem ipsum dolor sit, amet consectetur adipisicing elit. Cum, pariatur atque
                                veniam voluptatem,
                                minima ea fugit in reiciendis doloribus expedita eum eligendi amet beatae
                                laboriosam! Nisi alias
                                voluptatibus voluptatum dignissimos fugit, ipsa laboriosam recusandae ab voluptate
                                vel eos distinctio. Assumenda!
                            </div>
                        </div>
                    </div>
                    <div class="card bg-dark text-white">
                        <div class="card-header">
                            <h5 class="mb-0">
                                <a href="#collapseThree" class="text-white"  data-toggle="collapse" data-parent="accordion">
                                    How many times a year is the fest?
                                </a>
                            </h5>
                        </div>
                        <div id="collapseThree" class="collapse">
                            <div class="card-body">
                                Lorem ipsum dolor sit, amet consectetur adipisicing elit. Cum, pariatur atque
                                veniam voluptatem,
                                minima ea fugit in reiciendis doloribus expedita eum eligendi amet beatae
                                laboriosam! Nisi alias
                                voluptatibus voluptatum dignissimos fugit, ipsa laboriosam recusandae ab voluptate
                                vel eos distinctio. Assumenda!
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div id="accordion">
                    <div class="card bg-dark text-white">
                        <div class="card-header">
                            <h5 class="mb-0">
                                <a href="#collapseFour" class="text-white"  data-toggle="collapse" data-parent="accordion">
                                    Where do I turn in my forms?
                                </a>
                            </h5>
                        </div>
                        <div id="collapseFour" class="collapse">
                            <div class="card-body">
                                Lorem ipsum dolor sit, amet consectetur adipisicing elit. Cum, pariatur atque
                                veniam voluptatem,
                                minima ea fugit in reiciendis doloribus expedita eum eligendi amet beatae
                                laboriosam! Nisi alias
                                voluptatibus voluptatum dignissimos fugit, ipsa laboriosam recusandae ab voluptate
                                vel eos distinctio. Assumenda!
                            </div>
                        </div>
                    </div>
                    <div class="card bg-dark text-white">
                        <div class="card-header">
                            <h5 class="mb-0">
                                <a href="#collapseFive" class="text-white"  data-toggle="collapse" data-parent="accordion">
                                    What is parking like?
                                </a>
                            </h5>
                        </div>
                        <div id="collapseFive" class="collapse">
                            <div class="card-body">
                                Lorem ipsum dolor sit, amet consectetur adipisicing elit. Cum, pariatur atque
                                veniam voluptatem,
                                minima ea fugit in reiciendis doloribus expedita eum eligendi amet beatae
                                laboriosam! Nisi alias
                                voluptatibus voluptatum dignissimos fugit, ipsa laboriosam recusandae ab voluptate
                                vel eos distinctio. Assumenda!
                            </div>
                        </div>
                    </div>
                    <div class="card bg-dark text-white">
                        <div class="card-header">
                            <h5 class="mb-0">
                                <a href="#collapseSix" class="text-white" data-toggle="collapse" data-parent="accordion">
                                    How many people attend?
                                </a>
                            </h5>
                        </div>
                        <div id="collapseSix" class="collapse">
                            <div class="card-body">
                                Lorem ipsum dolor sit, amet consectetur adipisicing elit. Cum, pariatur atque
                                veniam voluptatem,
                                minima ea fugit in reiciendis doloribus expedita eum eligendi amet beatae
                                laboriosam! Nisi alias
                                voluptatibus voluptatum dignissimos fugit, ipsa laboriosam recusandae ab voluptate
                                vel eos distinctio. Assumenda!
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
</section>

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
</body>
</html>
