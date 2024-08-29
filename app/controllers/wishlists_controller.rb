class WishlistsController < ApplicationController
    def create
        @wishlist = Wishlist.new
        @wishlist.user = current_user
        @wishlist.restaurant = Restaurant.find(params[:restaurant_id])
        if @wishlist.save
            redirect_to restaurant_path(params[:restaurant_id])
        else
            render "restaurants/show"
        end
    end

    def show

    end

    def destroy
        @wishlist = Wishlist.find(params[:id])
        @wishlist.destroy
        redirect_to wishlist_path
    end
end
