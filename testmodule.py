import numpy as np
import time 
import fib
import nimlinalg


#fib.fib(5)
mat = np.random.rand(4, 5)
print(mat)
print(np.array(nimlinalg.get_mat(mat.tolist(), 2)))

def bench(f, iterate):
    start = time.time()
    for i in range(iterate):
        mat = np.random.rand(10, 10)
        f(mat, 0.91)
    print(time.time() - start)

print('bench')
print('numpy')
bench(lambda x, n: x*n, 100)
print()

print('nimlinalg')
bench(lambda x, n: nimlinalg.get_mat(x.tolist(), n), 100)
