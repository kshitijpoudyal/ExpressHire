$(function() {


    $("#SignUpApplicant").show();
    $("#signUpRecruiter").hide();


    $(".myOption").click(function() {
        // remove classes from all
        $(".myOption").removeClass("active");//I'll change it, because we have many a inside the index page.
        // add class to the one we clicked
        $(this).addClass("active");

        if(this.id === "applicant") {
            $("#SignUpApplicant").show();
            $("#signUpRecruiter").hide();
        }
        else {
            $("#SignUpApplicant").hide();
            $("#signUpRecruiter").show();
        }
    });


    $("#applicant_sign_up").click(function () {
        let applicant = {
            firstName:$("#firstName").val(),
            lastName: $("#lastName").val()
        };

        console.log(JSON.stringify(applicant));

        $.ajax({
            type : "POST",
            contentType : "application/json",
            url : "applicant/signup",
            data : JSON.stringify(applicant),
            dataType : 'json',
            timeout : 100000,
            success : function(data) {
                console.log("SUCCESS: ", data);
                display(data);
            },
            error : function(e) {
                console.log("ERROR: ", e);
                display(e);
            },
            done : function(e) {
                console.log("DONE");
            }
        });
    })// end of applicant sign up button

    $("#recruiter_sign_up").click(function () {
        let recruiter = {
            firstName:$("#companyName").val(),
        };

        console.log(JSON.stringify(applicant));

        $.ajax({
            type : "POST",
            contentType : "application/json",
            url : "recruiter/signup",
            data : JSON.stringify(recruiter),
            dataType : 'json',
            timeout : 100000,
            success : function(data) {
                console.log("SUCCESS: ", data);
                display(data);
            },
            error : function(e) {
                console.log("ERROR: ", e);
                display(e);
            },
            done : function(e) {
                console.log("DONE");
            }
        });
    });

    $("#recruiter_sign_up").click(function () {
        var recruiter = {
            companyName: $("#companyName").value()
        };
        $.post("recruiter/signup", recruiter)
            .done(function (e) {
                console.log("DONE");

            })
            .fail(function (e) {
                console.log("ERROR: ", e);
                display(e);
            })
    })
})
