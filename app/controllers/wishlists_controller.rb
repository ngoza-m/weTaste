class WishlistsController < ApplicationController
  before_action :set_restaurant

  def create
    @wishlist = Wishlist.new
    @wishlist.user = current_user
    @wishlist.restaurant = Restaurant.find(params[:restaurant_id])
    if @wishlist.save
      redirect_to wishlist_path
    else
      render "restaurants/show"
    end
  end

  
  def destroy
    @wishlist = @restaurant.wishlists.find_by(user: current_user)
    if @wishlist
      @wishlist.destroy
      flash[:notice] = "Restaurant removed from wishlist."
    else
      flash[:alert] = "Restaurant not found in wishlist."
    end
    redirect_to wishlist_path
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  rescue ActiveRecord::RecordNotFound
    flash[:alert] = "Restaurant not found."
    redirect_to restaurants_path
  end
end
