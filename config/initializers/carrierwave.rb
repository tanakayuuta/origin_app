CarrierWave.configure do |config|
   config.fog_credentials = {
     :provider               => 'AWS',
     :aws_access_key_id      => ENV['AKIAJD2OOZJ7KJUDNRDQ'],
     :aws_secret_access_key  => ENV['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'],
     :region                 => ENV['ap-northeast-1'],
   }

   config.fog_directory = ENV['newsampleapp']
end