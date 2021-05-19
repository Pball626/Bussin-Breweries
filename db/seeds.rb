# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all


User.create(name: 'Jose', email: 'jose@jose.com', password: 'jose', picture: 'https://ca.slack-edge.com/T02MD9XTF-U01M24ZT5EW-28a291110cd7-512', age: 26, hometown: 'Chicago')
User.create(name: 'Vanessa', email: 'vanessa@vanessa.com', password: 'vanessa', picture: 'https://scontent.fhou1-2.fna.fbcdn.net/v/t1.6435-9/104339512_3798483610178548_1626026410253797035_n.jpg?_nc_cat=108&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=NTwX1e3ShJcAX_mJczy&_nc_ht=scontent.fhou1-2.fna&oh=1b9f4df11f67b538b5a889b51d916611&oe=60CC4B3B', age: 25, hometown: 'Chicago')