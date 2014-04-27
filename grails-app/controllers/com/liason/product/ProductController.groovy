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
		Product product=new Product(description:params.productDesc, category: ProductCategory.get(params.int("categoryName")) , name:params.productName)
		if( !product.save() )
			product.errors.each{ log.debug"error occured while saving product : "+it }
		else
			saveTable(product, params.int("row"), params.int("column"), params.tableData)
		redirect(controller: "product", action: "addproduct")
	}
	
	private void saveTable(Product product, int row, int col, String tableData)
	{
		if(tableData != "")
		{
			ProductSpecTable productSpecTable=new ProductSpecTable(numberOfCol:col, numberOfRows:row, tableData:tableData, product:product)
			if( !productSpecTable.save() )
				productSpecTable.errors.each{ log.debug"error occured while saving productSpecTable : "+it }
		}
	}
}