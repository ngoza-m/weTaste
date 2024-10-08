class RecommendationsController < ApplicationController
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @recommendation = Recommendation.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @recommendation = Recommendation.new(recommendation_params)
    @recommendation.tag_list.add(params[:recommendation][:tag_list], parse: true)
    
    @recommendation.restaurant = @restaurant
    @recommendation.user = current_user


    if @recommendation.save
      redirect_to restaurant_path(@restaurant)
    else
      render "restaurants/show"
    end
  end

  def edit
    @recommendation = Recommendation.find(params[:id])
  end

  def update
    @recommendation = Recommendation.find(params[:id])
    @recommendation.update(recommendation_params)
    redirect_to restaurant_path(@recommendation.restaurant)
  end

  def destroy
    @recommendation = Recommendation.find(params[:id])
    @recommendation.destroy
    redirect_to restaurant_path(@recommendation.restaurant)
  end

  def index
    @restaurant = Restaurant.find(params[:restaurant_id])
    @recommendations = @restaurant.recommendations
  end

  private

  def recommendation_params
    params.require(:recommendation).permit(:content, :body, :tag_list, photos: [])
  end
end
