 #$LOAD_PATH.unshift(File.join(File.dirname(__FILE__),'..','page_objects'))

 require 'rubygems'
 require 'watir-webdriver'
 #require 'require_all'


 #require_all 'page_objects'
 


RSpec.configure do |config|
	

 	config.expect_with :rspec do |c|
  		c.syntax = [:should, :expect]
  		
=begin
  		config.before(:all){
		
  			@browser=Watir::Browser.new :ff
        ff=br.execute_script("return navigator.userAgent;")

puts  ff.split("/")[-1]

  			
  			

  		
  		}
=end      
  	


end
end

	



