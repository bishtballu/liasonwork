import com.liason.auth.InitAdminService

class BootStrap
{
	InitAdminService initAdminService
	
    def init = { servletContext ->
		initAdminService.createAdmin()
    }
    def destroy = {
    }
}