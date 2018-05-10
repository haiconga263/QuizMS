<%-- 
    Document   : login_1
    Created on : May 8, 2018, 11:08:51 AM
    Author     : hieptd
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="MS.Business.AccountBUS"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
﻿<!--forms-->
<div class="container-fluid pt-4">
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
        <!--/.login-form-->
        <!--sing-up-form-->
        <!--
        <div class="col-5">
            <div class="account-holder">
                <div class="row justify-content-center clr-cyan-800">
                    <h3>Bạn chưa có tài khoản?</h3>
                </div>
                <br>
                <div class="row justify-content-center">
                    <form class="w-75">
                        <div class="form-group">
                            <label class="control-label required" for="name">Họ tên<sup style="color:red" class="p-1">*</sup></label>
                            <input id="r_name" name="r_name" type="text" class="form-control" placeholder="Nhập họ tên">
                        </div>

                        <div class="form-group">
                            <label class="control-label required" for="phone">Số điện thoại<sup style="color:red" class="p-1">*</sup></label>
                            <input id="r_phone" name="r_phone" type="text" class="form-control" placeholder="Nhập số điện thoại">
                        </div>

                        <div class="form-group">
                            <label class="control-label required" for="email">Email<sup style="color:red" class="p-1">*</sup></label>
                            <input id="r_email" name="r_email" type="text" class="form-control" placeholder="Nhập email">
                        </div>

                        <div class="form-group">
                            <label class="control-label required" for="password">Mật khẩu<sup style="color:red" class="p-1">*</sup></label>
                            <input id="r_pwd" name="r_pwd" type="password" class="form-control" placeholder="Nhập mật khẩu">
                        </div>
                        <button class="btn clr-none bg-cyan-800"><b>Đăng ký</b></button>
                    </form>
                </div>
            </div>

        </div>
        <!--/.sing-up-form-->
        
    </div>

</div>
<%  
    if (request.getParameter("submit") != null) {
        AccountBUS acc = new AccountBUS();

        String username = request.getParameter("username");
        String pass = request.getParameter("pass");

        ResultSet rs = acc.Login(username, pass);
        while(rs.next()){
            String us = rs.getString("username");
            String pa = rs.getString("pass");
            if (username == us & pass == pa) {
                 if(rs.getInt("type") == 0){
                      response.sendRedirect("/student/main.jsp");
                 }
                 else{
                      response.sendRedirect("/student/main.jsp");
                 }
            }   
        }
    }
    
    // Here you put the check on the username and password
    //if (username.toLowerCase().trim().equals("admin") && password.toLowerCase().trim().equals("admin")) {
      //  out.println("Welcome " + username + " <a href=\"index.jsp\">Back to main</a>");
     //   session.setAttribute("username", username);
    //}
    ///else
    ///   {
   //     out.println("Invalid username and password");
    //}
 %>
