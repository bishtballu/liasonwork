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
		ProductSpecTable productSpecTable=saveTable( params.int("row"), params.int("column"), params.tableData)
		Product product=new Product(description:params.productDesc, category: ProductCategory.get(params.int("categoryName")) , name:params.productName)
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
}