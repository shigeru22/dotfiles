#!/bin/bash

if ! [[ $1 = "-y" ]]; then
  echo "This will install currently configured language servers for use with Neovim LSP:"
  echo "  - OmniSharp [.NET 6.0] (C#)"
  echo "  - vscode-langservers-extracted (HTML, CSS, JSON, ESLint)"
  echo "  - typescript-language-server (JS(X), TS(X))"
  echo "  - rust-analyzer (Rust)"
  echo "Make sure these programs are installed:"
  echo "  - Node.js (npm)"
  echo "All external programs will be installed to /opt directory."
  echo
  read -p "Continue? (y/N) " -n 1 -r
  echo
  if ! [[ $REPLY =~ ^[Yy]$ ]]
  then
    exit 0
  fi
fi

if [ "$EUID" -ne 0 ]; then
  echo "This script needs to be run as root. Re-running script using 'sudo -k'."
  sudo -k $0 -y
  exit $?
fi

if ! [ -x "$(command -v npm)" ]; then
  echo "npm is not installed."
  exit 1
fi

echo "Installing language servers..."

mkdir -p ./temp-ls
pushd . > /dev/null
cd ./temp-ls

echo "Downloading OmniSharp language server..."
curl -OJL https://github.com/OmniSharp/omnisharp-roslyn/releases/latest/download/omnisharp-linux-x64-net6.0.tar.gz

echo "  Extracting to '/opt/omnisharp'..."
mkdir -p /opt/omnisharp
tar -xvf ./omnisharp-linux-x64-net6.0.tar.gz -C /opt/omnisharp

echo "Installing vscode-langservers-extracted via npm..."
npm install -g vscode-langservers-extracted

echo "Installing typescript-language-server via npm..."
npm install -g typescript typescript-language-server

echo "Downloading rust-analyzer language server..."
curl -OJL https://github.com/rust-lang/rust-analyzer/releases/latest/download/rust-analyzer-x86_64-unknown-linux-gnu.gz

echo "  Extracting to '/opt/rust-analyzer'..."
mkdir -p /opt/rust-analyzer
gunzip -c ./rust-analyzer-x86_64-unknown-linux-gnu.gz > ./rust-analyzer
mv ./rust-analyzer /opt/rust-analyzer/

echo "  Modifying executable permissions..."
chmod +x /opt/rust-analyzer/rust-analyzer

echo "Cleaning up directory..."

popd > /dev/null
rm -rf ./temp-ls
