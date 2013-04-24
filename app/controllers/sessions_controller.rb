class SessionsController < ApplicationController
  skip_before_action :authorize
  
  def new
    @customer = Customer.new
  end

  def create
    user = User.find_by_name(params[:name])
    customer = Customer.find_by_name(params[:name])
    if user and user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to admin_url
    elsif customer and customer.authenticate(params[:password])
      session[:customer_id] = customer.id
      redirect_to store_url
    else
      redirect_to login_url, alert: 'Invalid user/password combination'
    end
  end

  def destroy
    session[:user_id] = nil
    session[:customer_id] = nil
    redirect_to store_url, notice: 'Logged out'
  end
end
