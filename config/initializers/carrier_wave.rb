CarrierWave.configure do |config|
  # The following is needed to support heroku:
  # https://github.com/jnicklas/carrierwave/wiki/How-to%3A-Make-Carrierwave-work-on-Heroku
  config.root = Rails.root.join('tmp')
  config.cache_dir = 'uploads'

  config.storage = :fog

  config.fog_credentials = {
    :provider => 'AWS',
    :aws_access_key_id => ENV['AWS_S3_KEY'],
    :aws_secret_access_key => ENV['AWS_S3_SECRET'],
    :region => ENV['AWS_S3_REGION']
  }
  config.fog_directory  = ENV['AWS_S3_BUCKET_NAME']
  config.fog_public     = false                                   # optional, defaults to true
  config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
end