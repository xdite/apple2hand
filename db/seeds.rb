# -*- encoding : utf-8 -*-
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user1          = User.new(:name => "xdite", :email => "xuite.joke@gmail.com")
user1.fb_id    = "577398551"
user1.password = Devise.friendly_token[0, 20]
user1.save


["iMac", "Macbook Pro", "Macbook Air", "Mac mini"].each do |c|
  category = Category.new
  category.name = c
  category.save
end