class AddFieldsToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :country, :string
    add_column :profiles, :state, :string
  end
end
