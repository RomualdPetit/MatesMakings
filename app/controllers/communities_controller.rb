class CommunitiesController < ApplicationController
    # before_action :find_game
    before_action :authenticate_user!, only: [:create, :destroy] 

  def create
    @community = current_user.communities.new(communities_params)

      if !@community.save
        flash[:notice] = @community.errors.full_message.to_sentence
       redirect_to @community.game
     end


    end

  def destroy
    @community = current_user.communities.find(params[:id])
    game = @community.game
    @community.destroy
    redirect_to game
  end


    private


 def communities_params
  params.require(:community).permit(:game_id, :user_id)
 end

 def authenticate_user
  unless current_user
    flash[:danger] = "Tu n'est pas connecté"
    redirect_to new_user_session_path
  end
end

end
