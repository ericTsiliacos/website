require 'spec_helper'

feature 'Visitor visits home page' do
	before { visit root_path }

	scenario 'user sees welcome text' do
		expect(page).to have_content('Welcome')
	end

	scenario 'user sees list of links of interests' do
		expect(page).to have_content('poetry', 'essays', 'photography', 'music')
	end

	scenario 'user sees photo of self' do
		page.should have_css('img')
	end
end
