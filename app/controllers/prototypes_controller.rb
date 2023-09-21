class PrototypesController < ApplicationController


  def index
    @prototypes = Prototype.all
  end

  def new
    @prototype = Prototype.new
  end

  def create
    Prototype.create(prototype_params)
    redirect_to '/'
  end

  def destroy
    prototype = Prototype.find(params[:id])
    prototype.destroy
    redirect_to root_path
  end

  def show
    @prototype = Prototype.new
  # @comments = @tweet.comments.includes(:user)
  end

  private

  def tweet_params
    params.require(:prototype).permit(:name, :image, :text)
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
end
