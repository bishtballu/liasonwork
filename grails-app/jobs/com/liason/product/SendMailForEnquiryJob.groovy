package com.liason.product

class SendMailForEnquiryJob
{
	SendMailForEnquiryService sendMailForEnquiryService
	
    static triggers = {
      simple name: 'sendMailForEnquiry', startDelay: 60000, repeatInterval: 300000
    }

    def execute(){
		sendMailForEnquiryService.sendMailForEnquiry()
    }
}