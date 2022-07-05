class HomeController < ApplicationController
  def top
    @user = current_user
  end
  def posts  
      @rooms = Room.all
  end
  
end
