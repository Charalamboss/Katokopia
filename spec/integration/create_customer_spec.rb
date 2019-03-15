require 'spec_helper'
require 'rails_helper'

feature 'Index Page' do
    scenario "Navigate to Idex Page" do
        visit 'http://localhost:3000/'
        	expect(page).to have_content ('About Page')
        	expect(page).to have_content ('Anakoinosis') # Anouncements in Greek / Section with Anoouncements
        	expect(page).to have_content ('Istoria') # History in greek / Section where major historical Events took Place
        	expect(page).to have_content ('Koinotiko Simvoulio') #Board of Community in Greek

    end
     scenario "can create customer error" do
        visit '/customers/new'
        	expect(page).to have_content('New Customer')
        	click_button 'Create Customer'
        	expect(page).to have_content('First name can\'t be blank')
    end
end

feature 'About Page' do
	scenario "Navigate to About Page" do
	#visit '/about'
		visit 'https://www.google.com/'
    	expect(page).to have_content('Creator')
    	expect(page).to have_content('Purpose of website')
    end 
    scenario "Navigate to About Page through home Page" do
    	visit 'http://localhost:3000/'
    	click_button 'About'
    end 
end

feature 'History' do
	scenario 'See all Historical Articles' do
		visit 'http://localhost:3000/History'
    	expect(page). to have_content ('History Articles')
	end
    scenario 'See historical Article' do
    	visit '/History/1'
    	expect(page). to have_content('Title')
    	expect(page). to have_content("Body")
    	expect(page). to have_contnet('Image')
    end
end

feature 'Doxa FC' do
	scenario 'Check lastes scores of the team' do
	visit 'Sports'
	expect(page). to have_content ("Latest results")
	#page.execute_script(Api calls)
end
end