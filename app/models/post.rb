class Post < ActiveRecord::Base
  include ActiveModel::Validator
  validates_with ClickbaitValidator
  
  validates :title, presence: true
  validates :summary, length: {maximum: 250} 
  validates :content, length: {minimum: 250}
  validates :category, inclusion: { in: %w(Fiction Non-Fiction)}
  validates :title, clickbait: true
end
