class LocalAndOrganizationReferencesOnEvents < ActiveRecord::Migration[5.0]
  def change
    remove_column :events, :local_id
    remove_column :events, :organization_id
    add_column :events, :local_id, :integer, references: :local
    add_column :events, :organization_id, :integer, references: :organization
  end
end
