document.addEventListener('DOMContentLoaded', function () {
	var ckbxs = $("*:checkbox");
	for (i=0; i<ckbxs.length; i++)
	{
		ckbxs[i].addEventListener('change', function(event, data, status, xhr) {
		event.preventDefault();
		var ckbxs = $("*:checkbox");
		var ids = [];
		for (i=0; i<ckbxs.length; i++)
		{
			if (ckbxs[i].checked) ids.push(ckbxs[i].id);
		}
		return $.ajax({
		  url: '/materials/by_type',
		  type: 'GET',
		  data: {
			ids: ids
		  },
		  success: function(result) {
				$("#material_list_view").html(result);
		  },
		  error: function(event, data, status, xhr) {
				console.log("KO");
		  }
		});
	  });
	}
    
});