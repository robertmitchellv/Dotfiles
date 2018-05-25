# Dotfiles Readme

This is my simple new `Pop!_OS` setup branch 

### 1. Before `linuxbrew` 

Run this to make sure you have what you need before installing `linuxbrew`

```{bash}
sudo apt install -y build-essential make cmake scons curl git \
                               ruby autoconf automake autoconf-archive \
                               gettext libtool flex bison \
                               libbz2-dev libcurl4-openssl-dev \
                               libexpat-dev libncurses-dev
```

### 2. Clone the repo

```{bash}
cd ~/
git clone https://github.com/robertmitchellv/dotfiles.git
```

### 3. Create directories

The `create-structure.sh` script creates the directories I want to start using as a way to better organize my files.

```{bash}
cd ~/dotfiles/
chmod +x create-structure.sh
./create-structure.sh
```

### 4. Linuxbrew

Install `linuxbrew` (check the [site](http://linuxbrew.sh/) to be sure the command below is correct, do _not_ blindly copy/paste into the terminal)

```{bash}
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"
```

To add Linuxbrew to your `PATH` and to your bash shell profile script `~/.profile` enter the following:

```{bash}
test -d ~/.linuxbrew && PATH="$HOME/.linuxbrew/bin:$HOME/.linuxbrew/sbin:$PATH"
test -d /home/linuxbrew/.linuxbrew && PATH="/home/linuxbrew/.linuxbrew/bin:/home/linuxbrew/.linuxbrew/sbin:$PATH"
test -r ~/.bash_profile && echo "export PATH='$(brew --prefix)/bin:$(brew --prefix)/sbin'":'"$PATH"' >>~/.bash_profile
echo "export PATH='$(brew --prefix)/bin:$(brew --prefix)/sbin'":'"$PATH"' >>~/.profile
```

Next check that everything is ok and then update `homebrew`

```{bash}
brew doctor
brew update && brew upgrade
```

The `Brewfile` contains the `homebrew` installs that seem best for my workflow and are a collection of ideas from:

* [Bob Rudis](https://rud.is/b/2015/10/22/installing-r-on-os-x-100-homebrew-edition/)
* Hadley Wickham's [Dockerfile](https://github.com/hadley/docker/blob/master/rdevel/Dockerfile)
* The `rocker/geospatial` [Dockerfile](https://hub.docker.com/r/rocker/geospatial/~/dockerfile/)
* [This](http://luisspuerto.net/2018/01/install-r-100-homebrew-edition-with-openblas-openmp-my-version/) blog post by Luis Puerto

One issue important to note is that `cask`s do not work on `linuxbrew` so the `Bewfile` is not the same and won't be able to install _everything_.

To run:

```{bash}
cd ~/dotfiles/
brew bundle
```

### 5. Install oh-my-zsh

Via `curl`

```{bash}
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

### 6. .(zsh/vim)rc

Before creating a symlink, you may have to remove the stock `.zshrc` that was
just installed.

```{bash}
mv .zshrc .zshrc.bak
```

Create a symlink for these files by doing the following:

```{bash}
cd ~/
ln -s dotfiles/zshrc .zshrc
ln -s dotfiles/vimrc .vimrc
```

Source the `.zshrc` to refresh shell

```{bash}
source ~/.zshrc
```

Now you can remove old `.zshrc.bak`

```{bash}
rm .zshrc.bak
```

For `vim` you have to make an _extra_ step by installing the vundles (vim
bundles)

```{vim}
vim
:PluginInstall
```

When it's finished, it's a simple

```{vim}
:q!
:q!
```

### 7. Rprofile

Very minimal, it points to where I want to keep my R packages mostly

```{bash}
cd ~/dotfiles/
ln -s Rprofile ~/.Rprofile
```

### 8. R Packages

Open up R and install the packages:

```{bash}
cd ~/dotfiles/
R
```

Then in the R console enter:

```{r}
source("Packages.R")
install.packages(packages)
```

There are some packages that may not install correctly due to flags not being
set or incompatability with the version of R you're using. Check dependancies
on CRAN and ensure the right software is also installed with `homebrew`. In some of those cases you can install from Github like so: 

```{r}
remotes::install_github("username/package")
```
### 9. GitHub Credentials

So you don't have to enter these all the time, set up credentials now:

```{bash}
git config --global user.name "robertmitchellv"
git config --global user.email "robert.beaty.mitchell@gmail.com"
git config --global credential.helper osxkeychain
```

Check that everything is stored correctly

```{bash}
cat ~/.gitconfig
```

