class AvatarsController < ApplicationController
    def create
        @user = User.find(params[:user_id])
        @user.avatar.purge
        @user.avatar.attach(params[:avatar])
        redirect_to(user_path(@user))
      end
end
