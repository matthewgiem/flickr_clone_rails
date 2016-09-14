class ImagesController < ApplicationController
  def new
    @image = Image.new
  end

  def index
    @images = Image.all
  end

  def create
    @image = Image.new(image_params)
    @image.user = current_user
    if @image.save
      redirect_to images_path
    else
      render :new
    end
  end

private
  def image_params
    params.require(:image).permit(:title, :photo)
  end
end
