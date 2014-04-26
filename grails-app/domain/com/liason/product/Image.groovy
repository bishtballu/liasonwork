package com.liason.product

class Image
{
	String name
	int width
	int height
	String url
	
    static constraints = {
		name(blank:false)
		url(blank:false)
    }
	
	static mapping = {
		width defaultValue : 200
		height defaultValue : 300
	}
}