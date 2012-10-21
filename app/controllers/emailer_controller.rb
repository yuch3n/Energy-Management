class EmailerController < ApplicationController
  layout 'mobile'
  include ActionView::Helpers::TextHelper
   include ActionView::Helpers::UrlHelper
   include ApplicationHelper


  def submit_feedback
      recipient = 'danieljchoi92@gmail.com'
      subject = 'myPower Feedback'
      message = params[:message]
    Emailer.contact(recipient, subject, message).deliver
    flash[:notice] = "Feedback has been submitted."
    redirect_to "/"
  end
end