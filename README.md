# Green-Fly-Script
## Executing Script:
```lua
loadstring(game:HttpGet("https://raw.githubusercontent.com/BTermux/Green-Fly-Script/refs/heads/main/main_script.lua",true))()
```

## Cloning Repository in Terminal - WSL (Windows Subsystem for Linux) and LAX (Linux on Android eXperience):
### WSL (For example: Ubuntu, OpenSUSE, Kali, Debian, Arch Linux, e. t. c.)
```bash
dpkg -l | grep -q git || (sudo apt update && sudo apt install -y git) && apt update && apt upgrade -y && git clone https://github.com/BTermux/Green-Fly-Script/edit/main/ && cd Green-Fly-Script && ls
```
How is thats works?
1. ```dpkg -l``` --> lists all installed packages on Debian-based systems (e.g., Ubuntu, Debian, Termux with APT). The output includes package names, versions, and descriptions.
2. ```| grep -q git``` --> grep git searches for the word git in the package list. -q (quiet mode) suppresses output, returning only the exit status: 0 → Git is installed. 1 → Git is NOT installed. If Git is found, grep -q git exits with 0, and nothing more happens. If Git is not found, grep -q git exits with 1, triggering the installation.
3. ```|| (sudo apt update && sudo apt install -y git)``` --> || (logical OR) executes the right-hand command only if the left-hand command fails (exit code 1).
If Git is missing, it runs: 
```sudo apt update && sudo apt install -y git```, Where: sudo apt update -- updates package lists.; sudo apt install -y git -- installs Git without asking for confirmation (-y);
4. ```git clone https://github.com/BTermux/Green-Fly-Script/edit/main/``` --> command is used to create a copy of a specific repository or branch within a repository.
5. ```cd Green-Fly-Script``` --> Changing your current working directory within file system to the cloned repository
6. ```ls``` --> Lists all files in the current directory
✅ Example When Git Is Installed:
```bash
$ dpkg -l | grep -q git || (sudo apt update && sudo apt install -y git)
# No output, because Git is already installed.
```
❌ Example When Git Is NOT Installed:
```bash
$ dpkg -l | grep -q git || (sudo apt update && sudo apt install -y git)
Hit:1 http://archive.ubuntu.com/ubuntu focal InRelease
...
Reading package lists... Done
Building dependency tree... Done
The following packages will be installed: git
...
```

### LAX (For example: Termux, Terminal (Only Android 15), e. t. c.)
```bash
command -v git >/dev/null 2>&1 || apt update && apt install -y git && apt update && apt upgrade -y && git clone https://github.com/BTermux/Green-Fly-Script/edit/main/ && cd Green-Fly-Script && ls
```
How is thats works?
1. ```command -v git```--> Checks if the git command exists in the system. If git is installed, it returns the path to the executable (e.g., /usr/bin/git). If git is not installed, it returns nothing and exits with a non-zero status code (error).
2. ```>/dev/null``` --> Redirects the standard output (stdout) to /dev/null, a special "black hole" that discards any output. Prevents the terminal from displaying the command's result.
3. ```2>&1``` --> Redirects the standard error (stderr, file descriptor 2) to the same place as standard output (stdout, file descriptor 1). Ensures that error messages (e.g., "command not found") are also discarded.
4. ```||``` --> (logical OR) executes the right-hand command only if the left-hand command fails (exit code 1).
5. ```apt update``` --> Updates the package lists from repositories. This ensures that the system knows about the latest available versions of all packages. Does NOT install or upgrade anything, just fetches new package information.
6. ```&&``` --> (logical END)  executes the right-hand command after the left-hand command
7. ```apt install -y git``` --> Installs / Updating git, but only if apt update was successful. '-y' means "yes to all prompts", so the installation proceeds without user confirmation.
8. ```&& apt update``` --> Runs another apt update, but this is redundant because we already ran apt update before installing Git. This second apt update is unnecessary in most cases.
9. ```&& apt upgrade -y``` --> Upgrades all installed packages to their latest available versions. -y means automatic confirmation, so the upgrade proceeds without asking. Unlike apt install, which installs a specific package, apt upgrade updates ALL packages that have newer versions avalaible.
10. ```git clone https://github.com/BTermux/Green-Fly-Script/edit/main/``` --> command is used to create a copy of a specific repository or branch within a repository.
11. ```cd Green-Fly-Script``` --> Changing your current working directory within file system to the cloned repository
12. ```ls``` --> Lists all files in the current directory

✅ Example, when ```git``` is installed:
```bash
$ command -v git
/usr/bin/git  # The path is shown

$ command -v git >/dev/null 2>&1
# No output (stdout is redirected)
```

❌ Example When ```git``` is NOT Installed:
```bash
$ command -v git
# No output

$ command -v git >/dev/null 2>&1
# No error message (stderr is also redirected)
```
