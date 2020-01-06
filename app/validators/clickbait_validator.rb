class ClickbaitValidator < ActiveModel::EachValidator
  # def validate_each(record, attribute, value)
  #     unless value =~ /(Won't Believe|Secret|Top \d|Guess)/
  #     record.errors[attribute] << ("Need a clickbaity title!")
  #   end
  # end
  
  def validate_with(record)
    unless record.title.include?("Won't Believe")
      record.errors[:title] << ("Need a clickbaity title!")
    end 
    end
end 