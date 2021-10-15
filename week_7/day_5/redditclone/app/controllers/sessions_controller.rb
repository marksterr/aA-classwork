class SessionsController < ApplicationController
  before_action :require_signed_in!, only: [:destroy] 

  def new
    render :new
  end

  def create

  end

  def destroy
    log_out_user! 
    redirect_to new_session_url
  end
end
