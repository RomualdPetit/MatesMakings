class UserController < ApplicationController
  
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def show
  @user = User.find(params[:id])
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
    else
    render edit_user_path
    end
  end

  private

  def authenticate_user
    unless current_user
      flash[:danger] = "Please log in."
      redirect_to new_user_session_path
    end
  end

end

