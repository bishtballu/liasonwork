package com.liason.auth

import grails.transaction.Transactional


@Transactional
class InitAdminService
{
	void createAdmin()
	{
		if(Role.list().size()==0)
		{
			String adminUsername='superadmin'
			String adminPassword='superadmin'
			String adminEmailId='liason@gmail.com'
			Role adminRole=new Role(authority:Role.ROLE_ADMIN).save(flush:true)
			Role userRole=new Role(authority:Role.ROLE_USER).save(flush:true)
			User user=new User(emailId:adminEmailId, username:adminUsername, password:adminPassword)
			if( user.save(flush:true) )
				UserRole.create user, adminRole, true
			else
				user.errors.each {log.debug "error occured while saving user:"+it}
		}
	}
}