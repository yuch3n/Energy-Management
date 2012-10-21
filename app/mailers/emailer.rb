class Emailer < ActionMailer::Base
  def contact(recipient, subject, message)
      @subject = subject
      @recipients = recipient
      @from = 'myPowerBerkeley@gmail.com'
      @sent_on = Time.now
	  	@body["title"] = 'myPower Feedback'
  	 	@body["email"] = 'myPowerBerkeley@gmail.com'
   	  	@body["message"] = message
      	@headers = {}
   end
end
