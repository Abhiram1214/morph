class FriendshipsController < ApplicationController
  def create
    @friendship=current_user.friendships.build(:friend_id=>params[:friend_id])
    if @friendship.save
      redirect_to users_posts_path(:user_id=>current_user)
    end
  end


    def destroy

    end

end
