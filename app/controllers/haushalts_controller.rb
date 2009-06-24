class HaushaltsController < ApplicationController
  def index
    @haushalt = Haushalt.view(database_name, 'datum/datum')
  end

end
