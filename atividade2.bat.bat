@echo off
title Exercicio Sorteio
mode 60,30
color 0a

:sorteio
set /a sorteio = (%Random%%%50) + 1
set /a cont=5

:inicio
cls
echo.
echo %sorteio%
echo                    --ooOoo--
echo ===================ooO(_)Ooo====================
echo     ADVINHE O NUMERO SORTEADO ENTRE 01 E 50
echo ------------------------------------------------
echo           QUANTIDADE DE TENTATIVAS : %cont%
echo ================================================
echo.
set /p op= DIGITE SEU PALPITE: 
echo.
set /a cont -= 1

if %cont% == 0 (
echo =================================================
echo             QUE PENA VOCE PERDEU!
echo         O NUMERO SORTEADO FOI : %sorteio%
echo -------------------------------------------------
goto:sair)

if %op% GTR 50 (
echo =================================================
echo      DIGITE UM NUMERO ENTRE 01 E 50 [][][]
echo -------------------------------------------------  
pause
goto:inicio)

if %op% LSS 01 (
echo =================================================
echo      DIGITE UM NUMERO ENTRE 01 E 50 [][][]
echo -------------------------------------------------
pause
goto:inicio)

if %sorteio% GTR %op% (
echo =================================================
echo             DIGITE UM NUMERO MAIOR
echo -------------------------------------------------
pause
goto:inicio)

if %Sorteio% LSS %op% (
echo =================================================
echo             DIGITE UM NUMERO MENOR
echo -------------------------------------------------
pause
goto:inicio)

if %sorteio% == %op% (
echo =================================================
echo             PARABENS VOCE GANHOU!
echo         O NUMERO SORTEADO FOI : %sorteio%
echo -------------------------------------------------
goto:sair)

:sair
set /p resp=DESEJA TENTAR NOVAMENTE? [S/N]:
if /i %resp% == n (exit) else (
	set /a sorteio = (%Random%%%50) + 1
set /a cont=5
	goto:sorteio)






