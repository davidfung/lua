local bal = {}
local Account = {}
local mt = {__index = Account}

Object = {name = "Current Account"}
setmetatable(Account, {__index = Object})

function Account:new()
    local obj = {}
    setmetatable(obj, mt)
    bal[obj] = 0
    return obj
end

function Account:deposit(amount)
    bal[self] = bal[self] + amount
end

function Account:balance()
    return bal[self]
end

return Account