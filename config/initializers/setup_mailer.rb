ActionMailer::Base.smtp_settings = {  
   :address => "smtp.gmail.com",
   :port => 587,
   :domain => "formio.in",
   :authentication => "plain",
   :enable_starttls_auto => true,
   :user_name => "dctacademyblr@gmail.com",
   :password => "dct@Jayanagar430",
   :openssl_verify_mode  => 'none'
}

ActionMailer::Base.default_url_options[:host] = "www.gmail.com"  
