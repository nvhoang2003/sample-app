class SessionController < ApplicationController
  
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      # log_in user
      # current_user
      # redirect_to users
      render :create
    else
      # flash.now[:danger] = 'Invalid email/password combination'
      # render 'new'
      head("Invalid")
    end
  end

    def destroy
      reset_session
      @current_user = nil?
      redirect_to root_url
    end
    
end
