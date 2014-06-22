<!DOCTYPE html>
<html>
<head>
<r:require module="common"/>
<g:javascript library="jquery"></g:javascript>
<r:layoutResources />


<g:layoutHead />
</head>
<body>
		
<g:layoutBody />

<r:layoutResources />

<script>
$(document).ready(function(){
	addColorToHeader();
});

function addColorToHeader()
{
	var actionName='${actionName}';
	var divId="";
	if(actionName=="index")		divId="index";
	else if(actionName=="contactus")	divId="contactus";
	else if(actionName=="services")		divId="services"
	else if(actionName=="product")	divId="product";
	else	divId="addproduct";
	$("#"+divId).addClass('thispage');
}
</script>
</body>
</html>