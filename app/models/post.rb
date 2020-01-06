class Post < ActiveRecord::Base
  include 
  validates :title, presence: true
  validates :summary, length: {maximum: 250} 
  validates :content, length: {minimum: 250}
  validates :category, inclusion: { in: %w(Fiction Non-Fiction),
    message: "%{value} is not a valid category" }
    
  validates 
  
end