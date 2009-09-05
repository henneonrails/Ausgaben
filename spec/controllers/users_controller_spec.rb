require File.dirname(__FILE__) + '/../spec_helper'
 
describe UsersController do
  fixtures :all
  integrate_views
  
  it "edit action should render edit template" do
    get :edit, :id => Users.first
    response.should render_template(:edit)
  end
  
  it "update action should render edit template when model is invalid" do
    Users.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Users.first
    response.should render_template(:edit)
  end
  
  it "update action should redirect when model is valid" do
    Users.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Users.first
    response.should redirect_to(users_url)
  end
  
  it "new action should render new template" do
    get :new
    response.should render_template(:new)
  end
  
  it "create action should render new template when model is invalid" do
    Users.any_instance.stubs(:valid?).returns(false)
    post :create
    response.should render_template(:new)
  end
  
  it "create action should redirect when model is valid" do
    Users.any_instance.stubs(:valid?).returns(true)
    post :create
    response.should redirect_to(users_url)
  end
end
