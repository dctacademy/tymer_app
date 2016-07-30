ActionMailer::Base.smtp_settings = {  
   :address => "smtp.gmail.com",
   :port => 587,
   :domain => "formio.in",
   :authentication => "plain",
   :enable_starttls_auto => true,
   #:user_name => "mail@formio.in",
   #:password => "passping123",
   :user_name => "ani@dctacademy.com",
   :password => "mag072529",
   :openssl_verify_mode  => 'none'
}

ActionMailer::Base.default_url_options[:host] = "www.formio.in"  
