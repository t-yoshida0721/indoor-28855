class IndoorsController < ApplicationController
  before_action :set_indoor, only: [:edit, :show, :update, :destroy]
  before_action :authenticate_user! , except: [:index,:show]
  
  def index  
    @indoors = Indoor.all
  end

  def new
    @indoor = Indoor.new
  end

  def create
    @indoor = Indoor.new(indoor_params)
    if @indoor.save
     redirect_to root_path
    else
     render :new
    end
    @indoors = Indoor.all
  end

  def destroy
    if @indoor.destroy
    redirect_to root_path
    else
    render :edit
    end
  end 

  

  def update
   if @indoor.update(indoor_params)
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

  def set_indoor
    @indoor = Indoor.find(params[:id])
  end

  def indoor_params
    params.require(:indoor).permit( :image, :indoor_name , :indoor_text, :indoor_id).merge(user_id: current_user.id)
  end

  

end
