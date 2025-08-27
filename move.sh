#!/bin/bash

# Roblox storage location on Mac
rbx_storage="$HOME/Library/Roblox/rbx-storage"
assets="$(cd "$(dirname "$0")"; pwd)/assets"

if [ ! -d "$assets" ]; then
    echo "ERROR: Assets folder not found!"
    exit 1
fi

# Create directories if they don't exist
mkdir -p "$rbx_storage/a5"
mkdir -p "$rbx_storage/73"
mkdir -p "$rbx_storage/6c"
mkdir -p "$rbx_storage/92"
mkdir -p "$rbx_storage/78"

# Copy files and make them read-only
cp -f "$assets/a564ec8aeef3614e788d02f0090089d8" "$rbx_storage/a5/"
chmod 444 "$rbx_storage/a5/a564ec8aeef3614e788d02f0090089d8"

cp -f "$assets/7328622d2d509b95dd4dd2c721d1ca8b" "$rbx_storage/73/"
chmod 444 "$rbx_storage/73/7328622d2d509b95dd4dd2c721d1ca8b"

cp -f "$assets/a50f6563c50ca4d5dcb255ee5cfab097" "$rbx_storage/a5/"
chmod 444 "$rbx_storage/a5/a50f6563c50ca4d5dcb255ee5cfab097"

cp -f "$assets/6c94b9385e52d221f0538aadaceead2d" "$rbx_storage/6c/"
chmod 444 "$rbx_storage/6c/6c94b9385e52d221f0538aadaceead2d"

cp -f "$assets/9244e00ff9fd6cee0bb40a262bb35d31" "$rbx_storage/92/"
chmod 444 "$rbx_storage/92/9244e00ff9fd6cee0bb40a262bb35d31"

cp -f "$assets/78cb2e93aee0cdbd79b15a866bc93a54" "$rbx_storage/78/"
chmod 444 "$rbx_storage/78/78cb2e93aee0cdbd79b15a866bc93a54"

echo ""
echo "Files copied successfully. Press any key to exit."
read -n 1 -s