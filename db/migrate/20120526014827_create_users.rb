class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|

      t.string :title_gender,     :limit => 2
      t.string :first_name,       :limit => 30
      t.string :last_name,        :limit => 30
      t.string :email,            :default => "", :null => false, :limit => 60
      t.string :hashed_password,  :limit => 40
      t.string :salt,             :limit => 40
      t.string :user_type,        :limit => 15
      t.string :job_title,        :limit => 3
      t.string :assigned_to,      :limit => 4

      t.integer :block,           :limit => 1, :default => 1
      t.integer :telephone,       :limit => 15
      t.integer :mobile_phone,    :limit => 15

      t.date :date_of_birth
      t.date :wedding_date
      t.datetime :last_accessed

      t.timestamps

    end
  end
end