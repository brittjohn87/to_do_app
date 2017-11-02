class User < ApplicationRecord

	validates :firstname, presence: true
  validates :lastname, presence: true
  validates :email, presence: true 

  has_many :tasks

	def full_name
		return "#{self.firstname} #{self.lastname}"
	end

end
