@Echo Off
REM This .bat file is provided to clear the DaVinci Resolve 17.3.2 Optimized Media Cache, as no
REM method is provided in this version to clear the cache.
REM This .bat file works best if you make a Windows shortcut to it on your desktop. Then whenever
REM you feel you need to clear the Optimized Media Cache, just make sure DaVinci Resolve is not
REM running, and double-click the shortcut.

REM BEGIN CONFIGURATION
REM IF YOU MOVE THE CACHE FILES LOCATION, YOU MUST CONFIGURE THESE TWO LINES!
set drcachedrive=C:
set drcachefolder=%USERPROFILE%\Videos\CacheClip
REM END CONFIGURATION

echo If DaVinci resolve is running, close it now!
echo IF DAVINCI RESOLVE IS RUNNING, CLOSE IT NOW!!
echo.
echo Are you sure you want to delete the Davinci Resolve Optimized Media Cache!?
choice /C YN /M "Press Y for Yes, N for No:"
rem reecho '%errorlevel%'
if '%errorlevel%'=='1' goto itsyes
if '%errorlevel%'=='2' goto itsno
echo.
goto getout
:itsyes
%drcachedrive%
cd %drcachefolder%
dir
rmdir OptimizedMedia /S
dir
goto getout
:itsno
rem echo No
echo Canceled!
:getout
rem set
pause

REM Copyright 2021 TheCuriosium AKA Michael Aichlmayr

REM Permission is hereby granted, free of charge, to any person obtaining a copy of this software and
REM associated documentation files (the "Software"), to deal in the Software without restriction,
REM including without limitation the rights to use, copy, modify, merge, publish, distribute,
REM sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is
REM furnished to do so, subject to the following conditions:

REM The above copyright notice and this permission notice shall be included in all copies or
REM substantial portions of the Software.

REM THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT
REM NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
REM NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,
REM DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
REM OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.