require 'rails_helper'

RSpec.describe VideoController, :type => :controller do
  let(:video) { FactoryGirl.create(:video_1) }

  describe "GET show" do
    before :each do
      get :show, {id: video.id}
    end

    it "returns http success" do
      expect(response).to have_http_status(:success)
    end

    it "assigns @video instance variable" do
      expect(assigns(:video)).to_not be_nil
    end

    it "finds video and assigns @video" do
      expect(assigns(:video)).to be_a_instance_of(Video)
    end
  end
end
