# Startup
[![CI](https://github.com/daniel-enqz/dotfiles/actions/workflows/main.yaml/badge.svg)](https://github.com/daniel-enqz/dotfiles/actions/workflows/main.yaml)

Keep your dotfiles simple, you dont need an overengineered setup or overwhelem your configuration with complex setup or dependencies, aim for simplicty and less....

```
.
├── .gitconfig
├── .tmux.conf
├── .vimrc
├── .zsh
│   ├── aliases.zsh
│   ├── functions.zsh
│   ├── imports.zsh
│   ├── navi
│   │   └── main.cheat
│   └── prompt_config.zsh
├── .zshenv
├── .zshrc
├── CLAUDE.md
├── gpg-agent.conf
└── setup.sh
```

Now, if you aim to have simple aliases, simple functions, and overall lightweight dependencies, you will have quick startups and the mental mapping of all your config will not go beyond strange boundaries.

I mean, honestly... Startup times in not a super big concern, but just to give you an idea....

At 25 terminal opens per day with 3s startup:
- Daily: 75 seconds (~1.25 minutes)
- Weekly: 8.75 minutes
- Monthly: 37.5 minutes (~0.625 hours)
- Yearly: 7.6 hours

After focusing in the good places to optimize, you can have quick startups of: ~0.039s
- Daily: 0.975 seconds (~1 second)
- Weekly: 6.8 seconds
- Monthly: 29.25 seconds (~0.5 minutes)
- Yearly: 5.9 minutes




> I use MacOS Terminal with zsh shell, lvim editor and tmux.<br>
> We will be using zim, a super fast framework with useful modules and themes without compromising speed. You can check documentation [here](https://github.com/zimfw/zimfw#manual-installation), but if you follow this guide steps you will be all set up.

### Open 10 terminals in less than 1 second ⚡️⚡️⚡️
<img width="1512" alt="Screenshot 2024-03-17 at 2 36 12 a m" src="https://github.com/daniel-enqz/dotfiles/assets/72522628/902f695c-d53a-4a46-9c9b-150f34c34a4e">

### 🪴 About ZIM:

- zimfw plugin manager installs modules at `~/.zim/modules`.
- This modules are installed but need to be initialized, so this creates a static script at `~/.zim/init.zsh`
- The modules you want to use are defined in `~/.zimrc ` (This file just configures our plugin manager zimfw)

So in a nutshell, you can think of `~/.zimrc` as a list of modules you want to use, when you run `zimfw install`, it will download the modules and create a static script at `~/.zim/init.zsh` that will initialize the modules for you.

#### Installing zim Plugins:
- Add new modules to `~/.zimrc`: `zimfw install`
- Remove modules from `~/.zimrc`: `zimfw uninstall`
- Update your modules to their latest revisions: `zimfw update`
- Upgrade zimfw to its latest version: `zimfw upgrade`

### 🪴 About TMUX:

**Plugin management**
- `Ctrl + A + Shift + I`: This will install any plugin defined in this file. `(/.dotfiles/config/tmux/.tmux.conf)` 
- `Ctrl + A + Shift + U`: This will update any plugin defined in this file. `(/.dotfiles/config/tmux/.tmux.conf)`
- `Ctrl + A + R`: Reload Tmux config file.

**Navigation**
- `Ctrl + A + S`: See all sessions.
- `Ctrl + A + W`: See all windows.
- `Ctrl + A + (J, I, K, L)`: Resize the pane.
- `Ctrl + A + M`: Maximize pane.
- `Ctrl + (H, J, K, L)`: Move between panes.
- `Ctrl + A + (P, N, number)`: Move between windows.

**Creaion and deletion**
- `Ctrl + A + X`: To close a pane.
- `Ctrl + A + |`: This will split the window horizontally (creating new panes).
- `Ctrl + A + -`: This will split the window vertically (creating new panes)
- `Ctrl + A + C`: This will create a new window.
