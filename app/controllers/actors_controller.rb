class ActorsController < ApplicationController

  def index
    render json: Actor.all
  end

  def show
    render json: {me: "show working"}
  end
end
