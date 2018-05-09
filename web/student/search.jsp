<div class="container-fluid">
    <div class="row justify-content-center">
        <ul class="nav">
            <li class="nav-item">
                <h5><a class="badge badge-pill clr-cyan-800 border-cyan-800 mr-2 mt-3" href="#">Kết quả tìm kiếm: <b id="keyword"></b></a></h5>
            </li>
        </ul>
    </div>
    <div class="row" id="dvPhotos"></div>
</div>

<a onclick="topFunction()" id="myBtn" href="javascript:void(0)" title="Go to top"><i class="fa fa-angle-double-up fa-3x" aria-hidden="true"></i></a>

<script>
    $(document).ready(function () {
        var key = getUrlParameter('keyword');
        $('#keyword').text(key);
        $('#txtKeyWord').val(key);
    });
</script>

<!--BEGIN: Handle Load Photos-->
<script>
    getTemplate('item', function (template) {
        buildListPhoto(20, 'dvPhotos', template);
    });
</script>
<!--END: Handle Load Photos-->
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