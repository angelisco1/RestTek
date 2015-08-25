roles = Role.create([
	{name: 'Client'},
	{name: 'Chef'},
	{name: 'Waiter'}
])

users = User.create([
	{name: 'Paco', password: '12345678', password_confirmation: '12345678', admin: true, role_id: roles[2].id},
	{name: 'Tomas', password: '12345678', password_confirmation: '12345678', admin: false, role_id: roles[2].id},
	{name: 'Chicote', password: '12345678', password_confirmation: '12345678', admin: false, role_id: roles[1].id},
	{name: 'Table_1', password: '12345678', password_confirmation: '12345678', admin: false, role_id: roles[0].id},
	{name: 'Table_2', password: '12345678', password_confirmation: '12345678', admin: false, role_id: roles[0].id}
])

categories = Category.create([
	{name: 'Starters'},
	{name: 'Firsts'},
	{name: 'Mains'},
	{name: 'Desserts'},
	{name: 'Drinks'}
])

items = Item.create([
	{name: 'Fish and chips', description: 'Fish with chips', price: 4.59, category_id: categories[0].id, available: true, published: true},
	{name: 'Beef', description: 'Beef with chips', price: 5.95, category_id: categories[1].id, available: true, published: true},
	{name: 'Turkey', description: 'Turkey with salad', price: 5.21, category_id: categories[1].id, available: true, published: true},
	{name: 'Rice', description: 'Rice with eggs and tomatoe sausage', price: 3.59, category_id: categories[2].id, available: true, published: true}
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
	{name: 'Adding items', requires_assignee: false},
	{name: 'Sent', requires_assignee: false},
	{name: 'Cooking', requires_assignee: true},
	{name: 'Serving', requires_assignee: true},
	{name: 'Finished', requires_assignee: false}
])

order_item_statuses = OrderItemStatus.create([
	{status_id: statuses[0].id, order_item_id: order_items[0].id, user_id: users[2].id},
	{status_id: statuses[0].id, order_item_id: order_items[2].id, user_id: users[3].id},
	{status_id: statuses[1].id, order_item_id: order_items[0].id, user_id: users[1].id}
])

permissions = Permission.create([
	{name: 'Create users', description: 'Permission for creating users'}, #1
	{name: 'Create items', description: 'Permission for creating items'}, #2
	{name: 'Create orders', description: 'Permission for creating orders'}, #3
	{name: 'Create assignments', description: 'Permission for creating assignments'}, #4
	{name: 'Create authorizations', description: 'Permission for creating authorizations'}, #5
	{name: 'Create roles', description: 'Permission for creating roles'}, #6
	{name: 'Create statuses', description: 'Permission for creating statuses'}, #7
	{name: 'Create order_items', description: 'Permission for creating order_items'}, #8
	{name: 'Create order_item_statuses', description: 'Permission for creating order_item_statuses'}, #9
	{name: 'Create categories', description: 'Permission for creating categories'}, #10
	{name: 'Delete users', description: 'Permission for deleting users'}, #11
	{name: 'Delete items', description: 'Permission for deleting items'}, #12
	{name: 'Delete orders', description: 'Permission for deleting orders'}, #13
	{name: 'Delete assignments', description: 'Permission for deleting assignments'}, #14
	{name: 'Delete authorizations', description: 'Permission for deleting authorizations'}, #15
	{name: 'Delete roles', description: 'Permission for deleting roles'}, #16
	{name: 'Delete statuses', description: 'Permission for deleting statuses'}, #17
	{name: 'Delete order_items', description: 'Permission for deleting order_items'}, #18
	{name: 'Delete order_item_statuses', description: 'Permission for deleting order_item_statuses'}, #19
	{name: 'Delete categories', description: 'Permission for deleting categories'}, #20
	{name: 'Edit users', description: 'Permission for editing users'}, #21
	{name: 'Edit items', description: 'Permission for editing items'}, #22
	{name: 'Edit orders', description: 'Permission for editing orders'}, #23
	{name: 'Edit assignments', description: 'Permission for editing assignments'}, #24
	{name: 'Edit authorizations', description: 'Permission for editing authorizations'}, #25
	{name: 'Edit roles', description: 'Permission for editing roles'}, #26
	{name: 'Edit statuses', description: 'Permission for editing statuses'}, #27
	{name: 'Edit order_items', description: 'Permission for editing order_items'}, #28
	{name: 'Edit order_item_statuses', description: 'Permission for editing order_item_statuses'}, #29
	{name: 'Edit categories', description: 'Permission for editing categories'}, #30
	{name: 'Show users', description: 'Permission for showing users'}, #31
	{name: 'Show items', description: 'Permission for showing items'}, #32
	{name: 'Show orders', description: 'Permission for showing orders'}, #33
	{name: 'Show assignments', description: 'Permission for showing assignments'}, #34
	{name: 'Show authorizations', description: 'Permission for showing authorizations'}, #35
	{name: 'Show roles', description: 'Permission for showing roles'}, #36
	{name: 'Show statuses', description: 'Permission for showing statuses'}, #37
	{name: 'Show order_items', description: 'Permission for showing order_items'}, #38
	{name: 'Show order_item_statuses', description: 'Permission for showing order_item_statuses'}, #39
	{name: 'Show categories', description: 'Permission for showing categories'}, #40
	{name: 'Index users', description: 'Permission for indexing users'}, #41
	{name: 'Index items', description: 'Permission for indexing items'}, #42
	{name: 'Index orders', description: 'Permission for indexing orders'}, #43
	{name: 'Index assignments', description: 'Permission for indexing assignments'}, #44
	{name: 'Index authorizations', description: 'Permission for indexing authorizations'}, #45
	{name: 'Index roles', description: 'Permission for indexing roles'}, #46
	{name: 'Index statuses', description: 'Permission for indexing statuses'}, #47
	{name: 'Index order_items', description: 'Permission for indexing order_items'}, #48
	{name: 'Index order_item_statuses', description: 'Permission for indexing order_item_statuses'}, #49
	{name: 'Index categories', description: 'Permission for indexing categories'}, #50
	{name: 'Profile users', description: 'Permission for showing the profile of a user'} #51
])

