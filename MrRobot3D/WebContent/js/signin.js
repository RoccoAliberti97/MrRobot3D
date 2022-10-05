$("#loginb").click(function (e) {

    e.preventDefault();
    var redirect="./";
    $.ajax({
        type:"POST",
        data: {
        	Email: document.getElementsByName("Email")[0].value.toLowerCase(),
        	Password:document.getElementsByName("Password")[0].value
        },
        url:"./login",
        success: function(res) {
                $(".modal-title").text(res.title);
                $(".modal-body").text(res.response);
                $("#myModal").modal('show');

                if(res.title=="Successo")
                  setTimeout(function(){window.location = redirect;},2000);
            }
    })
});