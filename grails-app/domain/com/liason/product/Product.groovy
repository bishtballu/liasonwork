package com.liason.product

class Product
{
	String name
	Image image
	String description
	ProductCategory category
	Set productTables=[]
	static hasmany = [productTables:ProductSpecTable]

    static constraints = {
		name(blank:false)
		description(blank:false)
		image(nullable:true)
    }
}