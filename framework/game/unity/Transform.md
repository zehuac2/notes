# Instantiation

`Instantiate(original, parent)` will scale the instantiated object in relation
to `parent`. To instantiate an object without modifying its scale, but maintains
the child, parent relationship, instantiate without parent first, then assign
the `parent` property on the instantiated transform.

```cs
GameObject bulletHole = Instantiate(BulletHoleTemplate);
Transform bulletHoleTransform = bulletHole.transform;

bulletHoleTransform.position = hit.point + (hit.normal * BulletNormalOffset);
bulletHoleTransform.rotation = Quaternion.LookRotation(hit.normal);
bulletHoleTransform.up = hit.normal;

bulletHoleTransform.parent = transform;
```
