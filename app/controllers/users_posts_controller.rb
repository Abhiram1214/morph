class UsersPostsController < ApplicationController

  def index
     @users_post=UsersPost.all.order('created_at desc')
  end

  def show

    @user=User.find_by_id(params[:id])
  end

  def new
    @new_post=UsersPost.new(:user_id => params[:user_id])
  end

  def create
    @new_post=UsersPost.new(create_post)
    if @new_post.save
      redirect_to users_posts_path
    end
  end

  def create_post
    params.require(:users_post).permit(:data,:user_id)
  end


end
