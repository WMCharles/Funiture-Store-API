puts " 🌱️ Seeding data..."

products = Product.create([
    {title: "Wooden Kitchen Cabinet", description: "Wall hanging kitchen cabinets to store items like crockery, cookbooks, pickle jars and spices. Wooden Cabinets made from teakwood or solid wood are sturdy and durable, and will last for years to come", price:"45000", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTf_APNED7AIry4E326Pnb7wiyPQj8zyPfEhg&usqp=CAU"},
    {title: "Ria 4 Seater Dining Set", description: "Wipe clean with a soft, dry cloth, avoiding any harsh household cleaners or chemicals that may damage the finish.", price:"100", image_url: "https://dignity.co.ke/wp-content/uploads/2021/10/Ria-4-Seater-Dining-Set_lv.jpg"},
    {title: "King Size Bed- 6X6 (DB 40736)", description: "Made with bold style and optimum strength, this platform bed with headboard features wooden slats that provide strong support for your memory foam, latex or spring mattress without the need for a box spring. Crafted with clean lines and a streamlined look, this contemporary modern design looks classic and composed in just about any home.", price:"55995", image_url: "https://dignity.co.ke/wp-content/uploads/2022/05/King-Size-Bed-6X6-DB-40736_lv.jpg"},
    {title: "Flavia 7 Seater Recliner Sofa- Grey", description: "3 seater with 2 end recliners & Drop down feature. 2 seater recliner with console & 2 cup holders. 1 seater recliner. 1 seater recliner", price:"100,000", image_url: "https://dignity.co.ke/wp-content/uploads/2022/10/Flavia-web.jpg"}
        
])

categories = Category.create([
    {name:"Living-Room", description: "Funiture intended for user in the living room."},
    {name:"Kitchen", description: "Pieces of furniture in a kitchen, like cabinets, countertops, sinks, and so forth."},
    {name:"Dining", description: "Furniture intended for use in a dining room. These items include tables and chairs."},
    {name:"Bedroom", description: "Funiture intended for user in the bedroom."}
])

product_categories = ProductCategory.create([
    {product_id:1, category_id:2},
    {product_id:2, category_id:3},
    {product_id:3, category_id:4},
    {product_id:4, category_id:1}
])

users = User.create([
    {username: "admin", email: "admin@example.com", password: "1234567xx", password_confirmation: "1234567xx"},
    {username: "xo4x7", email: "chalo@example.com", password: "1234567xx", password_confirmation: "1234567xx"}
])

reviews = Review.create([
    {rating:3, comment: "How much do you change?", product_id:1, user_id:2},
    {rating:4, comment: "How much do you change for delivery outside Nairobi?", product_id:2, user_id:1},
    {rating:5, comment: "How much do you change for repairs?", product_id:3, user_id:2},
    {rating:5, comment: "How much do you change for training?", product_id:4, user_id:1}
])

puts "Done Seeding 🍂️"
