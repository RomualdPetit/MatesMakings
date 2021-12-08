class CommunitiesController < ApplicationController
    # before_action :find_game
  def index
    @communities = Community.all
  end

  def new 
    @community = Community.new
  end

  def show
    @community = Community.find(params[:id])
  end

  def create
    @community = current_user.communities.new(communities_params)

      if !@community.save
        flash[:notice] = @community.errors.full_message.to_sentence
       redirect_to @community.game

      #Community.create(user: current_user, game: @game) 
      # flash[:success] = "Vous avez rejoint la communauté de l'anneau "
  
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
  params.require(:community).permit(:game_id)
 end


end
