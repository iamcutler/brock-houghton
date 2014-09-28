class Video < ActiveRecord::Base
  validates :title, :director, :order, :video, presence: true

  has_attached_file :image,
                    :styles => {
                      :thumb => "262X262>"
                    },
                    :default_url => "vid_missing.jpg",
                    :path => ":rails_root/public/system/images/uploads/:basename.:extension"

  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  has_attached_file :video,
                    :styles => {
                      :mp4 => {
                        :geometry => "854x510", :format => 'mp4', :streaming => true,
                        :convert_options => {
                          :output => {
                            :vcodec => 'libx264'
                          }
                        }
                      }
                      #:ogg => {:geometry => "854x510", :format => 'ogv', :streaming => true},
                      #:webm => {:geometry => "854x510", :format => 'webm', :streaming => true}
                    },
                    :path => ":rails_root/public/system/media/uploads/:basename.:extension",
                    :processors => [:ffmpeg, :qtfaststart]

  validates_attachment_content_type :video,
                                    :content_type => ["video/mp4", "video/quicktime", "video/mpeg","video/mpeg4"]

  scope :reel, -> { where(archive: false) }
  scope :archive, -> { where(archive: true) }
  scope :order_asc, -> { order(:order) }
end
