# Dotfiles

There's a [blogpost][0] explaining the setup of the repository.

## Usage

The repository is set up so that it can be cloned in my home directory to easily
keep my dotfiles under version control.

Cloning the repository elsewhere and symlinking should also work fine but it's
not how it's set up and it's not tested.

**WARNING**: feel free to use these dotfiles but make sure to fork the repository
and make your own changes.

```bash
~ $ export GIT_DIR="${HOME}/.dotfiles"
~ $ git --work-tree="${HOME}" init
~ $ git config status.showUntrackedFiles no
# substitute the correct URL in the next command
~ $ git remote add origin git@github.com:matijs/dotfiles
~ $ git fetch
```

**WARNING**: the next command will overwrite local files. Make sure you know what
you're doing.

```bash
~ $ git reset --hard origin/main
~ $ unset GIT_DIR
```

## Structure

To not clutter the home directory more than strictly necessary, configuration
files are kept in `~/.config` as much as possible. 

As for this README file, it lives in `~/.github/README.md`.

[0]: https://probablerobot.net/2021/05/keeping-'live'-dotfiles-in-a-git-repo/
