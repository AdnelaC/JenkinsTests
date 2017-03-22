require 'spec_helper'




RSpec.describe "SportSport test" do

	before(:all) {
		
		@browser=Watir::Browser.new :firefox
		@browser.goto "http://sportsport.ba"

	}



	context "Click on News" do

    	it "News details" do

   		  @browser.article(:class=>"position_one").click
   		  expect(@browser.div(:id=>"news_page").exists?)
     	
     	end

   end

    context "Click on TABELE " do
	
        it "New Page Tabele" do

        	@browser.link(:class=>"tables").click
        	expect(@browser.div(:class=>"table_top_container").exists?)


			
		
		end

   end

   context "Click on Premijer liga BiH" do

   	it "Table" do

   		@browser.link(:text=>"Premijer Liga BiH").click
   		expect(@browser.table(:class=>" standings_league standings").exists?)
   	end
   
   end

   context "Click on radio button Raspored utakmica" do

   	it "Raspored utakmica" do

   		@browser.input(:value=>"2").click
   		expect(@browser.div(:id=>"tableOuterWrapper").exists?)
   	end

   end

   context "Click on Trening" do

   	it "Trening" do

   		@browser.link(:class=>"recreation").click
   		expect(@browser.div(:class=>"recreation_top_container").exists?)

   	end
   
   end





   context "Close browser" do

	  

	   it "Browser close" do

		   @browser.close

	   end
   end




end