class Emailer < ActionMailer::Base
  def contact(recipient, subject, message)
      @subject = subject
      @recipients = recipient
      @message = message
      @from = 'myPower-noreply@berkeley.edu'
      @sent_on = Time.now
      @headers = {}
   end
end
