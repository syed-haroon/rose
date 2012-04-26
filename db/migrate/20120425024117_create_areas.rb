class CreateAreas < ActiveRecord::Migration
  def change
    create_table :areas do |t|
      t.references :city

      t.string :name
    end
    add_index :areas, :city_id
  end
end
