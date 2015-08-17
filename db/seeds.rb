roles = Role.create([
	{name: 'Client'},
	{name: 'Chef'},
	{name: 'Waiter'}
])

users = User.create([
	{name: 'Paco', email: 'p@gamil.com', password: '12345678', password_confirmation: '12345678', admin: true, role_id: roles[2].id},
	{name: 'Chicote', email: 'c@gamil.com', password: '12345678', password_confirmation: '12345678', admin: false, role_id: roles[1].id},
	{name: 'Table_1', email: 't1@gmail.com', password: '12345678', password_confirmation: '12345678', admin: false, role_id: roles[0].id},
	{name: 'Table_2', email: 't2@gamil.com', password: '12345678', password_confirmation: '12345678', admin: false, role_id: roles[0].id}
])

categories = Category.create([
	{name: 'Starters'},
	{name: 'Firsts'},
	{name: 'Seconds'},
	{name: 'Desserts'},
	{name: 'Drinks'}
])

items = Item.create([
	{name: 'Fish and chips', description: 'Fish with chips', price: 4.50, category_id: categories[0].id, available: true, published: true},
	{name: 'Beef', description: 'Beef with chips', price: 5.90, category_id: categories[1].id, available: true, published: true},
	{name: 'Turkey', description: 'Turkey with salad', price: 5.0, category_id: categories[1].id, available: true, published: true},
	{name: 'Rice', description: 'Rice with eggs and tomatoe sausage', price: 3.50, category_id: categories[2].id, available: true, published: true}
])

orders = Order.create([
	{user_id: users[2].id, paid: false},
	{user_id: users[3].id, paid: false}
])

order_items = OrderItem.create([
	{order_id: orders[0].id, item_id: items[0].id, notes: ''},
	{order_id: orders[0].id, item_id: items[3].id, notes: 'without salad'},
	{order_id: orders[1].id, item_id: items[1].id, notes: 'salad instead of chips'}
])

statuses = Status.create([
	{name: 'new order', requires_assignee: true},
	{name: 'cooking', requires_assignee: true},
	{name: 'finished', requires_assignee: true}
])

order_item_statuses = OrderItemStatus.create([
	{status_id: statuses[0].id, order_item_id: order_items[0].id, user_id: users[2].id},
	{status_id: statuses[0].id, order_item_id: order_items[2].id, user_id: users[3].id},
	{status_id: statuses[1].id, order_item_id: order_items[0].id, user_id: users[1].id}
])