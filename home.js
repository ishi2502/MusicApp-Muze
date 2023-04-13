document.addEventListener('DOMContentLoaded', function () {
    var t = new Date();
    var hour = t.getHours();
    var a = document.querySelector(".chng_body");
    if (hour >= 5 && hour < 12) {
        a.className = "morning";
        document.querySelector("#day").textContent = "GOOD MORNING";
    }
    if ((hour >= 12) && (hour < 17)) {
        a.className = "afternoon";
        document.querySelector("#day").textContent = "GOOD AFTERNOON";
    }
    if ((hour >= 17) && (hour <= 20)) {
        a.className = "evening";
        document.querySelector("#day").textContent = "GOOD EVENING";
    }
    if ((hour > 20) || (hour < 5)) {
        a.className = "night";
        a.style.color = "white";
        document.querySelector("#day").textContent = "GOOD NIGHT";
    }
});

/*signup */
// $(document).ready(function () { // Wait until document is fully parsed
//     $("#signup_form").on('submit', function (e) {
//         e.preventDefault();
//         var valid = true;
//         var p = $("#pswrd").val();
//         var r = $("#reppswrd").val();
//         if (p != r) {
//             $(".passwordmatch").text("Passwords does not Match");
//             valid = false;
//         }
//         if (valid == true) {
//             $(".passwordmatch").text("Registration successfull");
//             e.currentTarget.submit();
//         }
//     });
// });

