require 'openid/store/filesystem'

Rails.application.config.middleware.use OmniAuth::Builder do

  provider :google_hybrid, OpenID::Store::Filesystem.new('/tmp'), 
    :name => 'google_hybrid',
    :identifier => 'https://www.google.com/accounts/o8/id', 
    :scope => ["https://www.google.com/m8/feeds/", "https://mail.google.com/mail/feed/atom/"], 
    :consumer_key => '[your key here]',
    :consumer_secret => '[your secret here]'
  
end

