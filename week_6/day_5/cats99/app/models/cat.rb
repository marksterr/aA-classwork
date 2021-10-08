class Cat < ApplicationRecord

  validates :birth_date, :name, presence: true
  validates :name, uniqueness: true
  #validate :gender
  
  # def age
    
  # end

  # def gender
  #   if :sex != 'M' && :sex != 'F'
  #     errors.add(:sex, 'Invalid')
  #   end
  # end

end
