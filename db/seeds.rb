# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


State.create(name: 'Karnataka')
City.create([
                { name: 'Mysore', state_id: 1 },
                { name: 'Bangalore', state_id: 1 }
            ])


#[:admin, :user].each { |r| Role.create(:name => r) }
#User.create(:login => 'admin', :role => Role.find_by_name('admin'))

