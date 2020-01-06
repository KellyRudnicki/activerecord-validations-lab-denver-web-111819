class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :summary, length: { minimum: 250}
  validates :content, length: { is: 10} 
end
