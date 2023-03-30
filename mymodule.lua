local M = {}

function M.new (x, y)
    return { x = x, y = y }
end

function M.norm (v)
    return math.sqrt(v.x^2 + v.y^2)
end

local id = 0
function M.genid ()
    id = id + 1
    return id
end

return M


