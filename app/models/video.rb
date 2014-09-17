class Video < ActiveRecord::Base
  validates :title, :director, :order, presence: true
  has_attached_file :image,
                    :styles => {
                      :thumb => "262X200>"
                    },
                    :default_url => "vid_missing.jpg",
                    :path => ":rails_root/public/system/images/uploads/:basename.:extension"

  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  scope :reel, -> { where(archive: false) }
  scope :archive, -> { where(archive: true) }
  scope :order_asc, -> { order(:order) }
end
