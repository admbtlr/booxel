class ApplicationController < ActionController::Base
  # before_action :authorize

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  protected

    def current_customer
      Customer.find_by_id(session[:customer_id])
    end

    def authorize
      unless User.find_by_id(session[:user_id])
        redirect_to login_url, notice: 'Please log in'
      end
    end

    def authorize_customer
      customer = Customer.find_by_id(session[:customer_id])
      unless customer
        logger.info(request.url)
        session[:return_to] = request.url
        redirect_to login_url, notice: 'Please log in'
      end
    end
end
