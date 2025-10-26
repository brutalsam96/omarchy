echo "Setup graceful Chromium-based browser shutdown"
if [[ -f ~/.config/systemd/user/omarchy-chromium-shutdown.service ]]; then
  # Copy the service file
  mkdir -p ~/.config/systemd/user
  cp ~/.local/share/omarchy/config/systemd/user/omarchy-chromium-shutdown.service ~/.config/systemd/user/

  # Copy the shutdown script to local bin
  mkdir -p ~/.local/bin
  cp ~/.local/share/omarchy/scripts/omarchy-chromium-shutdown ~/.local/bin/
  chmod +x ~/.local/bin/omarchy-chromium-shutdown

  # Reload and enable
  systemctl --user daemon-reload
  systemctl --user enable omarchy-chromium-shutdown.service || true
fi

