class RestaurantsController < ApplicationController
  
 skip_before_action :authenticate_user!, only: [:index, :show]

  def index
      @restaurants = Restaurant.all
  end

  def show
      @restaurant = Restaurant.find(params[:id])
      @wishlist = Wishlist.new
      @recommendation = Recommendation.new
      @recommendations = @restaurant.recommendations
  end

  def new
    @restaurant = Restaurant.new
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurants_path, message: 'Restaurant was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :website)
  end



end
