class ImagesController < ApplicationController
  def new
    @image = Image.new
  end

  def index
  end

  def create
    @image = Image.new(image_params)
    if @image.save
      redirect_to image_path
    else
      render :new
    end
  end

private
  def image_params
    params.require(:image).permit(:title, :user_name)
  end
end
