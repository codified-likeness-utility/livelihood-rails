class User < ApplicationRecord
has_one :linkedin_network
has_many :associates, through: :linkedin_network
has_one :inbox
has_many :applications
has_many :jobs
has_many :interviews


has_secure_password
validates :username, uniqueness: { case_sensitive: false }


end
