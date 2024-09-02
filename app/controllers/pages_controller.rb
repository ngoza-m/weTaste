class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @restaurants = Restaurant.all
  end

  def profile
    @user = current_user
  end

  def wishlist
    @wishlisted_restaurants = current_user.restaurants
  end

  def city_search
    if params[:query].present?
      @restaurants = Restaurant.search_by_location(params[:query])
    end
  end
end
