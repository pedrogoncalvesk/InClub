class Event < ApplicationRecord
    belongs_to :local
    belongs_to :organization
    has_and_belongs_to_many :types

    def self.search(name, local, organization)
        conditions = '';
        if name != ''
            if conditions != ''
                conditions += " AND "
            end
            conditions += "name LIKE " + "'%#{name}%'" 
        end
        if local != ''
            if conditions != ''
                conditions += " AND "
            end
            conditions += "local_id = " + "#{local}"
        end
        if organization != ''
            if conditions != ''
                conditions += " AND "
            end
            conditions += "organization_id = " + "#{organization}"
        end
        where(conditions)
    end
end
