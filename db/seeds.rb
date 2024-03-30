# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(name: "Jared", email: "jared@test.com", password: "password", image_url: "https://static.wikia.nocookie.net/p__/images/3/36/Farvarod_08.png/revision/latest?cb=20190728143717&path-prefix=protagonist")
User.create(name: "Chloe", email: "chloe@test.com", password: "password", image_url: "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F6%2F2018%2F02%2F2475_tp_00013r-2000.jpg")

Item.create(name: "Dune", image_url: "https://covers.shakespeareandcompany.com/97814732/9781473233959.jpg", description: "A sci-fi epic", category: "Sci-Fi")
Item.create(name: "A Court of Silver Flames", image_url: "https://m.media-amazon.com/images/I/814ZCEQqyrL._AC_UF1000,1000_QL80_.jpg", description: "A fantasy romance", category: "Fantasy")

Favorite.create(user_id: 1, item_id: 1)
Favorite.create(user_id: 2, item_id: 2)