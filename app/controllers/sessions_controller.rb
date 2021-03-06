class SessionsController < ApplicationController
  def new
    render 'application/hello'
  end

  def create
    if params[:name] && !params[:name].empty?
      session[:name] = params[:name]
      redirect_to '/'
    else
      redirect_to '/'
    end
  end

  def destroy
    session[:name] = nil
    redirect_to login_path
  end
end
