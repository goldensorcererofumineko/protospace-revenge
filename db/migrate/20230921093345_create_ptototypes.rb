class CreatePtototypes < ActiveRecord::Migration[7.0]
  def change
    create_table :ptototypes do |t|
      t.text :image
      t.text :iconcept
      t.text :catch_copy
      t.text :title
      t.timestamps
    end
  end
end
