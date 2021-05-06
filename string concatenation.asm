.586
.MODEL FLAT

INCLUDE io.h          

.STACK 4096

.DATA 
value1 BYTE 40 DUP (?)
value2 BYTE 40 DUP (?)
reslbl BYTE " Concatenated string",0
prompt1 BYTE "Enter first string",0
prompt2 BYTE "Enter second string",0
result BYTE ?


.CODE
_MainProc PROC
		cld

		input prompt1,value1,40
		lea edi, value1
		 mov ecx,-1
		while1:
			inc ecx
			mov al,[esi+ecx]
			cmp al, 0
			je endWhile
			inc edi
			jmp while1
		endWhile:

		input prompt2,value2,40

		lea esi, value2

		MOVSD
		output reslbl, value1
		
_MainProc ENDP


END
