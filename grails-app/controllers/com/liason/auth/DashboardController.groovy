package com.liason.auth

import grails.plugin.springsecurity.annotation.Secured

import com.liason.product.Product


@Secured("permitAll")
class DashboardController
{
	def index(){
		log.debug"params for index action : "+params
	}
	
	def contactus(){
		log.debug"params for contactus action : "+params
	}
	
	def showSingleProduct(){
		log.debug"params for showSingleProduct action : "+params
		long productId=params.long("productId", 1)
		render template:'productdetail', model:[product : Product.get(productId)]
	}
	
	def productImageTemplate(){
		log.debug"params for showSingleProduct action : "+params
		long productId=params.long("productId", 1)
		render "<img src=\"#\" width=\"200\" height=\"300\">"
	}
	
	def product(){
		log.debug"params for product action : "+params
	}
	
	def register(){
		log.debug"params for register action : "+params
	}
	def signin(){
		log.debug"params for signin action : "+params
	}
}