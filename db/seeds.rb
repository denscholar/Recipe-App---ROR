# user1= User.find(1)
# user2= User.find(2)
 
# inventory1=Inventory.create(user_id: user1.id, name: 'Vegetables',description: 'vegetable, in the broadest sense, any kind of plant life or plant product, namely “vegetable matter”; in common, narrow usage, the term vegetable usually refers to the fresh edible portions of certain herbaceous plants—roots, stems, leaves, flowers, fruit, or seeds. These plant parts are either eaten fresh or prepared in a number of ways, usually as a savory, rather than sweet, dish.' )
# inventory2=Inventory.create(user_id: user1.id, name: 'Condiments',description: 'A condiment is a preparation that is added to food, typically after cooking, to impart a specific flavor, to enhance the flavor, or to complement the dish.')
# inventory3= Inventory.create(user_id: user1.id, name: 'Oils', description: 'It can be obtained from soybean, sunflower, corn, linseed, palm, coconut, rapeseed, olives, peanut, canola and many other plants. Oils are made up of a mixture of triglycerides containing fatty acids of various lengths and composition. They are free from animal-cholesterol.')
# inventory4= Inventory.create(user_id: user2.id, name: 'Meet and animal origin', description: 'It can be obtained from soybean, sunflower, corn, linseed, palm, coconut, rapeseed, olives, peanut, canola and many other plants. Oils are made up of a mixture of triglycerides containing fatty acids of various lengths and composition. They are free from animal-cholesterol.')

# food1=Food.create(name: "Potatoes",measurement_unit: "Unit",price: 3)
# food2=Food.create(name: "Olive Oil",measurement_unit: "Tbs",price: 6)
# food3=Food.create(name: "Green Pepper",measurement_unit: "Unit",price: 8)
# food4=Food.create(name: "Onions", measurement_unit: "Unit",price: 3)
# food5=Food.create(name: "Ras el hanout",measurement_unit: "Tbs",price: 9)
# food6=Food.create(name: "Pumpkin",measurement_unit: "Grams",price: 3)
# food7=Food.create(name: "Eggs",measurement_unit: "Skinned",price: 2)
# food8=Food.create(name: "Salt",measurement_unit: "Pinch",price: 1)
# food9=Food.create(name: "Pepper", measurement_unit: "Pinch", price: 6)
# food10=Food.create(name: "Chicken", measurement_unit: "Kilo", price: 6)

# InventoryFood.create(quantity: 3,inventory_id:inventory1.id ,food_id: food1.id)
# InventoryFood.create(quantity: 68,inventory_id:inventory1.id ,food_id: food3.id)
# InventoryFood.create(quantity: 7,inventory_id:inventory1.id ,food_id: food4.id)
# InventoryFood.create(quantity: 38,inventory_id:inventory1.id ,food_id: food6.id)

# InventoryFood.create(quantity: 4,inventory_id:inventory2.id ,food_id: food5.id)
# InventoryFood.create(quantity: 2,inventory_id:inventory2.id ,food_id: food8.id)
# InventoryFood.create(quantity: 5,inventory_id:inventory2.id ,food_id: food9.id)

# InventoryFood.create(quantity: 6,inventory_id:inventory3.id ,food_id: food2.id)

# InventoryFood.create(quantity: 1,inventory_id:inventory4.id ,food_id: food7.id)
# InventoryFood.create(quantity: 9,inventory_id:inventory4.id ,food_id: food10.id)

# Recipe.create(name: 'Callaloo Jamaican Style', preparation_time:1, cooking_time: 5, description: 'Cut leaves and soft stems from the kale branches, them soak in a bowl of cold water for about 5-10 minutes or until finish with prep.\r\nProceed to slicing the onions, mincing the garlic and dicing the tomatoes. Set aside\r\nRemove kale from water cut in chunks.\r\nPlace bacon on saucepan and cook until crispy.', public: false)
# Recipe.create(name: 'Blackberry Fool', preparation_time:1, cooking_time: 5, description: 'For the biscuits, preheat the oven to 200C/180C (fan)/Gas 6 and line two large baking trays with baking parchment. Scatter the nuts over a baking tray and roast in the oven for 6-8 minutes, or until golden-brown. Watch them carefully so that they dont have a chance to burn. Remove from the oven', public: false)


# RecipeFood.create(quantity:10,recipe_id:1,food_id:1 )
# RecipeFood.create(quantity:4,recipe_id:1,food_id:2 )
# RecipeFood.create(quantity:6,recipe_id:1,food_id:3 )
# RecipeFood.create(quantity:1,recipe_id:1,food_id:4 )
# RecipeFood.create(quantity:7,recipe_id:1,food_id:5 )

# InventoryFood.create(quantity:10,inventory_id:1,food_id:1 )
# InventoryFood.create(quantity:4,inventory_id:1,food_id:2 )
# InventoryFood.create(quantity:6,inventory_id:1,food_id:3 )
# InventoryFood.create(quantity:1,inventory_id:1,food_id:4 )
# InventoryFood.create(quantity:7,inventory_id:2,food_id:5 )

