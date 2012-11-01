class FeedbackController < ApplicationController
	layout 'mobile'
  def submit_form
  	@return_to = params[:return_to]
  end
end