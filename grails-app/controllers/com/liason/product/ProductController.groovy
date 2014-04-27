package com.liason.product

import grails.plugin.springsecurity.annotation.Secured

@Secured(['IS_AUTHENTICATED_REMEMBERED'])
class ProductController
{
	def addproduct(){
		ArrayList categoryList=ProductCategory.list()
		[categoryList:categoryList]
	}
	
	def saveNewProduct(){
		log.debug"params for saveNewProduct : "+params
		redirect(controller: "product", action: "addproduct")
	}
	
	def productCategory(){
		ProductCategory category=new ProductCategory(name:'heavy machine')
		if( !category.save() ){
			category.errors.each{ log.debug"error occured while saving productCategory : "+it }
			render "error occured"
		}
		else render "category saved"
	}
}