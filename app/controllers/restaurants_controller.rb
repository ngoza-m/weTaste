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

end
