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
    puts "methode call"
     #Community.create(user: current_user, game: @game) 
    # flash[:success] = "Vous avez rejoint la communauté de l'anneau "
    redirect_to root_path
    puts "methode end, "
  end
  
end
