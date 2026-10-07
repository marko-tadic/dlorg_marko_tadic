#!/usr/bin/env bash

echo "Installing dlorg..."

mkdir -p ~/.local/bin ~/.config/systemd/user/
cp dlorg ~/.local/bin/dlorg
chmod +x ~/.local/bin/dlorg
cp organizer-startup.service ~/.config/systemd/user/
systemctl --user daemon-reload
systemctl --user enable --now organizer-startup.service
echo "Done! Dlorg is now running in the background"
 
