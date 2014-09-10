class Video < ActiveRecord::Base
  validates :title, :director, :order, presence: true
end
