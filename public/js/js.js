function alertBox(){
	$(".alert-box").fadeOut(4000);
}

alertBox();


var registerForm = $("#registerForm");
$(".registerFormAnchor").click(function () {
	registerForm.toggleClass("hideRegisterForm");
	registerForm.toggleClass("showRegisterForm");
});
