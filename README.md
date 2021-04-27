# nebulouslabs/sia Custom Build for Raspberry Pi 4.
The original image https://hub.docker.com/r/nebulouslabs/sia didn't run on Raspberry Pi 4 with Raspbian OS because it complained that the siad program couldn't be found even though it was clearly available in /usr/bin. The solution was to add 'apk add libc6-compat' to the Dockerfile. In addition, the default Go Architecture (GOARCH=amd64) needed to be updated to GOARCH=arm64 to match the Raspberry Pi 4.0 hardware configuration.

Besides getting it to work on Raspberry Pi 4 I added settings to get the Sia data stored on an SSD connected to a USB port.

## Mounting and Formatting a SSD on Raspberry Pi 4
I used an SSD adapter to connect a Solid State Drive to a USB port on the Raspberry Pi 4.
* Sabrent USB 3.0 to SSD / 2.5-Inch SATA I/II/III Hard Drive Adapter (EC-SSHD)
* SAMSUNG 870 QVO SATA III 2.5" SSD 2TB (MZ-77Q2T0B)

List the available drives: \
fdisk -l

Setup the newly attached SSD (assuming it's on /dev/sda): \
fdisk /dev/sda

Format the disk: \
sudo mkfs.ext4 /dev/sda

Mount the disk: \
mount /dev/sda /mnt/ssd/

## Customizing nebulouslabs/sia Github Code



