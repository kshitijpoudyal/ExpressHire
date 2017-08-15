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

    $("#applicant_profile_nav").show();
    $("#update_applicant_profile_nav").hide();

    $(".profile_update_option").click(function() {
        // remove classes from all
        $(".profile_update_option").removeClass("active");//I'll change it, because we have many a inside the index page.
        // add class to the one we clicked
        $(this).addClass("active");

        if(this.id === "profile_option") {
            $("#applicant_profile_nav").show();
            $("#update_applicant_profile_nav").hide();
        }
        else {
            $("#applicant_profile_nav").hide();
            $("#update_applicant_profile_nav").show();
        }
    });

  //====================================================
    $("#applicant_sign_up").click(function () {
        let applicant = {
            firstName:$("#firstName").val(),
            lastName: $("#lastName").val(),
            email: $("#applicant_sign_up_email").val(),
            password: $("#applicant_sign_up_password").val()
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

    //===================================================

    $("#recruiter_sign_up").click(function () {
        let recruiter = {
            companyName:$("#companyName").val(),
            email: $("#recruiter_sign_up_email").val(),
            password: $("#recruiter_sign_up_password").val()
        };

        console.log(JSON.stringify(recruiter));

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



    //============================================
    $("#applicant_update_btn").click(function () {
        //TODO: I have to send a put request to "applicant/{userId}, put mean update.
        let applicant = {
            firstName: $("#firstName").val(),
            lastName: $("#lastName").val(),
            password: $("#applicant_password")
        }

        $.ajax({
            type : "PUT",
            contentType : "application/json",
            url : "applicant/update",
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
    })

    //=========================================
    
    $("#recruiter_update_btn").click(function () {
        let recruiter = {
            companyName: $("#companyName").val(),
            password: $("#recruiter_password").val()
        }

        $.ajax({
            type : "PUT",
            contentType : "application/json",
            url : "recruiter/update",
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
    })

    //==========================LOGIN BUTTON HANDLER==============================
    $("#login_btn").click(function () {
        
    })

})
