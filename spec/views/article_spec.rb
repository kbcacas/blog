require 'rails_helper'


RSpec.describe "Articles", type: :feature do 
  describe 'view all articles' do
    before {visit articles_path}

    it 'shows all articles' do 
      within 'body' do
        expect(page).to have_content('Hello World')
        expect(page).to have_content('New Article')
      end
    end

  end

  describe 'creates a new article' do 
    before {visit new_article_path}
    it 'successfully creates a new title' do 
      fill_in 'article_title', with: 'test title'
      fill_in 'article_author', with: 'test author'
      fill_in 'article_content', with: 'test content'
      click_button('Create Article')
      expect(page).to have_current_path(articles_path)
    end
  end
end