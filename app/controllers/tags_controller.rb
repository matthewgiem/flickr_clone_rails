class TagsController < ApplicationController
  def new
  end

  # def create
  #   @tag = Tag.new
  #   @image = Image.find(params[:image_id])
  #   @tag = Tag.new(tag_params)
  #   if @tag.save
  #     flash[:notice] = "Your image was tagged!"
  #   else
  #     flash[:notice] = "Your image was not saved"
  #   end
  # end
  #
  # private
  # def tag_params
  #   params.require(:user).permit(:title)
  #
  # end
end
