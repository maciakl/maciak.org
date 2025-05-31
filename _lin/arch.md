---
layout: wide
title: Arch Installation Notes
subtitle: installing arch btw
description: quick guide for setting up arch
---

### VM Notes

If using Proxmox:

- Change VM Bios to OVMF (UEFI)
- Boot the VM and hit Esc to edit BIOS
- Disable Secure Boot
- Change boot order to boot from the CD-ROM first

### Disk Partitioning

Use `cfdisk`:

```bash
    cfdisk /dev/sda
```
- Create 1G boot partition
- Create 2G swap partition
- Create the rest as root partition

Confirm with `lsblk` to see the partitions.


### Format Partitions

Format the partitions with the following commands:

```bash
    mkfs.fat -F 32 /dev/sda1  # Boot partition
    mkswap /dev/sda2          # Swap partition
    mkfs.ext4 /dev/sda3       # Root partition
```
### Mount Partitions

Mount the root partition and enable swap:

```bash
    mount /dev/sda3 /mnt
    swapon /dev/sda2
```
Create mount points for boot and EFI:

```bash
    mkdir -p /mnt/boot/efi
    mount /dev/sda1 /mnt/boot/efi
```

Verify the mounts with `lsblk`.


### Install Base System

Install the base system and essential packages:

```bash
    pacstrap /mnt base linux linux-firmware vim networkmanager base-devel grub efibootmgr
```

### Generate fstab

Generate `/etc/fstab` file:

```bash
    genfstab -U /mnt >> /mnt/etc/fstab
```

### Chroot into the System

Change root into the new system:

```bash
    arch-chroot /mnt
```

### Set Time Zone

Set the time zone:

```bash
    ln -sf /usr/share/zoneinfo/America/New_York /etc/localtime
    hwclock --systohc
```

### Localization

Edit `/etc/locale.gen` and uncomment the desired locale:

```bash
    en_US.UTF-8 UTF-8
```
Generate the locale:

```bash
    locale-gen
```

Set the locale in `/etc/locale.conf`:

```bash
    echo "LANG=en_US.UTF-8" > /etc/locale.conf
```

### Network Configuration

Set the hostname:

```bash
    echo "archbtw" > /etc/hostname
```

### Create Users

Create password for root:

```bash
    passwd
```

Create a new user:

```bash
    useradd -m -G wheel -s /bin/bash luke
    passwd luke
```
### Configure Sudo

Edit the sudoers file:

```bash
    EDITOR=vim visudo
```
Uncomment the line:

```bash
    %wheel ALL=(ALL) ALL
```

### Enable Network Manager

Enable NetworkManager to start at boot:

```bash
    systemctl enable NetworkManager
```
### Install Bootloader

Install Grub:

```bash
    grub-install /dev/sda
    grub-mkconfig -o /boot/grub/grub.cfgq
```
### Exit Chroot and Reboot

Exit the chroot environment:

```bash
    exit
```

Unmount the partitions:

```bash
    umount -a
```

Reboot the system:

```bash
    reboot
```

### Post-Installation

Enable SSH:

```bash
    sude pacman -S openssh
    sude systemctl enable sshd
```

Install and enable Avahi:

```bash
    sudo pacman -S avahi nss-mdns
    sudo systemctl enable avahi-daemon.service
```

Enable mDNS by edditing `/etc/nsswitch.conf` and modifying the `hosts` line to look like this:

```bash
    hosts: mymachines mdns4_minimal[NOTFOUND=return] resolve [!UNAVAIL=return] files myhostname dns mdns4
```


