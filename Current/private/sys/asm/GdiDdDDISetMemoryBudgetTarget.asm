; Hc/NtGdiDdDDISetMemoryBudgetTarget
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciGdiDdDDISetMemoryBudgetTarget:DWORD

.DATA
.CODE

HcGdiDdDDISetMemoryBudgetTarget PROC
	mov r10, rcx
	mov eax, sciGdiDdDDISetMemoryBudgetTarget
	syscall
	ret
HcGdiDdDDISetMemoryBudgetTarget ENDP

ELSE
; 32bit

EXTERNDEF C sciGdiDdDDISetMemoryBudgetTarget:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcGdiDdDDISetMemoryBudgetTarget PROC
	mov eax, sciGdiDdDDISetMemoryBudgetTarget
	mov ecx, fs:[0c0h]
	test ecx, ecx
	jne _wow64
	lea edx, [esp + 4]
	INT 02eh
	ret
	_wow64:
	xor ecx, ecx
	lea edx, [esp + 4h]
	call dword ptr fs:[0c0h]
	ret
HcGdiDdDDISetMemoryBudgetTarget ENDP

ENDIF

END