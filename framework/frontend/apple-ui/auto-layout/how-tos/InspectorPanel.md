# Inspector Panel

Similar to Unity's inspector panel

[Sample Code](https://developer.apple.com/documentation/appkit/views_and_controls/organize_your_user_interface_with_a_stack_view)

## Key Take-Aways

- Add height constraints sections
- To collapse sections:
  - Set `constant` property to `0` to height constraints
  - Cal `layoutIfNeeded` or related functions
  - Wrap inside animation group to animate
