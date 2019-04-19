require 'spec_helper'
require 'rails_helper'

feature 'Index Page' do
    scenario "Navigate to Idex Page" do
        visit 'http://localhost:3000/'
        	expect(page).to have_content ('DOXA FC')
        	expect(page).to have_content ('Accouncements') # Anouncements in Greek / Section with Anoouncements
        	expect(page).to have_content ('PhotoRetro') # feature showing images
        	expect(page).to have_content ('History Articles') #show articles about the history of community
            #expect(page).to have_content('Comunity Members') # info about the members of comunity

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
		visit 'http://localhost:3000/articles'
    	expect(page). to have_content ('articles')
        select("1234567799")
        click_link('Show')
	end
    scenario 'See a particular article' do
    	visit 'http://localhost:3000/articles/2'
    	expect(page). to have_content('Title')
    	expect(page). to have_content("Body")
    	expect(page). to have_contnet('Image')
    end

    scenario 'New article' do
        visit 'http://localhost:3000/articles'
        click_link('New article')
        #file name and body
    end

end

feature 'Doxa FC' do
	scenario 'Check lastes scores of the team' do
	visit 'Sports'
	expect(page). to have_content ("Latest results")
	#page.execute_script(Api calls)
end
end