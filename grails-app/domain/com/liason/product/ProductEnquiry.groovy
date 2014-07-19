package com.liason.product

class ProductEnquiry
{
	String firstName
	String lastName
	String mobile
	String emailId
	String enquiryDesription
	String addressLine1
	String addressLine2
	String state
	String city
	String zipCode
	String country
	boolean isMailSent
	
    static constraints = {
		emailId email:true
    }
	
	static mapping={
		enquiryDesription type : 'text'
	}
}