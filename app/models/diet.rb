class Diet < ActiveRecord::Base
		has_many :specialRecipies, dependent: :destroy
		validates :dietaryNeed, presence: true
	validates :dietaryNeed, uniqueness: true
end
