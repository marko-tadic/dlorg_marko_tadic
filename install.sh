#!/usr/bin/env bash

cd "$(dirname "$0")"
echo "Installing dlorg..."

mkdir -p $HOME/.local/bin ~/.config/systemd/user/
cp dlorg $HOME/.local/bin/dlorg
chmod +x $HOME/.local/bin/dlorg
cat << 'EOF' > "$HOME/.config/systemd/user/organizer-startup.service"
[Unit]
Description=Organizer Startup Service
After=network.target

[Service]
Type=simple
ExecStart=%h/.local/bin/dlorg

[Install]
WantedBy=default.target
EOF
systemctl --user daemon-reload
systemctl --user enable --now organizer-startup.service
echo "Done! Dlorg is now running in the background"

 
