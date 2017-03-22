require 'spec_helper'




RSpec.describe "SportSport test" do

	before(:all) {
		
		@browser=Watir::Browser.new :firefox
		@browser.goto "http://sportsport.ba"

	}



	 
    context "Click on TABELE " do
	
        it "New Page Tabele" do

        	@browser.link(:class=>"tables").click
        	expect(@browser.div(:class=>"table_top_container").exists?)


			
		
		end

   end



   context "Close browser" do

	  

	   it "Browser close" do

		   @browser.close

	   end
   end




end 