# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.destroy_all
GifCategory.destroy_all
FavoriteGif.destroy_all
Gif.destroy_all
User.destroy_all

bunny = Category.find_or_create_by(name: "bunny")
bunny.gifs.find_or_create_by(image_path: "https://media.giphy.com/media/1apNICVnC3AEo/giphy.gif")
bunny.gifs.find_or_create_by(image_path: "https://media.giphy.com/media/ef61oIGVyckY8/giphy.gif")
bunny.gifs.find_or_create_by(image_path: "https://media.giphy.com/media/MZzMRR6JfIiME/giphy.gif")

truck = Category.find_or_create_by(name: "truck")
truck.gifs.find_or_create_by(image_path: "https://media.giphy.com/media/VTLkM7Z0a2I48/giphy.gif")
truck.gifs.find_or_create_by(image_path: "https://media.giphy.com/media/RnJhBjGHJPos/giphy.gif")
truck.gifs.find_or_create_by(image_path: "https://media.giphy.com/media/G8EWOKSMUv7AA/giphy.gif")

User.find_or_create_by(first_name: "Josh", last_name: "Thompson",
            email: "example@example.com",
            password_digest: "password", password_confirmation: "password",
            user_role: 0)
User.find_or_create_by(first_name: "Sean", last_name: "Shawnson",
            email: "example@example.com",
            password_digest: "password", password_confirmation: "password",
            user_role: 0)
paul = User.find_or_create_by(first_name: "Paul", last_name: "Paulson",
            email: "example@example.com",
            password_digest: "password", password_confirmation: "password",
            user_role: 0)
paul.favorite_gifs.find_or_create_by(gif: truck.gifs.last)
paul.favorite_gifs.find_or_create_by(gif: bunny.gifs.last)

p "Sample of what was created: #{Category.first.name}, #{Gif.first.image_path}, #{User.first.first_name}"
