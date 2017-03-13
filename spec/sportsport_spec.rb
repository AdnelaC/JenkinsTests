require 'spec_helper'




RSpec.describe "SportSport test" do

	before(:all) {
		
		@browser=Watir::Browser.new :firefox
		@browser.goto "http://sportsport.ba"

	}



	 
    context "sportsport.ba " do
	
        it "Puts text" do
	       
	       
	       puts (@browser.ul(:id=>"tabs").text.to_s)
		   
			
		
		end

   end



   context "Close browser" do

	  

	   it "Browser close" do

		   @browser.close

	   end
   end




end 