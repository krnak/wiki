## Add User
```
useradd -m -g users -G wheel -s /bin/bash kevin
passwd kevin
```

## Pacman

```sh
sudo pacman -Syu # upgrade all
makepkg -si # from src + install
sudo pacman -U zoom_x86_64.pkg.tar.xz
```

## Minecraft

tlauncher
```sh
sudo iptables -I INPUT -p udp --dport 4445 -j ACCEPT -m comment --comment "minecraft"
```
[rules](https://gist.github.com/Maxopoly/6c925a1f18f9e2f3b9818d1c1582b17e)
