


$("#reviewForm").submit(function (e) {

    e.preventDefault(); // avoid to execute the actual submit of the form.

    var form = $(this);
    // var actionUrl = form.attr('action');

    $.ajax({
        type: "POST",
        url: '/postReview',
        data: form.serialize(), // serializes the form's elements.
        success: function (data) {
            if (data != 'success') {
                alert(data)
            }
            getReviews()
            document.getElementById('reviewForm').reset();
            $('#reviewModal').modal('hide');
        },
        error: function (data) {
            alert(data);
        }
    });

});

function getReviews() {
    let id = document.getElementById('movieID').innerText
    // alert(id)
    var xhtp = new XMLHttpRequest()
    xhtp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            var output = this.response
            console.log(output)
            insertReviews(output)
        }
    }
    xhtp.open('GET', '/getReviews/' + id, true)
    xhtp.send()
}

function insertReviews(output) {
    var data = JSON.parse(output)
    s = ""
    for (var i = 0; i < data.length; i++) {
        s += `<div>
              <div class="d-flex mb-3 pb-1">
<!--                                                <div>-->
<!--                                                    <img class="img-fluid rounded-circle"-->
<!--                                                         src="../../assets/img/36x36/img1.jpg" alt="Image-Description">-->
<!--                                                </div>-->
                                                <div class="ml-3">
                                                    <div class="mb-2">
                                                        <span class="text-primary">${data[i].title}</span>
                                                        <span class="text-gray-1300 ml-1">${data[i].date}</span>
                                                    </div>
                                                </div>
                                            </div>
                                            <p class="mb-3 text-gray-5500">${data[i].desc}</p>
                                            <div class="text-gray-1300">
                                                <a href="#" class="text-gray-1300">
                                                    <i class="far fa-thumbs-up font-size-18"></i>
                                                </a>
                                                <span class="font-size-12 font-weight-semi-bold ml-1">0</span>
                                            </div>
                                        </div>`
        document.getElementById('reviews').innerHTML = s
    }
}