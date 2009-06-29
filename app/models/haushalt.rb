COUCHSERVER = CouchRest.new
COUCHSERVER.default_database = 'ausgaben'


class Haushalt < CouchRest::ExtendedDocument
  use_database COUCHSERVER.default_database

  property :betrag
  property :kategorie
  property :datum
  timestamps!

  view_by :datum





def self.summe
  @aktuelle = Haushalt.all
  @summe = 0
  @aktuelle.collect(&:betrag).each do |betr|
    @summe = betr.to_f + @summe
  end
  @summe
end
  
end
