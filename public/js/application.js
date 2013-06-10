$(document).ready(function() {

	$('#eventsubmit').on('click', function(e){
		e.preventDefault();
		$.ajax({
			url: '/events/create',
			method: 'post',
			dataType: 'json',
			data: $('form').serialize()
		}).done(function(data){
			console.log(data);
			if (data[0] === 'r') {
				window.location.replace("/");
			}
		});
	});

// Mailcheck js

// $('#email').on('blur', function() {
// 	$(this).mailcheck({
// 		suggested: function(element, suggestion) {
// 			// callback code
// 			console.log("");
// 		},
// 		empty: function(element) {
// 			// callback code
// 		}
// 	});
// });

});