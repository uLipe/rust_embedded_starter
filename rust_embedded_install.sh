# !/bin/sh
# 
# Installs RUST and related toolset to use on embedded targets
#
#

#Installs rustup:
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

pushd ~/
source .cargo/env
popd

#adds cortex M0 to M4F support:
rustup target add thumbv6m-none-eabi
rustup target add thumbv7m-none-eabi
rustup target add thumbv7em-none-eabi
rustup target add thumbv7em-none-eabihf


#Installs cargo-binutils:
cargo install cargo-binutils
cargo install carg-generate
rustup component add llvm-tools-preview

#setup utils:
sudo apt install gdb-multiarch openocd qemu-system-arm -y

