require 'bcrypt'

class User < ActiveRecord::Base
  attr_accessible :address, :email, :first_name, :fish, :is_project_starter, :last_name, :phone, :salt, :password, :password_confirmation, :project, :artwork

  validates :email, presence: true, uniqueness: true
  validates :password, confirmation: true

  has_many :projects
  has_many :artworks

	before_save :encrypt_password

	def authenticate(password)
		if self.fish == self.fish = BCrypt::Engine.hash_secret(password, self.salt)
			self
		else
			nil
		end
	end

	private

	def encrypt_password
		if password.present?
			self.salt = BCrypt::Engine.generate_salt
			self.fish = BCrypt::Engine.hash_secret(password, self.salt)
			self.password = nil
		end
	end
end
