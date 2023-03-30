-- test private properties

A = require "Account"
acc = A:new()
acc:deposit(100)
print(acc:balance()) -- print 100
print(acc.bal) -- print nil
