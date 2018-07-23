# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'securerandom'
# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
75.times do
  Article.create(
    :title => "My Post #{SecureRandom.hex(2)}",
    :description => "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus iaculis nulla eget orci mollis suscipit. Morbi nec arcu lacus. In et ligula nec nisi venenatis tempor",
    :category_id => Category.first.id,
    :content => "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus iaculis nulla eget orci mollis suscipit. Morbi nec arcu lacus. In et ligula nec nisi venenatis tempor. Nam non commodo dolor. Praesent tortor libero, sagittis eu neque nec, vestibulum tincidunt nibh. Integer sed aliquam leo. Suspendisse consectetur libero ac lacinia bibendum. Duis tempus, diam pharetra suscipit pellentesque, lectus metus dictum magna, at varius lorem dui quis magna. Sed mi nibh, luctus ut laoreet sit amet, volutpat ut augue. Praesent vitae arcu non felis pharetra varius ac sed dui."
  )
end