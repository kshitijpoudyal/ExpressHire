$(function() {


    $("#signUp").load("../jsp/signup.jsp");


    $("a").click(function() {
        // remove classes from all
        $("a").removeClass("active");//I'll change it, because we have many a inside the index page.
        // add class to the one we clicked
        $(this).addClass("active");

        if(this.id === "applicant") {
            $("#signUp").load("jsp/applicant_sign_up.jsp");
        }
        else {
            $("#signUp").load("jsp/recruiter_sign_up.jsp");
        }
    });

    
    $("#applicant_sign_up").click(function () {
        var applicant = {
            firstName:$("#firstName").value(),
            lastName: $("#lastName").value()
        };
        $.poste("applicant/signup", applicant);
    })

    $("#recruiter_sign_up").click(function () {
        var recruiter = {
            companyName: $("#companyName").value()
        };
        $.post("recruiter/signup", recruiter)
    })


    
})
