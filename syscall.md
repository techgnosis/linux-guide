What does it mean to have an assembly instruction called syscall? I thought assembly was machine code that basically manipulated registers. The syscall instruction seems like it tells the Linux kernel to do something.

Syscall is really an instruction to switch to Ring 0. When you call syscall, you switch to Ring 0 and then the CPU locates your system call handler via the Interrupt Descriptor Table and sends the values from the registers to the appropriate system call in the kernel.

The kernel is running in Ring 0. I don’t understand yet how the kernel launches itself in Ring 0. From there you run code in Ring 3. If that code executes the syscall instruction, the CPU switches to Ring 0, looks up the location of the syscall handler in the Interrupt Descriptor Table, and then runs that syscall.
