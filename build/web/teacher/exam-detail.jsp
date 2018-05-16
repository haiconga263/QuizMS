<%@page import="MS.Business.StudentBUS"%>
<%@page import="MS.DataAccess.Student"%>
<%@page import="java.util.List"%>
<%@page import="MS.DataAccess.Exam"%>
<%@page import="MS.Business.ExamBUS"%>
<%@page import="MS.Helper.DataProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%
    String username = "";
    StudentBUS ex = new StudentBUS();
    List<Student> lst = ex.GetStudent();
%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Q-Exam</title>
        <link rel="../shortcut icon" type="image/x-icon" href="images/favicon.ico" />
        <link href="../lib/bootstrap-4.0.0/css/bootstrap.min.css" rel="stylesheet" />
        <link href="../lib/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" />
        <link href="../css/site.css" rel="stylesheet" />
        <link href="../css/color.css" rel="stylesheet" />

    </head>
    <body>
        <!--BEGIN: Menu-->
        <header class="navbar navbar-expand-sm navbar-light fixed-top bg-grey-100">
            <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <a class="navbar-brand" href="/">
                <img src="../images/logo_2x.png" alt="Logo" style="height:35px;">
            </a>
            <div class="collapse navbar-collapse bg-grey-100" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto size-w-50p">
                    <li class="nav-item size-w-100p">
                        <!--BEGIN: Search bar-->
                        <div class="input-group">
                            <input type="text" id="txtKeyWord" class="form-control" placeholder="Nhập từ khóa tìm kiếm" aria-describedby="basic-addon2">
                            <span class="btn btn-secondary input-group-addon clr-cyan-800 border-cyan-800 bg-grey-100" id="basic-addon2" onclick="search()"><i class="fa fa-search fa-2x" aria-hidden="true"></i></span>
                        </div>
                        <!--END: Search bar-->
                    </li>
                </ul>

                <span class="mr-4 clr-cyan-800 cursor-pointer" onclick="location.href = '?page=teacher/main'">
                    <a class="fa fa-user-o fa-2x" aria-hidden="true"></a>
                    Phân hệ giáo viên
                </span>

                <span class="mr-4 clr-cyan-800 cursor-pointer" >
                    <a class="fa fa-sign-in fa-2x" aria-hidden="true" href="logout.jsp"></a>
                    <%  if (session.getAttribute("username") != null) {
                            username = (String) session.getAttribute("username");
                        }
                    %>
                    <%=username%>            
                </span>
                <span></span>
            </div>
        </header>
        <!--END: Menu-->
        <div class="main pt-4 mt-5">
            <div class="container-fluid" id="content">    
                <div class="timedown-grp">
                    <ul class="nav">
                        <li class="nav-item mr-3">
                            <button id="btnend" class="btn bg-orange-700 clr-none font-weight-bold" onclick="location.href = '?page=teacher/students'">
                                Lưu kết quả chấm
                            </button>
                            <button id="btnend" class="btn bg-red-300 clr-none font-weight-bold" onclick="location.href = '?page=teacher/students'">
                                Hủy
                            </button>
                        </li>
                    </ul>
                </div>

                <div class="container-fluid" id="dvQuestion">
                    ﻿<div class="row rounded">
                        <% for (int i = 0; i < lst.size(); i += 1) {%>
                        <div class="col-12 col-md-12 m-1">
                            <div class="jumbotron pt-3 pb-2 bg-grey-200">
                                <h5>Câu <%= lst.get(i).getId()%>:</h5>
                                <p class="lead w-100"><%= lst.get(i).getContent()%></p>
                                <p class="font-italic">Câu trả lời của học sinh: </p>
                                <textarea class=" w-100 rounded" disabled>Tại vì do...!</textarea>
                                <p class="font-italic text-right">10 Điểm</p>

                                <p class="font-italic">Đáp án: </p>
                                <textarea class=" w-100 rounded" disabled>Tại vì do...!</textarea>
                                <div class="form-group">
                                    <label class="font-weight-bold font-italic">Điểm:</label>
                                    <input class="form-control-plaintext bg-none w-25 text-right border-orange-400 rounded" type="number" value="10" />
                                </div>
                            </div>
                        </div>
                        <%
                            }
                        %>
                    </div>

                </div>

                <a onclick="topFunction()" id="myBtn" href="javascript:void(0)" title="Go to top">
                    <strong><i class="fa fa-angle-double-up fa-3x clr-red-900 font-weight-bold" aria-hidden="true"></i></strong>
                </a>

                <!--BEGIN: Handle Load question-->
                <script>
                    getTemplate('teacher/item-mark', function (template) {
                        buildListPhoto(6, 'dvQuestion', template);
                    });
                </script>
                <!--END: Handle Load question-->
                <!--BEGIN: Handle Scroll To Top Button-->
                <script>
                    // When the user scrolls down 20px from the top of the document, show the button
                    window.onscroll = function () {
                        scrollFunction()
                    };

                    function scrollFunction() {
                        if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
                            document.getElementById("myBtn").style.display = "block";
                        } else {
                            document.getElementById("myBtn").style.display = "none";
                        }
                    }

                    // When the user clicks on the button, scroll to the top of the document
                    function topFunction() {
                        document.body.scrollTop = 0; // For Safari
                        document.documentElement.scrollTop = 0; // For Chrome, Firefox, IE and Opera
                    }
                </script>
                <!--END: Handle Scroll To Top Button-->
            </div>
        </div>

        <script src="../js/jquery-3.3.1.min.js"></script>
        <script src="../lib/bootstrap-4.0.0/js/bootstrap.min.js"></script>
        <script src="../js/common.js"></script>
        <script src="../lib/sweetalert2/sweetalert2.all.js"></script>
        <link href="../lib/datatable/dataTables.bootstrap4.min.css" rel="stylesheet" />
        <script src="../lib/datatable/jquery.dataTables.min.js"></script>
        <script src="../lib/datatable/dataTables.bootstrap4.min.js"></script>

    </body>
</html>

﻿