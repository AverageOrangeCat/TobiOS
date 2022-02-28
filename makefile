all: build_bin run_bin

build_bin:
	nasm -f bin boot.asm
	nasm -f bin kernel.asm
	cat boot kernel > os

build_iso:
	dd if=./os of=./os.iso bs=8192

run_bin:
	powershell.exe qemu-system-x86_64 os

run_iso:
	powershell.exe qemu-system-x86_64 os.iso
