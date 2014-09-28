Paperclip::Attachment.default_options.merge!(
  :storage => :s3,
  :s3_protocol => "https",
  :s3_host_name => "s3-us-west-1.amazonaws.com",
  :s3_credentials => "#{Rails.root}/config/S3.yml"
)