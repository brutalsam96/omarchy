
#!/usr/bin/env bash

echo "Enable chrome gracefull shutdown service"

set -e

if [[ ! -f ~/.local/share/omarchy/config/systemd/user/chrome-graceful-shutdown.service ]]; then
  cp ~/.local/share/omarchy/config/systemd/user/chrome-graceful-shutdown.service ~/.config/systemd/user/
  systemctl --user enable --now chrome-graceful-shutdown.service || true
fi
