# Dotfiles Readme

This is my simple new `Pop!_OS` setup branch 

### 1. Clone the repo

```{bash}
git clone https://github.com/robertmitchellv/dotfiles.git ~/dotfiles
```

Make sure you're in the `pop-os` branch

```{bash}
git checkout pop-os
```

### 2. Create directories

The `create-structure.sh` script creates the directories I want to start using as a way to better organize my files.

```{bash}
cd ~/dotfiles/
chmod +x create-structure.sh
./create-structure.sh
```

### 3. Download packages with `apt`

The `apt-install.sh` script will install all of the packages needed to install the `R` packages in `packages.R` file. It started as a `brewfile` on macOS inspired by these sources::

* [Bob Rudis](https://rud.is/b/2015/10/22/installing-r-on-os-x-100-homebrew-edition/)
* Hadley Wickham's [Dockerfile](https://github.com/hadley/docker/blob/master/rdevel/Dockerfile)
* The `rocker/geospatial` [Dockerfile](https://hub.docker.com/r/rocker/geospatial/~/dockerfile/)
* [This](http://luisspuerto.net/2018/01/install-r-100-homebrew-edition-with-openblas-openmp-my-version/) blog post by Luis Puerto

To run:

```{bash}
chmod +x apt-install.sh
sudo ./apt-install.sh
```

### 4. Install `oh-my-zsh`

Check that `zsh` is installed

```{bash}
zsh --version
```

Via `curl`

```{bash}
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

### 5. .(zsh/vim)rc

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

### 6. `npm`

For `phantomjs` and `casperjs` install via `npm` globally 

```{bash}
sudo npm install -g phantomjs
sudo npm install -g git+https://github.com/casperjs/casperjs.git
```

Check that everything was installed

```{bash}
phantomjs --version
casperjs --version
```

If this doesn't work, you can also `sudo apt install phantomjs` and then build
`casperjs` from source.

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
source("packages.R")
install.packages(packages)
```

This should install all `R` packages, however, if there are any errors, check
the message and see if you can follow along and install what is needed. It is
also possible to install from `GitHub` as well.

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

### 10. Custom fonts

Start by creating a `.fonts` directory in `~/`

```{bash}
mkdir ~/.fonts
```

The script `get-fonts.sh` will use `wget` to pluck fonts from online into a
symlinked directory that we cache to ensure the system can use fonts right
away.

### 11. `hub`

Build from source using `go`,  (make sure `$GOROOT` and `GOPATH`
are set `.zshrc`)

```{bash}
echo $GOROOT
```

Make sure it's working

```{bash}
go get github.com/github/hub
cd "$GOPATH"/src/github.com/github/hub
make install prefix=/usr/local
```

Now create an alias in `.zshrc`

```{bash}
alias git="hub"
```

