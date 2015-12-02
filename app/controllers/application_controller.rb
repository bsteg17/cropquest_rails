class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  protected
  def authenticate_user!(opts={}) 
    opts[:scope] = :user
    warden.authenticate!(opts) if !devise_controller? || opts.delete(:force)
  end

end
