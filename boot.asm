BITS 16
ORG 0x7c00

_start:
mov byte [_disk_num], dl

mov ah, 0x02
mov al, 0x05
mov dh, 0x00
mov ch, 0x00
mov cl, 0x02
mov dl, [_disk_num]
mov bx, 0x7e00
int 0x13

mov byte [_load_sectors], al

mov ah, 0x00
mov al, 0x03
int 0x10

mov si, _boot_text
call _print
call _set_new_line

cmp byte [_load_sectors], 0x0
je _else
mov si, _success_text
jmp _print_status
_else:
mov si, _failed_text

_print_status:
call _print
call _set_new_line

mov ah, 0x86
mov cx, 30
int 0x15

jmp 0x7e00

_print:
mov ah, 0x0e

_print_loop:
lodsb
int 0x10

cmp al, 0x00
je _print_end
jmp _print_loop

_print_end:
ret

_set_new_line:
mov ah, 0x03
int 0x10

inc dh
mov dl, 0
mov bh, 0

mov ah, 0x02
int 0x10

ret

_disk_num: db 0x00
_load_sectors: db 0x00
_boot_text: db "TobiOS V.69.420 booting goes brr ...", 0x00
_success_text: db "Disk loaded successfully ...", 0x00
_failed_text: db "CSS has been injected by Damon. ERROROROROROROROOROR Disk loading failed ...", 0x00

times 510 - ($ - $$) db 0
dw 0xaa55
