# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Store.create(name: 'The Dreaming')

Item.create(barcode: '1234', title: 'Thing #1', quantity: 1, store: Store.first)
Item.create(barcode: '5678', title: 'Thing #2', quantity: 10, store: Store.first)
Item.create(barcode: '9012', title: 'Stuff #100', quantity: 100, store: Store.first)
