# 🔒 disable-steam-autoupdate 🔒
![Windows](https://img.shields.io/badge/Windows-0078D6?style=for-the-badge&logo=windows&logoColor=white)

A batch script wrapped in a Windows scheduled task to disable Steam autoupdate

## 🗈 Instructions

First things first, download these scripts (you can keep them wherever you want):

[Download](https://github.com/xjeeh/disable-steam-autoupdate/archive/refs/heads/main.zip)

### ➡️ Installing
run `install.bat`

### ⬅️ Uninstalling
run `uninstall.bat`

## 👨‍🏫 Explanation
Steam doesn't have the option to disable all games auto-updates.

The only available options is to disable one by one in the game's properties at the library page -> properties.

You can also do it manually by editing the appmanifest for EACH game in `C:\Program Files (x86)\Steam\steamapps` but you will need to do it for every new game added to the library.

So the purpose of this script is to automatically (every 1h) check all the manifest files and change them if necessary.

# 🆘 Wanna contribute?
Feel free to [open a PR](https://github.com/xjeeh/disable-steam-autoupdate/pulls) and help improving it 🤗
