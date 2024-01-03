echo "Install required packages for this NeoVim setup using DNF? (Press ENTER to continue)"
read

dnf check-update
sudo dnf copr enable atim/lazygit -y
sudo dnf install lazygit -y
