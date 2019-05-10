class SecretsController < ApplicationController
    before_action :require_login
#    skip_before_action :require_login, only: [:show]

  def show
    if !session[:name]
      redirect_to login_path
    else
      render :show
    end
  end

  private
  def require_login
    return head(:forbidden) unless session.include? :name
  end

end
