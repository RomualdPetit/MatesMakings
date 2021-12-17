class GamesController < ApplicationController
  include ApplicationHelper
  before_action :set_game, only: %i[ show edit update destroy ]
  before_action :isAdmin?, only: [:create, :destroy, :edit]
  before_action :authenticate_user!, only: [:create, :destroy, :show, :new] 

  # GET /games or /games.json
  def index
    @games = Game.all
  end

  # GET /games/1 or /games/1.json
  def show
    @game = Game.find(params[:id])
    @all_commu = Community.where(game_id: @game.id)
    @compteur = @all_commu.count 
    @events = Event.where(game_id: @game.id)
  end

  # GET /games/new
  def new
    @game = Game.new
  end

  # GET /games/1/edit
  def edit
  end

  # POST /games or /games.json
  def create
    @game = Game.new(
      name: params[:name], category: params[:category]
    )

    @user = User.find_by(email: params[:email])

    respond_to do |format|
      if @game.save
        format.html { redirect_to @game, notice: "Jeu crée" }
        format.json { render :show, status: :created, location: @game }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @game.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /games/1 or /games/1.json
  def update
    respond_to do |format|
      if @game.update(game_params)
        format.html { redirect_to @game, notice: "Jeu mis a jour" }
        format.json { render :show, status: :ok, location: @game }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @game.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /games/1 or /games/1.json
  def destroy
    @game.destroy
    respond_to do |format|
      format.html { redirect_to games_url, notice: "Jeu détruit" }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game
      @game = Game.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def game_params
      params.require(:game).permit(:name, :category)
    end

def isAdmin?

  unless current_user && current_user.email = "100code@street.bg"

    flash[:danger] = "Tu n'as pas accès a cette page"
    redirect_to root_path
  end
end

def authenticate_user

  unless current_user
    flash[:danger] = "Tu n'est pas connecté"
    redirect_to new_user_session_path
  end
end
end

