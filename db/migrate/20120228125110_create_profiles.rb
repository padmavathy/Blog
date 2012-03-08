class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.string :name
      t.integer :age
      t.text :worked_at
      t.string :designation
      t.string :city

      t.timestamps
      end
    end
end
