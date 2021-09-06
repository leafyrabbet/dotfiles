# "dotfiles" for macOS

tommy vegetables' preferred config files for `bash` and `ssh` in macOS as `leafyrabbet`.

## Setup

You can clone this repo anywhere you want, and these instructions will present how to install these files into your `${HOME}` directory so that you can carry/save the configurations between multiple systems. There are other approaches to do this, including symbolic linking and a "dotfile" management tool, but in this incarnation we're simply copying the files to the right locations.

### BASh

```bash
cp -R ./.bashrc.d ~/
cp ./.bash_profile ~/
cp ./.bashrc ~/
```

Note that `cp -R` will copy only the contents of the source directory, so long as the source ends with `/`; by not including it we can assure that the directory itself is copied to the destination.

### SSH

```bash
cp -R ./.ssh/ ~/.ssh/
```

Note that `cp -R` will copy only the contents of the source directory, so long as the source ends with `/`, otherwise there'll be a nested directory.

Generate a new Key using the provided filename:

```bash
ssh-keygen -t ed25519 -C "leafyrabbet@gmail.com" -f ~/.ssh/github_leafyrabbet_ed25519
```

Enter your passphrase to use to secure the private key; make sure that you don't lose this passphrase.

Lastly, add that file to the keyring so that you stay logged-in during your current session, so that you can make connections without having to re-enter the password on the private key:

```bash
ssh-add ~/.ssh/github_leafyrabbet_ed25519
```

You can now share the `~/.ssh/github_leafyrabbet_ed25519.pub` file with your GitHub account to be able to make secured connections to GitHub through your preferred `git` client(s).

## References

- https://github.com/junegunn/fzf