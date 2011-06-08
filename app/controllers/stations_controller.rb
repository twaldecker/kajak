class StationsController < ApplicationController
  
  def create
    @water = Water.find(params[:water_id])
    @station = @water.stations.create(params[:station])
    redirect_to water_path(@water)
  end
  
  def destroy
    @water = Water.find(params[:water_id])
    @station = @water.stations.find(params[:id])
    @station.destroy
    redirect_to water_path(@water)
  end
end
