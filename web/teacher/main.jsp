?
?<!DOCTYPE html>
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
    <!--BEGIN: Menu-->
    <header class="navbar navbar-expand-sm navbar-light fixed-top bg-grey-100">
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <a class="navbar-brand" href="/">
            <img src="images/logo_2x.png" alt="Logo" style="height:35px;">
        </a>
        <div class="collapse navbar-collapse bg-grey-100" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto size-w-50p">
                <li class="nav-item size-w-100p">
                    <!--BEGIN: Search bar-->
                    <div class="input-group">
                        <input type="text" id="txtKeyWord" class="form-control" placeholder="Nh?p t? khóa tìm ki?m" aria-describedby="basic-addon2">
                        <span class="btn btn-secondary input-group-addon clr-cyan-800 border-cyan-800 bg-grey-100" id="basic-addon2" onclick="search()"><i class="fa fa-search fa-2x" aria-hidden="true"></i></span>
                    </div>
                    <!--END: Search bar-->
                </li>
            </ul>
             
            <span class="mr-4 clr-cyan-800 cursor-pointer" onclick="location.href='?page=teacher/main'">
                <i class="fa fa-user-o fa-2x" aria-hidden="true"></i>
                Phân h? giáo viên
            </span>

            <span class="mr-4 clr-cyan-800 cursor-pointer" onclick="location.href='?page=student/main'">
                <i class="fa fa-user-o fa-2x" aria-hidden="true"></i>
                Phân h? h?c sinh
            </span>
           
            <span class="mr-4 clr-cyan-800 cursor-pointer" onclick="location.href='?page=login'">
                <i class="fa fa-sign-in fa-2x" aria-hidden="true"></i>
                ??ng nh?p
            </span>
            <span></span>
        </div>
    </header>
    <!--END: Menu-->

    
        <div class="container-fluid mt-4">
    <div class="row">
        <div class="col-8 ml-2">
            <div class="row"><h2 class="clr-cyan-800">Danh sách bài ki?m tra</h2></div>
            <div class="row">
                <table class="table table-striped">
                    <thead class="clr-cyan-700">
                        <tr>
                            <th scope="col">No.</th>
                            <th scope="col">N?i dung</th>
                            <th scope="col">Th?i gian</th>
                            <th scope="col">S? l??ng h?c sinh ?ã làm</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row" class="clr-cyan-700">1</th>
                            <td><a href="?page=teacher/question">Ki?m tra 15p môn Hóa</a></td>
                            <td>15 phút</td>
                            <td class="text-center">22 (<a class="font-italic" href="?page=teacher/students">Chi ti?t</a>)</td>
                        </tr>
                        <tr>
                            <th scope="row" class="clr-cyan-700">2</th>
                            <td><a href="?page=teacher/question">Ki?m tra 1 ti?t môn Lý</a></td>
                            <td>45 phút</td>
                            <td class="text-center">22 (<a class="font-italic" href="?page=teacher/students">Chi ti?t</a>)</td>
                        </tr>
                        <tr>
                            <th scope="row" class="clr-cyan-700">3</th>
                            <td><a href="?page=teacher/question">Ki?m tra 1 ti?t môn Sinh</a></td>
                            <td>45 phút</td>
                            <td class="text-center">22 (<a class="font-italic" href="?page=teacher/students">Chi ti?t</a>)</td>
                        </tr>
                        <tr>
                            <th scope="row" class="clr-cyan-700">4</th>
                            <td><a href="?page=teacher/question">Ki?m tra 1 ti?t môn Sinh</a></td>
                            <td>45 phút</td>
                            <td class="text-center">22 (<a class="font-italic" href="?page=teacher/students">Chi ti?t</a>)</td>
                        </tr>
                        <tr>
                            <th scope="row" class="clr-cyan-700">5</th>
                            <td><a href="?page=teacher/question">Ki?m tra 1 ti?t môn Sinh</a></td>
                            <td>45 phút</td>
                            <td class="text-center">22 (<a class="font-italic" href="?page=teacher/students">Chi ti?t</a>)</td>
                        </tr>
                        <tr>
                            <th scope="row" class="clr-cyan-700">6</th>
                            <td><a href="?page=teacher/question">Ki?m tra 1 ti?t môn Sinh</a></td>
                            <td>45 phút</td>
                            <td class="text-center">22 (<a class="font-italic" href="?page=teacher/students">Chi ti?t</a>)</td>
                        </tr>
                        <tr>
                            <th scope="row" class="clr-cyan-700">7</th>
                            <td><a href="?page=teacher/question">Ki?m tra 1 ti?t môn Sinh</a></td>
                            <td>45 phút</td>
                            <td class="text-center">22 (<a class="font-italic" href="?page=teacher/students">Chi ti?t</a>)</td>
                        </tr>
                        <tr>
                            <th scope="row" class="clr-cyan-700">8</th>
                            <td><a href="?page=teacher/question">Ki?m tra 1 ti?t môn Sinh</a></td>
                            <td>45 phút</td>
                            <td class="text-center">22 (<a class="font-italic" href="?page=teacher/students">Chi ti?t</a>)</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
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