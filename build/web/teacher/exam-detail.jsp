<div class="timedown-grp">
    <ul class="nav">
        <li class="nav-item mr-3">
            <button id="btnend" class="btn bg-orange-700 clr-none font-weight-bold" onclick="location.href='?page=teacher/students'">
                Lưu kết quả chấm
            </button>
            <button id="btnend" class="btn bg-red-300 clr-none font-weight-bold" onclick="location.href='?page=teacher/students'">
                Hủy
            </button>
        </li>
    </ul>
</div>

<div class="container-fluid" id="dvQuestion"></div>

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
    window.onscroll = function () { scrollFunction() };

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