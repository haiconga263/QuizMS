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
                <div class="row">
                    <div class="col-8 ml-2">
                        <div class="row"><h2 class="clr-cyan-800">Danh sách bài sinh viên tham gia trả lời</h2></div>
                        <div class="row">
                            <table class="table table-striped">
                                <thead class="clr-cyan-700">
                                    <tr>
                                        <th scope="col">MSSV</th>
                                        <th scope="col">Tên sinh viên</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <% for (int i = 0; i < lst.size(); i += 1) {%>
                                    <tr>
                                        <th scope="row" class="clr-cyan-700"><%= lst.get(i).getId()%></th>
                                        <td><a><%= lst.get(i).getName()%></a></td>
                                        <td class="text-center">22 (<a class="font-italic" href="question.jsp?id_exam=<%= lst.get(i).getId()%>">Chi tiết</a>)</td>
                                    </tr> 
                                    <% }%>                                        
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>

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