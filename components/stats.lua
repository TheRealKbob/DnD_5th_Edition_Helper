local _M = {}

function _M:Create( stats )
  local this = {
    base = {},
    modifiers = {}
  }

  for k, v in pairs( stats ) do
    this.base[ k ] = v
  end

  setmetatable( this, self )

  return this
end

function _M:AddModifier( id, val )
  self.modifiers[ id ] = {
    add = modifier.add or {},
    multiply = modifier.multiply or {}
  }
end

function _M:RemoveModifier( id )
  self.modifiers[ id ] = nil
end

function _M:Get( id )
  local total = self.base[ id ] or 0
  local multiplier = 0

  for k, v in pairs( self.modifiers ) do
    total = total + ( v.add[ id ] or 0 )
    multiplier = multiplier + ( v.multiply[ id ] or 0 )
  end

  return total + ( total * multiplier )
end

return _M
