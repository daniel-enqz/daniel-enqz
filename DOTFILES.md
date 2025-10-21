# Keep Your Dotfiles Simple
[![CI](https://github.com/daniel-enqz/dotfiles/actions/workflows/main.yaml/badge.svg)](https://github.com/daniel-enqz/dotfiles/actions/workflows/main.yaml)
[![Give it a ⭐](https://img.shields.io/badge/Give%20it%20a-⭐-yellow)](https://github.com/daniel-enqz/dotfiles)
[![GitHub watchers](https://img.shields.io/github/watchers/daniel-enqz/dotfiles?style=social)](https://github.com/daniel-enqz/dotfiles)
[![Sponsor](https://img.shields.io/badge/♥-Sponsor-fc8dc7)](https://github.com/sponsors/daniel-enqz)

> This post is also available at [Medium](https://medium.com/@daniel.enm17/keep-your-dotfiles-simple-071aecd80c5d)


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

I don't use any framework (despite amazingly fast ones like [zim](https://github.com/zimfw/zimfw)). I also don't use any built-in editor like nvim or lvim (again, despite them being simple on their own and achieving amazing setups with super useful plugins and functionalities). I try to keep my plugins minimal and everything easy to access. If I open a functions file and it's 500 lines long and I don't even remember what my setup can do, maybe something needs rethinking.


For example this is my .zshrc

Just te bare minimum, importing just the needed files, only one plugin..


<img width="1223" height="793" alt="Screenshot 2025-10-16 at 9 16 20 p m" src="https://github.com/user-attachments/assets/77071a09-ed47-40f3-ba4e-93e66c809ed9" />


In other sections, this is my complete `imports.zsh` file, which showcases the beauty of lazy loading...

You can load/import Python, Node, Ruby, etc. at your discretion. For example, when you know it'll be a day you'll use it heavily, when you're on a project where it's needed 24/7, or by running a simple command.

Just call: `ipython`.

Your other zsh sessions don't have to depend on initializing heavy dependencies you won't use.

```bash
function ipython() {
  # Load pyenv if installed (to manage your Python versions)
  export PATH="${HOME}/.pyenv/bin:${PATH}" # Needed for Linux/WSL
  type -a pyenv > /dev/null && eval "$(pyenv init -)" && eval "$(pyenv virtualenv-init -)"
}
#ipython

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

Now, this is my `.vimrc` setup.
This single file replaces completley the use of `lunarvim` or `nvim`.

https://github.com/daniel-enqz/daniel-enqz/blob/70be43cc7b2274693b68093e9db26fae0c27c92c/projects/.vimrc#L2

<img width="1512" height="982" alt="Screenshot 2025-10-16 at 8 20 47 p m" src="https://github.com/user-attachments/assets/8c97270a-f7dc-483c-85a2-ce04da0570c4" />


I also have my own function to build my custom prompt.
> ~/.dotfiles/main (main) ●


<img width="1264" height="817" alt="Screenshot 2025-10-16 at 9 15 18 p m" src="https://github.com/user-attachments/assets/2fd0dc98-e2e3-4fca-96a5-2deb6bddd8d1" />


---

The spark, at the end, comes with two things:
1. That pull towards building; creating something simple fully maintained by you.
2. Mental clarity in your workflow - knowing where everything is, simple files, simple imports, simple setup.

---

I'm not saying other tools aren't useful - that's why thousands of hours have been put into maintaining them. But for example, Vim is already amazing on its own, in its pure form. The learning curve pays exponential dividends long-term. All these tools, plugins, and frameworks exist for a reason - their value is noticeable within the first minutes of using them. But recently I've leaned toward working with the absolute minimum, not only with software, but in life in general. When you give yourself time to remove stuff, you notice you don't need much. So aim to reduce all the noise so you can focus on your signal, what truly matters to you; build something that expresses your truth and seek clarity.

Keep your dotfiles simple.

