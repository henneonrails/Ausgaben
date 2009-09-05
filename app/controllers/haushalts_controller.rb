class HaushaltsController < ApplicationController
  def index
    @haushalt = db.view Haushalt.all(:key => current_user.id) if current_user
    
  end

  def new
    @haushalt = Haushalt.new
  end

  def edit
    @haushalt = db.load params[:id]
  end

  def create
    @haushalt = Haushalt.new params[:haushalt]
    @haushalt.user = current_user.id
    db.save(@haushalt)
    redirect_to haushalts_path
  end

  def destroy
    @haushalt = db.load params[:id]
    db.destroy @haushalt
    redirect_to haushalts_path
  end

  def update
    @haus = db.load params[:id]
    @haus.attributes = params[:haushalt]  
    if db.save(@haus)
      redirect_to haushalts_path
    else
      render 'edit'
    end

  end

  private

  def db
    CouchPotato.database
  end
end
