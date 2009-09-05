class Haushalt 
  include CouchPotato::Persistence
  
  property :betrag
  property :kategorie
  property :datum
  property :user

 
  
  view :all, :key => :user
  view :by_id, :key => :_id

def self.summe(userid)
  @aktuelle = CouchPotato.database.view Haushalt.all(:key => userid)
  @summe = 0
  @aktuelle.collect(&:betrag).each do |betr|
    @summe = betr.to_f + @summe
  end
  @summe
end


end
