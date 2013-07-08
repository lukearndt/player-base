$(document).ready(function() {
	$('#member-select select').change(function() {
		var member_url = "/members/" + $(this).val() + "/edit";

		$.ajax({
			url: member_url,
			success: function(data) {
				console.log(data);
				$("#member-data").html(data);
			}
		})
	})

})