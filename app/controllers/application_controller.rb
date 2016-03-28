class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter do
    case params[:af2016]
    when "false"
      session[:af_disable] = true
    when "true"
      session[:af_disable] = nil
    end
    Thread.current[:session] = session
  end
end
