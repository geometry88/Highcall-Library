; Hc/NtGdiGetCurrentDpiInfo
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciGdiGetCurrentDpiInfo:DWORD

.DATA
.CODE

HcGdiGetCurrentDpiInfo PROC
	mov r10, rcx
	mov eax, sciGdiGetCurrentDpiInfo
	syscall
	ret
HcGdiGetCurrentDpiInfo ENDP

ELSE
; 32bit

EXTERNDEF C sciGdiGetCurrentDpiInfo:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcGdiGetCurrentDpiInfo PROC
	mov eax, sciGdiGetCurrentDpiInfo
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
HcGdiGetCurrentDpiInfo ENDP

ENDIF

END