 #$LOAD_PATH.unshift(File.join(File.dirname(__FILE__),'..','page_objects'))

 require 'rubygems'
 require 'watir-webdriver'
 require 'rspec/retry'
 #require 'require_all'


 #require_all 'page_objects'
 


RSpec.configure do |config|
	

 	config.expect_with :rspec do |c|
  		c.syntax = [:should, :expect]


  # show retry status in spec process
  config.verbose_retry = true
  # Try twice (retry once)
  config.default_retry_count = 2
  # Only retry when Selenium raises Net::ReadTimeout
  config.exceptions_to_retry = [Net::ReadTimeout]
end     
  	



end

	



