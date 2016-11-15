class Event < ApplicationRecord
    belongs_to :local
    belongs_to :organization
end
