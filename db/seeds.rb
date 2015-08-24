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
	{name: 'Create assignments', description: 'Permission for creating assignments'},
	{name: 'Create authorizations', description: 'Permission for creating authorizations'},
	{name: 'Create roles', description: 'Permission for creating roles'},
	{name: 'Create statuses', description: 'Permission for creating statuses'},
	{name: 'Create order_items', description: 'Permission for creating order_items'},
	{name: 'Create order_item_statuses', description: 'Permission for creating order_item_statuses'},
	{name: 'Create categories', description: 'Permission for creating categories'},
	{name: 'Delete users', description: 'Permission for deleting users'},
	{name: 'Delete items', description: 'Permission for deleting items'},
	{name: 'Delete orders', description: 'Permission for deleting orders'},
	{name: 'Delete assignments', description: 'Permission for deleting assignments'},
	{name: 'Delete authorizations', description: 'Permission for deleting authorizations'},
	{name: 'Delete roles', description: 'Permission for deleting roles'},
	{name: 'Delete statuses', description: 'Permission for deleting statuses'},
	{name: 'Delete order_items', description: 'Permission for deleting order_items'},
	{name: 'Delete order_item_statuses', description: 'Permission for deleting order_item_statuses'},
	{name: 'Delete categories', description: 'Permission for deleting categories'},
	{name: 'Edit users', description: 'Permission for editing users'},
	{name: 'Edit items', description: 'Permission for editing items'},
	{name: 'Edit orders', description: 'Permission for editing orders'},
	{name: 'Edit assignments', description: 'Permission for editing assignments'},
	{name: 'Edit authorizations', description: 'Permission for editing authorizations'},
	{name: 'Edit roles', description: 'Permission for editing roles'},
	{name: 'Edit statuses', description: 'Permission for editing statuses'},
	{name: 'Edit order_items', description: 'Permission for editing order_items'},
	{name: 'Edit order_item_statuses', description: 'Permission for editing order_item_statuses'},
	{name: 'Edit categories', description: 'Permission for editing categories'},
	{name: 'Show users', description: 'Permission for showing users'},
	{name: 'Show items', description: 'Permission for showing items'},
	{name: 'Show orders', description: 'Permission for showing orders'},
	{name: 'Show assignments', description: 'Permission for showing assignments'},
	{name: 'Show authorizations', description: 'Permission for showing authorizations'},
	{name: 'Show roles', description: 'Permission for showing roles'},
	{name: 'Show statuses', description: 'Permission for showing statuses'},
	{name: 'Show order_items', description: 'Permission for showing order_items'},
	{name: 'Show order_item_statuses', description: 'Permission for showing order_item_statuses'},
	{name: 'Show categories', description: 'Permission for showing categories'},
	{name: 'Index users', description: 'Permission for indexing users'},
	{name: 'Index items', description: 'Permission for indexing items'},
	{name: 'Index orders', description: 'Permission for indexing orders'},
	{name: 'Index assignments', description: 'Permission for indexing assignments'},
	{name: 'Index authorizations', description: 'Permission for indexing authorizations'},
	{name: 'Index roles', description: 'Permission for indexing roles'},
	{name: 'Index statuses', description: 'Permission for indexing statuses'},
	{name: 'Index order_items', description: 'Permission for indexing order_items'},
	{name: 'Index order_item_statuses', description: 'Permission for indexing order_item_statuses'},
	{name: 'Index categories', description: 'Permission for indexing categories'}
])

authorizations = Authorization.create([
	{role_id: 4, permission_id: 1},
	{role_id: 4, permission_id: 2},
	{role_id: 4, permission_id: 4},
	{role_id: 1, permission_id: 42},
	{role_id: 1, permission_id: 32}
])

assignments = Assignment.create([
	{role_id: 1, status_id: 1},
	{role_id: 2, status_id: 2},
	{role_id: 3, status_id: 3}
])
