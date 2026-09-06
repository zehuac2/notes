# macOS

# Dock

```bash
defaults delete com.apple.dock; killall Dock
```

# Window Management

- Hide all windows except the front: Option + Command + H
- Hide front window: Command H

# Enable Application From Any Source

```bash
# enable
sudo spctl --master-disable
# disable
sudo spctl --master-enable
```
