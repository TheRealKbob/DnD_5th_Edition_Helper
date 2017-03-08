local _M = {}

local Stats = require "components.stats"

function _M:new( o )
  o = o or {}

  if o == {} then
    o[ 'name' ] = ''

    o[ 'player' ] = ''

    o[ 'level' ] = 1

    o[ 'race' ] = nil

    o[ 'class' ] = nil

    o[ 'alignment' ] = nil

    o[ 'background' ] = nil

    o[ 'experience' ] = 0

    o[ 'gender' ] = nil

    o[ 'age' ] = 0

    o[ 'height' ] = nil

    o[ 'weight' ] = 0

    o[ 'eyeColor' ] = ''

    o[ 'hairColor' ] = ''

    o[ 'skinColor' ] = ''

    o[ 'hitDice' ] = nil

    o[ 'skills' ] = {}

    o[ 'stats' ] = Stats:Create{
      [ 'maximumHealth' ] = 0,
      [ 'currentHealth' ] = 0,
      [ 'temporaryHealth' ] = 0,

      [ 'armorClass' ] = 0,
      [ 'initiative' ] = 0,
      [ 'speed' ] = 0,

      [ 'strength' ] = 1,
      [ 'dexterity' ] = 1,
      [ 'constitution' ] = 1,
      [ 'intelligence' ] = 1,
      [ 'wisdom' ] = 1,
      [ 'charisma' ] = 1,
    }

  end

  return o
end

return _M
