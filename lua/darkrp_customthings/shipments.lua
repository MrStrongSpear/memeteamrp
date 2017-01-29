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
DarkRP.createShipment("Single Medical Vape", {
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


DarkRP.createShipment("Marijuana Single", {
	model = "durgz_weed", -- The model of the item that hovers above the shipment
	entity = "durgz_weed", -- the entity that comes out of the shipment
	price = 300, -- the price of one shipment
	amount = 1, -- how many of the item go in one purchased shipment
	separate = false, -- whether the item is sold separately (usually used for guns)
	pricesep = 100, -- the price of a separately sold item
 
	-- The following fields are OPTIONAL. If you do not need them, or do not need to change them from their defaults, REMOVE them.
	noship = false, -- whether this item has a shipment
	allowed = {TEAM_DRUG}, -- OPTIONAL, which teams are allowed to buy this shipment/separate gun
	shipmodel = "models/items/item_item_crate.mdl", -- OPTIONAL, the model of the shipment (this crate is the default)
	weight = 30, -- OPTIONAL, the weight of the shipment. The default is the weight of the shipment 
        buttonColor = Color(255, 255, 255, 255), -- Optional: The color of the button in the F4 menu,
        label = "Marijuana Single", -- Optional: the text on the button in the F4 menu
        category = "Singles", -- The name of the category it is in. Note: the category must be created!
        sortOrder = 100, -- The position of this thing in its category. Lower number means higher up.
 
	-- Advanced, optional
	shipmentClass = "spawned_shipment", -- The classname of the shipment entity. Use this if you have made a different shipment entity
	onBought = function(ply, shipment, ent) end, -- function that is called when the shipment is bought
	getPrice = function(ply, price) return ply:GetNWString("usergroup") == "donator" and price * 0.8 or price end, -- function to decide what the price is based on the player
	--spawn = function(shipment_ent, shipment_data) print("Spawn custom entity and place it") end, -- Function to override how the shipment spawns the weapon when used.
})

DarkRP.createShipment("Marijuana Shipment", {
	model = "durgz_weed", -- The model of the item that hovers above the shipment
	entity = "durgz_weed", -- the entity that comes out of the shipment
	price = 600, -- the price of one shipment
	amount = 10, -- how many of the item go in one purchased shipment
	separate = false -- whether the item is sold separately (usually used for guns)
	pricesep = 100, -- the price of a separately sold item
 
	-- The following fields are OPTIONAL. If you do not need them, or do not need to change them from their defaults, REMOVE them.
	noship = false, -- whether this item has a shipment
	allowed = {TEAM_DRUG}, -- OPTIONAL, which teams are allowed to buy this shipment/separate gun
	shipmodel = "models/items/item_item_crate.mdl", -- OPTIONAL, the model of the shipment (this crate is the default)
	weight = 30, -- OPTIONAL, the weight of the shipment. The default is the weight of the shipment 
        buttonColor = Color(255, 255, 255, 255), -- Optional: The color of the button in the F4 menu,
        label = "Marijuana Shipment", -- Optional: the text on the button in the F4 menu
        category = "Shipments", -- The name of the category it is in. Note: the category must be created!
        sortOrder = 100, -- The position of this thing in its category. Lower number means higher up.
 
	-- Advanced, optional
	shipmentClass = "spawned_shipment", -- The classname of the shipment entity. Use this if you have made a different shipment entity
	onBought = function(ply, shipment, ent) end, -- function that is called when the shipment is bought
	getPrice = function(ply, price) return ply:GetNWString("usergroup") == "donator" and price * 0.8 or price end, -- function to decide what the price is based on the player
	--spawn = function(shipment_ent, shipment_data) print("Spawn custom entity and place it") end, -- Function to override how the shipment spawns the weapon when used.
})


DarkRP.createShipment("Cocaine Single", {
	model = "durgz_cocaine", -- The model of the item that hovers above the shipment
	entity = "durgz_cocaine", -- the entity that comes out of the shipment
	price = 150, -- the price of one shipment
	amount = 1, -- how many of the item go in one purchased shipment
	separate = false, -- whether the item is sold separately (usually used for guns)
	pricesep = 100, -- the price of a separately sold item
 
	-- The following fields are OPTIONAL. If you do not need them, or do not need to change them from their defaults, REMOVE them.
	noship = false, -- whether this item has a shipment
	allowed = {TEAM_DRUG}, -- OPTIONAL, which teams are allowed to buy this shipment/separate gun
	shipmodel = "models/items/item_item_crate.mdl", -- OPTIONAL, the model of the shipment (this crate is the default)
	weight = 30, -- OPTIONAL, the weight of the shipment. The default is the weight of the shipment 
        buttonColor = Color(255, 255, 255, 255), -- Optional: The color of the button in the F4 menu,
        label = "Cocain Single", -- Optional: the text on the button in the F4 menu
        category = "Singles", -- The name of the category it is in. Note: the category must be created!
        sortOrder = 100, -- The position of this thing in its category. Lower number means higher up.
 
	-- Advanced, optional
	shipmentClass = "spawned_shipment", -- The classname of the shipment entity. Use this if you have made a different shipment entity
	onBought = function(ply, shipment, ent) end, -- function that is called when the shipment is bought
	getPrice = function(ply, price) return ply:GetNWString("usergroup") == "donator" and price * 0.8 or price end, -- function to decide what the price is based on the player
	--spawn = function(shipment_ent, shipment_data) print("Spawn custom entity and place it") end, -- Function to override how the shipment spawns the weapon when used.
})


DarkRP.createShipment("Cocaine Shipment", {
	model = "durgz_cocain"", -- The model of the item that hovers above the shipment
	entity = "durgz_cocain", -- the entity that comes out of the shipment
	price = 300, -- the price of one shipment
	amount = 10, -- how many of the item go in one purchased shipment
	separate = false, -- whether the item is sold separately (usually used for guns)
	pricesep = 100, -- the price of a separately sold item
 
	-- The following fields are OPTIONAL. If you do not need them, or do not need to change them from their defaults, REMOVE them.
	noship = false, -- whether this item has a shipment
	allowed = {TEAM_DRUG}, -- OPTIONAL, which teams are allowed to buy this shipment/separate gun
	shipmodel = "models/items/item_item_crate.mdl", -- OPTIONAL, the model of the shipment (this crate is the default)
	weight = 30, -- OPTIONAL, the weight of the shipment. The default is the weight of the shipment 
        buttonColor = Color(255, 255, 255, 255), -- Optional: The color of the button in the F4 menu,
        label = "Cocain Shipment", -- Optional: the text on the button in the F4 menu
        category = "Shipments", -- The name of the category it is in. Note: the category must be created!
        sortOrder = 100, -- The position of this thing in its category. Lower number means higher up.
 
	-- Advanced, optional
	shipmentClass = "spawned_shipment", -- The classname of the shipment entity. Use this if you have made a different shipment entity
	onBought = function(ply, shipment, ent) end, -- function that is called when the shipment is bought
	getPrice = function(ply, price) return ply:GetNWString("usergroup") == "donator" and price * 0.8 or price end, -- function to decide what the price is based on the player
	--spawn = function(shipment_ent, shipment_data) print("Spawn custom entity and place it") end, -- Function to override how the shipment spawns the weapon when used.
})

DarkRP.createShipment("Heroin Single", {

	model = "durgz_heroin", -- The model of the item that hovers above the shipment
	entity = "durgz_heroin", -- the entity that comes out of the shipment
	price = 300, -- the price of one shipment
	amount = 1, -- how many of the item go in one purchased shipment
	separate = false, -- whether the item is sold separately (usually used for guns)
	pricesep = 100, -- the price of a separately sold item
 
	-- The following fields are OPTIONAL. If you do not need them, or do not need to change them from their defaults, REMOVE them.
	noship = false, -- whether this item has a shipment
	allowed = {TEAM_DRUG}, -- OPTIONAL, which teams are allowed to buy this shipment/separate gun
	shipmodel = "models/items/item_item_crate.mdl", -- OPTIONAL, the model of the shipment (this crate is the default)
	weight = 30, -- OPTIONAL, the weight of the shipment. The default is the weight of the shipment 
        buttonColor = Color(255, 255, 255, 255), -- Optional: The color of the button in the F4 menu,
        label = "Heroin Single", -- Optional: the text on the button in the F4 menu
        category = "Singles", -- The name of the category it is in. Note: the category must be created!
        sortOrder = 100, -- The position of this thing in its category. Lower number means higher up.
 
	-- Advanced, optional
	shipmentClass = "spawned_shipment", -- The classname of the shipment entity. Use this if you have made a different shipment entity
	onBought = function(ply, shipment, ent) end, -- function that is called when the shipment is bought
	getPrice = function(ply, price) return ply:GetNWString("usergroup") == "donator" and price * 0.8 or price end, -- function to decide what the price is based on the player
	--spawn = function(shipment_ent, shipment_data) print("Spawn custom entity and place it") end, -- Function to override how the shipment spawns the weapon when used.
})

DarkRP.createShipment("Heroin Shipment", {
	model = "durgz_heroin", -- The model of the item that hovers above the shipment
	entity = "durgz_heroin", -- the entity that comes out of the shipment
	price = 600, -- the price of one shipment
	amount = 10, -- how many of the item go in one purchased shipment
	separate = false, -- whether the item is sold separately (usually used for guns)
	pricesep = 100, -- the price of a separately sold item
 
	-- The following fields are OPTIONAL. If you do not need them, or do not need to change them from their defaults, REMOVE them.
	noship = false, -- whether this item has a shipment
	allowed = {TEAM_DRUG}, -- OPTIONAL, which teams are allowed to buy this shipment/separate gun
	shipmodel = "models/items/item_item_crate.mdl", -- OPTIONAL, the model of the shipment (this crate is the default)
	weight = 30, -- OPTIONAL, the weight of the shipment. The default is the weight of the shipment 
        buttonColor = Color(255, 255, 255, 255), -- Optional: The color of the button in the F4 menu,
        label = "Heroin Shipment", -- Optional: the text on the button in the F4 menu
        category = "Shipments", -- The name of the category it is in. Note: the category must be created!
        sortOrder = 100, -- The position of this thing in its category. Lower number means higher up.
 
	-- Advanced, optional
	shipmentClass = "spawned_shipment", -- The classname of the shipment entity. Use this if you have made a different shipment entity
	onBought = function(ply, shipment, ent) end, -- function that is called when the shipment is bought
	getPrice = function(ply, price) return ply:GetNWString("usergroup") == "donator" and price * 0.8 or price end, -- function to decide what the price is based on the player
	--spawn = function(shipment_ent, shipment_data) print("Spawn custom entity and place it") end, -- Function to override how the shipment spawns the weapon when used.
})


DarkRP.createShipment("LSD Single", {
	model = "durgz_lsd", -- The model of the item that hovers above the shipment
	entity = "durgz_lsd", -- the entity that comes out of the shipment
	price = 500, -- the price of one shipment
	amount = 1, -- how many of the item go in one purchased shipment
	separate = false, -- whether the item is sold separately (usually used for guns)
	pricesep = 100, -- the price of a separately sold item
 
	-- The following fields are OPTIONAL. If you do not need them, or do not need to change them from their defaults, REMOVE them.
	noship = false, -- whether this item has a shipment
	allowed = {TEAM_DURGZ}, -- OPTIONAL, which teams are allowed to buy this shipment/separate gun
	shipmodel = "models/items/item_item_crate.mdl", -- OPTIONAL, the model of the shipment (this crate is the default)
	weight = 30, -- OPTIONAL, the weight of the shipment. The default is the weight of the shipment 
        buttonColor = Color(255, 255, 255, 255), -- Optional: The color of the button in the F4 menu,
        label = "LSD Single", -- Optional: the text on the button in the F4 menu
        category = "Singles", -- The name of the category it is in. Note: the category must be created!
        sortOrder = 100, -- The position of this thing in its category. Lower number means higher up.
 
	-- Advanced, optional
	shipmentClass = "spawned_shipment", -- The classname of the shipment entity. Use this if you have made a different shipment entity
	onBought = function(ply, shipment, ent) end, -- function that is called when the shipment is bought
	getPrice = function(ply, price) return ply:GetNWString("usergroup") == "donator" and price * 0.8 or price end, -- function to decide what the price is based on the player
	--spawn = function(shipment_ent, shipment_data) print("Spawn custom entity and place it") end, -- Function to override how the shipment spawns the weapon when used.
})

DarkRP.createShipment("LSD Shipment", {
	model = "durgz_lsd", -- The model of the item that hovers above the shipment
	entity = "durgz_lsd", -- the entity that comes out of the shipment
	price = 1000, -- the price of one shipment
	amount = 10, -- how many of the item go in one purchased shipment
	separate = false, -- whether the item is sold separately (usually used for guns)
	pricesep = 100, -- the price of a separately sold item
 
	-- The following fields are OPTIONAL. If you do not need them, or do not need to change them from their defaults, REMOVE them.
	noship = false, -- whether this item has a shipment
	allowed = {TEAM_DRUG}, -- OPTIONAL, which teams are allowed to buy this shipment/separate gun
	shipmodel = "models/items/item_item_crate.mdl", -- OPTIONAL, the model of the shipment (this crate is the default)
	weight = 30, -- OPTIONAL, the weight of the shipment. The default is the weight of the shipment 
        buttonColor = Color(255, 255, 255, 255), -- Optional: The color of the button in the F4 menu,
        label = "LSD Shipment", -- Optional: the text on the button in the F4 menu
        category = "Shipments", -- The name of the category it is in. Note: the category must be created!
        sortOrder = 100, -- The position of this thing in its category. Lower number means higher up.
 
	-- Advanced, optional
	shipmentClass = "spawned_shipment", -- The classname of the shipment entity. Use this if you have made a different shipment entity
	onBought = function(ply, shipment, ent) end, -- function that is called when the shipment is bought
	getPrice = function(ply, price) return ply:GetNWString("usergroup") == "donator" and price * 0.8 or price end, -- function to decide what the price is based on the player
	--spawn = function(shipment_ent, shipment_data) print("Spawn custom entity and place it") end, -- Function to override how the shipment spawns the weapon when used.
})

DarkRP.createShipment("Mushroom Single", {
	model = "durgz_mushroom", -- The model of the item that hovers above the shipment
	entity = "durgz_mushroom", -- the entity that comes out of the shipment
	price = 1000, -- the price of one shipment
	amount = 1, -- how many of the item go in one purchased shipment
	separate = false, -- whether the item is sold separately (usually used for guns)
	pricesep = 100, -- the price of a separately sold item
 
	-- The following fields are OPTIONAL. If you do not need them, or do not need to change them from their defaults, REMOVE them.
	noship = false, -- whether this item has a shipment
	allowed = {TEAM_DRUG}, -- OPTIONAL, which teams are allowed to buy this shipment/separate gun
	shipmodel = "models/items/item_item_crate.mdl", -- OPTIONAL, the model of the shipment (this crate is the default)
	weight = 30, -- OPTIONAL, the weight of the shipment. The default is the weight of the shipment 
        buttonColor = Color(255, 255, 255, 255), -- Optional: The color of the button in the F4 menu,
        label = "Mushrooms Single", -- Optional: the text on the button in the F4 menu
        category = "Singles", -- The name of the category it is in. Note: the category must be created!
        sortOrder = 100, -- The position of this thing in its category. Lower number means higher up.
 
	-- Advanced, optional
	shipmentClass = "spawned_shipment", -- The classname of the shipment entity. Use this if you have made a different shipment entity
	onBought = function(ply, shipment, ent) end, -- function that is called when the shipment is bought
	getPrice = function(ply, price) return ply:GetNWString("usergroup") == "donator" and price * 0.8 or price end, -- function to decide what the price is based on the player
	--spawn = function(shipment_ent, shipment_data) print("Spawn custom entity and place it") end, -- Function to override how the shipment spawns the weapon when used.
})

DarkRP.createShipment("Mushroom Shipment", {
	model = "durgz_mushroom", -- The model of the item that hovers above the shipment
	entity = "durgz_mushroom", -- the entity that comes out of the shipment
	price = 1500, -- the price of one shipment
	amount = 10, -- how many of the item go in one purchased shipment
	separate = false, -- whether the item is sold separately (usually used for guns)
	pricesep = 100, -- the price of a separately sold item
 
	-- The following fields are OPTIONAL. If you do not need them, or do not need to change them from their defaults, REMOVE them.
	noship = false, -- whether this item has a shipment
	allowed = {TEAM_DRUG}, -- OPTIONAL, which teams are allowed to buy this shipment/separate gun
	shipmodel = "models/items/item_item_crate.mdl", -- OPTIONAL, the model of the shipment (this crate is the default)
	weight = 30, -- OPTIONAL, the weight of the shipment. The default is the weight of the shipment 
        buttonColor = Color(255, 255, 255, 255), -- Optional: The color of the button in the F4 menu,
        label = "Mushrooms Shipment", -- Optional: the text on the button in the F4 menu
        category = "Shipments", -- The name of the category it is in. Note: the category must be created!
        sortOrder = 100, -- The position of this thing in its category. Lower number means higher up.
 
	-- Advanced, optional
	shipmentClass = "spawned_shipment", -- The classname of the shipment entity. Use this if you have made a different shipment entity
	onBought = function(ply, shipment, ent) end, -- function that is called when the shipment is bought
	getPrice = function(ply, price) return ply:GetNWString("usergroup") == "donator" and price * 0.8 or price end, -- function to decide what the price is based on the player
	--spawn = function(shipment_ent, shipment_data) print("Spawn custom entity and place it") end, -- Function to override how the shipment spawns the weapon when used.
})

DarkRP.createShipment("Hallucinogenic Vape Single", {
	model = "models/swamponions/vape.mdl", -- The model of the item that hovers above the shipment
	entity = "weapon_vape_hallucinogenic", -- the entity that comes out of the shipment
	price = 1000, -- the price of one shipment
	amount = 1, -- how many of the item go in one purchased shipment
	separate = false, -- whether the item is sold separately (usually used for guns)
	pricesep = 100, -- the price of a separately sold item
 
	-- The following fields are OPTIONAL. If you do not need them, or do not need to change them from their defaults, REMOVE them.
	noship = false, -- whether this item has a shipment
	allowed = {TEAM_DRUG}, -- OPTIONAL, which teams are allowed to buy this shipment/separate gun
	shipmodel = "models/items/item_item_crate.mdl", -- OPTIONAL, the model of the shipment (this crate is the default)
	weight = 15, -- OPTIONAL, the weight of the shipment. The default is the weight of the shipment 
        buttonColor = Color(255, 255, 255, 255), -- Optional: The color of the button in the F4 menu,
        label = "Hallucinogenic Vape Single", -- Optional: the text on the button in the F4 menu
        category = "Singles", -- The name of the category it is in. Note: the category must be created!
        sortOrder = 100, -- The position of this thing in its category. Lower number means higher up.
 
	-- Advanced, optional
	shipmentClass = "spawned_shipment", -- The classname of the shipment entity. Use this if you have made a different shipment entity
	onBought = function(ply, shipment, ent) end, -- function that is called when the shipment is bought
	getPrice = function(ply, price) return ply:GetNWString("usergroup") == "donator" and price * 0.8 or price end, -- function to decide what the price is based on the player
	--spawn = function(shipment_ent, shipment_data) print("Spawn custom entity and place it") end, -- Function to override how the shipment spawns the weapon when used.
})

DarkRP.createShipment("Hallucinogenic Vape Shipment", {
	model = "models/swamponions/vape.mdl", -- The model of the item that hovers above the shipment
	entity = "weapon_vape_hallucinogenic", -- the entity that comes out of the shipment
	price = 2000, -- the price of one shipment
	amount = 10, -- how many of the item go in one purchased shipment
	separate = false, -- whether the item is sold separately (usually used for guns)
	pricesep = 100, -- the price of a separately sold item
 
	-- The following fields are OPTIONAL. If you do not need them, or do not need to change them from their defaults, REMOVE them.
	noship = false, -- whether this item has a shipment
	allowed = {TEAM_DRUG}, -- OPTIONAL, which teams are allowed to buy this shipment/separate gun
	shipmodel = "models/items/item_item_crate.mdl", -- OPTIONAL, the model of the shipment (this crate is the default)
	weight = 15, -- OPTIONAL, the weight of the shipment. The default is the weight of the shipment 
        buttonColor = Color(255, 255, 255, 255), -- Optional: The color of the button in the F4 menu,
        label = "Hallucinogenic Vape Single", -- Optional: the text on the button in the F4 menu
        category = "Singles", -- The name of the category it is in. Note: the category must be created!
        sortOrder = 100, -- The position of this thing in its category. Lower number means higher up.
 
	-- Advanced, optional
	shipmentClass = "spawned_shipment", -- The classname of the shipment entity. Use this if you have made a different shipment entity
	onBought = function(ply, shipment, ent) end, -- function that is called when the shipment is bought
	getPrice = function(ply, price) return ply:GetNWString("usergroup") == "donator" and price * 0.8 or price end, -- function to decide what the price is based on the player
	--spawn = function(shipment_ent, shipment_data) print("Spawn custom entity and place it") end, -- Function to override how the shipment spawns the weapon when used.
})

DarkRP.createShipment("Normal Vape Single", {
	model = "models/swamponions/vape.mdl", -- The model of the item that hovers above the shipment
	entity = "weapon_vape", -- the entity that comes out of the shipment
	price = 50, -- the price of one shipment
	amount = 1, -- how many of the item go in one purchased shipment
	separate = false, -- whether the item is sold separately (usually used for guns)
	pricesep = 100, -- the price of a separately sold item
 
	-- The following fields are OPTIONAL. If you do not need them, or do not need to change them from their defaults, REMOVE them.
	noship = false, -- whether this item has a shipment
	allowed = {TEAM_VAPE}, -- OPTIONAL, which teams are allowed to buy this shipment/separate gun
	shipmodel = "models/items/item_item_crate.mdl", -- OPTIONAL, the model of the shipment (this crate is the default)
	weight = 15, -- OPTIONAL, the weight of the shipment. The default is the weight of the shipment 
        buttonColor = Color(255, 255, 255, 255), -- Optional: The color of the button in the F4 menu,
        label = "Normal Vape Single", -- Optional: the text on the button in the F4 menu
        category = "Singles", -- The name of the category it is in. Note: the category must be created!
        sortOrder = 100, -- The position of this thing in its category. Lower number means higher up.
 
	-- Advanced, optional
	shipmentClass = "spawned_shipment", -- The classname of the shipment entity. Use this if you have made a different shipment entity
	onBought = function(ply, shipment, ent) end, -- function that is called when the shipment is bought
	getPrice = function(ply, price) return ply:GetNWString("usergroup") == "donator" and price * 0.8 or price end, -- function to decide what the price is based on the player
	--spawn = function(shipment_ent, shipment_data) print("Spawn custom entity and place it") end, -- Function to override how the shipment spawns the weapon when used.
})

DarkRP.createShipment("Normal Vape Shipment", {
	model = "models/swamponions/vape.mdl", -- The model of the item that hovers above the shipment
	entity = "weapon_vape", -- the entity that comes out of the shipment
	price = 100, -- the price of one shipment
	amount = 10, -- how many of the item go in one purchased shipment
	separate = false, -- whether the item is sold separately (usually used for guns)
	pricesep = 100, -- the price of a separately sold item
 
	-- The following fields are OPTIONAL. If you do not need them, or do not need to change them from their defaults, REMOVE them.
	noship = false, -- whether this item has a shipment
	allowed = {TEAM_VAPE}, -- OPTIONAL, which teams are allowed to buy this shipment/separate gun
	shipmodel = "models/items/item_item_crate.mdl", -- OPTIONAL, the model of the shipment (this crate is the default)
	weight = 15, -- OPTIONAL, the weight of the shipment. The default is the weight of the shipment 
        buttonColor = Color(255, 255, 255, 255), -- Optional: The color of the button in the F4 menu,
        label = "Normal Vape Shipment", -- Optional: the text on the button in the F4 menu
        category = "Shipments", -- The name of the category it is in. Note: the category must be created!
        sortOrder = 100, -- The position of this thing in its category. Lower number means higher up.
 
	-- Advanced, optional
	shipmentClass = "spawned_shipment", -- The classname of the shipment entity. Use this if you have made a different shipment entity
	onBought = function(ply, shipment, ent) end, -- function that is called when the shipment is bought
	getPrice = function(ply, price) return ply:GetNWString("usergroup") == "donator" and price * 0.8 or price end, -- function to decide what the price is based on the player
	--spawn = function(shipment_ent, shipment_data) print("Spawn custom entity and place it") end, -- Function to override how the shipment spawns the weapon when used.
})

DarkRP.createShipment("American Vape Single", {
	model = "models/swamponions/vape.mdl", -- The model of the item that hovers above the shipment
	entity = "weapon_vape_american", -- the entity that comes out of the shipment
	price = 500, -- the price of one shipment
	amount = 1, -- how many of the item go in one purchased shipment
	separate = false, -- whether the item is sold separately (usually used for guns)
	pricesep = 100, -- the price of a separately sold item
 
	-- The following fields are OPTIONAL. If you do not need them, or do not need to change them from their defaults, REMOVE them.
	noship = false, -- whether this item has a shipment
	allowed = {TEAM_VAPE}, -- OPTIONAL, which teams are allowed to buy this shipment/separate gun
	shipmodel = "models/items/item_item_crate.mdl", -- OPTIONAL, the model of the shipment (this crate is the default)
	weight = 15, -- OPTIONAL, the weight of the shipment. The default is the weight of the shipment 
        buttonColor = Color(255, 255, 255, 255), -- Optional: The color of the button in the F4 menu,
        label = "American Vape Single", -- Optional: the text on the button in the F4 menu
        category = "Singles", -- The name of the category it is in. Note: the category must be created!
        sortOrder = 100, -- The position of this thing in its category. Lower number means higher up.
 
	-- Advanced, optional
	shipmentClass = "spawned_shipment", -- The classname of the shipment entity. Use this if you have made a different shipment entity
	onBought = function(ply, shipment, ent) end, -- function that is called when the shipment is bought
	getPrice = function(ply, price) return ply:GetNWString("usergroup") == "donator" and price * 0.8 or price end, -- function to decide what the price is based on the player
	--spawn = function(shipment_ent, shipment_data) print("Spawn custom entity and place it") end, -- Function to override how the shipment spawns the weapon when used.
})

DarkRP.createShipment("American Vape Shipment", {
	model = "models/swamponions/vape.mdl", -- The model of the item that hovers above the shipment
	entity = "weapon_vape_american", -- the entity that comes out of the shipment
	price = 1000, -- the price of one shipment
	amount = 10, -- how many of the item go in one purchased shipment
	separate = false, -- whether the item is sold separately (usually used for guns)
	pricesep = 100, -- the price of a separately sold item
 
	-- The following fields are OPTIONAL. If you do not need them, or do not need to change them from their defaults, REMOVE them.
	noship = false, -- whether this item has a shipment
	allowed = {TEAM_VAPE}, -- OPTIONAL, which teams are allowed to buy this shipment/separate gun
	shipmodel = "models/items/item_item_crate.mdl", -- OPTIONAL, the model of the shipment (this crate is the default)
	weight = 15, -- OPTIONAL, the weight of the shipment. The default is the weight of the shipment 
        buttonColor = Color(255, 255, 255, 255), -- Optional: The color of the button in the F4 menu,
        label = "American Vape Shipment", -- Optional: the text on the button in the F4 menu
        category = "Shipments", -- The name of the category it is in. Note: the category must be created!
        sortOrder = 100, -- The position of this thing in its category. Lower number means higher up.
 
	-- Advanced, optional
	shipmentClass = "spawned_shipment", -- The classname of the shipment entity. Use this if you have made a different shipment entity
	onBought = function(ply, shipment, ent) end, -- function that is called when the shipment is bought
	getPrice = function(ply, price) return ply:GetNWString("usergroup") == "donator" and price * 0.8 or price end, -- function to decide what the price is based on the player
	--spawn = function(shipment_ent, shipment_data) print("Spawn custom entity and place it") end, -- Function to override how the shipment spawns the weapon when used.
})

DarkRP.createShipment("Custom Vape Single", {
	model = "models/swamponions/vape.mdl", -- The model of the item that hovers above the shipment
	entity = "weapon_vape_custom", -- the entity that comes out of the shipment
	price = 200, -- the price of one shipment
	amount = 1, -- how many of the item go in one purchased shipment
	separate = false, -- whether the item is sold separately (usually used for guns)
	pricesep = 100, -- the price of a separately sold item
 
	-- The following fields are OPTIONAL. If you do not need them, or do not need to change them from their defaults, REMOVE them.
	noship = false, -- whether this item has a shipment
	allowed = {TEAM_VAPE}, -- OPTIONAL, which teams are allowed to buy this shipment/separate gun
	shipmodel = "models/items/item_item_crate.mdl", -- OPTIONAL, the model of the shipment (this crate is the default)
	weight = 15, -- OPTIONAL, the weight of the shipment. The default is the weight of the shipment 
        buttonColor = Color(255, 255, 255, 255), -- Optional: The color of the button in the F4 menu,
        label = "Custom Vape Single", -- Optional: the text on the button in the F4 menu
        category = "Singles", -- The name of the category it is in. Note: the category must be created!
        sortOrder = 100, -- The position of this thing in its category. Lower number means higher up.
 
	-- Advanced, optional
	shipmentClass = "spawned_shipment", -- The classname of the shipment entity. Use this if you have made a different shipment entity
	onBought = function(ply, shipment, ent) end, -- function that is called when the shipment is bought
	getPrice = function(ply, price) return ply:GetNWString("usergroup") == "donator" and price * 0.8 or price end, -- function to decide what the price is based on the player
	--spawn = function(shipment_ent, shipment_data) print("Spawn custom entity and place it") end, -- Function to override how the shipment spawns the weapon when used.
})

DarkRP.createShipment("Custom Vape Shipment", {
	model = "models/swamponions/vape.mdl", -- The model of the item that hovers above the shipment
	entity = "weapon_vape_custom", -- the entity that comes out of the shipment
	price = 400, -- the price of one shipment
	amount = 10, -- how many of the item go in one purchased shipment
	separate = false, -- whether the item is sold separately (usually used for guns)
	pricesep = 100, -- the price of a separately sold item
 
	-- The following fields are OPTIONAL. If you do not need them, or do not need to change them from their defaults, REMOVE them.
	noship = false, -- whether this item has a shipment
	allowed = {TEAM_VAPE}, -- OPTIONAL, which teams are allowed to buy this shipment/separate gun
	shipmodel = "models/items/item_item_crate.mdl", -- OPTIONAL, the model of the shipment (this crate is the default)
	weight = 15, -- OPTIONAL, the weight of the shipment. The default is the weight of the shipment 
        buttonColor = Color(255, 255, 255, 255), -- Optional: The color of the button in the F4 menu,
        label = "Custom Vape Shipment", -- Optional: the text on the button in the F4 menu
        category = "Shipments", -- The name of the category it is in. Note: the category must be created!
        sortOrder = 100, -- The position of this thing in its category. Lower number means higher up.
 
	-- Advanced, optional
	shipmentClass = "spawned_shipment", -- The classname of the shipment entity. Use this if you have made a different shipment entity
	onBought = function(ply, shipment, ent) end, -- function that is called when the shipment is bought
	getPrice = function(ply, price) return ply:GetNWString("usergroup") == "donator" and price * 0.8 or price end, -- function to decide what the price is based on the player
	--spawn = function(shipment_ent, shipment_data) print("Spawn custom entity and place it") end, -- Function to override how the shipment spawns the weapon when used.
})

DarkRP.createShipment("Golden Vape Single", {
	model = "models/swamponions/vape.mdl", -- The model of the item that hovers above the shipment
	entity = "weapon_vape_golden", -- the entity that comes out of the shipment
	price = 500, -- the price of one shipment
	amount = 1, -- how many of the item go in one purchased shipment
	separate = false, -- whether the item is sold separately (usually used for guns)
	pricesep = 100, -- the price of a separately sold item
 
	-- The following fields are OPTIONAL. If you do not need them, or do not need to change them from their defaults, REMOVE them.
	noship = false, -- whether this item has a shipment
	allowed = {TEAM_VAPE}, -- OPTIONAL, which teams are allowed to buy this shipment/separate gun
	shipmodel = "models/items/item_item_crate.mdl", -- OPTIONAL, the model of the shipment (this crate is the default)
	weight = 15, -- OPTIONAL, the weight of the shipment. The default is the weight of the shipment 
        buttonColor = Color(255, 255, 255, 255), -- Optional: The color of the button in the F4 menu,
        label = "Golden Vape Single", -- Optional: the text on the button in the F4 menu
        category = "Singles", -- The name of the category it is in. Note: the category must be created!
        sortOrder = 100, -- The position of this thing in its category. Lower number means higher up.
 
	-- Advanced, optional
	shipmentClass = "spawned_shipment", -- The classname of the shipment entity. Use this if you have made a different shipment entity
	onBought = function(ply, shipment, ent) end, -- function that is called when the shipment is bought
	getPrice = function(ply, price) return ply:GetNWString("usergroup") == "donator" and price * 0.8 or price end, -- function to decide what the price is based on the player
	--spawn = function(shipment_ent, shipment_data) print("Spawn custom entity and place it") end, -- Function to override how the shipment spawns the weapon when used.
})

DarkRP.createShipment("Golden Vape Shipments", {
	model = "models/swamponions/vape.mdl", -- The model of the item that hovers above the shipment
	entity = "weapon_vape_golden", -- the entity that comes out of the shipment
	price = 1000, -- the price of one shipment
	amount = 10, -- how many of the item go in one purchased shipment
	separate = false, -- whether the item is sold separately (usually used for guns)
	pricesep = 100, -- the price of a separately sold item
 
	-- The following fields are OPTIONAL. If you do not need them, or do not need to change them from their defaults, REMOVE them.
	noship = false, -- whether this item has a shipment
	allowed = {TEAM_VAPE}, -- OPTIONAL, which teams are allowed to buy this shipment/separate gun
	shipmodel = "models/items/item_item_crate.mdl", -- OPTIONAL, the model of the shipment (this crate is the default)
	weight = 15, -- OPTIONAL, the weight of the shipment. The default is the weight of the shipment 
        buttonColor = Color(255, 255, 255, 255), -- Optional: The color of the button in the F4 menu,
        label = "Golden Vape Shipment", -- Optional: the text on the button in the F4 menu
        category = "Shipments", -- The name of the category it is in. Note: the category must be created!
        sortOrder = 100, -- The position of this thing in its category. Lower number means higher up.
 
	-- Advanced, optional
	shipmentClass = "spawned_shipment", -- The classname of the shipment entity. Use this if you have made a different shipment entity
	onBought = function(ply, shipment, ent) end, -- function that is called when the shipment is bought
	getPrice = function(ply, price) return ply:GetNWString("usergroup") == "donator" and price * 0.8 or price end, -- function to decide what the price is based on the player
	--spawn = function(shipment_ent, shipment_data) print("Spawn custom entity and place it") end, -- Function to override how the shipment spawns the weapon when used.
})

DarkRP.createShipment("Helium Vape Single", {
	model = "models/swamponions/vape.mdl", -- The model of the item that hovers above the shipment
	entity = "weapon_vape_helium", -- the entity that comes out of the shipment
	price = 200, -- the price of one shipment
	amount = 1, -- how many of the item go in one purchased shipment
	separate = false, -- whether the item is sold separately (usually used for guns)
	pricesep = 100, -- the price of a separately sold item
 
	-- The following fields are OPTIONAL. If you do not need them, or do not need to change them from their defaults, REMOVE them.
	noship = false, -- whether this item has a shipment
	allowed = {TEAM_VAPE}, -- OPTIONAL, which teams are allowed to buy this shipment/separate gun
	shipmodel = "models/items/item_item_crate.mdl", -- OPTIONAL, the model of the shipment (this crate is the default)
	weight = 15, -- OPTIONAL, the weight of the shipment. The default is the weight of the shipment 
        buttonColor = Color(255, 255, 255, 255), -- Optional: The color of the button in the F4 menu,
        label = "Helium Vape Single", -- Optional: the text on the button in the F4 menu
        category = "Singles", -- The name of the category it is in. Note: the category must be created!
        sortOrder = 100, -- The position of this thing in its category. Lower number means higher up.
 
	-- Advanced, optional
	shipmentClass = "spawned_shipment", -- The classname of the shipment entity. Use this if you have made a different shipment entity
	onBought = function(ply, shipment, ent) end, -- function that is called when the shipment is bought
	getPrice = function(ply, price) return ply:GetNWString("usergroup") == "donator" and price * 0.8 or price end, -- function to decide what the price is based on the player
	--spawn = function(shipment_ent, shipment_data) print("Spawn custom entity and place it") end, -- Function to override how the shipment spawns the weapon when used.
})

DarkRP.createShipment("Helium Vape Shipment", {
	model = "models/swamponions/vape.mdl", -- The model of the item that hovers above the shipment
	entity = "weapon_vape_helium", -- the entity that comes out of the shipment
	price = 350, -- the price of one shipment
	amount = 10, -- how many of the item go in one purchased shipment
	separate = false, -- whether the item is sold separately (usually used for guns)
	pricesep = 100, -- the price of a separately sold item
 
	-- The following fields are OPTIONAL. If you do not need them, or do not need to change them from their defaults, REMOVE them.
	noship = false, -- whether this item has a shipment
	allowed = {TEAM_VAPE}, -- OPTIONAL, which teams are allowed to buy this shipment/separate gun
	shipmodel = "models/items/item_item_crate.mdl", -- OPTIONAL, the model of the shipment (this crate is the default)
	weight = 15, -- OPTIONAL, the weight of the shipment. The default is the weight of the shipment 
        buttonColor = Color(255, 255, 255, 255), -- Optional: The color of the button in the F4 menu,
        label = "Helium Vape Shipment", -- Optional: the text on the button in the F4 menu
        category = "Shipments", -- The name of the category it is in. Note: the category must be created!
        sortOrder = 100, -- The position of this thing in its category. Lower number means higher up.
 
	-- Advanced, optional
	shipmentClass = "spawned_shipment", -- The classname of the shipment entity. Use this if you have made a different shipment entity
	onBought = function(ply, shipment, ent) end, -- function that is called when the shipment is bought
	getPrice = function(ply, price) return ply:GetNWString("usergroup") == "donator" and price * 0.8 or price end, -- function to decide what the price is based on the player
	--spawn = function(shipment_ent, shipment_data) print("Spawn custom entity and place it") end, -- Function to override how the shipment spawns the weapon when used.
})

DarkRP.createShipment("Juicy Vape Single", {
	model = "models/swamponions/vape.mdl", -- The model of the item that hovers above the shipment
	entity = "weapon_vape_juicy", -- the entity that comes out of the shipment
	price = 200, -- the price of one shipment
	amount = 1, -- how many of the item go in one purchased shipment
	separate = false, -- whether the item is sold separately (usually used for guns)
	pricesep = 100, -- the price of a separately sold item
 
	-- The following fields are OPTIONAL. If you do not need them, or do not need to change them from their defaults, REMOVE them.
	noship = false, -- whether this item has a shipment
	allowed = {TEAM_VAPE}, -- OPTIONAL, which teams are allowed to buy this shipment/separate gun
	shipmodel = "models/items/item_item_crate.mdl", -- OPTIONAL, the model of the shipment (this crate is the default)
	weight = 15, -- OPTIONAL, the weight of the shipment. The default is the weight of the shipment 
        buttonColor = Color(255, 255, 255, 255), -- Optional: The color of the button in the F4 menu,
        label = "Juicy Vape Single", -- Optional: the text on the button in the F4 menu
        category = "Singles", -- The name of the category it is in. Note: the category must be created!
        sortOrder = 100, -- The position of this thing in its category. Lower number means higher up.
 
	-- Advanced, optional
	shipmentClass = "spawned_shipment", -- The classname of the shipment entity. Use this if you have made a different shipment entity
	onBought = function(ply, shipment, ent) end, -- function that is called when the shipment is bought
	getPrice = function(ply, price) return ply:GetNWString("usergroup") == "donator" and price * 0.8 or price end, -- function to decide what the price is based on the player
	--spawn = function(shipment_ent, shipment_data) print("Spawn custom entity and place it") end, -- Function to override how the shipment spawns the weapon when used.
})

DarkRP.createShipment("Juicy Vape Shipments", {
	model = "models/swamponions/vape.mdl", -- The model of the item that hovers above the shipment
	entity = "weapon_vape_juicy", -- the entity that comes out of the shipment
	price = 400, -- the price of one shipment
	amount = 10, -- how many of the item go in one purchased shipment
	separate = false, -- whether the item is sold separately (usually used for guns)
	pricesep = 100, -- the price of a separately sold item
 
	-- The following fields are OPTIONAL. If you do not need them, or do not need to change them from their defaults, REMOVE them.
	noship = false, -- whether this item has a shipment
	allowed = {TEAM_VAPE}, -- OPTIONAL, which teams are allowed to buy this shipment/separate gun
	shipmodel = "models/items/item_item_crate.mdl", -- OPTIONAL, the model of the shipment (this crate is the default)
	weight = 15, -- OPTIONAL, the weight of the shipment. The default is the weight of the shipment 
        buttonColor = Color(255, 255, 255, 255), -- Optional: The color of the button in the F4 menu,
        label = "Juicy Vape Shipments", -- Optional: the text on the button in the F4 menu
        category = "Shipments", -- The name of the category it is in. Note: the category must be created!
        sortOrder = 100, -- The position of this thing in its category. Lower number means higher up.
 
	-- Advanced, optional
	shipmentClass = "spawned_shipment", -- The classname of the shipment entity. Use this if you have made a different shipment entity
	onBought = function(ply, shipment, ent) end, -- function that is called when the shipment is bought
	getPrice = function(ply, price) return ply:GetNWString("usergroup") == "donator" and price * 0.8 or price end, -- function to decide what the price is based on the player
	--spawn = function(shipment_ent, shipment_data) print("Spawn custom entity and place it") end, -- Function to override how the shipment spawns the weapon when used.
})

DarkRP.createShipment("AK-47 Single", {
	model = "bb_ak47_alt", -- The model of the item that hovers above the shipment
	entity = "bb_ak47_alt", -- the entity that comes out of the shipment
	price = 550, -- the price of one shipment
	amount = 1, -- how many of the item go in one purchased shipment
	separate = false, -- whether the item is sold separately (usually used for guns)
	pricesep = 100, -- the price of a separately sold item
 
	-- The following fields are OPTIONAL. If you do not need them, or do not need to change them from their defaults, REMOVE them.
	noship = false, -- whether this item has a shipment
	allowed = {TEAM_GUN}, -- OPTIONAL, which teams are allowed to buy this shipment/separate gun
	shipmodel = "models/items/item_item_crate.mdl", -- OPTIONAL, the model of the shipment (this crate is the default)
	weight = 15, -- OPTIONAL, the weight of the shipment. The default is the weight of the shipment 
        buttonColor = Color(255, 255, 255, 255), -- Optional: The color of the button in the F4 menu,
        label = "AK-47 Single", -- Optional: the text on the button in the F4 menu
        category = "Singles", -- The name of the category it is in. Note: the category must be created!
        sortOrder = 100, -- The position of this thing in its category. Lower number means higher up.
 
	-- Advanced, optional
	shipmentClass = "spawned_shipment", -- The classname of the shipment entity. Use this if you have made a different shipment entity
	onBought = function(ply, shipment, ent) end, -- function that is called when the shipment is bought
	getPrice = function(ply, price) return ply:GetNWString("usergroup") == "donator" and price * 0.8 or price end, -- function to decide what the price is based on the player
	--spawn = function(shipment_ent, shipment_data) print("Spawn custom entity and place it") end, -- Function to override how the shipment spawns the weapon when used.
})

DarkRP.createShipment("AK-47 Shipment", {
	model = "bb_ak47_alt", -- The model of the item that hovers above the shipment
	entity = "bb_ak47_alt", -- the entity that comes out of the shipment
	price = 1500, -- the price of one shipment
	amount = 10, -- how many of the item go in one purchased shipment
	separate = false, -- whether the item is sold separately (usually used for guns)
	pricesep = 100, -- the price of a separately sold item
 
	-- The following fields are OPTIONAL. If you do not need them, or do not need to change them from their defaults, REMOVE them.
	noship = false, -- whether this item has a shipment
	allowed = {TEAM_GUN}, -- OPTIONAL, which teams are allowed to buy this shipment/separate gun
	shipmodel = "models/items/item_item_crate.mdl", -- OPTIONAL, the model of the shipment (this crate is the default)
	weight = 15, -- OPTIONAL, the weight of the shipment. The default is the weight of the shipment 
        buttonColor = Color(255, 255, 255, 255), -- Optional: The color of the button in the F4 menu,
        label = "AK-47 Shipment", -- Optional: the text on the button in the F4 menu
        category = "Shipments", -- The name of the category it is in. Note: the category must be created!
        sortOrder = 100, -- The position of this thing in its category. Lower number means higher up.
 
	-- Advanced, optional
	shipmentClass = "spawned_shipment", -- The classname of the shipment entity. Use this if you have made a different shipment entity
	onBought = function(ply, shipment, ent) end, -- function that is called when the shipment is bought
	getPrice = function(ply, price) return ply:GetNWString("usergroup") == "donator" and price * 0.8 or price end, -- function to decide what the price is based on the player
	--spawn = function(shipment_ent, shipment_data) print("Spawn custom entity and place it") end, -- Function to override how the shipment spawns the weapon when used.
})

DarkRP.createShipment("AWP Single", {
	model = "bb_awp_alt", -- The model of the item that hovers above the shipment
	entity = "bb_awp_alt", -- the entity that comes out of the shipment
	price = 750, -- the price of one shipment
	amount = 1, -- how many of the item go in one purchased shipment
	separate = false, -- whether the item is sold separately (usually used for guns)
	pricesep = 100, -- the price of a separately sold item
 
	-- The following fields are OPTIONAL. If you do not need them, or do not need to change them from their defaults, REMOVE them.
	noship = false, -- whether this item has a shipment
	allowed = {TEAM_GUN}, -- OPTIONAL, which teams are allowed to buy this shipment/separate gun
	shipmodel = "models/items/item_item_crate.mdl", -- OPTIONAL, the model of the shipment (this crate is the default)
	weight = 15, -- OPTIONAL, the weight of the shipment. The default is the weight of the shipment 
        buttonColor = Color(255, 255, 255, 255), -- Optional: The color of the button in the F4 menu,
        label = "AWP Single", -- Optional: the text on the button in the F4 menu
        category = "Singles", -- The name of the category it is in. Note: the category must be created!
        sortOrder = 100, -- The position of this thing in its category. Lower number means higher up.
 
	-- Advanced, optional
	shipmentClass = "spawned_shipment", -- The classname of the shipment entity. Use this if you have made a different shipment entity
	onBought = function(ply, shipment, ent) end, -- function that is called when the shipment is bought
	getPrice = function(ply, price) return ply:GetNWString("usergroup") == "donator" and price * 0.8 or price end, -- function to decide what the price is based on the player
	--spawn = function(shipment_ent, shipment_data) print("Spawn custom entity and place it") end, -- Function to override how the shipment spawns the weapon when used.
})

DarkRP.createShipment("AWP Shipment", {
	model = "bb_awp_alt", -- The model of the item that hovers above the shipment
	entity = "bb_awp_alt", -- the entity that comes out of the shipment
	price = 1500, -- the price of one shipment
	amount = 10, -- how many of the item go in one purchased shipment
	separate = false, -- whether the item is sold separately (usually used for guns)
	pricesep = 100, -- the price of a separately sold item
 
	-- The following fields are OPTIONAL. If you do not need them, or do not need to change them from their defaults, REMOVE them.
	noship = false, -- whether this item has a shipment
	allowed = {TEAM_GUN}, -- OPTIONAL, which teams are allowed to buy this shipment/separate gun
	shipmodel = "models/items/item_item_crate.mdl", -- OPTIONAL, the model of the shipment (this crate is the default)
	weight = 15, -- OPTIONAL, the weight of the shipment. The default is the weight of the shipment 
        buttonColor = Color(255, 255, 255, 255), -- Optional: The color of the button in the F4 menu,
        label = "AWP Shipment", -- Optional: the text on the button in the F4 menu
        category = "Shipments", -- The name of the category it is in. Note: the category must be created!
        sortOrder = 100, -- The position of this thing in its category. Lower number means higher up.
 
	-- Advanced, optional
	shipmentClass = "spawned_shipment", -- The classname of the shipment entity. Use this if you have made a different shipment entity
	onBought = function(ply, shipment, ent) end, -- function that is called when the shipment is bought
	getPrice = function(ply, price) return ply:GetNWString("usergroup") == "donator" and price * 0.8 or price end, -- function to decide what the price is based on the player
	--spawn = function(shipment_ent, shipment_data) print("Spawn custom entity and place it") end, -- Function to override how the shipment spawns the weapon when used.
})

DarkRP.createShipment("UMP45 Single", {
	model = "bb_ump45_alt", -- The model of the item that hovers above the shipment
	entity = "bb_ump45_alt", -- the entity that comes out of the shipment
	price = 600, -- the price of one shipment
	amount = 1, -- how many of the item go in one purchased shipment
	separate = false, -- whether the item is sold separately (usually used for guns)
	pricesep = 100, -- the price of a separately sold item
 
	-- The following fields are OPTIONAL. If you do not need them, or do not need to change them from their defaults, REMOVE them.
	noship = false, -- whether this item has a shipment
	allowed = {TEAM_GUN}, -- OPTIONAL, which teams are allowed to buy this shipment/separate gun
	shipmodel = "models/items/item_item_crate.mdl", -- OPTIONAL, the model of the shipment (this crate is the default)
	weight = 15, -- OPTIONAL, the weight of the shipment. The default is the weight of the shipment 
        buttonColor = Color(255, 255, 255, 255), -- Optional: The color of the button in the F4 menu,
        label = "UMP45 Single", -- Optional: the text on the button in the F4 menu
        category = "Singles", -- The name of the category it is in. Note: the category must be created!
        sortOrder = 100, -- The position of this thing in its category. Lower number means higher up.
 
	-- Advanced, optional
	shipmentClass = "spawned_shipment", -- The classname of the shipment entity. Use this if you have made a different shipment entity
	onBought = function(ply, shipment, ent) end, -- function that is called when the shipment is bought
	getPrice = function(ply, price) return ply:GetNWString("usergroup") == "donator" and price * 0.8 or price end, -- function to decide what the price is based on the player
	--spawn = function(shipment_ent, shipment_data) print("Spawn custom entity and place it") end, -- Function to override how the shipment spawns the weapon when used.
})

DarkRP.createShipment("UMP45 Shipment", {
	model = "bb_ump45_alt", -- The model of the item that hovers above the shipment
	entity = "bb_ump45_alt", -- the entity that comes out of the shipment
	price = 1200, -- the price of one shipment
	amount = 10, -- how many of the item go in one purchased shipment
	separate = false, -- whether the item is sold separately (usually used for guns)
	pricesep = 100, -- the price of a separately sold item
 
	-- The following fields are OPTIONAL. If you do not need them, or do not need to change them from their defaults, REMOVE them.
	noship = false, -- whether this item has a shipment
	allowed = {TEAM_GUN}, -- OPTIONAL, which teams are allowed to buy this shipment/separate gun
	shipmodel = "models/items/item_item_crate.mdl", -- OPTIONAL, the model of the shipment (this crate is the default)
	weight = 15, -- OPTIONAL, the weight of the shipment. The default is the weight of the shipment 
        buttonColor = Color(255, 255, 255, 255), -- Optional: The color of the button in the F4 menu,
        label = "UMP45 Shipment", -- Optional: the text on the button in the F4 menu
        category = "Shipments", -- The name of the category it is in. Note: the category must be created!
        sortOrder = 100, -- The position of this thing in its category. Lower number means higher up.
 
	-- Advanced, optional
	shipmentClass = "spawned_shipment", -- The classname of the shipment entity. Use this if you have made a different shipment entity
	onBought = function(ply, shipment, ent) end, -- function that is called when the shipment is bought
	getPrice = function(ply, price) return ply:GetNWString("usergroup") == "donator" and price * 0.8 or price end, -- function to decide what the price is based on the player
	--spawn = function(shipment_ent, shipment_data) print("Spawn custom entity and place it") end, -- Function to override how the shipment spawns the weapon when used.
})

DarkRP.createShipment("TMP Single", {
	model = "bb_tmp_alt", -- The model of the item that hovers above the shipment
	entity = "bb_tmp_alt", -- the entity that comes out of the shipment
	price = 900, -- the price of one shipment
	amount = 1, -- how many of the item go in one purchased shipment
	separate = false, -- whether the item is sold separately (usually used for guns)
	pricesep = 100, -- the price of a separately sold item
 
	-- The following fields are OPTIONAL. If you do not need them, or do not need to change them from their defaults, REMOVE them.
	noship = false, -- whether this item has a shipment
	allowed = {TEAM_GUN}, -- OPTIONAL, which teams are allowed to buy this shipment/separate gun
	shipmodel = "models/items/item_item_crate.mdl", -- OPTIONAL, the model of the shipment (this crate is the default)
	weight = 15, -- OPTIONAL, the weight of the shipment. The default is the weight of the shipment 
        buttonColor = Color(255, 255, 255, 255), -- Optional: The color of the button in the F4 menu,
        label = "TMP Single", -- Optional: the text on the button in the F4 menu
        category = "Singles", -- The name of the category it is in. Note: the category must be created!
        sortOrder = 100, -- The position of this thing in its category. Lower number means higher up.
 
	-- Advanced, optional
	shipmentClass = "spawned_shipment", -- The classname of the shipment entity. Use this if you have made a different shipment entity
	onBought = function(ply, shipment, ent) end, -- function that is called when the shipment is bought
	getPrice = function(ply, price) return ply:GetNWString("usergroup") == "donator" and price * 0.8 or price end, -- function to decide what the price is based on the player
	--spawn = function(shipment_ent, shipment_data) print("Spawn custom entity and place it") end, -- Function to override how the shipment spawns the weapon when used.
})

DarkRP.createShipment("TMP Shipment", {
	model = "bb_tmp_alt", -- The model of the item that hovers above the shipment
	entity = "bb_tmp_alt", -- the entity that comes out of the shipment
	price = 1800, -- the price of one shipment
	amount = 10, -- how many of the item go in one purchased shipment
	separate = false, -- whether the item is sold separately (usually used for guns)
	pricesep = 100, -- the price of a separately sold item
 
	-- The following fields are OPTIONAL. If you do not need them, or do not need to change them from their defaults, REMOVE them.
	noship = false, -- whether this item has a shipment
	allowed = {TEAM_GUN}, -- OPTIONAL, which teams are allowed to buy this shipment/separate gun
	shipmodel = "models/items/item_item_crate.mdl", -- OPTIONAL, the model of the shipment (this crate is the default)
	weight = 15, -- OPTIONAL, the weight of the shipment. The default is the weight of the shipment 
        buttonColor = Color(255, 255, 255, 255), -- Optional: The color of the button in the F4 menu,
        label = "TMP Shipment", -- Optional: the text on the button in the F4 menu
        category = "Shipments", -- The name of the category it is in. Note: the category must be created!
        sortOrder = 100, -- The position of this thing in its category. Lower number means higher up.
 
	-- Advanced, optional
	shipmentClass = "spawned_shipment", -- The classname of the shipment entity. Use this if you have made a different shipment entity
	onBought = function(ply, shipment, ent) end, -- function that is called when the shipment is bought
	getPrice = function(ply, price) return ply:GetNWString("usergroup") == "donator" and price * 0.8 or price end, -- function to decide what the price is based on the player
	--spawn = function(shipment_ent, shipment_data) print("Spawn custom entity and place it") end, -- Function to override how the shipment spawns the weapon when used.
})

DarkRP.createShipment("AUG Single", {
	model = "bb_aug_alt", -- The model of the item that hovers above the shipment
	entity = "bb_aug_alt", -- the entity that comes out of the shipment
	price = 650, -- the price of one shipment
	amount = 1, -- how many of the item go in one purchased shipment
	separate = false, -- whether the item is sold separately (usually used for guns)
	pricesep = 100, -- the price of a separately sold item
 
	-- The following fields are OPTIONAL. If you do not need them, or do not need to change them from their defaults, REMOVE them.
	noship = false, -- whether this item has a shipment
	allowed = {TEAM_GUN}, -- OPTIONAL, which teams are allowed to buy this shipment/separate gun
	shipmodel = "models/items/item_item_crate.mdl", -- OPTIONAL, the model of the shipment (this crate is the default)
	weight = 15, -- OPTIONAL, the weight of the shipment. The default is the weight of the shipment 
        buttonColor = Color(255, 255, 255, 255), -- Optional: The color of the button in the F4 menu,
        label = "AUG Single", -- Optional: the text on the button in the F4 menu
        category = "Singles", -- The name of the category it is in. Note: the category must be created!
        sortOrder = 100, -- The position of this thing in its category. Lower number means higher up.
 
	-- Advanced, optional
	shipmentClass = "spawned_shipment", -- The classname of the shipment entity. Use this if you have made a different shipment entity
	onBought = function(ply, shipment, ent) end, -- function that is called when the shipment is bought
	getPrice = function(ply, price) return ply:GetNWString("usergroup") == "donator" and price * 0.8 or price end, -- function to decide what the price is based on the player
	--spawn = function(shipment_ent, shipment_data) print("Spawn custom entity and place it") end, -- Function to override how the shipment spawns the weapon when used.
})

DarkRP.createShipment("AUG Shipment", {
	model = "bb_aug_alt", -- The model of the item that hovers above the shipment
	entity = "bb_aug_alt", -- the entity that comes out of the shipment
	price = 1300, -- the price of one shipment
	amount = 10, -- how many of the item go in one purchased shipment
	separate = false, -- whether the item is sold separately (usually used for guns)
	pricesep = 100, -- the price of a separately sold item
 
	-- The following fields are OPTIONAL. If you do not need them, or do not need to change them from their defaults, REMOVE them.
	noship = false, -- whether this item has a shipment
	allowed = {TEAM_GUN}, -- OPTIONAL, which teams are allowed to buy this shipment/separate gun
	shipmodel = "models/items/item_item_crate.mdl", -- OPTIONAL, the model of the shipment (this crate is the default)
	weight = 15, -- OPTIONAL, the weight of the shipment. The default is the weight of the shipment 
        buttonColor = Color(255, 255, 255, 255), -- Optional: The color of the button in the F4 menu,
        label = "AUG Shipment", -- Optional: the text on the button in the F4 menu
        category = "Shipments", -- The name of the category it is in. Note: the category must be created!
        sortOrder = 100, -- The position of this thing in its category. Lower number means higher up.
 
	-- Advanced, optional
	shipmentClass = "spawned_shipment", -- The classname of the shipment entity. Use this if you have made a different shipment entity
	onBought = function(ply, shipment, ent) end, -- function that is called when the shipment is bought
	getPrice = function(ply, price) return ply:GetNWString("usergroup") == "donator" and price * 0.8 or price end, -- function to decide what the price is based on the player
	--spawn = function(shipment_ent, shipment_data) print("Spawn custom entity and place it") end, -- Function to override how the shipment spawns the weapon when used.
})

DarkRP.createShipment("M249 Single", {
	model = "bb_m249_alt", -- The model of the item that hovers above the shipment
	entity = "bb_m249_alt", -- the entity that comes out of the shipment
	price = 1100, -- the price of one shipment
	amount = 1, -- how many of the item go in one purchased shipment
	separate = false, -- whether the item is sold separately (usually used for guns)
	pricesep = 100, -- the price of a separately sold item
 
	-- The following fields are OPTIONAL. If you do not need them, or do not need to change them from their defaults, REMOVE them.
	noship = false, -- whether this item has a shipment
	allowed = {TEAM_GUN}, -- OPTIONAL, which teams are allowed to buy this shipment/separate gun
	shipmodel = "models/items/item_item_crate.mdl", -- OPTIONAL, the model of the shipment (this crate is the default)
	weight = 15, -- OPTIONAL, the weight of the shipment. The default is the weight of the shipment 
        buttonColor = Color(255, 255, 255, 255), -- Optional: The color of the button in the F4 menu,
        label = "M249 Single", -- Optional: the text on the button in the F4 menu
        category = "Singles", -- The name of the category it is in. Note: the category must be created!
        sortOrder = 100, -- The position of this thing in its category. Lower number means higher up.
 
	-- Advanced, optional
	shipmentClass = "spawned_shipment", -- The classname of the shipment entity. Use this if you have made a different shipment entity
	onBought = function(ply, shipment, ent) end, -- function that is called when the shipment is bought
	getPrice = function(ply, price) return ply:GetNWString("usergroup") == "donator" and price * 0.8 or price end, -- function to decide what the price is based on the player
	--spawn = function(shipment_ent, shipment_data) print("Spawn custom entity and place it") end, -- Function to override how the shipment spawns the weapon when used.
})

DarkRP.createShipment("M249 Shipment", {
	model = "bb_m249_alt", -- The model of the item that hovers above the shipment
	entity = "bb_m249_alt", -- the entity that comes out of the shipment
	price = 2200, -- the price of one shipment
	amount = 10, -- how many of the item go in one purchased shipment
	separate = false, -- whether the item is sold separately (usually used for guns)
	pricesep = 100, -- the price of a separately sold item
 
	-- The following fields are OPTIONAL. If you do not need them, or do not need to change them from their defaults, REMOVE them.
	noship = false, -- whether this item has a shipment
	allowed = {TEAM_GUN}, -- OPTIONAL, which teams are allowed to buy this shipment/separate gun
	shipmodel = "models/items/item_item_crate.mdl", -- OPTIONAL, the model of the shipment (this crate is the default)
	weight = 15, -- OPTIONAL, the weight of the shipment. The default is the weight of the shipment 
        buttonColor = Color(255, 255, 255, 255), -- Optional: The color of the button in the F4 menu,
        label = "M249 Shipment", -- Optional: the text on the button in the F4 menu
        category = "Shipments", -- The name of the category it is in. Note: the category must be created!
        sortOrder = 100, -- The position of this thing in its category. Lower number means higher up.
 
	-- Advanced, optional
	shipmentClass = "spawned_shipment", -- The classname of the shipment entity. Use this if you have made a different shipment entity
	onBought = function(ply, shipment, ent) end, -- function that is called when the shipment is bought
	getPrice = function(ply, price) return ply:GetNWString("usergroup") == "donator" and price * 0.8 or price end, -- function to decide what the price is based on the player
	--spawn = function(shipment_ent, shipment_data) print("Spawn custom entity and place it") end, -- Function to override how the shipment spawns the weapon when used.
})

DarkRP.createShipment("FAMAS Single", {
	model = "bb_famas_alt", -- The model of the item that hovers above the shipment
	entity = "bb_famas_alt", -- the entity that comes out of the shipment
	price = 450, -- the price of one shipment
	amount = 1, -- how many of the item go in one purchased shipment
	separate = false, -- whether the item is sold separately (usually used for guns)
	pricesep = 100, -- the price of a separately sold item
 
	-- The following fields are OPTIONAL. If you do not need them, or do not need to change them from their defaults, REMOVE them.
	noship = false, -- whether this item has a shipment
	allowed = {TEAM_GUN}, -- OPTIONAL, which teams are allowed to buy this shipment/separate gun
	shipmodel = "models/items/item_item_crate.mdl", -- OPTIONAL, the model of the shipment (this crate is the default)
	weight = 15, -- OPTIONAL, the weight of the shipment. The default is the weight of the shipment 
        buttonColor = Color(255, 255, 255, 255), -- Optional: The color of the button in the F4 menu,
        label = "FAMAS Single", -- Optional: the text on the button in the F4 menu
        category = "Singles", -- The name of the category it is in. Note: the category must be created!
        sortOrder = 100, -- The position of this thing in its category. Lower number means higher up.
 
	-- Advanced, optional
	shipmentClass = "spawned_shipment", -- The classname of the shipment entity. Use this if you have made a different shipment entity
	onBought = function(ply, shipment, ent) end, -- function that is called when the shipment is bought
	getPrice = function(ply, price) return ply:GetNWString("usergroup") == "donator" and price * 0.8 or price end, -- function to decide what the price is based on the player
	--spawn = function(shipment_ent, shipment_data) print("Spawn custom entity and place it") end, -- Function to override how the shipment spawns the weapon when used.
})

DarkRP.createShipment("FAMAS Shipment", {
	model = "bb_famas_alt", -- The model of the item that hovers above the shipment
	entity = "bb_famas_alt", -- the entity that comes out of the shipment
	price = 900, -- the price of one shipment
	amount = 10, -- how many of the item go in one purchased shipment
	separate = false, -- whether the item is sold separately (usually used for guns)
	pricesep = 100, -- the price of a separately sold item
 
	-- The following fields are OPTIONAL. If you do not need them, or do not need to change them from their defaults, REMOVE them.
	noship = false, -- whether this item has a shipment
	allowed = {TEAM_GUN}, -- OPTIONAL, which teams are allowed to buy this shipment/separate gun
	shipmodel = "models/items/item_item_crate.mdl", -- OPTIONAL, the model of the shipment (this crate is the default)
	weight = 15, -- OPTIONAL, the weight of the shipment. The default is the weight of the shipment 
        buttonColor = Color(255, 255, 255, 255), -- Optional: The color of the button in the F4 menu,
        label = "FAMAS Shipment", -- Optional: the text on the button in the F4 menu
        category = "Shipments", -- The name of the category it is in. Note: the category must be created!
        sortOrder = 100, -- The position of this thing in its category. Lower number means higher up.
 
	-- Advanced, optional
	shipmentClass = "spawned_shipment", -- The classname of the shipment entity. Use this if you have made a different shipment entity
	onBought = function(ply, shipment, ent) end, -- function that is called when the shipment is bought
	getPrice = function(ply, price) return ply:GetNWString("usergroup") == "donator" and price * 0.8 or price end, -- function to decide what the price is based on the player
	--spawn = function(shipment_ent, shipment_data) print("Spawn custom entity and place it") end, -- Function to override how the shipment spawns the weapon when used.
})

DarkRP.createShipment("P90 Single", {
	model = "bb_p90_alt", -- The model of the item that hovers above the shipment
	entity = "bb_p90_alt", -- the entity that comes out of the shipment
	price = 1300, -- the price of one shipment
	amount = 1, -- how many of the item go in one purchased shipment
	separate = false, -- whether the item is sold separately (usually used for guns)
	pricesep = 100, -- the price of a separately sold item
 
	-- The following fields are OPTIONAL. If you do not need them, or do not need to change them from their defaults, REMOVE them.
	noship = false, -- whether this item has a shipment
	allowed = {TEAM_GUN}, -- OPTIONAL, which teams are allowed to buy this shipment/separate gun
	shipmodel = "models/items/item_item_crate.mdl", -- OPTIONAL, the model of the shipment (this crate is the default)
	weight = 15, -- OPTIONAL, the weight of the shipment. The default is the weight of the shipment 
        buttonColor = Color(255, 255, 255, 255), -- Optional: The color of the button in the F4 menu,
        label = "P90 Single", -- Optional: the text on the button in the F4 menu
        category = "Singles", -- The name of the category it is in. Note: the category must be created!
        sortOrder = 100, -- The position of this thing in its category. Lower number means higher up.
 
	-- Advanced, optional
	shipmentClass = "spawned_shipment", -- The classname of the shipment entity. Use this if you have made a different shipment entity
	onBought = function(ply, shipment, ent) end, -- function that is called when the shipment is bought
	getPrice = function(ply, price) return ply:GetNWString("usergroup") == "donator" and price * 0.8 or price end, -- function to decide what the price is based on the player
	--spawn = function(shipment_ent, shipment_data) print("Spawn custom entity and place it") end, -- Function to override how the shipment spawns the weapon when used.
})

DarkRP.createShipment("P90 Shipment", {
	model = "bb_p90_alt", -- The model of the item that hovers above the shipment
	entity = "bb_p90_alt", -- the entity that comes out of the shipment
	price = 12000, -- the price of one shipment
	amount = 10, -- how many of the item go in one purchased shipment
	separate = false, -- whether the item is sold separately (usually used for guns)
	pricesep = 100, -- the price of a separately sold item
 
	-- The following fields are OPTIONAL. If you do not need them, or do not need to change them from their defaults, REMOVE them.
	noship = false, -- whether this item has a shipment
	allowed = {TEAM_GUN}, -- OPTIONAL, which teams are allowed to buy this shipment/separate gun
	shipmodel = "models/items/item_item_crate.mdl", -- OPTIONAL, the model of the shipment (this crate is the default)
	weight = 15, -- OPTIONAL, the weight of the shipment. The default is the weight of the shipment 
        buttonColor = Color(255, 255, 255, 255), -- Optional: The color of the button in the F4 menu,
        label = "P90 Shipment", -- Optional: the text on the button in the F4 menu
        category = "Shipments", -- The name of the category it is in. Note: the category must be created!
        sortOrder = 100, -- The position of this thing in its category. Lower number means higher up.
 
	-- Advanced, optional
	shipmentClass = "spawned_shipment", -- The classname of the shipment entity. Use this if you have made a different shipment entity
	onBought = function(ply, shipment, ent) end, -- function that is called when the shipment is bought
	getPrice = function(ply, price) return ply:GetNWString("usergroup") == "donator" and price * 0.8 or price end, -- function to decide what the price is based on the player
	--spawn = function(shipment_ent, shipment_data) print("Spawn custom entity and place it") end, -- Function to override how the shipment spawns the weapon when used.
})

DarkRP.createShipment("HK USP Single", {
	model = "bb_usp_alt", -- The model of the item that hovers above the shipment
	entity = "bb_usp_alt", -- the entity that comes out of the shipment
	price = 350, -- the price of one shipment
	amount = 10, -- how many of the item go in one purchased shipment
	separate = false, -- whether the item is sold separately (usually used for guns)
	pricesep = 100, -- the price of a separately sold item
 
	-- The following fields are OPTIONAL. If you do not need them, or do not need to change them from their defaults, REMOVE them.
	noship = false, -- whether this item has a shipment
	allowed = {TEAM_GUN}, -- OPTIONAL, which teams are allowed to buy this shipment/separate gun
	shipmodel = "models/items/item_item_crate.mdl", -- OPTIONAL, the model of the shipment (this crate is the default)
	weight = 15, -- OPTIONAL, the weight of the shipment. The default is the weight of the shipment 
        buttonColor = Color(255, 255, 255, 255), -- Optional: The color of the button in the F4 menu,
        label = "HK USP Single", -- Optional: the text on the button in the F4 menu
        category = "Singles", -- The name of the category it is in. Note: the category must be created!
        sortOrder = 100, -- The position of this thing in its category. Lower number means higher up.
 
	-- Advanced, optional
	shipmentClass = "spawned_shipment", -- The classname of the shipment entity. Use this if you have made a different shipment entity
	onBought = function(ply, shipment, ent) end, -- function that is called when the shipment is bought
	getPrice = function(ply, price) return ply:GetNWString("usergroup") == "donator" and price * 0.8 or price end, -- function to decide what the price is based on the player
	--spawn = function(shipment_ent, shipment_data) print("Spawn custom entity and place it") end, -- Function to override how the shipment spawns the weapon when used.
})

DarkRP.createShipment("HK USP Shipment", {
	model = "bb_usp_alt", -- The model of the item that hovers above the shipment
	entity = "bb_usp_alt", -- the entity that comes out of the shipment
	price = 700, -- the price of one shipment
	amount = 10, -- how many of the item go in one purchased shipment
	separate = false, -- whether the item is sold separately (usually used for guns)
	pricesep = 100, -- the price of a separately sold item
 
	-- The following fields are OPTIONAL. If you do not need them, or do not need to change them from their defaults, REMOVE them.
	noship = false, -- whether this item has a shipment
	allowed = {TEAM_GUN}, -- OPTIONAL, which teams are allowed to buy this shipment/separate gun
	shipmodel = "models/items/item_item_crate.mdl", -- OPTIONAL, the model of the shipment (this crate is the default)
	weight = 15, -- OPTIONAL, the weight of the shipment. The default is the weight of the shipment 
        buttonColor = Color(255, 255, 255, 255), -- Optional: The color of the button in the F4 menu,
        label = "HK USP Shipment", -- Optional: the text on the button in the F4 menu
        category = "Shipments", -- The name of the category it is in. Note: the category must be created!
        sortOrder = 100, -- The position of this thing in its category. Lower number means higher up.
 
	-- Advanced, optional
	shipmentClass = "spawned_shipment", -- The classname of the shipment entity. Use this if you have made a different shipment entity
	onBought = function(ply, shipment, ent) end, -- function that is called when the shipment is bought
	getPrice = function(ply, price) return ply:GetNWString("usergroup") == "donator" and price * 0.8 or price end, -- function to decide what the price is based on the player
	--spawn = function(shipment_ent, shipment_data) print("Spawn custom entity and place it") end, -- Function to override how the shipment spawns the weapon when used.
})

DarkRP.createShipment("FiveseveN Single", {
	model = "bb_fiveseven_alt", -- The model of the item that hovers above the shipment
	entity = "bb_fiveseven_alt", -- the entity that comes out of the shipment
	price = 400, -- the price of one shipment
	amount = 1, -- how many of the item go in one purchased shipment
	separate = false, -- whether the item is sold separately (usually used for guns)
	pricesep = 100, -- the price of a separately sold item
 
	-- The following fields are OPTIONAL. If you do not need them, or do not need to change them from their defaults, REMOVE them.
	noship = false, -- whether this item has a shipment
	allowed = {TEAM_GUN}, -- OPTIONAL, which teams are allowed to buy this shipment/separate gun
	shipmodel = "models/items/item_item_crate.mdl", -- OPTIONAL, the model of the shipment (this crate is the default)
	weight = 15, -- OPTIONAL, the weight of the shipment. The default is the weight of the shipment 
        buttonColor = Color(255, 255, 255, 255), -- Optional: The color of the button in the F4 menu,
        label = "FiveseveN Single", -- Optional: the text on the button in the F4 menu
        category = "Singles", -- The name of the category it is in. Note: the category must be created!
        sortOrder = 100, -- The position of this thing in its category. Lower number means higher up.
 
	-- Advanced, optional
	shipmentClass = "spawned_shipment", -- The classname of the shipment entity. Use this if you have made a different shipment entity
	onBought = function(ply, shipment, ent) end, -- function that is called when the shipment is bought
	getPrice = function(ply, price) return ply:GetNWString("usergroup") == "donator" and price * 0.8 or price end, -- function to decide what the price is based on the player
	--spawn = function(shipment_ent, shipment_data) print("Spawn custom entity and place it") end, -- Function to override how the shipment spawns the weapon when used.
})

DarkRP.createShipment("FiveseveN Shipment", {
	model = "bb_fiveseven_alt", -- The model of the item that hovers above the shipment
	entity = "bb_fiveseven_alt", -- the entity that comes out of the shipment
	price = 800, -- the price of one shipment
	amount = 10, -- how many of the item go in one purchased shipment
	separate = false, -- whether the item is sold separately (usually used for guns)
	pricesep = 100, -- the price of a separately sold item
 
	-- The following fields are OPTIONAL. If you do not need them, or do not need to change them from their defaults, REMOVE them.
	noship = false, -- whether this item has a shipment
	allowed = {TEAM_GUN}, -- OPTIONAL, which teams are allowed to buy this shipment/separate gun
	shipmodel = "models/items/item_item_crate.mdl", -- OPTIONAL, the model of the shipment (this crate is the default)
	weight = 15, -- OPTIONAL, the weight of the shipment. The default is the weight of the shipment 
        buttonColor = Color(255, 255, 255, 255), -- Optional: The color of the button in the F4 menu,
        label = "FiveseveN Shipment", -- Optional: the text on the button in the F4 menu
        category = "Shipments", -- The name of the category it is in. Note: the category must be created!
        sortOrder = 100, -- The position of this thing in its category. Lower number means higher up.
 
	-- Advanced, optional
	shipmentClass = "spawned_shipment", -- The classname of the shipment entity. Use this if you have made a different shipment entity
	onBought = function(ply, shipment, ent) end, -- function that is called when the shipment is bought
	getPrice = function(ply, price) return ply:GetNWString("usergroup") == "donator" and price * 0.8 or price end, -- function to decide what the price is based on the player
	--spawn = function(shipment_ent, shipment_data) print("Spawn custom entity and place it") end, -- Function to override how the shipment spawns the weapon when used.
})

DarkRP.createShipment("P228 Single", {
	model = "bb_p228_alt", -- The model of the item that hovers above the shipment
	entity = "bb_p228_alt", -- the entity that comes out of the shipment
	price = 200, -- the price of one shipment
	amount = 1, -- how many of the item go in one purchased shipment
	separate = false, -- whether the item is sold separately (usually used for guns)
	pricesep = 100, -- the price of a separately sold item
 
	-- The following fields are OPTIONAL. If you do not need them, or do not need to change them from their defaults, REMOVE them.
	noship = false, -- whether this item has a shipment
	allowed = {TEAM_GUN}, -- OPTIONAL, which teams are allowed to buy this shipment/separate gun
	shipmodel = "models/items/item_item_crate.mdl", -- OPTIONAL, the model of the shipment (this crate is the default)
	weight = 15, -- OPTIONAL, the weight of the shipment. The default is the weight of the shipment 
        buttonColor = Color(255, 255, 255, 255), -- Optional: The color of the button in the F4 menu,
        label = "P228 Single", -- Optional: the text on the button in the F4 menu
        category = "Singles", -- The name of the category it is in. Note: the category must be created!
        sortOrder = 100, -- The position of this thing in its category. Lower number means higher up.
 
	-- Advanced, optional
	shipmentClass = "spawned_shipment", -- The classname of the shipment entity. Use this if you have made a different shipment entity
	onBought = function(ply, shipment, ent) end, -- function that is called when the shipment is bought
	getPrice = function(ply, price) return ply:GetNWString("usergroup") == "donator" and price * 0.8 or price end, -- function to decide what the price is based on the player
	--spawn = function(shipment_ent, shipment_data) print("Spawn custom entity and place it") end, -- Function to override how the shipment spawns the weapon when used.
})

DarkRP.createShipment("P228 Shipment", {
	model = "bb_p228_alt", -- The model of the item that hovers above the shipment
	entity = "bb_p228_alt", -- the entity that comes out of the shipment
	price = 400, -- the price of one shipment
	amount = 10, -- how many of the item go in one purchased shipment
	separate = false, -- whether the item is sold separately (usually used for guns)
	pricesep = 100, -- the price of a separately sold item
 
	-- The following fields are OPTIONAL. If you do not need them, or do not need to change them from their defaults, REMOVE them.
	noship = false, -- whether this item has a shipment
	allowed = {TEAM_GUN}, -- OPTIONAL, which teams are allowed to buy this shipment/separate gun
	shipmodel = "models/items/item_item_crate.mdl", -- OPTIONAL, the model of the shipment (this crate is the default)
	weight = 15, -- OPTIONAL, the weight of the shipment. The default is the weight of the shipment 
        buttonColor = Color(255, 255, 255, 255), -- Optional: The color of the button in the F4 menu,
        label = "P228 Shipment", -- Optional: the text on the button in the F4 menu
        category = "Shipments", -- The name of the category it is in. Note: the category must be created!
        sortOrder = 100, -- The position of this thing in its category. Lower number means higher up.
 
	-- Advanced, optional
	shipmentClass = "spawned_shipment", -- The classname of the shipment entity. Use this if you have made a different shipment entity
	onBought = function(ply, shipment, ent) end, -- function that is called when the shipment is bought
	getPrice = function(ply, price) return ply:GetNWString("usergroup") == "donator" and price * 0.8 or price end, -- function to decide what the price is based on the player
	--spawn = function(shipment_ent, shipment_data) print("Spawn custom entity and place it") end, -- Function to override how the shipment spawns the weapon when used.
})

DarkRP.createShipment("Desert Eagle Single", {
	model = "bb_deagle_alt", -- The model of the item that hovers above the shipment
	entity = "bb_deagle_alt", -- the entity that comes out of the shipment
	price = 500, -- the price of one shipment
	amount = 1, -- how many of the item go in one purchased shipment
	separate = false, -- whether the item is sold separately (usually used for guns)
	pricesep = 100, -- the price of a separately sold item
 
	-- The following fields are OPTIONAL. If you do not need them, or do not need to change them from their defaults, REMOVE them.
	noship = false, -- whether this item has a shipment
	allowed = {TEAM_GUN}, -- OPTIONAL, which teams are allowed to buy this shipment/separate gun
	shipmodel = "models/items/item_item_crate.mdl", -- OPTIONAL, the model of the shipment (this crate is the default)
	weight = 15, -- OPTIONAL, the weight of the shipment. The default is the weight of the shipment 
        buttonColor = Color(255, 255, 255, 255), -- Optional: The color of the button in the F4 menu,
        label = "Desert Eagle Single", -- Optional: the text on the button in the F4 menu
        category = "Singles", -- The name of the category it is in. Note: the category must be created!
        sortOrder = 100, -- The position of this thing in its category. Lower number means higher up.
 
	-- Advanced, optional
	shipmentClass = "spawned_shipment", -- The classname of the shipment entity. Use this if you have made a different shipment entity
	onBought = function(ply, shipment, ent) end, -- function that is called when the shipment is bought
	getPrice = function(ply, price) return ply:GetNWString("usergroup") == "donator" and price * 0.8 or price end, -- function to decide what the price is based on the player
	--spawn = function(shipment_ent, shipment_data) print("Spawn custom entity and place it") end, -- Function to override how the shipment spawns the weapon when used.
})

DarkRP.createShipment("Desert Eagle Shipments", {
	model = "bb_deagle_alt", -- The model of the item that hovers above the shipment
	entity = "bb_deagle_alt", -- the entity that comes out of the shipment
	price = 1000, -- the price of one shipment
	amount = 10, -- how many of the item go in one purchased shipment
	separate = false, -- whether the item is sold separately (usually used for guns)
	pricesep = 100, -- the price of a separately sold item
 
	-- The following fields are OPTIONAL. If you do not need them, or do not need to change them from their defaults, REMOVE them.
	noship = false, -- whether this item has a shipment
	allowed = {TEAM_GUN}, -- OPTIONAL, which teams are allowed to buy this shipment/separate gun
	shipmodel = "models/items/item_item_crate.mdl", -- OPTIONAL, the model of the shipment (this crate is the default)
	weight = 15, -- OPTIONAL, the weight of the shipment. The default is the weight of the shipment 
        buttonColor = Color(255, 255, 255, 255), -- Optional: The color of the button in the F4 menu,
        label = "Desert Eagle Shipment", -- Optional: the text on the button in the F4 menu
        category = "Shipments", -- The name of the category it is in. Note: the category must be created!
        sortOrder = 100, -- The position of this thing in its category. Lower number means higher up.
 
	-- Advanced, optional
	shipmentClass = "spawned_shipment", -- The classname of the shipment entity. Use this if you have made a different shipment entity
	onBought = function(ply, shipment, ent) end, -- function that is called when the shipment is bought
	getPrice = function(ply, price) return ply:GetNWString("usergroup") == "donator" and price * 0.8 or price end, -- function to decide what the price is based on the player
	--spawn = function(shipment_ent, shipment_data) print("Spawn custom entity and place it") end, -- Function to override how the shipment spawns the weapon when used.
})

DarkRP.createShipment("Glock Single", {
	model = "bb_glock_alt", -- The model of the item that hovers above the shipment
	entity = "bb_glock_alt", -- the entity that comes out of the shipment
	price = 550, -- the price of one shipment
	amount = 1, -- how many of the item go in one purchased shipment
	separate = false, -- whether the item is sold separately (usually used for guns)
	pricesep = 100, -- the price of a separately sold item
 
	-- The following fields are OPTIONAL. If you do not need them, or do not need to change them from their defaults, REMOVE them.
	noship = false, -- whether this item has a shipment
	allowed = {TEAM_GUN}, -- OPTIONAL, which teams are allowed to buy this shipment/separate gun
	shipmodel = "models/items/item_item_crate.mdl", -- OPTIONAL, the model of the shipment (this crate is the default)
	weight = 15, -- OPTIONAL, the weight of the shipment. The default is the weight of the shipment 
        buttonColor = Color(255, 255, 255, 255), -- Optional: The color of the button in the F4 menu,
        label = "Glock Single", -- Optional: the text on the button in the F4 menu
        category = "Singles", -- The name of the category it is in. Note: the category must be created!
        sortOrder = 100, -- The position of this thing in its category. Lower number means higher up.
 
	-- Advanced, optional
	shipmentClass = "spawned_shipment", -- The classname of the shipment entity. Use this if you have made a different shipment entity
	onBought = function(ply, shipment, ent) end, -- function that is called when the shipment is bought
	getPrice = function(ply, price) return ply:GetNWString("usergroup") == "donator" and price * 0.8 or price end, -- function to decide what the price is based on the player
	--spawn = function(shipment_ent, shipment_data) print("Spawn custom entity and place it") end, -- Function to override how the shipment spawns the weapon when used.
})

DarkRP.createShipment("Glock Shipment", {
	model = "bb_glock_alt", -- The model of the item that hovers above the shipment
	entity = "bb_glock_alt", -- the entity that comes out of the shipment
	price = 1100, -- the price of one shipment
	amount = 10, -- how many of the item go in one purchased shipment
	separate = false, -- whether the item is sold separately (usually used for guns)
	pricesep = 100, -- the price of a separately sold item
 
	-- The following fields are OPTIONAL. If you do not need them, or do not need to change them from their defaults, REMOVE them.
	noship = false, -- whether this item has a shipment
	allowed = {TEAM_GUN}, -- OPTIONAL, which teams are allowed to buy this shipment/separate gun
	shipmodel = "models/items/item_item_crate.mdl", -- OPTIONAL, the model of the shipment (this crate is the default)
	weight = 15, -- OPTIONAL, the weight of the shipment. The default is the weight of the shipment 
        buttonColor = Color(255, 255, 255, 255), -- Optional: The color of the button in the F4 menu,
        label = "Glock Shipment", -- Optional: the text on the button in the F4 menu
        category = "Shipments", -- The name of the category it is in. Note: the category must be created!
        sortOrder = 100, -- The position of this thing in its category. Lower number means higher up.
 
	-- Advanced, optional
	shipmentClass = "spawned_shipment", -- The classname of the shipment entity. Use this if you have made a different shipment entity
	onBought = function(ply, shipment, ent) end, -- function that is called when the shipment is bought
	getPrice = function(ply, price) return ply:GetNWString("usergroup") == "donator" and price * 0.8 or price end, -- function to decide what the price is based on the player
	--spawn = function(shipment_ent, shipment_data) print("Spawn custom entity and place it") end, -- Function to override how the shipment spawns the weapon when used.
})

DarkRP.createShipment("XM1014 Single", {
	model = "bb_xm1014_alt", -- The model of the item that hovers above the shipment
	entity = "bb_xm1014_alt", -- the entity that comes out of the shipment
	price = 2000, -- the price of one shipment
	amount = 1, -- how many of the item go in one purchased shipment
	separate = false, -- whether the item is sold separately (usually used for guns)
	pricesep = 100, -- the price of a separately sold item
 
	-- The following fields are OPTIONAL. If you do not need them, or do not need to change them from their defaults, REMOVE them.
	noship = false, -- whether this item has a shipment
	allowed = {TEAM_GUN}, -- OPTIONAL, which teams are allowed to buy this shipment/separate gun
	shipmodel = "models/items/item_item_crate.mdl", -- OPTIONAL, the model of the shipment (this crate is the default)
	weight = 15, -- OPTIONAL, the weight of the shipment. The default is the weight of the shipment 
        buttonColor = Color(255, 255, 255, 255), -- Optional: The color of the button in the F4 menu,
        label = "XM1014 Single", -- Optional: the text on the button in the F4 menu
        category = "Singles", -- The name of the category it is in. Note: the category must be created!
        sortOrder = 100, -- The position of this thing in its category. Lower number means higher up.
 
	-- Advanced, optional
	shipmentClass = "spawned_shipment", -- The classname of the shipment entity. Use this if you have made a different shipment entity
	onBought = function(ply, shipment, ent) end, -- function that is called when the shipment is bought
	getPrice = function(ply, price) return ply:GetNWString("usergroup") == "donator" and price * 0.8 or price end, -- function to decide what the price is based on the player
	--spawn = function(shipment_ent, shipment_data) print("Spawn custom entity and place it") end, -- Function to override how the shipment spawns the weapon when used.
})

DarkRP.createShipment("XM1014 Shipment", {
	model = "bb_xm1014_alt", -- The model of the item that hovers above the shipment
	entity = "bb_xm1014_alt", -- the entity that comes out of the shipment
	price = 4000, -- the price of one shipment
	amount = 10, -- how many of the item go in one purchased shipment
	separate = false, -- whether the item is sold separately (usually used for guns)
	pricesep = 100, -- the price of a separately sold item
 
	-- The following fields are OPTIONAL. If you do not need them, or do not need to change them from their defaults, REMOVE them.
	noship = false, -- whether this item has a shipment
	allowed = {TEAM_GUN}, -- OPTIONAL, which teams are allowed to buy this shipment/separate gun
	shipmodel = "models/items/item_item_crate.mdl", -- OPTIONAL, the model of the shipment (this crate is the default)
	weight = 15, -- OPTIONAL, the weight of the shipment. The default is the weight of the shipment 
        buttonColor = Color(255, 255, 255, 255), -- Optional: The color of the button in the F4 menu,
        label = "XM1014 Shipment", -- Optional: the text on the button in the F4 menu
        category = "Shipments", -- The name of the category it is in. Note: the category must be created!
        sortOrder = 100, -- The position of this thing in its category. Lower number means higher up.
 
	-- Advanced, optional
	shipmentClass = "spawned_shipment", -- The classname of the shipment entity. Use this if you have made a different shipment entity
	onBought = function(ply, shipment, ent) end, -- function that is called when the shipment is bought
	getPrice = function(ply, price) return ply:GetNWString("usergroup") == "donator" and price * 0.8 or price end, -- function to decide what the price is based on the player
	--spawn = function(shipment_ent, shipment_data) print("Spawn custom entity and place it") end, -- Function to override how the shipment spawns the weapon when used.
})

DarkRP.createShipment("M3 Single", {
	model = "bb_m3_alt", -- The model of the item that hovers above the shipment
	entity = "bb_m3_alt", -- the entity that comes out of the shipment
	price = 3000, -- the price of one shipment
	amount = 1, -- how many of the item go in one purchased shipment
	separate = false, -- whether the item is sold separately (usually used for guns)
	pricesep = 100, -- the price of a separately sold item
 
	-- The following fields are OPTIONAL. If you do not need them, or do not need to change them from their defaults, REMOVE them.
	noship = false, -- whether this item has a shipment
	allowed = {TEAM_GUN}, -- OPTIONAL, which teams are allowed to buy this shipment/separate gun
	shipmodel = "models/items/item_item_crate.mdl", -- OPTIONAL, the model of the shipment (this crate is the default)
	weight = 15, -- OPTIONAL, the weight of the shipment. The default is the weight of the shipment 
        buttonColor = Color(255, 255, 255, 255), -- Optional: The color of the button in the F4 menu,
        label = "M3 Single", -- Optional: the text on the button in the F4 menu
        category = "Singles", -- The name of the category it is in. Note: the category must be created!
        sortOrder = 100, -- The position of this thing in its category. Lower number means higher up.
 
	-- Advanced, optional
	shipmentClass = "spawned_shipment", -- The classname of the shipment entity. Use this if you have made a different shipment entity
	onBought = function(ply, shipment, ent) end, -- function that is called when the shipment is bought
	getPrice = function(ply, price) return ply:GetNWString("usergroup") == "donator" and price * 0.8 or price end, -- function to decide what the price is based on the player
	--spawn = function(shipment_ent, shipment_data) print("Spawn custom entity and place it") end, -- Function to override how the shipment spawns the weapon when used.
})

DarkRP.createShipment("M3 Shipment", {
	model = "bb_m3_alt", -- The model of the item that hovers above the shipment
	entity = "bb_m3_alt", -- the entity that comes out of the shipment
	price = 6000, -- the price of one shipment
	amount = 10, -- how many of the item go in one purchased shipment
	separate = false, -- whether the item is sold separately (usually used for guns)
	pricesep = 100, -- the price of a separately sold item
 
	-- The following fields are OPTIONAL. If you do not need them, or do not need to change them from their defaults, REMOVE them.
	noship = false, -- whether this item has a shipment
	allowed = {TEAM_GUN}, -- OPTIONAL, which teams are allowed to buy this shipment/separate gun
	shipmodel = "models/items/item_item_crate.mdl", -- OPTIONAL, the model of the shipment (this crate is the default)
	weight = 15, -- OPTIONAL, the weight of the shipment. The default is the weight of the shipment 
        buttonColor = Color(255, 255, 255, 255), -- Optional: The color of the button in the F4 menu,
        label = "M3 Shipment", -- Optional: the text on the button in the F4 menu
        category = "Shipments", -- The name of the category it is in. Note: the category must be created!
        sortOrder = 100, -- The position of this thing in its category. Lower number means higher up.
 
	-- Advanced, optional
	shipmentClass = "spawned_shipment", -- The classname of the shipment entity. Use this if you have made a different shipment entity
	onBought = function(ply, shipment, ent) end, -- function that is called when the shipment is bought
	getPrice = function(ply, price) return ply:GetNWString("usergroup") == "donator" and price * 0.8 or price end, -- function to decide what the price is based on the player
	--spawn = function(shipment_ent, shipment_data) print("Spawn custom entity and place it") end, -- Function to override how the shipment spawns the weapon when used.
})
