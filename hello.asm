.686
.model flat, stdcall
option casemap: none

include \masm32\include\windows.inc
include \masm32\include\user32.inc
include \masm32\include\kernel32.inc
includelib \masm32\lib\user32.lib
includelib \masm32\lib\kernel32.lib

.data
msg db "Hello world!", 0
cpt db "MY FIRST PROGRAM!!!", 0

.code

start:

invoke MessageBox, 0, addr msg, addr cpt, MB_OK + MB_ICONINFORMATION
invoke ExitProcess, 0
end start