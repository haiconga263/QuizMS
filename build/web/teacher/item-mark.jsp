<div class="row rounded">
    <div class="col-12 col-md-12 m-1">
        <div class="jumbotron pt-3 pb-2 bg-grey-200">
            <h5>Câu 1</h5>
            <p class="lead w-100">Tại sao ...?</p>
            <p class="font-italic">Câu trả lời của học sinh: </p>
            <textarea class=" w-100 rounded" disabled>Tại vì do...!</textarea>
            <p class="font-italic text-right">10 Điểm</p>

            <p class="font-italic">Đáp án: </p>
            <textarea class=" w-100 rounded" disabled>Tại vì do...!</textarea>
            <form class="bg-orange-200 p-2 rounded">
                <div class="custom-control custom-radio custom-control-inline">
                    <input type="radio" id="customRadio_{{Value}}_1" name="customRadio" class="custom-control-input">
                    <label class="custom-control-label" for="customRadio_{{Value}}_1">Đúng</label>
                </div>
                <div class="custom-control custom-radio custom-control-inline">
                    <input type="radio" id="customRadio_{{Value}}_2" name="customRadio" class="custom-control-input">
                    <label class="custom-control-label" for="customRadio_{{Value}}_2">Sai</label>
                </div>
                <div class="custom-control custom-radio custom-control-inline">
                    <input type="radio" id="customRadio_{{Value}}_3" name="customRadio" class="custom-control-input" checked>
                    <label class="custom-control-label" for="customRadio_{{Value}}_3">Other</label>
                </div>
            </form>
        </div>
    </div>
</div>
