# Startup
[![CI](https://github.com/daniel-enqz/dotfiles/actions/workflows/main.yaml/badge.svg)](https://github.com/daniel-enqz/dotfiles/actions/workflows/main.yaml)

Keep your dotfiles simple. You don't need an overengineered setup or overwhelming configuration with complex dependencies—aim for simplicity and less.

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

Now, with simple aliases, lightweight functions, and minimal dependencies, you get quick startups and a mental model that doesn't sprawl into complexity.
Honestly, startup times aren't a huge concern, but just to illustrate:

At 25 terminal opens per day with 3s startup:
- Daily: 75 seconds (~1.25 minutes)
- Weekly: 8.75 minutes
- Monthly: 37.5 minutes (~0.625 hours)
- Yearly: 7.6 hours ⬅️

After focusing in the good places to optimize, you can have quick startups of: ~0.037s
- Daily: 0.975 seconds (~1 second)
- Weekly: 6.8 seconds
- Monthly: 29.25 seconds (~0.5 minutes)
- Yearly: 5.9 minutes ⬅️

<img width="1512" height="982" alt="Screenshot 2025-10-16 at 7 50 00 p m" src="https://github.com/user-attachments/assets/e80eefa4-8f90-44fb-9fe8-f776f90619da" />

Maybe 25 opens is too much for you, maybe too low. Some people use TMUX and spin up dozens of panes throughout the day. At the end, quick startups might not be a big concern—but personally, I feel noticeably more efficient when I'm not waiting even a fraction of a second each time I open a pane.

The big thing, though, comes with mental clarity in your workflow—knowing where everything is, simple files, simple imports, simple setup.

I don't use any framework (despite amazingly fast ones like zim). I also don't use any built-in editor like nvim or lvim (again, despite them being simple on their own and achieving amazing setups with super useful plugins and functionalities). I try to keep my plugins minimal and everything easy to access. If I open a functions file and it's 500 lines long and I don't even remember what my setup can do, maybe something needs rethinking.

I'm not saying other tools aren't useful—that's why thousands of hours have been put into maintaining them. They exist for a reason. But recently I've leaned toward working with the absolute minimum. Vim is already amazing on its own, and the learning curve pays exponential dividends long-term. 

For instance, this is my complete `imports.zsh` file, which showcases the beauty of lazy loading...

You can load/import Python, Node, Ruby, etc. at your discretion. For example, when you know it'll be a day you'll use it heavily, when you're on a project where it's needed 24/7, or by running a simple command.

Just call: `ipython`.

Your other zsh sessions don't have to depend on initializing heavy dependencies you won't use.


```
# PYTHON
function ipython() {
  # Load pyenv if installed (to manage your Python versions)
  export PATH="${HOME}/.pyenv/bin:${PATH}" # Needed for Linux/WSL
  type -a pyenv > /dev/null && eval "$(pyenv init -)" && eval "$(pyenv virtualenv-init -)"
}
#ipython

# RUBY
function iruby() {
  # Load rbenv if installed (to manage your Ruby versions)
  export PATH="${HOME}/.rbenv/bin:${PATH}" # Needed for Linux/WSL
  type -a rbenv > /dev/null && eval "$(rbenv init -)"
}
#iruby

function inode() {
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
  type -a nvm > /dev/null && nvm use default --silent
}
#inode
```

Now this is my `.vimrc` setup
This single file replaces completley the use of lunarvim or nvim.









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
