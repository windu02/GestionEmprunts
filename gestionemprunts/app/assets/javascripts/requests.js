function changeHandler(){
	var ckbxs = $("*:checkbox");
	var ids = [];
	for (i=0; i<ckbxs.length; i++)
	{
		if (ckbxs[i].checked) ids.push(ckbxs[i].id);
	}
	
	// Ajax call
	//$("#material_list_view").html('<%=' escape_javascript(render "/materials/by_type", :ids => [8,9,10,11], :remote=>true) '%>');
	//$("<%= escape_javascript render(file: '/materials/by_type'), :ids => [8,9,10,11] %>").insertAfter("#material_list_view");
}

document.addEventListener('DOMContentLoaded', function () {
	var ckbxs = $("*:checkbox");
	for (i=0; i<ckbxs.length; i++)
	{
		ckbxs[i].addEventListener('change', changeHandler);
	}
    
});