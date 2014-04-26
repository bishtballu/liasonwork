package com.liason.product

class Product
{
	String name
	Image image
	ProductCategory category
	Set tables
	static hasmany = [tables:ProductSpecTable]

    static constraints = {
		name(blank:false)
    }
}