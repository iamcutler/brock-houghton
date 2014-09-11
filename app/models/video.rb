class Video < ActiveRecord::Base
  validates :title, :director, :order, presence: true

  scope :reel, -> { where(archive: false) }
  scope :archive, -> { where(archive: true) }
  scope :order_asc, -> { order(:order) }
end
