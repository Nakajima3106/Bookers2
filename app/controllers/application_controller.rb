class ApplicationController < ActionController::Base
  
  
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  protected
  def configure_permitted_parameters
    # ユーザ登録時にユーザ名(name) の操作を許可する
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email])
    # ログイン時にユーザ名(name) の操作を許可する
    devise_parameter_sanitizer.permit(:sign_in, keys: [:name])
  end
end