
<%@page import="java.util.List"%>
<%@page import="MS.Business.QuestionBUS"%>
<%@page import="MS.DataAccess.Question"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    int id = Integer.parseInt(request.getParameter("id_exam"));
    QuestionBUS qu = new QuestionBUS();
    List<Question> lst = qu.getQuestionByExamId(id);
%>
﻿<!DOCTYPE html>
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
                    <i class="fa fa-user-o fa-2x" aria-hidden="true"></i>
                    Phân hệ giáo viên
                </span>

                <span class="mr-4 clr-cyan-800 cursor-pointer" onclick="location.href = '?page=student/main'">
                    <i class="fa fa-user-o fa-2x" aria-hidden="true"></i>
                    Phân hệ học sinh
                </span>

                <span class="mr-4 clr-cyan-800 cursor-pointer" onclick="location.href = '?page=login'">
                    <i class="fa fa-sign-in fa-2x" aria-hidden="true"></i>
                    Đăng nhập
                </span>
                <span></span>
            </div>
        </header>
        <!--END: Menu-->

        <div class="main pt-4 mt-5">
            <div class="container-fluid" id="content">
                ﻿<div class="container-fluid mt-4">
                    <div class="row justify-content-center mb-4"><h2 class="clr-cyan-800 text-uppercase">Đề kiểm tra 1 tiết môn hóa</h2></div>
                    <div class="row">
                        <div class="col-7">
                            <div class="row">
                                <table class="display order-column table-striped" id="tblQuestion" style="width:100%">
                                    <thead class="clr-cyan-700">
                                        <tr>
                                            <th scope="col" class="text-center">Thứ tự</th>
                                            <th scope="col" class="text-center">Câu hỏi</th>
                                            <th scope="col" class="text-center">Câu trả lời</th>
                                            <th scope="col" class="text-center">Điểm</th>
                                            <th scope="col">Tác vụ</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <% for (int i = 0; i < lst.size(); i += 1) {%>
                                        <tr>
                                            <th scope="row" class="clr-cyan-700 text-center"><%= lst.get(i).getId()%></th>
                                            <td><%= lst.get(i).getContent()%></td>
                                            <td><%= lst.get(i).getResult()%></td>
                                            <td><%= lst.get(i).getPoint()%></td>
                                            <td>
                                                <button class="btn clr-none bg-red-400 btn-sm"><i class="fa fa-trash"></i></button>
                                                <button class="btn clr-none bg-orange-400 btn-sm"><i class="fa fa-edit"></i></button>
                                            </td>
                                        </tr>
                                        <% }%>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="col-5 bg-orange-100 pt-2 rounded pb-2">
                            <h5 class="font-weight-bold">Câu hỏi số 5</h5>
                            <div class="form-group">
                                <label class="font-weight-bold font-italic">Câu hỏi:</label>
                                <textarea class="form-control-plaintext bg-none border-orange-400 rounded"></textarea>
                            </div>
                            <div class="form-group">
                                <label class="font-weight-bold font-italic">Câu trả lời:</label>
                                <textarea class="form-control-plaintext bg-none border-orange-400 rounded"></textarea>
                            </div>
                            <div class="form-group">
                                <label class="font-weight-bold font-italic">Thời gian: (phút)</label>
                                <input class="form-control-plaintext bg-none w-25 text-right border-orange-400 rounded" type="number" value="45" />
                            </div>
                            <div class="form-group">
                                <label class="font-weight-bold font-italic">Điểm:</label>
                                <input class="form-control-plaintext bg-none w-25 text-right border-orange-400 rounded" type="number" value="100" />
                            </div>
                            <button class="btn bg-blue-700 clr-none">Lưu câu hỏi</button>
                            <button class="btn bg-blue-400 clr-none">Reset</button>
                        </div>
                    </div>
                    <div class="row justify-content-center mt-4"><a class="btn clr-none bg-orange-600" href="?page=teacher/main">Quay lại danh sách đề kiểm tra</a></div>
                </div>
                <style>
                    #tblQuestion_wrapper {
                        width: 100%;
                    }
                </style>
                <script>
                    $(document).ready(function () {
                        $('#tblQuestion').DataTable({
                            autoWidth: false
                        });
                    });
                </script>
            </div>
        </div>

        <script src="js/jquery-3.3.1.min.js"></script>
        <script src="lib/bootstrap-4.0.0/js/bootstrap.min.js"></script>
        <script src="js/common.js"></script>
        <script src="lib/sweetalert2/sweetalert2.all.js"></script>
        <link href="lib/datatable/dataTables.bootstrap4.min.css" rel="stylesheet" />
        <script src="lib/datatable/jquery.dataTables.min.js"></script>
        <script src="lib/datatable/dataTables.bootstrap4.min.js"></script>

    </body>
</html>