class StatesController < ApplicationController
  before_action :authenticate_user!

  def create
    @event = Event.find(params[:product_i])
    @state = State.create(event: @event, user: current_user)
    if @order.save
      redirect_to product_path
    else
      redirect_to  user_session_path 
    end   
  end
end
