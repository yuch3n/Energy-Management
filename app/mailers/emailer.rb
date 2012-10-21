class Emailer < ActionMailer::Base
  def contact(recipient, subject, message)
      @subject = subject
      @recipients = recipient
      @message = message
      @from = 'myPowerBerkeley@gmail.com'
      @sent_on = Time.now
      @headers = {}
   end
end
