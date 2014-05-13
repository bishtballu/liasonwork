package com.liason.product

class Product
{
	String name
	Image image
	String description
	ProductCategory category
	static hasMany = [productSpecTables:ProductSpecTable]

    static constraints = {
		name(blank:false)
		description(blank:false)
		image(nullable:true)
    }
	
	static mapping={
		description type : 'text'
	}
}