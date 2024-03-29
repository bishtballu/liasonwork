package com.liason.auth

import grails.plugin.springsecurity.annotation.Secured

import com.liason.product.Image
import com.liason.product.Product
import com.liason.product.ProductCategory
import com.liason.product.ProductEnquiry


@Secured("permitAll")
class DashboardController
{
	def index(){}
	
	def contactus(){}
	
	def showSingleProduct(){
		log.debug"params for showSingleProduct action : "+params
		long productId=params.long("productId", 1)
		Product product=Product.get(productId)
		ArrayList tableDataList=[]
		if( product.productSpecTables.size()!=0 )
			tableDataList=product.productSpecTables[0].tableData.split("\\|\\|")
		render template:'productdetail', model:[product : product, tableDataList:tableDataList]
	}
	
	def productImageTemplate(){
		log.debug"params for productImageTemplate action : "+params
		long productId=params.long("productId", 1)
		Image image=Product.get(productId).image
		if(image)
			render "<img src=\"${createLink(controller: 'dashboard', action: 'showImage' , params:[filename:image.name] )}\" width=\"200\" height=\"300\">"
		else render ""
	}
	
	def showImage(){
		String filePath=grailsApplication.config.productImagePath
		String filename=params.filename
		File file = new File(filePath+filename)
		def img = file.bytes
		response.contentType = 'image/png' // or the appropriate image content type
		response.outputStream << img
		response.outputStream.flush()
	}
	
	def product(){
		log.debug"params for product action : "+params
		ArrayList categoryList=ProductCategory.list()
		ArrayList parentProductList=new ArrayList()
		categoryList.each {
			parentProductList.add( Product.findAllWhere(category:it, isDeleted:false) )
		}
		log.debug"parentProductList : "+parentProductList
		String isEnquirySaved=session.getAttribute("isEnquirySaved")
		session.setAttribute("isEnquirySaved",null)
		[parentProductList:parentProductList, categoryList:categoryList, isEnquirySaved:isEnquirySaved]
	}
	
	def register(){}
	
	def signin(){}
	
	def services(){}
	
	def enquiry(){
		log.debug"params for enquiry action : "+params
		String isEnquirySaved=session.getAttribute("isEnquirySaved")
		session.setAttribute("isEnquirySaved", null)
		[isEnquirySaved:isEnquirySaved]
	}
	
	def submitEnquiry(){
		log.debug"params for submitEnquiry action : "+params
		session.setAttribute("isEnquirySaved", "true")
		ProductEnquiry enquiry=new ProductEnquiry(params)
		if(!enquiry.save())
		{
			enquiry.errors.each {log.debug"error occured while saving enquiry : "+it}
			session.setAttribute("isEnquirySaved", "false")
			redirect(action:'enquiry')
		}
		else
			redirect(action:'product')
	}
	
	def aboutus(){
		
	}
	
	def deleteProduct(){
		log.debug"params for action deleteProduct : "+params
		long productId=params.long("productId", 0)
		if(productId!=0)
		{
			Product product=Product.get(productId)
			if(product!=null)
			{
				product.isDeleted=true
				product.save()
				log.debug"product with id:${productId} deleted"
			}
		}
		redirect (action:'product', controller:'dashboard')
	}
}