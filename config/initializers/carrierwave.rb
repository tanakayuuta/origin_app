CarrierWave.configure do |config|
 config.fog_credentials = {
 :provider               => 'AWS',
 :aws_access_key_id      => ENV['AWS_ACCESS_KEY'],
 :aws_secret_access_key  => ENV['AWS_SECRET_KEY'],
 :region                 => ENV['AWS_REGION'],
  }
  config.fog_directory = ENV['S3_BUCKET_NAME']
 end


# CarrierWave.configure do |config|
#   config.fog_credentials = {
#      :provider               => 'AWS',
#      :aws_access_key_id      => 'AKIAJD2OOZJ7KJUDNRDQ',
#      :aws_secret_access_key  => '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',
#      :region                 => 'ap-northeast-1',
#   }

#   config.fog_directory = 'newsampleapp'
#   config.cache_storage = :fog
# end