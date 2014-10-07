class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :auth, if: -> { Rails.env.production? }

  private
  def auth
    authenticate_or_request_with_http_basic do |user,pass|
      user == ENV["BASIC_USER"] && pass == ENV["BASIC_PASSWORD"]
    end
  end
end
