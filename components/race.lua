local races = require 'tables.raceTable'

local _M = {}

function _M:Create( category )

  o = races[ category ] or {}

  return o

end

return _M
