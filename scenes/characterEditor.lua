local composer = require 'composer'
local scene = composer.newScene()
local sceneGroup

local json = require 'json'
local filepath = system.pathForFile( 'DnD_5th_Edition_Helper_characterData.json', system.DocumentsDirectory )

local Character = require "components.character"

local character

-- -----------------------------------------------------------------------------------
-- #Region : Scene behaviours
-- -----------------------------------------------------------------------------------

-- -----------------------------------------------------------------------------------
-- #EndRegion
-- -----------------------------------------------------------------------------------

-- -----------------------------------------------------------------------------------
-- #Region : Scene event functions
-- -----------------------------------------------------------------------------------

-- Awake
function scene:create( event )
  sceneGroup = self.view

  character = Character:new()



end

-- Start
function scene:show( event )
  local phase = event.phase

  if( phase == 'will' ) then

  elseif( phase == 'did' ) then

  end
end

-- Exit
function scene:hide( event )
  local phase = event.phase

  if( phase == 'will' ) then

  elseif( phase == 'did' ) then

  end
end

-- Destroy
function scene:destroy( event )

end

-- Listeners
scene:addEventListener( 'create', scene )
scene:addEventListener( 'show', scene )
scene:addEventListener( 'hide', scene )
scene:addEventListener( 'destroy', scene )

-- -----------------------------------------------------------------------------------
-- #EndRegion
-- -----------------------------------------------------------------------------------

return scene
