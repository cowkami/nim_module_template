import nimpy

proc fib(n: int) {.exportpy.} =
  var num = n
  var factorial = n 
  for i in 0..<n:
    echo factorial
    num = num - 1
    factorial *= num
    
