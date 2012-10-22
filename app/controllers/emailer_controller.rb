class EmailerController < ApplicationController
  layout 'mobile'
  include ActionView::Helpers::TextHelper
   include ActionView::Helpers::UrlHelper
   include ApplicationHelper


  def submit_feedback
      recipient = 'danieljchoi92@gmail.com'
      subject = 'myPower Feedback'
      message = params[:message]
      flash[:notice] = "Submission failed: empty form"
      if not message.empty? 
        Emailer.contact(recipient, subject, message).deliver
        flash[:notice] = "Successfully sent"
      end
      redirect_to "/halls"
  end
end
