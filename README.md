# LamentOS
LamentOS is a lightweight, Arch-based Linux distribution designed specifically for penetration testers and security professionals. Built on the flexibility and power of Arch Linux, it provides cutting-edge tools, pre-configured workflows, and sleek branding to enhance your pentesting experience.

Lament the breach, master the Arch

## Features
 - Arch rolling-release base
 - We will be pre-installing tools, currently there is common tools but will be ongoing as more tools become available
 - Custon branding and configurations
 - Lightweight and highly customizable

## Building the ISO
Run the following scripts
 ./scripts/build-iso.sh
qemu-system-x86\_64 -boot d -cdrom out/lamentos.iso -m 2048
