import sequtils
import nimpy

proc get_mat(mat: seq[seq[float]], n: float): seq[seq[float]] {.exportpy.} =
  let row_size = mat[0].len
  let column_size = mat.len
  result = newSeqWith(column_size, newSeq[float](row_size))
  for col in 0..<column_size:
    for row in 0..<row_size:
      result[col][row] = mat[col][row] * n

