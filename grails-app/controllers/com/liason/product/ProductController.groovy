package com.liason.product

import grails.plugin.springsecurity.annotation.Secured

import java.security.SecureRandom

@Secured(['IS_AUTHENTICATED_REMEMBERED'])
class ProductController
{
	def grailsApplication
	private String fileExtension=".png"
	
	def addproduct(){
		ArrayList categoryList=ProductCategory.list()
		[categoryList:categoryList]
	}
	
	def saveNewProduct(){
		log.debug"params for saveNewProduct : "+params
		Image image=uploadImage(params)
		ProductSpecTable productSpecTable=saveTable( params.int("row"), params.int("column"), params.tableData)
		Product product=new Product(description:params.productDesc, category: ProductCategory.get(params.int("categoryName")) , name:params.productName)
		if(image) product.image=image
		if(productSpecTable!=null)
			product.addToProductSpecTables(productSpecTable)
		if( !product.save() )
			product.errors.each{ log.debug"error occured while saving product : "+it }
		redirect(controller: "product", action: "addproduct")
	}
	
	private ProductSpecTable saveTable( int row, int col, String tableData)
	{
		ProductSpecTable productSpecTable=null
		if(tableData != "")
			productSpecTable=new ProductSpecTable(numberOfCol:col, numberOfRows:row, tableData:tableData)
		return productSpecTable
	}
	
	private Image uploadImage(Map paramList)
	{
		Image image=null
		if(paramList.productImage)
		{
			String fileName=newUniqueName()
			String fullPath=grailsApplication.config.productImagePath+fileName
			try{
				new FileOutputStream(fullPath).leftShift( paramList.productImage.getInputStream() )
				image=new Image(name:fileName, url:fileName)
				image.save()
			}
			catch(Exception e){log.debug"error occured while uploading image : "+e}
		}
		return image
	}
	
	private String newUniqueName()
	{
		SecureRandom random = new SecureRandom()
		BigInteger big=new BigInteger(130, random)
		String newUniqueName=big.toString(12)+fileExtension
		log.debug"newUniqueName for uploaded image : "+newUniqueName
		return newUniqueName
	}

	def addProductCategory(){
		String addCategoryMsg=session.getAttribute("addCategoryMsg")
		session.setAttribute("addCategoryMsg", null)
		if(addCategoryMsg==null)
			addCategoryMsg=""
		[addCategoryMsg:addCategoryMsg]
	}
	
	def addCategory(){
		log.debug"params for action addCategory : "+params
		ProductCategory category=new ProductCategory(name:params.categoryName)
		if( !category.save() )
		{
			category.errors.each {log.debug"error occured while adding new product category : "+it}
			session.setAttribute("addCategoryMsg", "${params.categoryName} category name already exists")
		}
		else
			session.setAttribute("addCategoryMsg", "category saved successfully")
		redirect(action:'addProductCategory')
	}
}