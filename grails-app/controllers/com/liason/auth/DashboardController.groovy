package com.liason.auth

import grails.plugin.springsecurity.annotation.Secured


@Secured("permitAll")
class DashboardController
{
	def index(){
		log.debug"params for index action : "+params
	}
	
	def contactus(){
		log.debug"params for contactus action : "+params
	}
	
	def productList(){
		log.debug"params for productList action : "+params
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