authorizations = Authorization.create([
	{role_id: 1, permission_id: 3},
	{role_id: 1, permission_id: 8},
	{role_id: 1, permission_id: 9},
	{role_id: 1, permission_id: 13},
	{role_id: 1, permission_id: 18},
	{role_id: 1, permission_id: 19},
	{role_id: 1, permission_id: 23},
	{role_id: 1, permission_id: 28},
	{role_id: 1, permission_id: 29},
	{role_id: 1, permission_id: 32},
	{role_id: 1, permission_id: 33},
	{role_id: 1, permission_id: 38},
	{role_id: 1, permission_id: 39},
	{role_id: 1, permission_id: 42},
	{role_id: 1, permission_id: 43},
	{role_id: 1, permission_id: 48},
	{role_id: 1, permission_id: 49},
	{role_id: 1, permission_id: 51},
	{role_id: 2, permission_id: 2},
	{role_id: 2, permission_id: 4},
	{role_id: 2, permission_id: 7},
	{role_id: 2, permission_id: 9},
	{role_id: 2, permission_id: 10},
	{role_id: 2, permission_id: 12},
	{role_id: 2, permission_id: 14},
	{role_id: 2, permission_id: 17},
	{role_id: 2, permission_id: 19},
	{role_id: 2, permission_id: 20},
	{role_id: 2, permission_id: 22},
	{role_id: 2, permission_id: 24},
	{role_id: 2, permission_id: 27},
	{role_id: 2, permission_id: 29},
	{role_id: 2, permission_id: 30},
	{role_id: 2, permission_id: 32},
	{role_id: 2, permission_id: 34},
	{role_id: 2, permission_id: 37},
	{role_id: 2, permission_id: 38},
	{role_id: 2, permission_id: 39},
	{role_id: 2, permission_id: 40},
	{role_id: 2, permission_id: 42},
	{role_id: 2, permission_id: 44},
	{role_id: 2, permission_id: 47},
	{role_id: 2, permission_id: 48},
	{role_id: 2, permission_id: 49},
	{role_id: 2, permission_id: 50},
	{role_id: 2, permission_id: 51},
	{role_id: 3, permission_id: 2},
	{role_id: 3, permission_id: 4},
	{role_id: 3, permission_id: 7},
	{role_id: 3, permission_id: 9},
	{role_id: 3, permission_id: 10},
	{role_id: 3, permission_id: 12},
	{role_id: 3, permission_id: 14},
	{role_id: 3, permission_id: 17},
	{role_id: 3, permission_id: 19},
	{role_id: 3, permission_id: 20},
	{role_id: 3, permission_id: 22},
	{role_id: 3, permission_id: 24},
	{role_id: 3, permission_id: 27},
	{role_id: 3, permission_id: 29},
	{role_id: 3, permission_id: 30},
	{role_id: 3, permission_id: 32},
	{role_id: 3, permission_id: 34},
	{role_id: 3, permission_id: 37},
	{role_id: 3, permission_id: 38},
	{role_id: 3, permission_id: 39},
	{role_id: 3, permission_id: 40},
	{role_id: 3, permission_id: 42},
	{role_id: 3, permission_id: 44},
	{role_id: 3, permission_id: 47},
	{role_id: 3, permission_id: 48},
	{role_id: 3, permission_id: 49},
	{role_id: 3, permission_id: 50},
	{role_id: 3, permission_id: 51}
])

assignments = Assignment.create([
	{role_id: 1, status_id: 1},
	{role_id: 2, status_id: 2},
	{role_id: 3, status_id: 3}
])
