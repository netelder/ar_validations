$(document).ready(function () {

	$('#eventsubmit').on('click', function(e){
		e.preventDefault();
		$.ajax({
			url: '/events/create',
			method: 'post',
			dataType: 'json',
			data: $('form').serialize()
		}).done(function(data){
					console.log(data);
			if (data[0] == 'redirect') {
				console.log(data[0]);
				window.location.href = '/';
       } else {
		}
		});
	});

//   // send an HTTP DELETE request for the sign-out link
//   $('a#sign-out').on("click", function (e) {
//   	e.preventDefault();
//   	var request = $.ajax({ url: $(this).attr('href'), type: 'delete' });
//   	request.done(function () { window.location = "/"; });
//   });

// // Mailcheck js

// $('#email').on('blur', function() {
// 	$(this).mailcheck({
// 		suggested: function(element, suggestion) {
// 	      // callback code
// 	      console.log("")
// 	    },
// 	    empty: function(element) {
// 	      // callback code
// 	    }
// 	  });
// });

});