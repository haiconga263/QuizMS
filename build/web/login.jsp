<%-- 
    Document   : login_1
    Created on : May 8, 2018, 11:08:51 AM
    Author     : hieptd
--%>
<%@page import="MS.DataAccess.Account"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="MS.Business.AccountBUS"%>

<% 
    if(session.getAttribute("username") != null){
            session.invalidate();
    }
     
    if (request.getParameter("submit") != null) {
        AccountBUS acc = new AccountBUS();
        String username = request.getParameter("username");
        String pass = request.getParameter("pass");

        ResultSet rs = acc.Login(username, pass);
        while(rs.next()){
            String us = rs.getString("username");
            String pa = rs.getString("pass");
            
            if (username.equals(us) & pass.equals(pa)) {
                 if(rs.getInt("type") == 0){
                      session.setAttribute("username",us);
                      response.sendRedirect("teacher/main.jsp");
                 }
                 else{
                      response.sendRedirect("student/main.jsp");
                 }
            }   
        }
    }
 %>
﻿<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Q-Exam</title>
    <link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico" />
    <link href="lib/bootstrap-4.0.0/css/bootstrap.min.css" rel="stylesheet" />
    <link href="lib/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" />
    <link href="css/site.css" rel="stylesheet" />
    <link href="css/color.css" rel="stylesheet" />
</head>
<body>   
    <div class="row">
        <div class="col-4"></div>
        <div class="col-5">
            <!--login-form-->
            <div class="row justify-content-center clr-cyan-800">
                <h3>Login</h3>
            </div>
            <br>
            <div class="row justify-content-center">
                <form acction="login.jsp" method="post" class="w-75">
                    <div class="form-group">
                        <label class="control-label required" for="email">Email<sup style="color:red" class="p-1">*</sup></label>
                        <input id="lg_email" name="username" type="text" class="form-control" placeholder="Nhập Email">
                    </div>
                    <div class="form-group">
                        <label class="control-label required" for="email">Mật khẩu<sup style="color:red" class="p-1">*</sup></label>
                        <input id="lg_pwd" name="pass" type="password" class="form-control" placeholder="Nhập mật khẩu">
                    </div>
                    <div class="checkbox">
                        <label>
                            <input type="checkbox" value="">
                            Nhớ cho lần đăng nhập sau?
                        </label>
                    </div>
                    <button type="submit" value="submit" name="submit" class="btn clr-none bg-cyan-800"><b>Đăng nhập</b></button>
                </form>
            </div>
        </div>
        <div class="col-4"></div>   
    </div>       
</body>
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="lib/bootstrap-4.0.0/js/bootstrap.min.js"></script>
    <script src="js/common.js"></script>
    <script src="lib/sweetalert2/sweetalert2.all.js"></script>
    <link href="lib/datatable/dataTables.bootstrap4.min.css" rel="stylesheet" />
    <script src="lib/datatable/jquery.dataTables.min.js"></script>
    <script src="lib/datatable/dataTables.bootstrap4.min.js"></script>
</html>