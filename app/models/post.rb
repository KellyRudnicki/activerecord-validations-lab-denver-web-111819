class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :summary, length: {maximum: 250} 
  validates :content, length: {minimum: 250}
  validates :category, inclusion: { in: %w(Fiction Non-Fiction),
    message: "%{value} is not a valid category" }
    
  validates clickbait
  
  def clickbait(record)
    unless record.title != "Won't Believe" || "Secret" || "Top [number]" || "Guess"
  end 
  
end


# class Clickbait < ActiveModel::Validator
  # def validate(record)
  #   unless record.title != "Won't Believe" || "Secret" || "Top [number]" || "Guess"
  # end 
# end 