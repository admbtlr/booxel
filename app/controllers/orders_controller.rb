class OrdersController < ApplicationController
  before_action :authorize_customer
  # skip_before_action :authorize, only: [:new, :create]
  # before_action :set_cart, only: [:new, :create]
  # before_action :set_order, only: [:show, :edit, :update, :destroy]

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
    # @customer = Customer.find_by_id(@order[:customer_id])
    # @book = Book.find_by_id(@order[:book_id])

    # item_list = ''
    # epub.manifest.items.each do |item|
    #   item_list += item.href
    # end
    # logger.info(item_list)
    # logger.info(items['title.xhtml'].content)

    respond_to do |format|
      if @order.save
        format.html { render action: 'show' }
        format.json { render action: 'show', status: :created, location: @order }
      else
        format.html { render action: 'new' }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # GET /orders/1/fulfil
  def fulfil
    @order = Order.find_by_id(params[:id])
    logger.info(@order.book.inspect)
    # book = Book.find_by_id(order[:book_id])
    # customer = Customer.find_by_id(order[:customer_id])

    if Customer.find_by_id(session[:customer_id]) != @order.customer
      respond_to do |format|
        format.html { redirect_to store_url }
        format.json { head :no_content }
      end
    end

    epub = @order.book.getEpub
    items = epub.manifest.items
    title = items['title.xhtml']
    content = title.content
    pieces = content.split('</body>')
    content = pieces[0] + '<h3 class="centered">Purchased by '+@order.customer.name+'</h3></body>' + pieces[1]
    title.add_raw_content(content)
    send_data epub.generate_epub_stream.string.bytes.to_a.pack("C*"), :type=>"application/epub+zip", :disposition=>'attachment', :filename => @order.book.title+'.epub'
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
