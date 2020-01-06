class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :summary, length: { is: 10}
  validates :content, length: { is: 10} 
end
