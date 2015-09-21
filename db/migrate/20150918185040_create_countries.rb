class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :name, null: false
      t.string :code, null: false
      t.timestamps null: false
    end
    add_index :countries, :code, unique: true
  end
end
