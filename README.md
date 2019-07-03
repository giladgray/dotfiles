# dotfiles

## Setup

1. Install [Homebrew][brew]
1. Install [Node.js][node]
1. Install [oh-my-zsh][oh-my-zsh]
1. Download [`zshrc`](./zshrc) to `~/.zshrc`
   ```sh
   curl -fsSL https://raw.githubusercontent.com/giladgray/dotfiles/master/zshrc > ~/.zshrc
   ```
1. Download [`gitconfig`](./gitconfig) to `~/.gitconfig`
   ```sh
   curl -fsSL https://raw.githubusercontent.com/giladgray/dotfiles/master/gitconfig > ~/.gitconfig
   ```

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
- Pixelmator*
- Sketch*
- Slack*

### Staying sane
- 1Password*
- [Alfred][alfred]
    - PowerPack → Clipboard → enable History
- [BetterTouchTool][btt]
- Magnet*
- Spotify
- Steam
- VLC

### Mac OS X Preferences
- Bluetooth → ✅ `Show Bluetooth in menu bar`
- Mission Control → :x: `Automatically rearrange Spaces...`

[alfred]: http://alfredapp.com
[brew]: https://brew.sh
[btt]: https://folivora.ai
[iterm]: https://iterm2.com
[node]: https://nodejs.org
[oh-my-zsh]: https://github.com/robbyrussell/oh-my-zsh#basic-installation
[sourcetree]: https://www.sourcetreeapp.com
[vscode]: https://code.visualstudio.com
