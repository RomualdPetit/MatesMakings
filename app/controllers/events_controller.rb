class EventsController < ApplicationController
  before_action :set_event, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, only: [:create, :destroy, :show] 

  # GET /events or /events.json
  def index
    @events = Event.all
  end

  # GET /events/1 or /events/1.json
  def show
    @event = Event.find(params[:id])
    @all_participation = Participation.where(event_id: @event.id)
    @compteur = @all_participation.count 
  end

  # GET /events/new
  def new
    @event = Event.new
    @games = Game.all
  end

  # GET /events/1/edit
  def edit
  end

  # POST /events or /events.json
  def create
    @event = Event.new(event_params)
    @event.user_id = current_user.id
    
     x = @event.game_name
     @event.game = Game.find_by(name: x.to_s)

     #x = @event.game_name
     #@event.game = Game.find(name: x)
     
     
     respond_to do |format|
      if @event.save
        format.html { redirect_to @event, notice: "Ton event a été créé !" }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
    
   
  end

  # PATCH/PUT /events/1 or /events/1.json
  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to @event, notice: "Ton événement à été modifié." }
        format.json { render :show, status: :ok, location: @event }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1 or /events/1.json
  def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to events_url, notice: "Ton événement à été détruit." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def event_params
      params.require(:event).permit(:title, :description, :start_date, :start_time_hours, :start_time_min, :plateform, :game_name)
    end



 def authenticate_user
  unless current_user
    flash[:danger] = "Tu n'est pas connecté"
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