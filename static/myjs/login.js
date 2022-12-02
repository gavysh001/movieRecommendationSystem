    $("#signUp").submit(function (e) {

        e.preventDefault(); // avoid to execute the actual submit of the form.

        var form = $(this);
        var actionUrl = form.attr('action');

        $.ajax({
            type: "POST",
            url: 'registerUser',
            // {#csrfmiddlewaretoken:'{{ csrf_token }}',#}
            data: form.serialize(), // serializes the form's elements.
            success: function (data) {
                // {#alert(data); // show response from the php script.#}
                document.getElementById('signUp').reset();
                $('#loginButton').click();
            },
            error: function (data) {
                alert(data);
            }
        });

    });

    $("#loginUser").submit(function (e) {

        e.preventDefault(); // avoid to execute the actual submit of the form.

        var form = $(this);

        $.ajax({
            type: "POST",
            url: 'checkUser',
            // {#csrfmiddlewaretoken:'{{ csrf_token }}',#}
            data: form.serialize(), // serializes the form's elements.
            success: function (data) {
                alert(data); // show response from the php script.
                // {#document.getElementById('signUp').reset();#}
                if (data == 'success') {
                    $('#loginModal').modal('hide');
                    location.reload();
                }
                // {#$('#loginButton').click();#}
            },
            error: function (data) {
                alert(data);
            }
        });

    });
