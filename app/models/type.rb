class Type < ApplicationRecord
    has_many :eventtypes
    has_and_belongs_to_many :events
end
