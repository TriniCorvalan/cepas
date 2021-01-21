require 'rails_helper'

RSpec.describe WinesController, type: :controller do

  describe "GET index" do
    before :each do
      # This simulates an anonymous user
      sign_in create( :user )
    end


    it "should get index" do
      get :index
      expect( response ).to render_template( :index )
    end

    it "assigns @wines" do
      wine = Wine.create(name: "wine", year: "2021-01-21", vineyard: "Viña")
      get :index
      expect(assigns(:wines)).to eq([wine])
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template( "index" )
    end
  end

  describe "GET show" do
    before :each do
      # This simulates an anonymous user
      sign_in create( :user )
      @wine = Wine.create!(name: "wine", year: "2021-01-21", vineyard: "Viña")
    end

    it "renders the show template" do
      get :show, params: { id: @wine.id }
      expect(response).to render_template( "show" )
    end
  end

end
