class Application < ApplicationRecord
    belongs_to :user
    belongs_to :job
    has_many :interviews
end
