all: build run

build:
	nasm -f bin boot.asm
	nasm -f bin kernel.asm
	cat boot kernel > os

run:
	powershell.exe qemu-system-x86_64 os
