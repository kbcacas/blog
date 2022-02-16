require 'rails_helper'

RSpec.describe Article, type: :model do
  
  let!(:article) {Article.new}

  context "validations" do
    it 'is not a valid name' do
      article.content = 'test body'
      article.title = nil

      expect(article).to_not be_valid
      expect(article.errors).to be_present
      expect(article.errors.to_hash.keys).to include(:title)
    end

    it 'should be unique' do
      Article.create(:title => 'sample title', :author => "hello", :content => 'sample content')
      article.title = 'sample title'

      expect(article).to_not be_valid 
      expect(article.errors).to be_present
      expect(article.errors.to_hash.keys).to include(:title)
      expect(article.errors[:title]).to include('should be unique')
    end
  end

end
