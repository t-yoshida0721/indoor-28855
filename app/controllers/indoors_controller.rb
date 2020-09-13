class IndoorsController < ApplicationController
  before_action :set_item, only: [:edit, :show, :update, :destroy]
  before_action :authenticate_user! , except: [:index,:show]
  
  def index  
    @indoors = Indoor.all
  end

  def new
    @indoors = Indoor.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
     redirect_to root_path
    else
     render :new
    end
    @items = Item.all
  end

  def destroy
    if @item.destroy
    redirect_to root_path
    else
    render :edit
    end
  end 

  

  def update
   if @item.update(item_params)
    redirect_to item_path
    else
    render :edit
    end
  end

  # def show
  #    if @item.bid != nil
  #     @Item = Bid.find (params[:id])
  #    end
  # end

  private

  def set_item
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit( :image, :product_name, :product_description, :product_category_id, :product_status_id, :burden_id, :area_id, :days_id, :selling_prise, :item_id).merge(user_id: current_user.id)
  end

  

end
