package com.liason.product

class ProductSpecTable
{
	int numberOfCol
	int numberOfRows
	String tableData
	static belongsTo = [product:Product]
	
    static constraints = {
		tableData(blank:false)
    }
}