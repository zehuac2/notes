# Float 4

## 32-bit Float

### Basic

- Type: `__m128`
- Load: `__m128 _mm_load_ps(const float *)`
- Store: `void _mm_store_ps(float *, __m128)`

### Arithmetic

- Add: `__m128 _mm_add_ps(__m128, __m128)`
- Subtraction: `__m128 _mm_sub_ps(__m128, __m128)`
- Multiplication: `__m128 _mm_mul_ps(__m128, __m128)`
- Division: `__m128 _mm_div_ps(__m128, __m128)`

## 64-bit Float

- Type: `__m128d`
- All other operations are the same, with `ps` suffix changed to `pd` suffix
