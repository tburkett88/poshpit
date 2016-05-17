class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
  end

  def add
      @email = Email.new
      @email.email=params[:email]
      @email.save
    redirect_to("/index.html")
  end

end
