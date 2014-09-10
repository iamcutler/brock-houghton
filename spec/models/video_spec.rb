require 'rails_helper'

RSpec.describe Video, :type => :model do
  describe 'validations' do
    it 'requires a title' do
      expect(FactoryGirl.build(:video_1, title: '')).to_not be_valid
    end

    it 'requires a director' do
      expect(FactoryGirl.build(:video_1, director: '')).to_not be_valid
    end

    it 'requires a order' do
      expect(FactoryGirl.build(:video_1, order: '')).to_not be_valid
    end
  end
end
