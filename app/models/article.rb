class Article < ApplicationRecord
	validates :email, presence: true, uniqueness: true
	validates :mobile_number, presence: true, length: { is: 10 }, numericality: { only_integer: true }
	  validates :password, presence: true, length: { in: 6..20 }, confirmation: true 
	  validates :password_confirmation, presence: true 
	  validates :date, presence: true
	  validates :remember_me, acceptance: true 
	   validate :date_of_birth
	   
 def date_of_birth	  
 
  if date.present? && date > Date.today
      errors.add(:date, "can't be in the future")
    end
  end

end