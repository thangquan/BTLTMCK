<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Thêm mới sản phẩm</title>
        <link rel="stylesheet" href="./css/footer.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!------ Include the above in your HEAD tag ---------->
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    </head>
    <body> 

        <nav class="navbar navbar-expand-md navbar-dark bg-dark">
            <div class="container">
                <a class="navbar-brand" href="home">Thế Giới Xe</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="dropdown">
                    <div></div>
                    <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                        <img width="50px" alt="" src="https://img.icons8.com/bubbles/2x/user-male.png">
                        <span class="username">${sessionScope.userName}</span>
                        <b class="caret"></b>
                    </a>
                    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                        <a class="dropdown-item" href="#"><i class="fa fa-book"></i>&nbsp;&nbsp;profile</a>
                        <a class="dropdown-item" href="#"><i class="fa fa-cog"></i>&nbsp;&nbsp;setting</a>
                        <a class="dropdown-item" href="./LogoutControl"><i class="fa fa-times"></i>&nbsp;&nbsp;logout</a>
                    </div>
                </div>
            </div>
        </nav>
        <section class="jumbotron text-center">
            <div class="container">
                <img alt="" src="https://thegioixedien.com.vn/datafiles/setone/1586151676_lo-go-2016-the-gioi-xe-dien--chu_den.png">
            </div>
        </section>


       <section style="margin: 0 100px;">
                <section id="main-content">
                    <section class="wrapper">
                        <div class="row">
                            <div class="col-md-12">
                                <section class="panel">
                                    <header class="panel-heading">
                                        <h1>Thêm mới sản phẩm</h1>
                                    </header>
                                    <div class="panel-body">
                                        <form action="add" method="post">
                                            <table class="table table-hover">
                                                <tr>
                                                    <td> Tên sản phẩm </td>
                                                    <td><input value="" name="name" type="text" class="form-control" required></td>
                                                </tr>
                                                <tr class="trDes">
                                                    <td>size</td>
                                                    <td><input  name="size" type="text" class="txtDes form-control" required></input></td>
                                                </tr>
                                                <tr>
                                                    <td> Category </td>
                                                    <td>
                                                        <select name="category" class="form-select" aria-label="Default select example" size="1">
                                                            <option value="${listCC[0].getCid()}" selected>${listCC[0].getCname()}</option>
                                                            <c:forEach items="${listCC}" var="o">
                                                                <option value="${o.getCid()} "> ${o.getCname()}</option>
                                                            </c:forEach>
                                                        </select>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td> image </td>
                                                    <td><input name="image" type="text" class="form-control" required></input></td>
                                                </tr>
                                                <tr>
                                                    <td>color </td>
                                                    <td><input value="" name="color" type="text" class="form-control" required><td>
                                                </tr>
                                                <tr>
                                                    <td> Số lượng còn</td>
                                                    <td><input value="" name="soluongcon" type="number" class="form-control" required></td>
                                                </tr>
                                                <tr>
                                                    <td> price </td>
                                                    <td><input value="" name="price" type="number" class="form-control" required></td>
                                                </tr>


                                                <tr>
                                                    <td><input type="submit" class="btn btn-danger btn-block" value="Add"></td>
                                                </tr>

                                            </table>

                                        </form>
                                    </div>

                                </section>
                            </div>
                        </div>
                    </section>
                </section>
            </section>


        <footer class="footer">
            <div class="grid wide footer__container">
                <div class="row">
                    <div class="col l-2-4 m-4 c-6">
                        <h3 class="footer__heading">Chăm Sóc Khách Hàng</h3>
                        <ul class="footer-list">
                            <li class="footer-item">
                                <a href="" class="footer-item__link">Trung Tâm Trợ Giúp</a>
                            </li>
                            <li class="footer-item">
                                <a href="" class="footer-item__link">Shop Mail</a>
                            </li>
                            <li class="footer-item">
                                <a href="" class="footer-item__link">Hướng Dẫn Mua Hàng</a>
                            </li>
                        </ul>
                    </div>
                    <div class="col l-2-4 m-4 c-6">
                        <h3 class="footer__heading">Giới Thiệu</h3>
                        <ul class="footer-list">
                            <li class="footer-item">
                                <a href="" class="footer-item__link">Giới Thiệu</a>
                            </li>
                            <li class="footer-item">
                                <a href="" class="footer-item__link">Tuyển Dụng</a>
                            </li>
                            <li class="footer-item">
                                <a href="" class="footer-item__link">Điều Khoản</a>
                            </li>
                        </ul>
                    </div>
                    <div class="col l-2-4 m-4 c-6">
                        <h3 class="footer__heading">Danh Mục</h3>   
                        <ul class="footer-list">
                            <li class="footer-item">
                                <a href="" class="footer-item__link">Xe Đạp Điện</a>
                            </li>
                            <li class="footer-item">
                                <a href="" class="footer-item__link">Xe Đạp Điện</a>
                            </li>
                            <li class="footer-item">
                                <a href="" class="footer-item__link">Xe Đạp Điện</a>
                            </li>
                        </ul>
                    </div>
                    <div class="col l-2-4 m-4 c-6">
                        <h3 class="footer__heading">Theo Giõi</h3>
                        <ul class="footer-list">
                            <li class="footer-item">
                                <a href="" class="footer-item__link">

                                    FaceBook
                                </a>
                            </li>
                            <li class="footer-item">
                                <a href="" class="footer-item__link">

                                    Instagram
                                </a>
                            </li>
                            <li class="footer-item">
                                <a href="" class="footer-item__link">

                                    LikedIn
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="footer__bottom">
                <div class="grid wide">
                         <p class="footer__text">©copyright LTM</p>
                </div>
            </div>
        </footer>
    </body>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</html>
