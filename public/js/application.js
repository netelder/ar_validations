$(document).ready(function () {

	$('#eventsubmit').on('click', function(e){
		e.preventDefault;
		$.ajax({
			url: '/event/create',
			method: 'post',
			dataType: 'json',
			data: $('form').serialize();
		}).done(function(data){
			console.log("returned from ajax call\n");
			console.log(data);
		})
	})

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