; Hc/NtUserDwmGetRemoteSessionOcclusionEvent
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciUserDwmGetRemoteSessionOcclusionEvent:DWORD

.DATA
.CODE

HcUserDwmGetRemoteSessionOcclusionEvent PROC
	mov r10, rcx
	mov eax, sciUserDwmGetRemoteSessionOcclusionEvent
	syscall
	ret
HcUserDwmGetRemoteSessionOcclusionEvent ENDP

ELSE
; 32bit

EXTERNDEF C sciUserDwmGetRemoteSessionOcclusionEvent:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcUserDwmGetRemoteSessionOcclusionEvent PROC
	mov eax, sciUserDwmGetRemoteSessionOcclusionEvent
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
HcUserDwmGetRemoteSessionOcclusionEvent ENDP

ENDIF

END