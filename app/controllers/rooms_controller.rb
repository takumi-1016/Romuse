class RoomsController < ApplicationController
  def index
    @rooms = current_user.rooms.all
  end

  def show
    @room = Room.find(params[:id])
  end

  before_action :login_required
  
  def new
    @room = Room.new
  end

  def create
    room = current_user.rooms.new(room_params)
    room.save!
    redirect_to home_top_url, notice:"宿を登録しました。"
  end
  

  def edit
  end

  private
  def room_params
    params.require(:room).permit(:name, :introduction, :price, :location, :room_image)   
  end
  
end
