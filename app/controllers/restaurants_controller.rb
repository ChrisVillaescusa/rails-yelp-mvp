class RestaurantsController < ApplicationController

  # before_action :
  before_action :find_restaurant, only: [ :show, :update, :edit, :destroy]


  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @reviews = @restaurant.reviews.all
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  def new
    @restaurant = Restaurant.new
  end

  def update
    @restaurant.update(restaurant_params)
  end

  def destroy
    @restaurant.destroy
  end

  def edit

    redirect_to
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone, :category)
  end


  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
