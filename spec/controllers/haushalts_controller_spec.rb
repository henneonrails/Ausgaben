require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')


describe HaushaltsController do
  integrate_views

  before(:each) do
    @haushalt = mock_model(Haushalt, :betrag => "10", :id => 1)
    Haushalt.stub!(:find).with(:all).and_return([@haushalt])
  end

  #Delete this example and add some real ones
  it "should use HaushaltsController" do
    controller.should be_an_instance_of(HaushaltsController)
  end

  it "soll alle Einträge anzeigen" do
    get :index
    assigns[:haushalt].should be_instance_of(Array)
  end

  it "soll einen Eintrag erstellen" do
    post :create, :haushalt => { :datum => "01.01.2009", :kategorie => "Test", :betrag => "10"}
    response.should be_redirect
  end

end
