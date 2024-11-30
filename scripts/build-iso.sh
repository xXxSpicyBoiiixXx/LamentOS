#!/bin/bash

# Update system and install archiso in Docker
docker run -it --rm --name lamentos-builder -v $(pwd):/workspace archlinux bash -c "
  pacman -Syu --noconfirm archiso &&
  cd /workspace/LamentOS-ISO &&
  mkarchiso -v -w /tmp/archiso-tmp -o /workspace/out .
"

# Notify user of successful build
echo "LamentOS ISO has been built and is located in the 'out' directory."

