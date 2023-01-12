class CampersController < ApplicationController

  def index 
    camper =Camper.all
    render json: Camper.all, status: :ok
  end

  def show 
    camper= Camper.find_by(id:params[:id]) 
    if camper
      render json: camper, include: [:activities], except:[:created_at, :updated_at], status: :ok 
    else 
      render json: {error: "Camper is Lost"}, status: :not_found
    end
  end



#
end
