; Hc/NtGdiMirrorWindowOrg
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciGdiMirrorWindowOrg:DWORD

.DATA
.CODE

HcGdiMirrorWindowOrg PROC
	mov r10, rcx
	mov eax, sciGdiMirrorWindowOrg
	syscall
	ret
HcGdiMirrorWindowOrg ENDP

ELSE
; 32bit

EXTERNDEF C sciGdiMirrorWindowOrg:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcGdiMirrorWindowOrg PROC
	mov eax, sciGdiMirrorWindowOrg
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
HcGdiMirrorWindowOrg ENDP

ENDIF

END