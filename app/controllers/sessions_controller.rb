class SessionsController < ApplicationController

  def new
  end

  def create
      user = User.find_by(name: params[:user][:name])
      authenticated = user.try(:authenticate, params[:user][:password])
      return redirect_to login_path unless authenticated
      session[:user_id] = user.id
      @user = user
  end

  def destroy
    session.delete :user_id
    redirect_to '/'
  end

end
