class ImagesController < ApplicationController
  before_action :authorize, only: [:edit, :update, :destroy]
  before_action only: [:edit, :update, :destroy] do
    @image = Image.find(params[:id])
    redirect_to root_path if current_user != @image.user
  end

  def new
    @image = Image.new
  end

  def show
    @tag = Tag.all
    @image = Image.find(params[:id])
  end

  def index
    @images = Image.all
  end

  def create
    @image = Image.new(image_params)
    @image.user_name = current_user.user_name
    @image.user = current_user
    if @image.save
      redirect_to images_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @image.update(image_params)
      flash[:notice] = "Edit Successful!"
      redirect_to images_path(@image)
    else
      render :edit
    end
  end

  def destroy
    # @image = Image.find(params[:id])
    @image.destroy
    redirect_to '/'
  end

  private
  def image_params
    params.require(:image).permit(:title, :photo)
  end
end
