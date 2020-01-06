class TitleValidator < ActiveModel::Validator
  
  def validate(record)
      unless !record.title.include? ("Won't Believe")
  end 

end 

# || "Secret" || "Top [number]" || "Guess")