nasm -f elf64 -g -F stabs eatsyscall.asm
ld -o eatsyscall eatsyscall.o
