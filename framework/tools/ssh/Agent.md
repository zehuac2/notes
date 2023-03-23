# Auto Start

## Linux

1. Create `/etc/systemd/user/ssh-agent.service` with the following content

   ```toml
   Description=SSH authentication agent

   [Service]
   ExecStart=/usr/bin/ssh-agent -a %t/ssh-agent.socket -D
   Type=simple

   [Install]
   WantedBy=default.target
   ```

2. Add the following to `.bashrc`
   ```
   export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
   ```
3. Under your account
   ```
   $ systemctl --user enable ssh-agent.service
   $ systemctl --user start ssh-agent.service
   ```
4. Log out and then login, run the following to see if `ssh-agent` is running
   ```
   $ systemctl --user status ssh-agent.service
   ```

Origin:
[magnetikonline/README.md](https://gist.github.com/magnetikonline/b6255da90606fe9c5c25d3333c98c90d)
