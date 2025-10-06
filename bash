#!/bin/bash

# ┌────────────────────────────────────────────┐
# │     GET PRIVATE - Secure Shell Launcher    │
# └────────────────────────────────────────────┘

# Configuration
USERNAME="admin"
PASSWORD="TrustBankSecure123"
LOG_FILE="$HOME/.get_private_access.log"

# Show logo (optional viewer: eog, feh, display)
eog "$(dirname "$0")/../assets/logo.png" & disown
sleep 2

# Privacy Notice
zenity --info --width=500 --height=400 --title="Privacy & Access Notice" --text="🔒 Family Fortress Trust Bank LLC (Owner: Joseph Thornton Jr.)\n\nBy accessing this shell, you agree that no personal, device, or metadata shall be collected, stored, or transmitted without explicit written consent.\n\nUnauthorized use or exfiltration may result in civil and criminal penalties.\n\nClick OK to continue."

# Username Prompt
USERNAME_INPUT=$(zenity --entry --title="Get Private Login" --text="Enter your username:")

# Password Prompt
PASSWORD_INPUT=$(zenity --password --title="Get Private Login")

# Validate Credentials
if [[ "$USERNAME_INPUT" == "$USERNAME" && "$PASSWORD_INPUT" == "$PASSWORD" ]]; then
    zenity --info --title="Access Granted" --text="✅ Welcome, $USERNAME_INPUT!"
    echo "$(date) - Access granted for user '$USERNAME_INPUT'" >> "$LOG_FILE"

    # Launch terminal with system info
    gnome-terminal -- bash -c "echo
