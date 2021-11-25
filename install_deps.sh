#!/bin/bash

TMUX_VERSION=3.2a
CMAKE_VERSION=3.22.0

PKG_MANAGER=
PKG_MGR="apt yum brew"
for pkg in $PKG_MGR;
do
  command -v $pkg &>/dev/null
  if [ $? -eq 0 ]; then
    PKG_MANAGER=$pkg
  fi
done

if [ $PKG_MANAGER = '' ]; then
  echo "Missing package manager. Supported package managers: ['yum', 'apt', 'brew']"
fi

echo "Found ${PKG_MANAGER} as package manager."

# Install wget
${PKG_MANAGER} install wget

# Install zsh
${PKG_MANAGER} install zsh

# Antibody plugin manager for shell
curl -sfL git.io/antibody | sh -s - -b /usr/local/bin

# Install tmux
if [[ "$OSTYPE" =~ ^darwin ]]; then
  brew install tmux
else
  git clone https://github.com/tmux/tmux.git
  cd tmux
  git checkout tags/${TMUX_VERSION}
  sh autogen.sh
  ./configure && make -j8
  sudo make install
  cd .. && rm -rf tmux
fi

# Install cmake

if [[ "$OSTYPE" =~ ^darwin ]]; then
  brew install cmake
else
  wget https://github.com/Kitware/CMake/releases/download/v${CMAKE_VERSION}/cmake-${CMAKE_VERSION}.tar.gz
  tar xvf cmake-${CMAKE_VERSION}.tar.gz
  rm -rf cmake-${CMAKE_VERSION}.tar.gz
  cd cmake-${CMAKE_VERSION}
  ./bootstrap
  make -j8
  sudo make install
  cd ..
  rm -rf cmake-${CMAKE_VERSION}
fi

# Install neovim

if [[ "$OSTYPE" =~ ^darwin ]]; then
  brew install neovim
else
  echo "Please install neovim before continuing"
  exit 1
fi
