package com.liason.product

import grails.plugin.springsecurity.annotation.Secured

@Secured("permitAll")
class ProductController
{
	def createNewProduct(){
		Product product=new Product(name:'my laithe machine', image:Image.get(1) , category:ProductCategory.get(1) )
		if( !product.save() ){
			product.errors.each{ log.debug"error occured while saving product : "+it }
			render "error occured"
		}
		else render "product saved"
	}
	
	def createImage(){
		Image image=new Image(name:'myname.png', url:'myname.png')
		if( !image.save() ){
			image.errors.each{ log.debug"error occured while saving image: "+it }
			render "error occured"
		}
		else render "image saved"
	}
	
	def createProductSpecTable(){
		
	}
	
	def productCategory(){
		ProductCategory category=new ProductCategory(name:'laith machine')
		if( !category.save() ){
			category.errors.each{ log.debug"error occured while saving productCategory : "+it }
			render "error occured"
		}
		else render "category saved"
	}
}