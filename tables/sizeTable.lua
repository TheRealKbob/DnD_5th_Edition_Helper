-- ------------------------------------------
-- SIZE  CHART --
-- ------------------------------------------

-- Fine --
local fineBiped = {
  display = 'Fine',
  modifiers = {
    id = 'size',
    add = {
      [ 'attack' ] = 8,
      [ 'armorClass' ] = 8,
      [ 'specialAttack' ] = -16,
      [ 'hide' ] = 16,
    },
    multiply = {
      [ 'carryCapacity' ] = 0.125,
    }
  },
  heightDescription = '6 in. or less',
  weightDescription = '1/8 lb. or less',
  spaceDescription = '1/2 ft.',
  reach = {
    [ 'horizontal' ] = '0ft',
    [ 'vertical' ] = '0ft.'
  }
}
local fineQuadruped = fineBiped
fineQuadruped.modifiers.multiply.carryCapacity = 0.25
local fine = { biped = fineBiped, quadruped = fineQuadruped }

-- Diminutive --
local diminutiveBiped = {
  display = 'Diminutive',
  modifiers = {
    id = 'size',
    add = {
      [ 'attack' ] = 4,
      [ 'armorClass' ] = 4,
      [ 'specialAttack' ] = -12,
      [ 'hide' ] = 12,
    },
    multiply = {
      [ 'carryCapacity' ] = 0.25,
    }
  },
  heightDescription = '6 in. to 1 ft.',
  weightDescription = '1/8 to 1 lb.',
  spaceDescription = '1 ft.',
  reach = {
    [ 'horizontal' ] = '0ft',
    [ 'vertical' ] = '0ft.'
  }
}
local diminutiveQuadruped = diminutiveBiped
diminutiveQuadruped.modifiers.multiply.carryCapacity = 0.5
local diminutive = { biped = diminutiveBiped, quadruped = diminutiveQuadruped }

-- Tiny --
local tinyBiped = {
  display = 'Tiny',
  modifiers = {
    id = 'size',
    add = {
      [ 'attack' ] = 2,
      [ 'armorClass' ] = 2,
      [ 'specialAttack' ] = -8,
      [ 'hide' ] = 8,
    },
    multiply = {
      [ 'carryCapacity' ] = 0.5,
    }
  },
  heightDescription = '1 to 2 ft.',
  weightDescription = '1 to 8 lb.',
  spaceDescription = '2 1/2 ft.',
  reach = {
    [ 'horizontal' ] = '0ft',
    [ 'vertical' ] = '0ft.'
  }
}
local tinyQuadruped = tinyBiped
tinyQuadruped.modifiers.multiply.carryCapacity = 0.75
local tiny = { biped = tinyBiped, quadruped = tinyQuadruped }

-- Small --
local smallBiped = {
  display = 'Small',
  modifiers = {
    id = 'size',
    add = {
      [ 'attack' ] = 1,
      [ 'armorClass' ] = 1,
      [ 'specialAttack' ] = -4,
      [ 'hide' ] = 4,
    },
    multiply = {
      [ 'carryCapacity' ] = 0.75,
    }
  },
  heightDescription = '2 to 5 ft.',
  weightDescription = '8 to 60 lb.',
  spaceDescription = '5 ft.',
  reach = {
    [ 'horizontal' ] = '5ft',
    [ 'vertical' ] = '5ft.'
  }
}
local smallQuadruped = smallBiped
smallQuadruped.modifiers.multiply.carryCapacity = 1
local small = { biped = smallBiped, quadruped = smallQuadruped }

-- Medium --
local mediumBiped = {
  display = 'Medium',
  modifiers = {
    id = 'size',
    add = {
      [ 'attack' ] = 0,
      [ 'armorClass' ] = 0,
      [ 'specialAttack' ] = -0,
      [ 'hide' ] = 0,
    },
    multiply = {
      [ 'carryCapacity' ] = 1,
    }
  },
  heightDescription = '4 to 8 ft.',
  weightDescription = '60 to 500 lb.',
  spaceDescription = '5 ft.',
  reach = {
    [ 'horizontal' ] = '5ft',
    [ 'vertical' ] = '5ft.'
  }
}
local mediumQuadruped = mediumBiped
mediumQuadruped.modifiers.multiply.carryCapacity = 1.25
local medium = { biped = mediumBiped, quadruped = mediumQuadruped }

local _M = {}

_M[ 'fine' ] = fine
_M[ 'diminutive' ] = diminutive
_M[ 'tiny' ] = tiny
_M[ 'small' ] = small
_M[ 'medium' ] = medium

return _M
