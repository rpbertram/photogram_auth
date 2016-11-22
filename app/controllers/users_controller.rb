class UsersController < ApplicationController
  def index
    @users = User.all

    render("users/index.html.erb")
  end

  def show
    @user = User.find(params[:id])

    render("users/show.html.erb")
  end

  def my_likes
    @user = current_user

    render("my_likes.html.erb")
  end

  # def new
  #   @user = User.new
  #
  #   render("users/new.html.erb")
  # end
  #
  # def create
  #   @user = User.new
  #
  #   @user.username = params[:username]
  #   @user.password = params[:password]
  #   @user.user_id = params[:user_id]
  #
  #   save_status = @user.save
  #
  #   if save_status == true
  #     redirect_to("/users/#{@user.id}", :notice => "User created successfully.")
  #   else
  #     render("users/new.html.erb")
  #   end
  # end
  #
  # def edit
  #   @user = User.find(params[:id])
  #
  #   render("users/edit.html.erb")
  # end
  #
  # def update
  #   @user = User.find(params[:id])
  #
  #   @user.username = params[:username]
  #   @user.password = params[:password]
  #   @user.user_id = params[:user_id]
  #
  #   save_status = @user.save
  #
  #   if save_status == true
  #     redirect_to("/users/#{@user.id}", :notice => "User updated successfully.")
  #   else
  #     render("users/edit.html.erb")
  #   end
  # end
  #
  # def destroy
  #   @user = User.find(params[:id])
  #
  #   @user.destroy
  #
  #   if URI(request.referer).path == "/users/#{@user.id}"
  #     redirect_to("/", :notice => "User deleted.")
  #   else
  #     redirect_to(:back, :notice => "User deleted.")
  #   end
  # end
end
