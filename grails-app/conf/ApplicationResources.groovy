modules = {
    application {
        resource url:'js/application.js'
    }
	
	common {
		resource url:'css/dashboard/contactlayout.css',disposition:'head',bundle:'themecommon',attrs:[rel: "stylesheet",media:'screen']
		resource url:'css/dashboard/contactstyle.css',disposition:'head',bundle:'themecommon',attrs:[rel: "stylesheet",media:'screen']
		resource url:'css/dashboard/main.css',disposition:'head',bundle:'themecommon',attrs:[rel: "stylesheet",media:'screen']
		resource url:'css/dashboard/signup.css',disposition:'head',bundle:'themecommon',attrs:[rel: "stylesheet",media:'screen']
		
		resource url:'js/dashboard/jquery.hoveraccordion.js', disposition:'head'
		resource url:'js/dashboard/jquery.hoveraccordion.min.js', disposition:'head'
	}
}