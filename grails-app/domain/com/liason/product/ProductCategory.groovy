package com.liason.product

class ProductCategory
{
	String name
	
    static constraints = {
		name(blank:false)
    }
}