set "BUILD_DIR=_build"
set "PREFIX=_install"
@REM set "PREFIX=%CONDA_PREFIX%\Library"

cmake -B %BUILD_DIR% -G Ninja ^
  -DCMAKE_INSTALL_PREFIX:PATH=%PREFIX% ^
  -DCMAKE_BUILD_TYPE=Debug ^
if %ERRORLEVEL% neq 0 exit 1

cmake --build %BUILD_DIR%
if %ERRORLEVEL% neq 0 exit 1

cmake --install %BUILD_DIR%
if %ERRORLEVEL% neq 0 exit 1
