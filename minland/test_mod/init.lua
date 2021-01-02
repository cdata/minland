minetest.register_on_joinplayer(function(player)
  player:hud_add({
      hud_elem_type = "image",
      position  = {x = 1, y = 1},
      offset    = {x = -128, y = -128},
      text      = "minland_test_mod_test_image.png",
      scale     = { x = 0.25, y = 0.25},
      alignment = { x = 1, y = 1 },
  })
end)