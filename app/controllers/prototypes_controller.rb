class PrototypesController < ApplicationController
def
  
  def show
    user = User.find(params[:id])
    @user = user.name
  end
end
