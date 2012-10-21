class EmailerController < ApplicationController
  layout 'mobile'

  def submit_feedback
      recipient = 'danieljchoi92@gmail.com'
      subject = 'myPower Feedback'
      message = params[:message]
    Emailer.contact(recipient, subject, message).deliver
    redirect_to (:back)
  end
end