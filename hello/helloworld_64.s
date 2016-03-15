.section .text
.global _start

msg:
   .ascii "Hello World!/n"
msg_end:
   .equ len, msg_end - msg
   .equ SYS_write, 1
   .equ SYS_exit, 60

_start:

   mov $SYS_write, %rax    # system call number
   mov $1, %rdi            # file descriptor (stdout)
   mov $msg, %rsi          # message to write
   mov $len, %rdx          # message length.
   syscall                 # previous 'int $0x80' in i386

   mov $SYS_exit, %rax     # system call number
   mov $0, %rdi            # exit (0)
   syscall                 # previous 'int $0x80' in i386
