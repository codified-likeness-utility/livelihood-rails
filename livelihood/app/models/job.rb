class Job < ApplicationRecord
    belongs_to :user
    has_many :applications

    accepts_nested_attributes_for :applications


    def applications_attributes
        applications_attributes.values.each do |application_attribute|
            application = Application.find_or_create_by(pokemon_attribute)
            self.applications << application
        end
    end
    
end

