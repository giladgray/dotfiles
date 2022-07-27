# dotfiles

## Setup

### Terminal
1. Install [iTerm2](https://iterm2.com/) or [Hyper](https://hyper.is/)
1. Install [oh-my-zsh][oh-my-zsh]
1. Install [Homebrew][brew]
1. Install [Fig][fig]: `brew install fig`
1. Download [`zshrc`](./zshrc):
   `curl -fsSL https://raw.githubusercontent.com/giladgray/dotfiles/main/zshrc > ~/.zshrc`
1. Download [`gitconfig`](./gitconfig):
   `curl -fsSL https://raw.githubusercontent.com/giladgray/dotfiles/main/gitconfig > ~/.gitconfig`
1. Restart terminal
   
### Node
1. Install [NVM via curl][nvm] then Node: `nvm install 14`
1. Install [Yarn][yarn]: `npm install --global yarn`
1. `node -v && npm -v && yarn -v`

### Git
1. `git config --global user.name "<name>"`
1. `git config --global user.email "<email>"`
1. Diff tool: `npm install -g diff-so-fancy`
1. Generate [SSH Key and add to Github](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)
1. Clone relevant git repos

## Critical Programs

> \* Install from the Mac App Store

### Coding
- [iTerm][iterm]
   - Preferences → Profiles → Keys tab → Key Mappings tabs → `Presets...` dropdown → `Natural Text Editing`.
   - Preferences → Keys → Hotkey tab → Check `Show/hide all windows` → `alt+space`
- [SourceTree][sourcetree] / GitHub Desktop
- [VS Code][vscode]
   - Sign it to GitHub to sync settings.

### Working
- Chrome + Firefox
- [Kap](https://getkap.co/) screen recorder
- Pixelmator*
- Skitch*
- Slack*
- [Zoom](https://zoom.us/download)

### Staying sane
- [1Password](https://my.1password.com/apps) - Requires login with Secret Key
- [Alfred][alfred]
    - PowerPack → Clipboard → enable History
- [BetterTouchTool][btt]
- Magnet*
- [Signal][signal] Messenger
- Spotify
- Steam
- VLC

### Mac OS X Preferences
- Bluetooth → ✅ `Show Bluetooth in menu bar`
- Mission Control → :x: `Automatically rearrange Spaces...`
- Trackpad → Point & Click → ✅ `Tap to click`
- Trackpad → Scroll & Zoom → :x: `Scroll direction: Natural`

[alfred]: http://alfredapp.com
[brew]: https://brew.sh
[btt]: https://folivora.ai
[fig]: https://fig.io/
[iterm]: https://iterm2.com
[node]: https://nodejs.org
[nvm]: https://github.com/nvm-sh/nvm#installing-and-updating
[oh-my-zsh]: https://github.com/robbyrussell/oh-my-zsh#basic-installation
[signal]: https://signal.org/download/
[sourcetree]: https://www.sourcetreeapp.com
[vscode]: https://code.visualstudio.com
[yarn]: https://classic.yarnpkg.com/en/docs/install
