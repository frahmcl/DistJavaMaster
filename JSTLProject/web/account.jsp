<%@ page import="java.util.List" %>
<%@ page import="conference.EventManager" %>
<%@ page import="conference.ListWrapper" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%--
  Created by IntelliJ IDEA.
  User: frahm
  Date: 11/18/2018
  Time: 3:00 PM
  To change this template use File | Settings | File Templates.
--%>

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

<% String login = (String) request.getAttribute("login"); %>
<c:set var="name" value="<%=login%>"/>
<c:if test="${name.length() < 1}">
    <h1>Please login to access the admin area</h1>
</c:if>
<c:if test="${name.length() >= 1}">
    <h1 class="text-center">This is the admin area for user: <c:out value="${name}"/></h1>
    <p class="text-center">Use the tools below to add or delete events!</p>
    <% List list = new EventManager().getEventList(); %>
    <c:set var="listWrapper" value="<%= new ListWrapper(list) %>"/>

<div class="container">
    <div class="row">
        <form class="form col-md-6" method="get" action="account.do">
            <div>
                <h2>Add Event</h2>
                <!-- inputs -->
                <div class="form-group">
                    <input name="eventName" placeholder="Event Name" class="form-control form-control-sm"
                           type="text" value="<c:out value='${param.eventName}'/>" required/>
                </div>
                <div class="form-group">
                    <input name="eventDate" placeholder="Event Date" class="form-control form-control-sm"
                           type="text" value="<c:out value='${param.eventDate}'/>" required/>
                </div>
                <!-- submit -->
                <div class="form-group">
                    <button type="submit" class="btn btn-block btn-success">Add</button>
                </div>
            </div>
        </form>
        <form class="form col-md-6" method="get" action="delete.do">
            <div>
                <h2>Delete Event</h2>
                <!-- inputs -->
                <div class="form-group">
                    <input name="eventName" placeholder="Name of Event to Delete"
                           class="form-control form-control-sm"
                           type="text" value="<c:out value='${param.eventName}'/>" required/>
                </div>
                <!-- submit -->
                <div class="form-group">
                    <button type="submit" class="btn btn-block btn-danger">Delete</button>
                </div>
            </div>
        </form>
    </div>
</div>

    <section id="schedule" >
            <div class="row">
                <div class="col-md-12">
                    <div id="accordion">
                        <div class="card">
                            <div class="card-header">
                                <h5 class="text-center ">
                                    <a href="#collapseOne" class="btn btn-block btn-dark" data-toggle="collapse" data-parent="accordion">
                                        See your current Events
                                    </a>
                                </h5>
                            </div>
                            <div id="collapseOne" class="collapse">
                                <div class="card-body">
                                    <div class="table-responsive row">
                                        <table class="table table-striped table-hover">
                                            <tr>
                                                <th>Event Name</th>
                                                <th>Date</th>
                                            </tr>
                                            <c:forEach var='item' items='${listWrapper.list}'>
                                                <c:if test="${!item.completed}">
                                                    <tr>
                                                        <td><c:out value='${item.name}'/></td>
                                                        <td>
                                                            <fmt:parseDate pattern="MM/dd/yyyy" value="${item.date}"
                                                                           var="date"/>
                                                            <c:out value='${date}'/>
                                                        </td>
                                                    </tr>
                                                </c:if>
                                            </c:forEach>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
    </section>
</c:if>

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
<script src="http://code.jquery.com/jquery-3.3.1.min.js"
        integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
        integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"
        integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T"
        crossorigin="anonymous"></script>
</body>
</html>
