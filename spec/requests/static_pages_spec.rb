require 'spec_helper'

describe "StaticPages" do
  
let(:base_title) { "Shoryuken" }


describe "Home Page" do
	it "Should have the content Home" do
		visit '/static_pages/home'
		expect(page).to have_content('Home')
	end
	it "Should have the Home title" do
		visit '/static_pages/home'
		expect(page).to have_title("#{base_title}")
	end

    it "should not have a custom page title" do
      visit '/static_pages/home'
      expect(page).not_to have_title('Home')
    end
end



describe "Help page" do
	it "Should have the content Help"  do
		visit '/static_pages/help'
		expect(page).to have_content('Help')
	end
	it "Should have the Help title" do
		visit '/static_pages/help'
		expect(page).to have_title("#{base_title} :: Help")
	end


end


describe "About page" do
	it "Should have the content About Us" do
		visit '/static_pages/about'
		expect(page).to have_content('About Us')
	end

	it "Should have the About title" do
		visit '/static_pages/about'
		expect(page).to have_title("#{base_title} :: About Us")
	end

end


describe "Contacts page" do
	it "Should have the content Contact Us"  do
		visit '/static_pages/contact'
		expect(page).to have_content('Contact Us')
	end

	it "Should have the Contacts title" do
		visit '/static_pages/contact'
		expect(page).to have_title("#{base_title} :: Contact Us")
	end

end


end
