require 'spec_helper'

describe "Static pages" do
  describe "Contact page" do
    it "should have the title 'Contact Us'" do
      visit "/static_pages/contact"
      page.should have_selector('title', :text => 'Contact Us')
    end

    it "should have a header that says 'Contact Us'" do
      visit "/static_pages/contact"
      page.should have_selector('h1', :text => 'Contact Us')
    end

    it "should have the content 'my email is joe@schmo.com'" do
      visit "/static_pages/contact"
      page.should have_content('joe@schmo.com')
    end

  end

  describe "Home page" do

    it "should have the right title" do 
      visit '/static_pages/home'
      page.should have_selector('title', 
        :text => "| Home")
    end

    it "should have the header 'sample app'" do
      visit "/static_pages/home"
      page.should have_selector('h1', :text => 'Sample App')
    end


    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      page.should have_content('Sample App')
    end
  end

  describe "Help page" do

    it "should have the right title" do
      visit "/static_pages/help"
      page.should have_selector('title',
        :text => "| Help")
    end

    it "should have the header 'Help Page'" do 
      visit "/static_pages/help"
      page.should have_selector('h1', 
        :text => 'Help')
    end

  	it "should have the content 'Help'" do
  		visit '/static_pages/help'
  		page.should have_content('Help')
  	end
  end

  describe "About page" do 

    it "should have the right title" do
      visit "/static_pages/about"
      page.should have_selector('title', 
        :text => "| About Us")
    end

    it "should have the header 'About Page'" do
      visit "/static_pages/about"
      page.should have_selector('h1',
        :text => "About Us")
end
    it "should have the content 'About us'" do
    visit '/static_pages/about'
    page.should have_content('About Us')
    end
  end


end
