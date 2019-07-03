RUST Embedded Starter
======================

This repository contains some magic scripts and examples code to easy the getting 
starter with RUST language for embedded systems, a interesting replacement for 
C or C++. 

<b> These scripts were tested only in Linux previously </b>

# Usage:
No special configuration needs to be done, you need to clone this repo as stated below:     
 ```
    $ git clone https://github.com/uLipe/rust_embedded_starter
 ```
Once cloned go to the cloned directory, there is a magical script called <b>rust_embedded_install.sh</b>
this file will download the rust toolchain, cargo binutils and qemu, just execute it, you need to
provide your admin password at certain point, be aware of that:

```
    $ ./rust_embedded_install.sh 
```
# Building a code:
Once the RUST toolset has been installed you can play with the examples on hello folder,
here there are a pre configured project based on <b> cortex_m_quickstarter</b> crate, 
just enter on hello directory, make changes on main.rs file, after that build using 
cargo:

```
    $ cargo build --release
```
You'll obtain a binary file inside of target/your_architecture/release folder, 
that can be loaded on a qemu simulator, for that use the <b>rust_qemu_simulate.sh</b>
script passing the path of your binary file:

```
    $ ./rust_qemu_simulate.sh <path/to/binary/file>
```
I'm planning to add tests on various differents microcontrollers using rust HAL
crates in order ro keep a library of quickstarter project of rust embedded, 
so please feel free to contribute with pull requests.

# Having troubles?
If you're suffering problems please drop me a mail at: ryukokki.felipe@gmail.com 
