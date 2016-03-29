class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?
  layout :layout?



  def after_sign_in_path_for(resource_or_scope)
      if resource_or_scope.is_a?(Admin)
           admin_dashboards_path
      end
  end

    def after_sign_up_path_for(resource_or_scope)
      after_sign_in_path_for(resource_or_scope)
    end




  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :username
  end

  private

  def layout?
    if current_admin
      return 'admin'
    end

  end

end
