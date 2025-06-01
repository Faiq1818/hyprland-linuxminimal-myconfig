-- if true then return end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- This will run last in the setup process.
-- This is just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

-- Neoscroll config remap
local neoscroll = require "neoscroll"
local keymap = {
  -- ["<C-u>"] = function() neoscroll.ctrl_u { duration = 250 } end,
  -- ["<C-d>"] = function() neoscroll.ctrl_d { duration = 250 } end,
  ["<C-k>"] = function() neoscroll.ctrl_b { duration = 450 } end,
  ["<C-j>"] = function() neoscroll.ctrl_f { duration = 450 } end,
  -- ["<C-k>"] = function() neoscroll.scroll(-0.1, { move_cursor = true, duration = 100 }) end,
  -- ["<C-j>"] = function() neoscroll.scroll(0.1, { move_cursor = true, duration = 100 }) end,
  -- ["zt"] = function() neoscroll.zt { half_win_duration = 250 } end,
  -- ["zz"] = function() neoscroll.zz { half_win_duration = 250 } end,
  -- ["zb"] = function() neoscroll.zb { half_win_duration = 250 } end,
}

local modes = { "n", "v", "x" }

for key, func in pairs(keymap) do
  vim.keymap.set(modes, key, func, { desc = "Neoscroll mapping" })
end
