; Hc/NtUserGetWindowPlacement
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciUserGetWindowPlacement:DWORD

.DATA
.CODE

HcUserGetWindowPlacement PROC
	mov r10, rcx
	mov eax, sciUserGetWindowPlacement
	syscall
	ret
HcUserGetWindowPlacement ENDP

ELSE
; 32bit

EXTERNDEF C sciUserGetWindowPlacement:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcUserGetWindowPlacement PROC
	mov eax, sciUserGetWindowPlacement
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
HcUserGetWindowPlacement ENDP

ENDIF

END