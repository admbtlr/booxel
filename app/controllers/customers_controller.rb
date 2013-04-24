class CustomersController < ApplicationController
  before_action :set_customer, only: [:show, :edit, :update, :destroy]

  # GET /customers
  # GET /customers.json
  def index
    @customers = Customer.all
  end

  # GET /customers/1
  # GET /customers/1.json
  def show
  end

  # GET /customers/new
  def new
    @customer = Customer.new
  end

  # GET /customers/1/edit
  def edit
  end

  # POST /customers
  # POST /customers.json
  def create
    remove_empty_password_fields
    merge_device_type
    @customer = Customer.new(customer_params)
    result = @customer.save

    if result
      session[:customer_id] = @customer.id
    end

    respond_to do |format|
      if result
        redirect_url = session[:return_to] || @customer
        format.html { redirect_to redirect_url, notice: 'Customer was successfully created.' }
        format.json { render action: 'show', status: :created, location: @customer }
      else
        format.html { render action: 'new' }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customers/1
  # PATCH/PUT /customers/1.json
  def update
    remove_empty_password_fields
    merge_device_type
    respond_to do |format|
      if @customer.update(customer_params)
        format.html { redirect_to @customer, notice: 'Customer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customers/1
  # DELETE /customers/1.json
  def destroy
    @customer.destroy
    respond_to do |format|
      format.html { redirect_to customers_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer
      @customer = Customer.find(params[:id])
    end

    def remove_empty_password_fields
      # has_secure_password has validations => false, which means that if password is blank it does nothing
      # in which case, remove the empty fields
      if params[:customer][:password_digest] == nil
        params[:customer].delete :password
        params[:customer].delete :password_confirmation
      end
    end

    def merge_device_type
      params[:customer][:device_type] = params[:customer][:device_type].join(',')
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def customer_params
      params.require(:customer).permit(:name, :email, :password, :password_confirmation, :device_type, :kindle_email, :cc_number, :cc_exp_date, :cc_cvc, :save_cc_details)
    end
end
