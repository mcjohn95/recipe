class User < ActiveRecord::Base
		
		has_many :meal_Recipes,dependent:  :destroy
		has_secure_password
		has_many :reviews
		validates :nameOfUser, presence: true
		
		validates  :emailAddress , presence: true
		validates  :emailAddress, uniqueness: true
end
