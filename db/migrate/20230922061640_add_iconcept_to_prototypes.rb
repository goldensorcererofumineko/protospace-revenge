class AddIconceptToPrototypes < ActiveRecord::Migration[7.0]
  def change
    add_column :prototypes, :iconcept, :text
  end
end
