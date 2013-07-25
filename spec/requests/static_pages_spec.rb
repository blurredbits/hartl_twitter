require 'spec_helper'

describe "Static Pages" do
  describe "Home Page" do
    it "should have the h1 'Hartl Twitter'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Hartl Twitter')
    end

    it "should have the title 'Home'" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => "Hartl's Twitter | Home")
    end
  end

  describe "Help Page" do
    it "should have the h1 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'Help')
    end

    it "should have the title 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('title', :text =>"Hartl's Twitter | Help")
    end
  end

  describe "About Page" do
    it "should have the h1 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About Us')
    end

    it "should have the title 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('title', :text => "Hartl's Twitter | About Us")
    end
  end

end
