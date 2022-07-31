class ActorsController < ApplicationController

  def index
    render json: Actor.all
  end

  def show
    render json: Actor.find_by(id: params[:id])
  end
end
