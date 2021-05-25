class User < ApplicationRecord
has_one :linkedin_network
has_many :associates, through: :linkedin_network
has_many :applications
has_many :companies, through: :applications
has_many :interviews
has_many :jobs, through:  :interviews
has_one :inbox

has_secure_password
validates :username, uniqueness: { case_sensitive: false }


end
