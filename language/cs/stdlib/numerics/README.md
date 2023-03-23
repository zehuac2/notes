# System.Numerics

The namespace provides

- SIMD enabled types
  - `Vector4`
  - `Vector3`
  - `Vector2`
  - `Vector<T>`
  - `Quaternion`
  - `Plane`
  - `Matrix3x2`
  - `Matrix4x4`
  - `Vector<T>`
- Big integers
- Complex numbers

# SIMD

- `Vector<T>` provides a vector type that is fit for low level SIMD
  optimizations
  - Number of elements of `T` in the instance may be platform independent; use
    `Vector<T>.Count` to get the size of elements
- Vector operations are provided as static methods in the related vector types
- Vector types are pretty printed
- `Vector.IsHardwareAccelerated` tells if current runtime supports hardware
  acceleration
- Despite that `Vector<T>` is a reference type, the runtime may not actually
  allocate heap space for it during optimization
- `VectorX` types provide vectors that have a fixed size

## Example

```cs
static float SumSIMD(in ReadOnlySpan<float> values)
{
  Vector<float> sums = new Vector<float>();
  int simdLength = Vector<float>.Count;
  int stopIndex = values.Length - (values.Length % simdLength);

  int valuesIndex = 0;

  for (; valuesIndex < stopIndex; valuesIndex += simdLength)
  {
    Vector<float> vecValues = new Vector<float>(values.Slice(valuesIndex, simdLength));
    sums = Vector.Add(sums, vecValues);
  }

  float sumsTotal = 0.0f;

  for (int i = 0; i < simdLength; i++)
  {
    sumsTotal += sums[i];
  }

  for (; valuesIndex < values.Length; valuesIndex++)
  {
    sumsTotal += values[valuesIndex];
  }

  return sumsTotal;
}
```
