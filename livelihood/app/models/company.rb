class Company < ApplicationRecord
    has_many :associates
    has_many :jobs
    has_many :applications, through: :jobs
end
