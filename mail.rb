require 'mail'  
  
smtp = { :address => 'smtp.163.com', :port => 25, :domain => '163.com', \
    :user_name => 'tokyohuang123@163.com', :password => 'XXXXXXXX',\
    :enable_starttls_auto => true, :openssl_verify_mode => 'none' }  
Mail.defaults { delivery_method :smtp, smtp }  
mail = Mail.new do  
  from 'tokyohuang123@163.com'  
  to 'XXXXXg@XXXXXX.com'  
  subject 'test mail'  
  body 'body:hello send mail way 2 :)'  
  add_file File.expand_path("E:\\ruby\\test.txt")  
end  
mail.deliver!  