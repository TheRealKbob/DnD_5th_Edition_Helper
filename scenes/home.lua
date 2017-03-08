local composer = require 'composer'
local scene = composer.newScene()
local sceneGroup

-- -----------------------------------------------------------------------------------
-- #Region : Scene behaviour
-- -----------------------------------------------------------------------------------

local function gotoCharacterSelect()
  composer.gotoScene( 'scenes.characterEditor', { effect = 'slideLeft', time = '500' } )
end

-- -----------------------------------------------------------------------------------
-- #EndRegion
-- -----------------------------------------------------------------------------------

-- -----------------------------------------------------------------------------------
-- #Region : Scene event functions
-- -----------------------------------------------------------------------------------

-- Awake
function scene:create( event )
  sceneGroup = self.view

  local characterSelectButton = display.newText( sceneGroup, "0", display.contentCenterX, display.contentHeight * 0.5, native.systemFont, 24 )
  characterSelectButton:addEventListener( 'tap', gotoCharacterSelect )
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
