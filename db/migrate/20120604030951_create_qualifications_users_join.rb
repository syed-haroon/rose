class CreateQualificationsUsersJoin < ActiveRecord::Migration
  def change
    create_table :qualifications_users, :id => false do |t|
      t.references :qualification
      t.references :user
    end
    add_index :qualifications_users, ['qualification_id','user_id']
  end
end
