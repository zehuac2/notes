import numpy as np


def euclidean(a: np.ndarray, b: np.ndarray) -> float:
    diff = np.subtract(a, b)
    diff2 = np.power(diff, 2.0)
    s = np.sum(diff2)
    sqrt = np.sqrt(s)

    return sqrt
