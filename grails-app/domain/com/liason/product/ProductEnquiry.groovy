package com.liason.product

class ProductEnquiry
{
	String firstname
	String lastname
	String mobileNumber
	String emailId
	String enquiryDesription
	String addressLine1
	String addressLine2
	String websiteUrl
	String state
	String city
	String zipCode
	String country
	boolean isMailSent
	
    static constraints = {
		emailId email:true
		websiteUrl nullable:true,blank:true
		country nullable:true,blank:true
    }
	
	static mapping={
		enquiryDesription type : 'text'
	}
}