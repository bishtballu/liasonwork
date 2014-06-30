package com.liason.product

class ProductSpecTable
{
	int numberOfCol
	int numberOfRows
	String tableData
	
	static belongsTo=Product
	
    static constraints = {
		tableData(blank:false)
    }
	
	static mapping={
		tableData type : 'text'
	}
}