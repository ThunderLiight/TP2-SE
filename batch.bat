@echo off
goto :question5
pause > nul
goto :EOF

:question1
md C:\disquette
subst a: C:\disquette
pause > nul
goto :EOF

:question2
md A:\420-S24-JO
md A:\420-S24-JO\texte
md A:\420-S24-JO\Batch
md A:\420-S24-JO\Programmes
pause > nul
goto :EOF

:question3
copy c:\TP2\actuel.txt A:\420-S24-JO\Batch
pause > nul
goto :EOF

:question4
assoc > A:\420-S24-JO\texte\association.txt
pause > nul
goto :EOF

:question5
for /r "A:\" %%i in (*.exe) do (
	echo %%i >> A:\420-S24-JO\texte\exe.txt 
	)
sort /R A:\420-S24-JO\texte\exe.txt /O A:\420-S24-JO\texte\exe.txt
pause > nul
goto :EOF

rem ...
:question6
SETLOCAL enableextensions enabledelayedexpansion

for /r "C:\" %%F in (*) do (
    set ATTRIBS=%%~aF
    set CURR_FILE=%%~nxF
    set HIDE_ATTRIB=!ATTRIBS:~4,1!

    if !HIDE_ATTRIB!==- (
        rem CURR_FILE n'est pas cache
    ) else (
        rem CURR_FILE est cache
		%CURR_FILE% >> A:\420-S24-JO\texte\cache.txt
    )

)
pause > nul
goto :EOF

rem ...
:question7
for /r "C:\" %%J in (*.sys) do (echo %%J >> A:\420-S24-JO\texte\systeme.txt)
pause > nul
goto :EOF

:question8
rem le commutateur /N=X dans le commande COMP effectue la comparaison entre deux fichiers
rem mais pour les X premières lignes c'est particulièrement utile si l'on veut comparer
rem deux fichiers qui ont le "même" début mais dont la fin diffère. On pourra alors 
rem extirper les différences contenues uniquement dans le début des fichiers.

:question9
copy c:\Windows\System32\write.exe A:\420-S24-JO\Programmes\ & ren A:\420-S24-JO\Programmes\write.exe Ecrire.exe
PATH=%PATH% ; c:\Windows\System32\write.exe
pause > nul
goto :EOF

:question10
if exist A:\420-S24-JO\texte\help.txt (
echo * * * Le fichier help.txt existe a l endroit specifie.
)else 	echo * * * Le fichier help.txt n existe pas a l endroit specifie.
pause > nul
goto :EOF

:question11
xcopy A:\420-S24-JO\texte A:\texte /e /i
xcopy A:\420-S24-JO\Programmes A:\Programmes /e /i
xcopy A:\420-S24-JO\Batch A:\Batch /e /i
rd A:\420-S24-JO /s /q
rd A:\420-S24-JO
pause > nul
goto :EOF

:question12
subst b: A:\Batch
pause > nul
goto :EOF

:question13
dir b:
pause > nul
goto :EOF

:question14
set chemin=%PATH%
PATH=%PATH%; b:\Afficher le nouveau Path.
pause > nul
goto :EOF

:question15
echo il est %time% le %date%, Repertoire actuel: %cd%
pause > nul
goto :EOF

:question16
SETLOCAL ENABLEdelayedexpansion

set k=1
set l=2
set m=3
set n=4
set o=5

for /L %%p in (1,1,5) do (
md a:\!k!!l!!m!!n!!o!
echo. > a:\!k!!l!!m!!n!!o!\!k!!l!!m!!n!!o!.txt
set /a k=!k!+1
set /a l=!l!+1
set /a m=!m!+1
set /a n=!n!+1
set /a o=!o!+1
)

pause > nul
goto :EOF