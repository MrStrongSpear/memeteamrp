--[[---------------------------------------------------------------------------
DarkRP custom shipments and guns
---------------------------------------------------------------------------

This file contains your custom shipments and guns.
This file should also contain shipments and guns from DarkRP that you edited.

Note: If you want to edit a default DarkRP shipment, first disable it in darkrp_config/disabled_defaults.lua
	Once you've done that, copy and paste the shipment to this file and edit it.

The default shipments and guns can be found here:
https://github.com/FPtje/DarkRP/blob/master/gamemode/config/addentities.lua

For examples and explanation please visit this wiki page:
`


Add shipments and guns under the following line:
---------------------------------------------------------------------------]]
DarkRP.createShipment("Medical Vape Single", {
	model = "models/swamponions/vape.mdl", -- The model of the item that hovers above the shipment
	entity = "weapon_vape_medicinal", -- the entity that comes out of the shipment
	price = 1500, -- the price of one shipment
	amount = 1, -- how many of the item go in one purchased shipment
	separate = false, -- whether the item is sold separately (usually used for guns)
	pricesep = 100, -- the price of a separately sold item
 
	-- The following fields are OPTIONAL. If you do not need them, or do not need to change them from their defaults, REMOVE them.
	noship = false, -- whether this item has a shipment
	allowed = {TEAM_MEDIC}, -- OPTIONAL, which teams are allowed to buy this shipment/separate gun
	shipmodel = "models/items/item_item_crate.mdl", -- OPTIONAL, the model of the shipment (this crate is the default)
	weight = 15, -- OPTIONAL, the weight of the shipment. The default is the weight of the shipment 
        buttonColor = Color(255, 255, 255, 255), -- Optional: The color of the button in the F4 menu,
        label = "Medical Vape Single", -- Optional: the text on the button in the F4 menu
        category = "Singles", -- The name of the category it is in. Note: the category must be created!
        sortOrder = 100, -- The position of this thing in its category. Lower number means higher up.
 
	-- Advanced, optional
	shipmentClass = "spawned_shipment", -- The classname of the shipment entity. Use this if you have made a different shipment entity
	onBought = function(ply, shipment, ent) end, -- function that is called when the shipment is bought
	getPrice = function(ply, price) return ply:GetNWString("usergroup") == "donator" and price * 0.8 or price end, -- function to decide what the price is based on the player
	--spawn = function(shipment_ent, shipment_data) print("Spawn custom entity and place it") end, -- Function to override how the shipment spawns the weapon when used.
})

DarkRP.createShipment("Medical Vape Shipment", {
	model = "models/swamponions/vape.mdl", -- The model of the item that hovers above the shipment
	entity = "weapon_vape_medicinal", -- the entity that comes out of the shipment
	price = 10000, -- the price of one shipment
	amount = 10, -- how many of the item go in one purchased shipment
	separate = false, -- whether the item is sold separately (usually used for guns)
	pricesep = 100, -- the price of a separately sold item
 
	-- The following fields are OPTIONAL. If you do not need them, or do not need to change them from their defaults, REMOVE them.
	noship = false, -- whether this item has a shipment
	allowed = {TEAM_MEDIC}, -- OPTIONAL, which teams are allowed to buy this shipment/separate gun
	shipmodel = "models/items/item_item_crate.mdl", -- OPTIONAL, the model of the shipment (this crate is the default)
	weight = 30, -- OPTIONAL, the weight of the shipment. The default is the weight of the shipment 
        buttonColor = Color(255, 255, 255, 255), -- Optional: The color of the button in the F4 menu,
        label = "Medical Vape Shipment", -- Optional: the text on the button in the F4 menu
        category = "Shipments", -- The name of the category it is in. Note: the category must be created!
        sortOrder = 100, -- The position of this thing in its category. Lower number means higher up.
 
	-- Advanced, optional
	shipmentClass = "spawned_shipment", -- The classname of the shipment entity. Use this if you have made a different shipment entity
	onBought = function(ply, shipment, ent) end, -- function that is called when the shipment is bought
	getPrice = function(ply, price) return ply:GetNWString("usergroup") == "donator" and price * 0.8 or price end, -- function to decide what the price is based on the player
	--spawn = function(shipment_ent, shipment_data) print("Spawn custom entity and place it") end, -- Function to override how the shipment spawns the weapon when used.
})



DarkRP.createShipment(“Weed Single”, {
	model = "durgz_weed", -- The model of the item that hovers above the shipment
	entity = "durgz_weed", -- the entity that comes out of the shipment
	price = 1000, -- the price of one shipment
	amount = 1, -- how many of the item go in one purchased shipment
	separate = false, -- whether the item is sold separately (usually used for guns)
	pricesep = 100, -- the price of a separately sold item
 
	-- The following fields are OPTIONAL. If you do not need them, or do not need to change them from their defaults, REMOVE them.
	noship = false, -- whether this item has a shipment
	allowed = {TEAM_DRUGDEALER}, -- OPTIONAL, which teams are allowed to buy this shipment/separate gun
	shipmodel = "models/items/item_item_crate.mdl", -- OPTIONAL, the model of the shipment (this crate is the default)
	weight = 30, -- OPTIONAL, the weight of the shipment. The default is the weight of the shipment 
        buttonColor = Color(255, 255, 255, 255), -- Optional: The color of the button in the F4 menu,
        label = “Marijauna Single”, -- Optional: the text on the button in the F4 menu
        category = "Singles”, -- The name of the category it is in. Note: the category must be created!
        sortOrder = 100, -- The position of this thing in its category. Lower number means higher up.
 
	-- Advanced, optional
	shipmentClass = "spawned_shipment", -- The classname of the shipment entity. Use this if you have made a different shipment entity
	onBought = function(ply, shipment, ent) end, -- function that is called when the shipment is bought
	getPrice = function(ply, price) return ply:GetNWString("usergroup") == "donator" and price * 0.8 or price end, -- function to decide what the price is based on the player
	--spawn = function(shipment_ent, shipment_data) print("Spawn custom entity and place it") end, -- Function to override how the shipment spawns the weapon when used.
})

DarkRP.createShipment(“Weed Shipment”, {
	model = "durgz_weed", -- The model of the item that hovers above the shipment
	entity = "durgz_weed", -- the entity that comes out of the shipment
	price = 10000, -- the price of one shipment
	amount = 10, -- how many of the item go in one purchased shipment
	separate = false, -- whether the item is sold separately (usually used for guns)
	pricesep = 100, -- the price of a separately sold item
 
	-- The following fields are OPTIONAL. If you do not need them, or do not need to change them from their defaults, REMOVE them.
	noship = false, -- whether this item has a shipment
	allowed = {TEAM_DRUGDEALER}, -- OPTIONAL, which teams are allowed to buy this shipment/separate gun
	shipmodel = "models/items/item_item_crate.mdl", -- OPTIONAL, the model of the shipment (this crate is the default)
	weight = 30, -- OPTIONAL, the weight of the shipment. The default is the weight of the shipment 
        buttonColor = Color(255, 255, 255, 255), -- Optional: The color of the button in the F4 menu,
        label = “Marijauna Shipment”, -- Optional: the text on the button in the F4 menu
        category = "Singles”, -- The name of the category it is in. Note: the category must be created!
        sortOrder = 100, -- The position of this thing in its category. Lower number means higher up.
 
	-- Advanced, optional
	shipmentClass = "spawned_shipment", -- The classname of the shipment entity. Use this if you have made a different shipment entity
	onBought = function(ply, shipment, ent) end, -- function that is called when the shipment is bought
	getPrice = function(ply, price) return ply:GetNWString("usergroup") == "donator" and price * 0.8 or price end, -- function to decide what the price is based on the player
	--spawn = function(shipment_ent, shipment_data) print("Spawn custom entity and place it") end, -- Function to override how the shipment spawns the weapon when used.
})

DarkRP.createShipment(“Cocain Single”, {
	model = "durgz_cocaine", -- The model of the item that hovers above the shipment
	entity = "durgz_cocaine", -- the entity that comes out of the shipment
	price = 1000, -- the price of one shipment
	amount = 1, -- how many of the item go in one purchased shipment
	separate = false, -- whether the item is sold separately (usually used for guns)
	pricesep = 100, -- the price of a separately sold item
 
	-- The following fields are OPTIONAL. If you do not need them, or do not need to change them from their defaults, REMOVE them.
	noship = false, -- whether this item has a shipment
	allowed = {TEAM_DRUGDEALER}, -- OPTIONAL, which teams are allowed to buy this shipment/separate gun
	shipmodel = "models/items/item_item_crate.mdl", -- OPTIONAL, the model of the shipment (this crate is the default)
	weight = 30, -- OPTIONAL, the weight of the shipment. The default is the weight of the shipment 
        buttonColor = Color(255, 255, 255, 255), -- Optional: The color of the button in the F4 menu,
        label = “Cocain Single”, -- Optional: the text on the button in the F4 menu
        category = "Singles”, -- The name of the category it is in. Note: the category must be created!
        sortOrder = 100, -- The position of this thing in its category. Lower number means higher up.
 
	-- Advanced, optional
	shipmentClass = "spawned_shipment", -- The classname of the shipment entity. Use this if you have made a different shipment entity
	onBought = function(ply, shipment, ent) end, -- function that is called when the shipment is bought
	getPrice = function(ply, price) return ply:GetNWString("usergroup") == "donator" and price * 0.8 or price end, -- function to decide what the price is based on the player
	--spawn = function(shipment_ent, shipment_data) print("Spawn custom entity and place it") end, -- Function to override how the shipment spawns the weapon when used.
})

DarkRP.createShipment(“Cocain Shipment”, {
	model = "durgz_cocaine", -- The model of the item that hovers above the shipment
	entity = "durgz_cocaine", -- the entity that comes out of the shipment
	price = 10000, -- the price of one shipment
	amount = 10, -- how many of the item go in one purchased shipment
	separate = false, -- whether the item is sold separately (usually used for guns)
	pricesep = 100, -- the price of a separately sold item
 
	-- The following fields are OPTIONAL. If you do not need them, or do not need to change them from their defaults, REMOVE them.
	noship = false, -- whether this item has a shipment
	allowed = {TEAM_DRUGDEALER}, -- OPTIONAL, which teams are allowed to buy this shipment/separate gun
	shipmodel = "models/items/item_item_crate.mdl", -- OPTIONAL, the model of the shipment (this crate is the default)
	weight = 30, -- OPTIONAL, the weight of the shipment. The default is the weight of the shipment 
        buttonColor = Color(255, 255, 255, 255), -- Optional: The color of the button in the F4 menu,
        label = “Cocain Shipment”, -- Optional: the text on the button in the F4 menu
        category = "Singles”, -- The name of the category it is in. Note: the category must be created!
        sortOrder = 100, -- The position of this thing in its category. Lower number means higher up.
 
	-- Advanced, optional
	shipmentClass = "spawned_shipment", -- The classname of the shipment entity. Use this if you have made a different shipment entity
	onBought = function(ply, shipment, ent) end, -- function that is called when the shipment is bought
	getPrice = function(ply, price) return ply:GetNWString("usergroup") == "donator" and price * 0.8 or price end, -- function to decide what the price is based on the player
	--spawn = function(shipment_ent, shipment_data) print("Spawn custom entity and place it") end, -- Function to override how the shipment spawns the weapon when used.
})

DarkRP.createShipment(“Heroin Single”, {
	model = "durgz_heroin", -- The model of the item that hovers above the shipment
	entity = "durgz_heroin", -- the entity that comes out of the shipment
	price = 1000, -- the price of one shipment
	amount = 1, -- how many of the item go in one purchased shipment
	separate = false, -- whether the item is sold separately (usually used for guns)
	pricesep = 100, -- the price of a separately sold item
 
	-- The following fields are OPTIONAL. If you do not need them, or do not need to change them from their defaults, REMOVE them.
	noship = false, -- whether this item has a shipment
	allowed = {TEAM_DRUGDEALER}, -- OPTIONAL, which teams are allowed to buy this shipment/separate gun
	shipmodel = "models/items/item_item_crate.mdl", -- OPTIONAL, the model of the shipment (this crate is the default)
	weight = 30, -- OPTIONAL, the weight of the shipment. The default is the weight of the shipment 
        buttonColor = Color(255, 255, 255, 255), -- Optional: The color of the button in the F4 menu,
        label = “Heroin Single”, -- Optional: the text on the button in the F4 menu
        category = "Singles”, -- The name of the category it is in. Note: the category must be created!
        sortOrder = 100, -- The position of this thing in its category. Lower number means higher up.
 
	-- Advanced, optional
	shipmentClass = "spawned_shipment", -- The classname of the shipment entity. Use this if you have made a different shipment entity
	onBought = function(ply, shipment, ent) end, -- function that is called when the shipment is bought
	getPrice = function(ply, price) return ply:GetNWString("usergroup") == "donator" and price * 0.8 or price end, -- function to decide what the price is based on the player
	--spawn = function(shipment_ent, shipment_data) print("Spawn custom entity and place it") end, -- Function to override how the shipment spawns the weapon when used.
})

DarkRP.createShipment(“Heroin Shipment”, {
	model = "durgz_heroin", -- The model of the item that hovers above the shipment
	entity = "durgz_heroin", -- the entity that comes out of the shipment
	price = 1000, -- the price of one shipment
	amount = 10, -- how many of the item go in one purchased shipment
	separate = false, -- whether the item is sold separately (usually used for guns)
	pricesep = 100, -- the price of a separately sold item
 
	-- The following fields are OPTIONAL. If you do not need them, or do not need to change them from their defaults, REMOVE them.
	noship = false, -- whether this item has a shipment
	allowed = {TEAM_DRUGDEALER}, -- OPTIONAL, which teams are allowed to buy this shipment/separate gun
	shipmodel = "models/items/item_item_crate.mdl", -- OPTIONAL, the model of the shipment (this crate is the default)
	weight = 30, -- OPTIONAL, the weight of the shipment. The default is the weight of the shipment 
        buttonColor = Color(255, 255, 255, 255), -- Optional: The color of the button in the F4 menu,
        label = “Heroin Shipment”, -- Optional: the text on the button in the F4 menu
        category = "Singles”, -- The name of the category it is in. Note: the category must be created!
        sortOrder = 100, -- The position of this thing in its category. Lower number means higher up.
 
	-- Advanced, optional
	shipmentClass = "spawned_shipment", -- The classname of the shipment entity. Use this if you have made a different shipment entity
	onBought = function(ply, shipment, ent) end, -- function that is called when the shipment is bought
	getPrice = function(ply, price) return ply:GetNWString("usergroup") == "donator" and price * 0.8 or price end, -- function to decide what the price is based on the player
	--spawn = function(shipment_ent, shipment_data) print("Spawn custom entity and place it") end, -- Function to override how the shipment spawns the weapon when used.
})

DarkRP.createShipment(“LSD Single”, {
	model = "durgz_lsd", -- The model of the item that hovers above the shipment
	entity = "durgz_lsd", -- the entity that comes out of the shipment
	price = 1000, -- the price of one shipment
	amount = 1, -- how many of the item go in one purchased shipment
	separate = false, -- whether the item is sold separately (usually used for guns)
	pricesep = 100, -- the price of a separately sold item
 
	-- The following fields are OPTIONAL. If you do not need them, or do not need to change them from their defaults, REMOVE them.
	noship = false, -- whether this item has a shipment
	allowed = {TEAM_DRUGDEALER}, -- OPTIONAL, which teams are allowed to buy this shipment/separate gun
	shipmodel = "models/items/item_item_crate.mdl", -- OPTIONAL, the model of the shipment (this crate is the default)
	weight = 30, -- OPTIONAL, the weight of the shipment. The default is the weight of the shipment 
        buttonColor = Color(255, 255, 255, 255), -- Optional: The color of the button in the F4 menu,
        label = “LSD Single”, -- Optional: the text on the button in the F4 menu
        category = "Singles”, -- The name of the category it is in. Note: the category must be created!
        sortOrder = 100, -- The position of this thing in its category. Lower number means higher up.
 
	-- Advanced, optional
	shipmentClass = "spawned_shipment", -- The classname of the shipment entity. Use this if you have made a different shipment entity
	onBought = function(ply, shipment, ent) end, -- function that is called when the shipment is bought
	getPrice = function(ply, price) return ply:GetNWString("usergroup") == "donator" and price * 0.8 or price end, -- function to decide what the price is based on the player
	--spawn = function(shipment_ent, shipment_data) print("Spawn custom entity and place it") end, -- Function to override how the shipment spawns the weapon when used.
})

DarkRP.createShipment(“LSD Shipment”, {
	model = "durgz_lsd", -- The model of the item that hovers above the shipment
	entity = "durgz_lsd", -- the entity that comes out of the shipment
	price = 10000, -- the price of one shipment
	amount = 10, -- how many of the item go in one purchased shipment
	separate = false, -- whether the item is sold separately (usually used for guns)
	pricesep = 100, -- the price of a separately sold item
 
	-- The following fields are OPTIONAL. If you do not need them, or do not need to change them from their defaults, REMOVE them.
	noship = false, -- whether this item has a shipment
	allowed = {TEAM_DRUGDEALER}, -- OPTIONAL, which teams are allowed to buy this shipment/separate gun
	shipmodel = "models/items/item_item_crate.mdl", -- OPTIONAL, the model of the shipment (this crate is the default)
	weight = 30, -- OPTIONAL, the weight of the shipment. The default is the weight of the shipment 
        buttonColor = Color(255, 255, 255, 255), -- Optional: The color of the button in the F4 menu,
        label = “LSD Shipment”, -- Optional: the text on the button in the F4 menu
        category = "Singles”, -- The name of the category it is in. Note: the category must be created!
        sortOrder = 100, -- The position of this thing in its category. Lower number means higher up.
 
	-- Advanced, optional
	shipmentClass = "spawned_shipment", -- The classname of the shipment entity. Use this if you have made a different shipment entity
	onBought = function(ply, shipment, ent) end, -- function that is called when the shipment is bought
	getPrice = function(ply, price) return ply:GetNWString("usergroup") == "donator" and price * 0.8 or price end, -- function to decide what the price is based on the player
	--spawn = function(shipment_ent, shipment_data) print("Spawn custom entity and place it") end, -- Function to override how the shipment spawns the weapon when used.
})

DarkRP.createShipment(“Mushrooms Single”, {
	model = "durgz_mushroom", -- The model of the item that hovers above the shipment
	entity = "durgz_mushroom", -- the entity that comes out of the shipment
	price = 1000, -- the price of one shipment
	amount = 1, -- how many of the item go in one purchased shipment
	separate = false, -- whether the item is sold separately (usually used for guns)
	pricesep = 100, -- the price of a separately sold item
 
	-- The following fields are OPTIONAL. If you do not need them, or do not need to change them from their defaults, REMOVE them.
	noship = false, -- whether this item has a shipment
	allowed = {TEAM_DRUGDEALER}, -- OPTIONAL, which teams are allowed to buy this shipment/separate gun
	shipmodel = "models/items/item_item_crate.mdl", -- OPTIONAL, the model of the shipment (this crate is the default)
	weight = 30, -- OPTIONAL, the weight of the shipment. The default is the weight of the shipment 
        buttonColor = Color(255, 255, 255, 255), -- Optional: The color of the button in the F4 menu,
        label = "Mushrooms Single"”, -- Optional: the text on the button in the F4 menu
        category = "Singles”, -- The name of the category it is in. Note: the category must be created!
        sortOrder = 100, -- The position of this thing in its category. Lower number means higher up.
 
	-- Advanced, optional
	shipmentClass = "spawned_shipment", -- The classname of the shipment entity. Use this if you have made a different shipment entity
	onBought = function(ply, shipment, ent) end, -- function that is called when the shipment is bought
	getPrice = function(ply, price) return ply:GetNWString("usergroup") == "donator" and price * 0.8 or price end, -- function to decide what the price is based on the player
	--spawn = function(shipment_ent, shipment_data) print("Spawn custom entity and place it") end, -- Function to override how the shipment spawns the weapon when used.
})

DarkRP.createShipment(“Mushrooms Shipment”, {
	model = "durgz_mushroom", -- The model of the item that hovers above the shipment
	entity = "durgz_mushroom", -- the entity that comes out of the shipment
	price = 10000, -- the price of one shipment
	amount = 10, -- how many of the item go in one purchased shipment
	separate = false, -- whether the item is sold separately (usually used for guns)
	pricesep = 100, -- the price of a separately sold item
 
	-- The following fields are OPTIONAL. If you do not need them, or do not need to change them from their defaults, REMOVE them.
	noship = false, -- whether this item has a shipment
	allowed = {TEAM_DRUGDEALER}, -- OPTIONAL, which teams are allowed to buy this shipment/separate gun
	shipmodel = "models/items/item_item_crate.mdl", -- OPTIONAL, the model of the shipment (this crate is the default)
	weight = 30, -- OPTIONAL, the weight of the shipment. The default is the weight of the shipment 
        buttonColor = Color(255, 255, 255, 255), -- Optional: The color of the button in the F4 menu,
        label = "Mushrooms Shipment"”, -- Optional: the text on the button in the F4 menu
        category = "Singles”, -- The name of the category it is in. Note: the category must be created!
        sortOrder = 100, -- The position of this thing in its category. Lower number means higher up.
 
	-- Advanced, optional
	shipmentClass = "spawned_shipment", -- The classname of the shipment entity. Use this if you have made a different shipment entity
	onBought = function(ply, shipment, ent) end, -- function that is called when the shipment is bought
	getPrice = function(ply, price) return ply:GetNWString("usergroup") == "donator" and price * 0.8 or price end, -- function to decide what the price is based on the player
	--spawn = function(shipment_ent, shipment_data) print("Spawn custom entity and place it") end, -- Function to override how the shipment spawns the weapon when used.
})