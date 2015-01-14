class PurchasesController < ApplicationController
  before_action :set_purchase, only: [:show, :edit, :update, :destroy, :finished]

  # GET /purchases
  # GET /purchases.json
  def index
    @purchases = Purchase.all
  end

  # GET /purchases/1
  # GET /purchases/1.json
  def show
    @purchase.update(
        total: @purchase.items.inject(0) do |sum, item|
          sum + (item.price*item.quantity)
        end
    )
  end

  # GET /purchases/new
  def new
    @purchase = Purchase.new
  end

  # GET /purchases/1/edit
  def edit
  end

  # POST /purchases
  # POST /purchases.json
  def create
    @purchase = Purchase.new(purchase_params)

    respond_to do |format|
      if @purchase.save
        format.html { redirect_to @purchase, notice: 'Purchase was successfully created.' }
        format.json { render :show, status: :created, location: @purchase }
      else
        format.html { render :new }
        format.json { render json: @purchase.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /purchases/1
  # PATCH/PUT /purchases/1.json
  def update
    respond_to do |format|
      if @purchase.update(purchase_params)
        format.html { redirect_to @purchase, notice: 'Purchase was successfully updated.' }
        format.json { render :show, status: :ok, location: @purchase }
      else
        format.html { render :edit }
        format.json { render json: @purchase.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /purchases/1
  # DELETE /purchases/1.json
  def destroy
    @purchase.destroy
    respond_to do |format|
      format.html { redirect_to purchases_url, notice: 'Purchase was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def add_item
    @purchase = Purchase.find(params[:purchase_id])
    @item = Item.find(params[:item_id])
    
    unless @purchase.items.include? @item
      @purchase.items << @item
    end
    render action: 'show'
  end
  
  def delete_item
    @purchase = Purchase.find(params[:purchase_id])
    @item = @purchase.items.find(params[:id])
    
    #Deletando jogador da equipe
    if @item
        @purchase.items.delete(@item)
    end
    render action: 'show'
  end
  
    
  def finished
    @purchase.items.each do |item|
      @stock = Stock.where(item_id: Item.joins(:stocks).where(product:item.product).take).take
      if @stock.nil?
        Stock.create!(
            :item_id => item.id,
            :supplier_id => @purchase.supplier_id,
            :quantity => item.quantity,
            :sale_price => item.price * 1.3
        )
      else
        #@stock = Stock.where(item_id: @purchase_item).take
        @stock.update(
            :supplier_id => @purchase.supplier_id,
            :quantity => item.quantity + @stock.quantity,
            :sale_price => item.price * 1.3
        )
      end
    end
    redirect_to stocks_path
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_purchase
      @purchase = Purchase.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def purchase_params
      params.require(:purchase).permit(:total,:supplier_id)
    end
end
