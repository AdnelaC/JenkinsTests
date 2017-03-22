require 'spec_helper'




RSpec.describe "Klix test" do

	before(:all) {
		
		@browser=Watir::Browser.new :firefox
		@browser.goto "http://klix.ba"

	}


	 
    context "Click on day " do
	
        it "New Page Najnovije " do
	       
	       @browser.wait_until{@browser.div(:class=>"vremenska hidden-md hidden-sm hidden-xs").exists?}
	       @browser.link(:class=>"dan").click
	       @browser.wait_until{@browser.div(:class=>"col-sm-9 col-xs-7").exists?}
	       expect(@browser.div(:class=>"kategorizacija").link(:href=>"http://www.klix.ba/najnovije").text).to eql("Najnovije")
		    

	    
		   
			
		
		end

   end


   context "Close browser" do

	  

	   it "Browser close" do

		   @browser.close

	   end
   end




end 



