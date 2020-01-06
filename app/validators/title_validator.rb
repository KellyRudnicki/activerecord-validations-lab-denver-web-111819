class ClickbaitValidator < ActiveModel::Validator
  
  def validates_each(record, attribute, value)
      unless value =~ /(Won't Believe|Secret Top #" \d|Guess"/
      record.errors[:attribute] << 'Need a clickbaity title!'
    end
  end 

end 