echo "Install required packages for this NeoVim setup using DNF? (Press ENTER to continue)"
read

dnf check-update
sudo dnf copr enable atim/lazygit -y
sudo dnf install lazygit ripgrep npm rustup -y

rustup toolchain install stable-x86_64-unknown-linux-gnu
cargo install tree-sitter-cli
