co = coroutine.create(function (x) 
    print(x)
    x = coroutine.yield(20)
    print(x)
    return 40
end)

print(coroutine.resume(co, 10))
print(coroutine.resume(co, 30))

