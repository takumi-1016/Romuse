class RoomsController < ApplicationController
  def index
    @rooms = Room.all
  end

  def show
  end

  def new
    @room = Room.new
  end

  def create
    room = Room.new(room_params)
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
