; Hc/NtUserEnableMouseInputForCursorSuppression
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciUserEnableMouseInputForCursorSuppression:DWORD

.DATA
.CODE

HcUserEnableMouseInputForCursorSuppression PROC
	mov r10, rcx
	mov eax, sciUserEnableMouseInputForCursorSuppression
	syscall
	ret
HcUserEnableMouseInputForCursorSuppression ENDP

ELSE
; 32bit

EXTERNDEF C sciUserEnableMouseInputForCursorSuppression:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcUserEnableMouseInputForCursorSuppression PROC
	mov eax, sciUserEnableMouseInputForCursorSuppression
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
HcUserEnableMouseInputForCursorSuppression ENDP

ENDIF

END