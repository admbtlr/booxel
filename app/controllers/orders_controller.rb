class OrdersController < ApplicationController
  before_action :authorize_customer

  # GET /orders
  # GET /orders.json
  def index
    @orders = Order.find
  end

  # GET /orders/1
  # GET /orders/1.json
  def show
  end

  # GET /orders/new
  def new
    @book = Book.find_by_id(params[:book_id])
    @customer = Customer.find_by_id(session[:customer_id])
    @order = Order.new
    create
  end

  # GET /orders/1/edit
  def edit
  end

  # POST /orders
  # POST /orders.json
  def create
    @order = Order.new(order_params)
    OrderNotifier.received(@order).deliver

    respond_to do |format|
      if @order.save
        format.html { render action: 'show' }
        format.json { render action: 'show', status: :created, location: @order }
      else
        format.html { render action: 'new' }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end

    if @order.customer.has_kindle
      Job.new.send_mobi_to_kindle(@order)
      # mobi_file = @order.get_watermarked_mobi_file
      # OrderFulfiller.send_to_kindle(@order, mobi_file).deliver
    end
  end

  # GET /orders/1/fulfil
  # raises RecordNotFound if the order doesn't belong to the logged in customer
  def fulfil
    @order = current_customer.orders.find(params[:id])
    epub_stream = @order.get_watermarked_epub_stream
    # mobi_file = @order.get_watermarked_mobi_file
    if @order.customer.has_kindle
      send_data epub_stream, :type=>"application/epub+zip", :disposition=>'attachment', :filename => @order.book.title+'.epub'
      # send_data mobi_file, :type=>"application/x-mobipocket-ebook", :disposition=>'attachment', :filename => @order.book.title+'.mobi'
    end
  end

  # PATCH/PUT /orders/1
  # PATCH/PUT /orders/1.json
  def update
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to @order, notice: 'Order was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to orders_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      order_params = params.permit(:customer_id, :book_id)
      if order_params['customer_id'] == nil
        order_params[:customer_id] = session[:customer_id]
      end
      return order_params
    end

end
