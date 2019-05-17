class ReviewsController < ApplicationController
  before_action :require_login
  before_action :find_user, only: [:index, :show]
  before_action :set_user, except: [:index, :show]
  before_action :find_restaurant, only: [:new, :create]
  before_action :set_review, only: [:show, :edit, :update, :destroy]

  def index
    @reviews = @user.reviews.all
  end

  def show
    if current_user != find_user || set_review.user_id != current_user.id
      redirect_to user_reviews_path(@user)
    end
    respond_to do |f|
      f.html {render :index}
      f.json {render json: @review}
    end
  end

  def new
    @review = Review.new
  end

  def create
    @review = @user.reviews.build(review_params) ## new does not retain the object in memory like build., If you're creating an object through an association, build should be preferred over new as build keeps your in-memory object
    if @review.save
      redirect_to user_reviews_path(@user)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @review.update(review_params)
      redirect_to user_reviews_path(@user)
    else
      render :edit
    end
  end

  def destroy
    @review.destroy
    redirect_to user_reviews_path(@user)
  end

  private

  def review_params
    params.require(:review).permit(:user_id, :restaurant_id, :rating, :comment)
  end

end
