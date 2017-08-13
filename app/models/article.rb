class Article < ApplicationRecord
	validates :first_name, presence: { message: "must be given please" }, format: { with: /\A[a-zA-Z]+\z/,
	 message: "only allow letters" }


	validates :last_name, presence: true, format: { with: /\A[a-zA-Z]+\z/, message: "only allow letters" }
	validates :state, presence: true, inclusion: { in: %w(Bihar Uttar Pradesh West Bengal Delhi)}
	validates :email, presence: true, uniqueness: true, on: :account_setup
	validates :mobile_number, presence: true, length: { is: 10 }, numericality: { only_integer: true }
	  validates :password, length: { in: 6..20 }, confirmation: true, 
	  unless: Proc.new { |a| a.password.blank? }
	  validates :password_confirmation, presence: true 
	  validates :date, presence: true
	  validates :gender, presence: true 
	  validates :remember_me, acceptance: true 
	 
	   validate :date_of_birth
	   
 def date_of_birth	  
 
  if date.present? && date > Date.today
      errors.add(:date, "can't be in the future")
    end
  end

end