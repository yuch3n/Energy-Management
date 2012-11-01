class EmailerController < ApplicationController
  layout 'mobile'
  include ActionView::Helpers::TextHelper
   include ActionView::Helpers::UrlHelper
   include ApplicationHelper


  def submit_feedback
      recipient = 'danieljchoi92@gmail.com'
      subject = 'myPower Feedback'
      message = params[:message]
      if not message.empty? 
        Emailer.contact(recipient, subject, message).deliver
        flash[:success] = "Successfully sent"
      else
        flash[:error] = "Submission failed: empty form"
      end
      redirect_to "/halls"
  end
end
