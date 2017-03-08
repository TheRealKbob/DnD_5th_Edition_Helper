local sizes = require "tables.sizeTable"

local _M = {}

-- ------------------------------------------
-- RACE  CHART --
-- ------------------------------------------

_M[ 'aarakockra' ] = {
  display = 'Aarakockra',
  size = sizes.medium,
  speed = '25',
  modifiers = {
    id = 'race',
    add = {
      [ 'dexterity' ] = 2,
      [ 'wisdom' ] = 2
    }
  }
}

_M[ 'human' ] = {
  display = 'Human',
  size = sizes.medium,
  speed = '30',
  modifiers = {
    id = 'race',
    add = {
      [ 'strength' ] = 1,
      [ 'dexterity' ] = 1,
      [ 'constitution' ] = 1,
      [ 'intelligence' ] = 1,
      [ 'wisdom' ] = 1,
      [ 'charisma' ] = 1
    }
  }
}

return _M
