package com.liason.product

import grails.transaction.Transactional


@Transactional
class SendMailForEnquiryService
{
	def grailsApplication
	def mailService
	
	public void sendMailForEnquiry()
	{
		String emailId=grailsApplication.config.adminEmail
		ArrayList enquiries=ProductEnquiry.findAllByIsMailSent(false)
		for(ProductEnquiry enquiry: enquiries)
			sendMail(emailId,enquiry)
	}
	
	private void sendMail(String emailId, ProductEnquiry enquiry)
	{
		enquiry.isMailSent=true
		enquiry.save(true)
		mailService.sendMail {
			to emailId
			subject "Enquiry created for new Product"
			body """A new enquiry has been created with following details :

				firstname 		: ${enquiry.firstname}
				lastname 		: ${enquiry.lastname}
				mobileNumber 	: ${enquiry.mobileNumber}
				emailId 		: ${enquiry.emailId}
				enquiryDesription : ${enquiry.enquiryDesription}
				addressLine1 	: ${enquiry.addressLine1}
				addressLine2 	: ${enquiry.addressLine2}
				websiteUrl 		: ${enquiry.websiteUrl}
				state 			: ${enquiry.state}
				city 			: ${enquiry.city}
				zipCode 		: ${enquiry.zipCode}
				country 		: ${enquiry.country}

			Thanks
				"""
		}
		log.debug"mail sent for user with mail : "+enquiry.emailId
	}
}