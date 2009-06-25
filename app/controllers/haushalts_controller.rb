class HaushaltsController < ApplicationController
  def index
    @haushalt = Haushalt.view(database_name, 'datum/datum')
  end

  def new
    @haushalt = Haushalt.new(database_name)
  end

  def edit
    @haushalt = Haushalt.find(database_name, params[:id])
  end

  def create
    haushalt = Haushalt.new(database_name)
    haushalt.save(params[:haushalt])
    redirect_to haushalts_path
  end

  def update
    @haushalt = Haushalt.find(database_name, params[:id])
    @haushalt.save(params[:haushalt])
    redirect_to haushalts_path  
  end
end
