
minetest.register_ore({
	ore_type       = "scatter",
	ore            = "air_items:air_ore",
	wherein        = "default:stone",
	clust_scarcity = 5*5*5,
	clust_num_ores = 2,
	clust_size     = 2,
	height_min     = -31000,
	height_max     = -100,
})

minetest.register_node("air_items:air_ore", {
	description = "air ore",
	tiles = {"default_stone.png^air_ore.png"},
	is_ground_content = true,
	groups = {cracky=3, stone=1},
	drop = 'air_items:air',
	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("air_items:air", {
	description = "air",
	tiles = {
		"air.png",
		"air.png",
		"air.png",
		"air.png",
		"air.png",
		"air.png"
	},
  light_source = 15,
	groups = {cracky=3},
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5}, -- NodeBox6
			{-0.5, -0.5, 0.4375, 0.5, 0.5, 0.5}, -- NodeBox7
			{-0.5, -0.5, -0.5, -0.4375, 0.5, 0.5}, -- NodeBox8
			{0.4375, -0.5, -0.5, 0.5, 0.5, 0.5}, -- NodeBox9
			{-0.5, -0.5, -0.5, 0.5, 0.5, -0.4375}, -- NodeBox10
		}
	}
});

minetest.register_craft({
	output = "air_items:air",
	recipe = {
		{"default:mese_crystal", "", "default:mese_crystal"},
		{"default:stone", "", "default:stone"},
		{"default:stone", "", "default:stone"},
	}
})

minetest.register_tool("air_items:air_pick", {
    description = "air Pick",
    inventory_image = "air_pick.png",
		after_use = function(itemstack, user, pointed_thing)
		 itemstack:add_wear(2000)
	 end,
    tool_capabilities = {
        max_drop_level=9,
        groupcaps= {
            cracky={times={[1]=1.00, [2]=1.50, [3]=2.00}, uses=99, maxlevel=9}
        }
    }
});

minetest.register_craft({
	output = "air_items:air_pick",
	recipe = {
		{"air_items:air", "air_items:air", "air_items:air"},
		{"", "default:stick", ""},
		{"", "default:stick", ""},
	}
})

minetest.register_tool("air_items:air_pick_upgraded", {
    description = "air Pick reinforced",
    inventory_image = "air_pick_upgraded.png",
	after_use = function(itemstack, user, pointed_thing)
		itemstack:add_wear(200)
	end,
    tool_capabilities = {
        max_drop_level = 99,
        groupcaps = {
            cracky = {
				times = {
					[1]=0.50,
				 	[2]=1.00,
					[3]=1.50
				},
				uses=99, 
				maxlevel=99
			}
        }
    }
});

minetest.register_craft({
	output = "air_items:air_pick_upgraded",
	recipe = {
		{"", "default:mese_crystal", ""},
		{"", "air_items:air_pick", ""},
		{"", "", ""},
	}
})

minetest.register_tool("air_items:air_sword", {
	description = "air Sword",
	inventory_image = "air_sword.png",
	after_use = function(itemstack, user, pointed_thing)
		itemstack:add_wear(20)
 	end,
	tool_capabilities = {
		max_drop_level=99,
		groupcaps={
			snappy={times={[1]=0.50, [2]=1.00, [3]=1.50}, uses=99, maxlevel=99},
			choppy={times={[1]=0.50, [2]=1.00, [3]=1.50}, uses=99, maxlevel=99},
		},
		damage_groups = {fleshy=99}
	},
})

minetest.register_craft({
	output = "air_items:air_sword",
	recipe = {
		{"", "air_items:air", ""},
		{"", "air_items:air", ""},
		{"", "default:stick", ""},
	}
})


minetest.register_craftitem("air_items:air_lollipop", {
	description = "air lollipop",
	inventory_image = "air_lollipop.png",
	on_use = minetest.item_eat(90),
})

minetest.register_craft({
	type = "cooking",
	output = "air_items:air_lollipop",
	recipe = "air_items:air_sword",
})

minetest.register_tool("air_items:air_lazer", {
	description = "air laser",
	inventory_image = "air_lazer.png",
		after_use = function(itemstack, user, pointed_thing)
		itemstack:add_wear(2)
 	end,
	tool_capabilities = {
		max_drop_level=99,
		groupcaps={
			cracky={times={[1]=0.50, [2]=0.50, [3]=0.50}, uses=99, maxlevel=99},
			crumbly={times={[1]=0.50, [2]=0.50, [3]=0.50}, uses=99, maxlevel=99},
			snappy={times={[1]=0.50, [2]=0.50, [3]=0.50}, uses=99, maxlevel=99},
			choppy={times={[1]=0.50, [2]=0.50, [3]=0.50}, uses=99, maxlevel=99},
		},
		damage_groups = {fleshy=99}
	},
})

minetest.register_craft({
	output = "air_items:air_lazer",
	recipe = {
		{"", "default:mese_crystal", ""},
		{"", "air_items:air_lollipop", ""},
		{"", "default:diamond", ""},
	}
})

minetest.register_abm({
	nodenames = {"air_items:air"},
	neighbors = {"default:water_source", "default:water_flowing"},
	interval = 2.0,
	chance = 1,
	action = function(pos, node, active_object_count, active_object_count_wider)
		minetest.set_node({x = pos.x, y = pos.y + 1, z = pos.z}, {name = "default:mese"})
	end
})

minetest.register_craft({
	output = "air_items:air_lollipop",
	recipe = {
		{"", "", ""},
		{"", "default:mese_crystal", ""},
		{"", "default:diamond", ""},
	}
})