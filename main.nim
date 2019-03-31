import strutils, sequtils
import algorithm
import math
import future

proc getInt(): int =
  parseInt(readLine(stdin))

proc getInts(): seq[int] =
  readLine(stdin).split(" ").map(parseInt)

let arr = getInts()
let N = arr[0]
let M = arr[1]
var P_Y = lc[getInts() | (x <- 0..<M), seq[int]]

var y_max: array[0..100010, int]
var Nth = lc[1 | (x <- 0..<N), int]


for i in 0..P_Y.len:
  P_Y[i].add(0)

for i, p_y in P_Y:
  var p = p_y[0]
  var y = p_y[1]
  if y_max[p] < y:
    y_max[p] = y
    P_Y[i][2] = Nth[p]
    Nth[p] += 1
  else:
    for j in 0..<i:
      if P_Y[j][1] > y:
        P_Y[j][2] += 1

for p_l in P_Y:
  var p = p_l[0]
  var l = p_l[2]
  echo p,l
