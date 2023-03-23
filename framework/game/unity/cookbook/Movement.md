# Smooth Rotation, Movement

### Kinematic: `MovePosition`

```cs
void FixedUpdate()
{
  _rigidbody.MovePosition(transform.position + delta * Time.fixedDeltaTime);
}
```

When a rigidbody is used and `interpolate` enabeld, calling
`void MovePosition(this, Vector3)` of kinematic rigidbodies in
`void FixedUpdate(this)` methods would yield smoother movements, compared to
using `Transform.Translate(this)`

The same also applies to rotation

### Character Controller

```cs
Vector3? lookAt = GetLookAt();

Vector3 forward = (lookAt.Value - _transform!.position).normalized;
Vector3 right = Vector3.Cross(forward, Vector3.up).normalized;

float horizontal = Input.GetAxis("Horizontal") * -1.0f;
float vertical = Input.GetAxis("Vertical");

forward = forward * vertical * Speed;
right = right * horizontal * Speed;

Vector3 targetVelocity = forward + right;

// lookat will be lower than transform.position, therefore, we must zero out the y
// components to prevent the player from sinking into the ground or flying up
targetVelocity.y = 0.0f;

CharacterController.SimpleMove(targetVelocity);
```

Remove rigidbodies and instead use character controllers. Character controllers
still simulate gravity and performs collision detection

- Do not use `Time.deltaTime` if using `SimpleMove(speed)`

#### Weapons Going Through Environments

As character controllers are not able to take additional colliders into account,
we cannot prevent weapons from going through walls simply using extra colliders.

The solution is to use use an overlay camera that only renders the weapon ontop
the main camera. This way, the weapon will never be hidden by anything.

- The overlay camera must clear depth buffer

### Manual Simulation

[TODO:](https://www.zubspace.com/blog/smooth-movement-in-unity#about-rigidbody-interpolation-input-lag-and-display-lag)
