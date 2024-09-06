class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @restaurants = Restaurant.all
    @categories = [
      { emoji: '🥐', title: 'Breakfast', link: '/' },
      { emoji: '🍴', title: 'Fine Dining', link: '/' },
      { emoji: '🥦', title: 'Vegetarian', link: '/' },
      { emoji: '🥗', title: 'Lunch', link: '/' },
      { emoji: '🍕', title: 'Quick Bites', link: '/' },
      { emoji: '🍰', title: 'Dessert', link: '/' },
      { emoji: '🍸', title: 'Bar', link: '/' },
      { emoji: '🍔', title: 'Casual', link: '/' },
      { emoji: '🍝', title: 'Italian', link: '/' },
      { emoji: '🥖', title: 'French', link: '/' },
      { emoji: '🧀', title: 'Gourmet', link: '/' },
      { emoji: '🍽️', title: 'Dinner', link: '/' }
    ]
  
  end

  def profile
    @user = current_user
  end

  def wishlist
    @wishlisted_restaurants = current_user.wishlists
  end

  def city_search
    if params[:query].present?
      @restaurants = Restaurant.search_by_location(params[:query])
    end
  end

  def recommendationsbycity
    @recs = current_user.recommendations
    @sorted_recs = @recs.group_by{ |rec| rec.restaurant.city }
    @sorted_recs_by_city = @sorted_recs[params[:city]]
  end

  def restaurants_by_category 
    @restaurants = Restaurant.all
    @category = params[:category]
    @restaurants_by_category = @restaurants.select { |restaurant| restaurant.category == @category }
  end
end
