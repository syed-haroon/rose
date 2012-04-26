class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.references :state

      t.string :name
    end
    add_index :cities, :state_id
  end
end
