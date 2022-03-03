all: build_bin run_bin

build:
	nasm -f bin boot.asm
	nasm -f bin kernel.asm
	cat boot kernel > os

run:
	powershell.exe qemu-system-x86_64 os
