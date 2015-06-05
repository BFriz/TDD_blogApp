# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Post.delete_all 

    post1 = Post.create(author: "Titsmagee", title: 'Swimming', content: 'It is not that difficult when you can float for days')
    post2 = Post.create(author: 'Donkey Kong', title: 'Bananananas for crack', content: 'I will give you Bananananas for crack')
    post3 = Post.create(author: 'Juilius Ceasar', title:'On the Dali Lama', content: 'My favorite car is a Land Rover')