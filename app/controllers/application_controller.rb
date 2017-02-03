class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session
  before_filter :check_access_token

  def check_access_token
    api_key = ApiKey.find_by_access_token(params[:access_token])
    head :unauthorized unless api_key
  end
end
