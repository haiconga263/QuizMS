var getUrlParameter = function getUrlParameter(sParam) {
    var sPageURL = decodeURIComponent(window.location.search.substring(1)),
        sURLVariables = sPageURL.split('&'),
        sParameterName,
        i;

    for (i = 0; i < sURLVariables.length; i++) {
        sParameterName = sURLVariables[i].split('=');

        if (sParameterName[0] === sParam) {
            return sParameterName[1] === undefined ? true : sParameterName[1];
        }
    }
};

function getTemplate(name, callback) {
    $.get(name + '.html', function (template) {
        if (callback) callback(template);
    });
}

function buildItem(id, item, template) {
    $('#' + id).append(template.replace(/\{{\w*}}/g, function (m) {
        return {
            '{{Username}}': item.username ? '@' + item.username + ':' : '',
            '{{Content}}': item.content ? item.content : '',
            '{{Price}}': item.price ? item.price + 'K VND' : '',
            '{{NumLike}}': item.numlike ? item.numlike : '',
            '{{Path}}': item.path ? item.path : 'images/photos/photo (1).jpeg',
            '{{Value}}': item.value ? item.value : 0
        }[m];
    }));
}

function buildListPhoto(num, id, template) {
    for (var i = 1; i <= num; i++) {
        var str = buildItem(id, {
            username: 'username',
            content: 'Photo text...',
            price: (Math.floor((Math.random() * 10) + 1) * 10),
            numlike: Math.floor((Math.random() * 1000) + 1),
            path: 'images/photos/photo (' + Math.floor((Math.random() * 90) + 1) + ').jpeg',
            value: Math.floor((Math.random() * 100) + 1)
        }, template);
    }
}

function addCart() {
    swal(
        'Ảnh đã được thêm vào giỏ hàng',
        '',
        'success'
    )
}

function showPopupShare() {
    swal({
        //title: '',
        title: '<h5>Link: <b><em class="clr-blue-600">http://localhost:47630/?page=album</em></b>' +
            '<i class="fa fa-files-o btn btn-sm clr-grey-500 border-grey-500 ml-2" aria-hidden="true"></i>' +
            '<i class="fa fa-arrow-right btn btn-sm clr-grey-500 border-grey-500 ml-2" aria-hidden="true"  onclick="location.href=\'?page=album\'"></i>' +
            '</h5>',
        width: 600,
        showConfirmButton: false,
    })
}