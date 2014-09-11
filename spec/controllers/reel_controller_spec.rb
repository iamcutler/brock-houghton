require 'rails_helper'

RSpec.describe ReelController, :type => :controller do

  describe "GET index" do
    before :each do
      get :index
    end

    it "returns http success" do
      expect(response).to have_http_status(:success)
    end

    it "assigns @videos" do
      expect(assigns(:videos)).to_not be_nil
    end
  end
end
