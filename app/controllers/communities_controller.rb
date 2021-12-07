class CommunitiesController < ApplicationController
    before_action :find_game
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
    Attendance.create(user: current_user, event: @event) 
    flash[:success] = "Vous avez rejoint la communauté d'un jeu "
    redirect_to root_path
  end
  
end
