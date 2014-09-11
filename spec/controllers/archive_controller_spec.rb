require 'rails_helper'

RSpec.describe ArchiveController, :type => :controller do

  describe "GET index" do
    before :each do
      get :index
    end

    it "returns http success" do
      expect(response).to have_http_status(:success)
    end

    it 'assigns @archive' do
      expect(assigns(:archive)).to_not be_nil
    end
  end

end
