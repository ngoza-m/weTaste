class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @restaurants = Restaurant.all
    @categories = [
      { emoji: '🥞', title: 'BREAKFAST', link: '/' },
      { emoji: '🥞', title: 'LUNCH', link: '/' },
      { emoji: '🥞', title: 'DINNER', link: '/' },
      { emoji: '🥞', title: 'DINNER', link: '/' },
      { emoji: '🥞', title: 'DINNER', link: '/' },
      { emoji: '🥞', title: 'DINNER', link: '/' },
      { emoji: '🥞', title: 'DINNER', link: '/' },
      { emoji: '🥞', title: 'DINNER', link: '/' },
      { emoji: '🥞', title: 'DINNER', link: '/' },
      { emoji: '🥞', title: 'DINNER', link: '/' },
      { emoji: '🥞', title: 'DINNER', link: '/' },
      { emoji: '🥞', title: 'DINNER', link: '/' }
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
end
