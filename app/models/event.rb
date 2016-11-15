class Event < ApplicationRecord
    belongs_to :local
    belongs_to :organization
    has_and_belongs_to_many :types
end
