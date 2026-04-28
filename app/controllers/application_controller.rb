class ApplicationController < ActionController::Base
  before_action :authorize
  before_action :set_i18n_locale_from_params

  protected

    def authorize
      unless User.find_by(id: session[:user_id])
        redirect_to login_url, notice: "Please log in"
      end  
    end

    def set_i18n_locale_from_params
      if params[:set_locale]
        if I18n.available_locales.map(&:to_s).include?(params[:set_locale])
          session[:locale] = params[:set_locale]
        else
          flash.now[:notice] = "#{params[:set_locale]} translation not available"
          logger.error flash.now[:notice]
        end
      end

      I18n.locale = session[:locale] || I18n.default_locale
    end 
end
