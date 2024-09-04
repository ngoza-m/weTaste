class RestaurantsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    if params[:query].present?
      @restaurants = Restaurant.search_by_location(params[:query])
    else
      @restaurants = Restaurant.all
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @wishlist = Wishlist.new

    @user_wishlists = current_user.wishlists
    @user_restaurant_wishlist = @user_wishlists.find_by(restaurant_id: @restaurant.id)

    @recommendation = Recommendation.new
    @recommendations = @restaurant.recommendations
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurants_path, message: 'Restaurant was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def nearby
    @location = current_user.location.capitalize
    @restaurants = Restaurant.where(city: @location)

    @markers = @restaurants.geocoded.map do |restaurant|
      {
        lat: restaurant.latitude,
        lng: restaurant.longitude
      }
    end
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :website)
  end
end
