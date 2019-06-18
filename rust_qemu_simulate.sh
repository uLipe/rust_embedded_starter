# !/bin/sh
# Starts a QEMU simulation based on LM3S chip
#

help () {
    echo "usage: $(basename $0) /path/to/rust-binary/file"
}

if [ $# -lt 1 ]
then 
    help
    exit 1
fi

bin_path="$1"
qemu-system-arm \
  -cpu cortex-m3 \
  -machine lm3s6965evb \
  -nographic \
  -semihosting-config enable=on,target=native \
  -kernel "$bin_path"