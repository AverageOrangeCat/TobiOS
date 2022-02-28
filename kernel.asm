BITS 16
ORG 0x7e00

_start:
mov si, _text

_loop:
call _set_video_mode
call _print

mov ah, 0x86
mov cx, 20
int 0x15

jmp _loop

_exit:
jmp $

_set_video_mode:
mov ah, 0x0
mov al, 0x03
int 0x10

ret

_print:
mov ah, 0x0e

_print_loop:
lodsb
int 0x10

cmp al, 0x00
je _print_end
cmp al, 0x01
je _start
jmp _print_loop

_print_end:
ret

_text:  db "Oooh ooh", 0x00, 
        db "We're no stranger to love", 0x00, 
        db "You know the rules and so do I", 0x00, 
        db "A full commitment's what I'm thinking of", 0x00, 
        db "You wouldn't get this from any other guy", 0x00, 
        db "I just wanna tell you how I'm feeling", 0x00, 
        db "Gotta make you understand", 0x00, 
        db "Never gonna give you up", 0x00, 
        db "Never gonna let you down", 0x00, 
        db "Never gonna run around and desert you", 0x00, 
        db "Never gonna make you cry", 0x00,
        db "Never gonna say goodbye", 0x00, 
        db "Never gonna tell a lie and hurt you", 0x00, 
        db "We've known each other for so long", 0x00, 
        db "Your heart's been aching but", 0x00, 
        db "You're too shy to say it", 0x00, 
        db "Inside we both know what's been going on", 0x00, 
        db "We know the game and we're gonna play it", 0x00, 
        db "And if you ask me how I'm feeling", 0x00, 
        db "Don't tell me you're too blind to see", 0x00, 
        db "Never gonna give you up", 0x00, 
        db "Never gonna let you down", 0x00, 
        db "Never gonna run around and desert you", 0x00, 
        db "Never gonna make you cry", 0x00,
        db "Never gonna say goodbye", 0x00, 
        db "Never gonna tell a lie and hurt you", 0x00, 
        db "Never gonna give you up", 0x00, 
        db "Never gonna let you down", 0x00, 
        db "Never gonna run around and desert you", 0x00, 
        db "Never gonna make you cry", 0x00,
        db "Never gonna say goodbye", 0x00, 
        db "Never gonna tell a lie and hurt you", 0x00, 
        db "(Ooh, give you up)", 0x00, 
        db "(Ooh, give you up)h", 0x00, 
        db "(Ooh)", 0x00, 
        db "Never gonna give, never gonna give", 0x00, 
        db "(Give you up)", 0x00, 
        db "(Ooh)", 0x00, 
        db "Never gonna give, never gonna give", 0x00, 
        db "(Give you up)", 0x00, 
        db "We've known each other for so long", 0x00, 
        db "Your heart's been aching but", 0x00, 
        db "You're too shy to say it", 0x00, 
        db "Inside we both know what's been going on", 0x00, 
        db "We know the game and we're gonna play it", 0x00,
        db "I just wanna tell you how I'm feeling", 0x00, 
        db "Gotta make you understand", 0x00, 
        db "Never gonna give you up", 0x00, 
        db "Never gonna let you down", 0x00, 
        db "Never gonna run around and desert you", 0x00, 
        db "Never gonna make you cry", 0x00,
        db "Never gonna say goodbye", 0x00, 
        db "Never gonna tell a lie and hurt you", 0x00, 
        db "(Ooh, give you up)", 0x00, 
        db "(Ooh, give you up)h", 0x00, 
        db "(Ooh)", 0x00, 
        db "Never gonna give, never gonna give", 0x00, 
        db "(Give you up)", 0x00, 
        db "(Ooh)", 0x00, 
        db "Never gonna give, never gonna give", 0x00, 
        db "(Give you up)", 0x00,
        db "We've known each other for so long", 0x00, 
        db "Your heart's been aching but", 0x00, 
        db "You're too shy to say it", 0x00, 
        db "Inside we both know what's been going on", 0x00, 
        db "We know the game and we're gonna play it", 0x00,
        db "I just wanna tell you how I'm feeling", 0x00, 
        db "Gotta make you understand", 0x00, 
        db "Never gonna give you up", 0x00, 
        db "Never gonna let you down", 0x00, 
        db "Never gonna run around and desert you", 0x00, 
        db "Never gonna make you cry", 0x00,
        db "Never gonna say goodbye", 0x00, 
        db "Never gonna tell a lie and hurt you", 0x00, 
        db "Never gonna give you up", 0x00, 
        db "Never gonna let you down", 0x00, 
        db "Never gonna run around and desert you", 0x00, 
        db "Never gonna make you cry", 0x00,
        db "Never gonna say goodbye", 0x00, 
        db "Never gonna tell a lie and hurt you", 0x00, 
        db "Never gonna give you up", 0x00, 
        db "Never gonna let you down", 0x00, 
        db "Never gonna run around and desert you", 0x00, 
        db "Never gonna make you cry", 0x00,
        db "Never gonna say goodbye", 0x00, 
        db "Never gonna tell a lie and hurt you", 0x00, 0x01

times 2560 - ($ - $$) db 0
