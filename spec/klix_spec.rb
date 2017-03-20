require 'spec_helper'




RSpec.describe "Klix test" do

	before(:all) {
		
		@browser=Watir::Browser.new :firefox
		@browser.goto "http://klix.ba"

	}


	 
    context "Klix " do
	
        it "Puts text" do
	       
	     
	       puts "Neki text"
		   
			
		
		end

   end



   context "Close browser" do

	  

	   it "Browser close" do

		   @browser.close

	   end
   end




end 



