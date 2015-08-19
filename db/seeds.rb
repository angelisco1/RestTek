roles = Role.create([
	{name: 'Client'},
	{name: 'Chef'},
	{name: 'Waiter'},
	{name: 'Admin'}
])

users = User.create([
	{name: 'Paco', password: '12345678', password_confirmation: '12345678', admin: true, role_id: roles[2].id},
	{name: 'Chicote', password: '12345678', password_confirmation: '12345678', admin: false, role_id: roles[1].id},
	{name: 'Table_1', password: '12345678', password_confirmation: '12345678', admin: false, role_id: roles[0].id},
	{name: 'Table_2', password: '12345678', password_confirmation: '12345678', admin: false, role_id: roles[0].id}
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

permissions = Permission.create([
	{name: 'Create users', description: 'Permission for creating users'},
	{name: 'Create items', description: 'Permission for creating items'},
	{name: 'Create orders', description: 'Permission for creating orders'},
	{name: 'Create categories', description: 'Permission for creating categories'}
])

authorizations = Authorization.create([
	{role_id: 4, permission_id: 1},
	{role_id: 4, permission_id: 2},
	{role_id: 4, permission_id: 4},
	{role_id: 1, permission_id: 3}
])

assignments = Assignment.create([
	{role_id: 1, status_id: 1},
	{role_id: 2, status_id: 2},
	{role_id: 3, status_id: 3}
])
