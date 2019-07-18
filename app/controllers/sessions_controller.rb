class SessionsController < ApplicationController
  def new
    # nothing to do here!
  end

  def create
    #raise params.inspect
    if params[:name] == nil || params[:name] == ""
      redirect_to login_path
    else
      session[:name] = params[:name]
      redirect_to root_path
    end
  end

  def destroy
    session.delete :name
    redirect_to controller: "application", action: "hello"
  end
end
