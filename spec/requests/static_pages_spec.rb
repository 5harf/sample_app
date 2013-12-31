require 'spec_helper'


describe "Static pages" do
  subject {page}
  describe "Contact page" do
    
    before {visit contact_path}

    it {should have_selector('title', text: full_title('Contact Us')) }
    

    it {should have_selector('h1', text: 'Contact Us')}
    

    it {should have_content('joe@schmo.com')}
    

  end

  describe "Home page" do
    before {visit root_path}
    
    it { should_not have_selector 'title' , :text => 'Home' }

    it { should have_selector('title', text: full_title('')) }
  
    it { should have_selector('h1', :text => 'Sample App')}
    
    it { should have_content('Sample App') }
    
  end

  describe "Help page" do
    before {visit help_path}
    
    it {should have_selector('title', text: full_title('Help'))}
    

    it {should have_selector('h1', :text => 'Help')}
    

  	it {should have_content('Help')}
  	
  end

  describe "About page" do 
    before {visit about_path}
    
    it {should have_selector('title', text: full_title('About Us'))}

    it {should have_selector('h1', :text => "About Us")}

    it {should have_content('About Us')}

  end


end
