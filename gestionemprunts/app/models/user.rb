require 'digest'
class User < ActiveRecord::Base

	# As the attribute :password does not exists as a column in the DB,
	# this defines an accessor attribute.
	# Like a local variable, just used to stock temporarely the not encrypted version of the password provided by the user.
	# Not persisted in the DB.
	attr_accessor :password

	# Global validation
	validates_presence_of :firstname, :lastname, :email, :password
	
	# Email validations
	validates_uniqueness_of :email
	validates_length_of :email, :within => 5..50
	validates_format_of :email, :with =>  /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	
	# Password validations
	validates_confirmation_of :password
	validates_length_of :password, :within => 4..20
	validates_presence_of :password, :if => :password_required?

	# Relations
	belongs_to :privilege
	has_many :requests
	has_many :appointments, :through=>:requests, :source=>:complexdates
	has_and_belongs_to_many :materialgroups
	
	# Always keep an encrypted version of the password in DB
	before_save :encrypt_new_password
	
	# Use --> User.authenticate('romain@gmail.com', 'password')
	# return the User object
	def self.authenticate(email, password)
		user = find_by_email(email)
		return user if user && user.authenticated?(password)
	end
	
	# Check the password
	def authenticated?(password)
		self.hashed_password == encrypt(password)
	end
	
	# Protected methods, used only inside the class
	protected
	
		# Create a new encrypted version of the password
		# Exit when local variable password is blank
		def encrypt_new_password
			return if password.blank?
			self.hashed_password = encrypt(password)
		end
		
		# Check if the password is required
		# When validating the password presence, if returns true, the :password local variable must be provided
		def password_required?
			hashed_password.blank? || password.present?
		end
		
		# Return the encrypted version of a string param
		def encrypt(string)
			Digest::SHA1.hexdigest(string)
		end
	
end
