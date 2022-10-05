$("#registra").click(function (e) {

    e.preventDefault();
    var redirect="./login.jsp";
    $.ajax({
        type:"POST",
        data: {
        	azione: document.getElementsByName("azione")[0].value,
        	Nome: document.getElementsByName("Nome")[0].value,
        	Cognome: document.getElementsByName("Cognome")[0].value,
        	Sesso: document.getElementsByName("Sesso")[0].value,
        	Indirizzo: document.getElementsByName("Indirizzo")[0].value,
        	PayPal: document.getElementsByName("PayPal")[0].value,
        	Email: document.getElementsByName("Email")[0].value.toLowerCase(),
        	Password: document.getElementsByName("Password")[0].value,
        	cpassword: document.getElementsByName("cpassword")[0].value
        },
        url:"./register",
        success: function(res) {
        	    $(".modal-title").text(res.title);
                $(".modal-body").text(res.response);
                $("#myModal").modal('show');

                if(res.title=="Successo")
                  setTimeout(function(){window.location = redirect;},2000);
            }
    })
});