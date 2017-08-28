user = User.create(first_name: "Alexa", last_name: "Kovachevich", email: "alexa@barkbox.com", address: "200 Water Street", password: "poop")

User.all

user2 = User.new(first_name: "Joyce", last_name: "Kovachevich") 
user2.save

User.find(2)

User.first
User.last

User.where(first_name: "Alexa")

User.last.update(email: "jkovachev@comcast.net")

user2.last_name = "Kovachevich"
user2.save

User.create(first_name: "test", last_name: "testttt")
User.last.destroy

User.create(first_name: "Ned", last_name: "Kovachevich")
User.find(4).delete

user6 = User.new(first_name: "Arianna")
user6.new_record?

user6.destroyed?

user6.update(last_name: "Kovachevich")

User.limit(2)
User.offset(2)

User.exists?(first_name: "Alexa")

User.find(1, 2, 5)

User.count

User.ids

User.pluck(:id)
User.pluck(:first_name)
User.pluck(:first_name, :last_name)

# <--------------testing relationships for hmwk 6---------------->

Item.all.collect(&:name)
Item.all.collect(&:id)

Order.all.collect(&:id)
Order.all.collect(&:user_id)

User.all.collect(&:id)
User.all.collect(&:first_name)

User.find(2)
joyce = User.find(2)
joyce.orders
Order.find(5).items

Item.find(1).orders.collect(&:id)

# <--------------testing first project v7---------------->

Product.all.collect(&:title)
Order.create(user: "Alexa")
order.products
order.products.push(Product.first)
Product.find(1).orders
order.products.push(Product.last)
order.products
Product.find_by(title: "bunny")
Product.find_by(title: "bunny").orders.collect(&:user)
Order.all
order2 = Order.create(user: "Ari")
order2.products.push(Product.first)
Product.find_by(title: "bunny").orders.collect(&:user)

# <--------------relationships btw User, Order, and Items---------------->
Order.all.ids
Order.find(32).user_id
Order.find(32).items
Order.find(32).items.pluck(:name)
Order.find(11).items.pluck(:name)

Item.all.ids
Item.find(1).orders
Item.find(1).orders.ids

Order.all.map(&:user_id)
Item.find(3).product_details
Item.find(3).orders.pluck(:user_id)
Item.find(3).orders.pluck(:id)
Order.find(35).items.pluck(:product_details)

User.find(1).orders.ids
User.find(2).orders.pluck(:updated_at)

