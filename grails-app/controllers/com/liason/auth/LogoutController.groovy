package com.liason.auth


class LogoutController extends grails.plugin.springsecurity.LogoutController
{
	/**
	 * Index action. Redirects to the Spring security logout uri.
	 */
	/*def index() {

		if (!request.post && SpringSecurityUtils.getSecurityConfig().logout.postOnly) {
			response.sendError HttpServletResponse.SC_METHOD_NOT_ALLOWED // 405
			return
		}

		println "B"
		session.invalidate()
		// TODO put any pre-logout code here
		redirect uri: SpringSecurityUtils.securityConfig.logout.afterLogoutUrl // '/j_spring_security_logout'
	}*/
}