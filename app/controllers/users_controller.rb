class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:create, :destroy, :show, :edit] 
  
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
    @user_review = UserReview.find_by(user_id: @user.id)
    ratings = []

    @review_user = Review.where(user_review_id: @user.id)
    @review_user.each do |review|
      ratings.push(review.rating)
    end
    @average = ratings.inject{ |sum, el| sum + el }.to_f / ratings.size

    puts @average
  end

  def create

    #@user = User.new(users_params)
    @user = User.new(first_name: params[:first_name],
     last_name: params[:last_name],
     description: params[:description],
     email: params[:email],
     age: params[:age],
     password: params[:pass_first],
     password_confirmation: params[:pass_second])
 

    if @user.save
      puts "Je save l'utilisateur"
      log_in(@user)
      puts "Il est save"
      redirect_to users_path 
      flash[:success] = "Ton profil a été crée !"
    else
      puts "Redirige, pas save"
      render new_user_path
      flash[:danger] = "Remplissez tous les champs"
    end
     

  end

  def update
    @user = User.find(params[:id])

    if @user.update(users_params)
    redirect_to user_path
    flash[:success] = "Ton profil a été enregistré ! "

    UserReview.create(user: @user)
    else
    render edit_user_path
    end

  end

  private

  def users_params
    params.require(:user).permit(:last_name, :email, :age, :description, :country, :discord_tag, :player_type, :steam, :availablity, :note, :riot_games, :uplay, :psn, :nintendo, :epic_game, :battlenet, :origin, :xbox, :role)
  end

  def authenticate_user
    unless current_user
      flash[:danger] = "Tu n'es pas connecté"
      redirect_to new_user_session_path
    end
  end

  def isAdmin?
    puts current_user.email
    unless current_user && current_user.email = "100code@street.bg"

      flash[:danger] = "Tu n'as pas accès a cette page"
      redirect_to root_path
    end
  end


end