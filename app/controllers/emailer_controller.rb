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
      redirect_to params[:return_addr]
  end

  def submit_flag
      recipient = 'danieljchoi92@gmail.com'
      subject = 'myPower Energy Use Anomaly Reported'
      message = "A user has submitted an energy use anomaly flag for building: "+Hall.find_by_id(Integer(params[:id])).name
      Emailer.contact(recipient, subject, message).deliver
      flash[:success] = "Successfully sent"

      redirect_to :back
  end
end
