class Article < ApplicationRecord
    validates :title, presence: true, uniqueness: {scope: :title, message: "should be unique"}
    validates :author, presence: true
    validates :content, presence: true
    # validates :category, presence: true
    has_many :comments, dependent: :destroy
    # has_and_belongs_to_many :categories

    before_validation :set_content 
    after_create :default_comment

    def set_content 
        self.content = "default content" if self.content.nil?
    end

    def default_comment 
      Comment.create(article_id: self.id, content:"Napilitan lang magcomment.")
    end
end
