class TitleValidator < ActiveModel::Validator
  
  def validates_each(record)
      unless !record.title.include? ("Won't Believe" || "Secret" || "Top #" || "Guess")
      record.errors[:title] << 'Need a clickbaity title!'
    end
  end 

end 