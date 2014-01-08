require 'spec_helper'


describe "Static pages" do
  subject {page}

  shared_examples_for "all static pages" do
    it { should have_selector 'title', text: full_title(page_title)}
    it { should have_selector 'h1', text: heading}
  end


  describe "Contact page" do
    


    before {visit contact_path}

    let(:heading) {'Contact Us'}
    let(:page_title) {''}

    it_should_behave_like "all static pages"


    

    it {should have_content('joe@schmo.com')}
    

  end

  describe "Home page" do
    before {visit root_path}
    let(:heading) {'Home'}
    let(:page_title) {''}
    
    it { should_not have_selector 'title' , :text => 'Home' }

   
    
    it { should have_content('Sample App') }
    
  end

  describe "Help page" do
    before {visit help_path}
    let(:heading) {'Help'}
    let(:page_title) {''}
    

    

  	it {should have_content('Help')}
  	
  end

  describe "About page" do 
    before {visit about_path}
    let(:heading) {About}
    let(:title) {''}


    it {should have_content('About Us')}

  end

  it "should have the right links on the layout" do
    visit root_path
    click_link "About"
    page.should have_selector 'title', text: 'About'
    click_link "Help"
    page.should have_selector 'title', text: 'Help'
    click_link "Contact"
    page.should have_selector 'title', text: 'Contact'
    click_link "Home"
    click_link "Sign Up Now!"
    page.should have_selector 'title', text: 'Sign up'
    click_link "sample app"
    page.should_not have_selector 'title', text: 'Sign up'

  end


end
