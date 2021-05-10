# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

#User.destroy_all
#City.destroy_all
#Gossip.destroy_all
#Tag.destroy_all
#PrivateMessage.destroy_all
#Comment.destroy_all

users_array = []
cities_array = []
gossips_array = []
tags_array = []
pms_array = []
comments_array = []
n = 10

n.times do
  user = User.new(first_name: Faker::Name.unique.first_name,
                  last_name: Faker::Name.unique.last_name,
                  description: Faker::Lorem.words(number: 10, supplemental: true).join(' '),
                  email: Faker::Internet.free_email,
                  age: Faker::Number.between(from: 13, to: 107)
                 )
  users_array << user

  city = City.new(name: Faker::Address.unique.city,
                  zip_code: Faker::Address.unique.zip_code
                 )
  cities_array << city

  user.city = city

  user.save
  city.save
end

n.times do
  gossip1 = Gossip.new(title: Faker::Lorem.words(number: rand(7)+1).join(' ').capitalize,
                       content: Faker::Lorem.sentences(number: rand(4)+1).join(' ')
                      )
  gossips_array << gossip1

  gossip1.author = users_array[rand(0..9)]

  gossip2 = Gossip.new(title: Faker::Lorem.words(number: rand(7)+1).join(' ').capitalize,
                       content: Faker::Lorem.sentences(number: rand(4)+1).join(' ')
                      )
  gossips_array << gossip2

  gossip2.author = users_array[rand(0..9)]

  tag = Tag.new(title: "#" + Faker::Lorem.word)
  tags_array << tag

  comment1 = Comment.new(content: Faker::Lorem.sentences(number: rand(4)+1).join(' '))
  comments_array << comment1

  comment1.author_id = rand(0..9)
  comment1.gossip_id = rand(0..19)

  comment2 = Comment.new(content: Faker::Lorem.sentences(number: rand(4)+1).join(' '))
  comments_array << comment2

  comment2.author_id = rand(0..9)
  comment2.gossip_id = rand(0..19)

  pm = PrivateMessage.new(content: Faker::Lorem.sentences(number: rand(4)+1).join(' '))
  pms_array << pm

  pm.sender_id = rand(0..9)

  JoinTableTagGossip.new(gossip: gossip1, tag: tag).save
  JoinTableTagGossip.new(gossip: gossip2, tag: tag).save
  
  JoinTableRecipientPm.new(private_message: pm, recipient: users_array[rand(0..9)]).save
  
  gossip1.save
  gossip2.save
  tag.save
  comment1.save
  comment2.save
  pm.save
end

#User.all
#City.all
#Gossip.all
#Tag.all
#PrivateMessage.all
#Comment.all

require 'table_print'

tp.set User, :id, :first_name, :last_name, :email, :age, "city.name", "city.zip_code", :description
tp.set Tag, :id, :title
tp.set Gossip, :id, :title, "author.first_name", "author.last_name", "tags.title", :content
tp.set PrivateMessage, :id, "sender.first_name", "sender.last_name", "recipients.first_name", "recipients.last_name", :content
tp.set Comment, :id, "author.first_name", "author.last_name", "gossip.title", :content

puts "#{users_array.length} users créés :\n"
tp User.all
puts "\n#{cities_array.length} cities créées :\n"
tp City.all
puts "\n#{gossips_array.length} gossips créés :\n"
tp Gossip.all
puts "\n#{tags_array.length} tags créés :\n"
tp Tag.all
puts "\n#{pms_array.length} private messages créés :\n"
tp PrivateMessage.all
puts "\n#{comments_array.length} comments créés :\n"
tp Comment.all
puts
