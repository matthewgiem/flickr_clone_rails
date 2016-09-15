class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "Welcome"
      redirect_to "/"
    else
      flash[:alert] = "There was a problem creating your account. Please try again."
      redirect_to :back
    end
  end

private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :user_name)
  end

  # <%= form_tag image_tags_path(@image) do %>
  #   <%= label_tag :title %><br>
  #   <%= text_field_tag :title %>
  #   <%= submit_tag "Add Tag" %>
  #
  # <% end %>


end
