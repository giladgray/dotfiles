# dotfiles

## Setup

1. Install terminal app: iTerm or Hyper
1. Install [oh-my-zsh][oh-my-zsh]
1. Install [Homebrew][brew]
1. Install [NVM via curl][nvm] then Node: `nvm install 14`
1. Install [Yarn][yarn]: `npm install --global yarn`
1. Download [`zshrc`](./zshrc) to `~/.zshrc`
   ```sh
   curl -fsSL https://raw.githubusercontent.com/giladgray/dotfiles/master/zshrc > ~/.zshrc
   ```
1. Download [`gitconfig`](./gitconfig) to `~/.gitconfig`
   ```sh
   curl -fsSL https://raw.githubusercontent.com/giladgray/dotfiles/master/gitconfig > ~/.gitconfig
   ```
1. Install [Fig][fig]: `brew install fig`
1. Generate [SSH Key and add to Github](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)
1. Clone relevant git repos

## Critical Programs

> \* Install from the Mac App Store

### Coding
- [iTerm][iterm]
   - Preferences → Profiles → Keys tab → Click `Load Preset...` → `Natural Text Editing`.
- [SourceTree][sourcetree] / GitHub Desktop
- [VS Code][vscode]
   - Extensions: Blueprint (theme), vscode-icons, TSLint, npm IntelliSense 
- `brew install yarn`
- `npm install -g diff-so-fancy`

### Working
- Chrome + Firefox
- [Kap](https://getkap.co/) screen recorder
- Pixelmator*
- Sketch*
- Slack*

### Staying sane
- 1Password*
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
