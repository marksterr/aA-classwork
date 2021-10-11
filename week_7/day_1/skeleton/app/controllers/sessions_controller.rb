class SessionsController < ApplicationController
  
  def new
    render :new
  end

  def create
    @user = User.find_by_credentials(params[:user][:username], params[:user][:password])
    if @user.save
      sign_in(@user)
      redirect_to users_url
    else
      render json: ['Invalid Username or Password']
      render :new
    end
  end

  def destroy
  end

end
