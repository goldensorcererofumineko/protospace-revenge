class CreatePtototypes < ActiveRecord::Migration[7.0]
  def change
    create_table :ptototypes do |t|
      
      t.timestamps
    end
  end
end
