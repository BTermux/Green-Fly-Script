# Green-Fly-Script
## Executing Script:
```loadstring(game:HttpGet("https://raw.githubusercontent.com/BTermux/Green-Fly-Script/refs/heads/main/main_script.lua",true))()```

## Cloning Repository in Terminal - WSL (Windows Subsystem for Linux) and LAX (Linux on Android eXperience):
### WSL (For example: Ubuntu, OpenSUSE, Kali, Debian, Arch Linux, e. t. c.)
```dpkg -l | grep -q git || (sudo apt update && sudo apt install -y git) && apt update && apt upgrade -y && git clone https://github.com/BTermux/Green-Fly-Script/edit/main/ && cd Green-Fly-Script && ls```

### LAX (For example: Termux, Terminal (Only Android 15), e. t. c.)
```command -v git >/dev/null 2>&1 || apt update && apt install -y git && apt update && apt upgrade -y && git clone https://github.com/BTermux/Green-Fly-Script/edit/main/ && cd Green-Fly-Script && ls```
