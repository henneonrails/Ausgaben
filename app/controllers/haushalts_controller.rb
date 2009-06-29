class HaushaltsController < ApplicationController
  def index
    @haushalt = Haushalt.all
    #@haushalt = Haushalt.view(database_name, 'datum/datum')
  end

  def new
    @haushalt = Haushalt.new
  end

  def edit
    @haushalt = Haushalt.get(params[:id])
  end

  def create
    h = Haushalt.new
    h.merge!(params[:haushalt])
    h.save
    redirect_to haushalts_path
  end

  def update
    @haus = Haushalt.get(params[:id])
    @haus.merge!(params[:haushalt])
    @haus.save
    redirect_to haushalts_path  
  end
end
