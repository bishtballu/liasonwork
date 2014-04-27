package com.liason.auth

import grails.transaction.Transactional

import com.liason.product.ProductCategory


@Transactional
class InitAdminService
{
	void createAdmin()
	{
		createAllProductCategories()
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
	
	void createAllProductCategories()
	{
		if(ProductCategory.list().size() == 0)
		{
			productCategory("Lathe Machine")
			productCategory("Heavy Machine")
			productCategory("Light Machine")
		}
	}
	
	void productCategory(String productName)
	{
		ProductCategory category=new ProductCategory(name:productName)
		if( !category.save() )
			category.errors.each{ log.debug"error occured while saving productCategory : "+it }
	}
}