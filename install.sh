#!/bin/bash

# Set variables
url="https://github.com/equalsraf/win32yank/releases/latest/download/win32yank-x64.zip"
executable="win32yank.exe"
install_dir="/usr/local/bin"

# Function to display errors and exit
display_error() {
	echo "Error: $1"
	exit 1
}

# Download and install
echo "Downloading and installing win32yank..."

# Create a temporary directory
temp_dir=$(mktemp -d) || display_error "Failed to create temporary directory."

# Download the zip file and unzip it to the temporary directory
wget -q -O "$temp_dir/win32yank.zip" "$url" || display_error "Failed to download $url."
unzip -q "$temp_dir/win32yank.zip" -d "$temp_dir" || display_error "Failed to unzip $temp_dir/win32yank.zip."

# Move the executable to /usr/local/bin
sudo mv "$temp_dir/$executable" "$install_dir" || display_error "Failed to move $executable to $install_dir."

# Grant executable permissions
sudo chmod +x "$install_dir/$executable" || display_error "Failed to grant executable permissions to $install_dir/$executable."

# Clean up
rm -rf "$temp_dir" || display_error "Failed to remove temporary directory $temp_dir."

echo "Installation completed successfully."
