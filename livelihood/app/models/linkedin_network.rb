class LinkedinNetwork < ApplicationRecord
    belongs_to :user
    has_many :associates
end
