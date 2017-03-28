require 'spec_helper'




RSpec.describe "Klix test" do

	before(:all) {
		
		@browser=Watir::Browser.new :firefox
		@browser.goto "http://klix.ba"
		@browser.window.resize_to(1024, 768) 

	}


	 
    context "Click on day " do
	
        it "New Page Najnovije " do
	       
	       @browser.wait_until{@browser.div(:class=>"vremenska hidden-md hidden-sm hidden-xs").exists?}
	       @browser.link(:class=>"dan").click
	       @browser.wait_until{@browser.div(:class=>"col-sm-9 col-xs-7").exists?}
	       expect(@browser.div(:class=>"kategorizacija").link(:href=>"http://www.klix.ba/najnovije").text).to eql("Najnovije")	
		
		end

   end

 

   context "Click on logo" do

   	it "Naslovnica" do

   		@browser.span(:class=>"icon_kx_logo").click
   		@browser.wait_until{@browser.div(:class=>"block-head main hidden-xs").exists?}
   		
   		
   	end

   end

  context "Click on Vijesti" do

   	it "Vijesti" do

        @browser.wait_until{@browser.ul(:class=>"categories").li(:class=>"li_vijesti").exists?}
   		@browser.ul(:class=>"categories").li(:class=>"li_vijesti").click
   		@browser.wait_until{@browser.div(:class=>"breadcrumbs bg_vijesti").exists?}
   		expect(@browser.text).to include ("Vijesti")
   		

   
   	end
   
   end

   context "Click on Biznis" do

   	it "Biznis" do

   		@browser.ul(:class=>"categories").li(:class=>"li_biznis").click
   		@browser.wait_until{@browser.div(:class=>"breadcrumbs bg_biznis").exists?}
   		expect(@browser.text).to include ("Biznis")

   	end
   end

   context "Click on Sport" do

   	it "Sport" do
   		@browser.ul(:class=>"categories").li(:class=>"li_sport").click
   		@browser.wait_until{@browser.div(:class=>"breadcrumbs bg_sport").exists?}
   		expect(@browser.text).to include ("Sport")

   	end
   
   end

   context "Click on Magazin" do

   	it "Magazin" do

   		@browser.ul(:class=>"categories").li(:class=>"li_magazin").click
   		@browser.wait_until{@browser.div(:class=>"breadcrumbs bg_magazin").exists?}
   		expect(@browser.text).to include("Magazin")
   	end
   end

   context "Click on Lifestyle" do

   	it "Lifestyle" do

   		@browser.ul(:class=>"categories").li(:class=>"li_lifestyle").click
   		@browser.wait_until{@browser.div(:class=>"breadcrumbs bg_lifestyle").exists?}
   		expect(@browser.text).to include("Lifestyle")
   	end
   end




   context "Close browser" do

	   it "Browser close" do

		   @browser.close

	   end
   end




end 



