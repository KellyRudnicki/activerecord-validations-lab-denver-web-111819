class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :summary, length: { minimum: 250}
  validates :content, length: { maximum: 250} 
end
