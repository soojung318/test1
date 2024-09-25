gsettings set org.gnome.software download-updates false
systemctl disable dnf-makecache.service
systemctl disable dnf-makecache.timer
systemctl disable dnf-makecache.timer.
clear
cd /etc/yum.repos.d/
mkdir backup
ls
mv *.repo backup
ls
gedit This.repo
dnf clean all
exit
cd /etc/NetworkManager/system-connections/
ls
gedit ens160.nmconnection 
cd
nmcli connection down ens160
nmcli connection up ens160
reboot
ifconfig ens160
sestatus
clear
grubby --update-kernel ALL --args selinux=0
reboot
sestatus
exit
dnf -y install firewall-config
exit
gedit /etc/default/grub
grub2-mkconfig -o /boot/grub2/grub.cfg
reboot
