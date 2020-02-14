REM SET "CMAKE_GENERATOR=NMake Makefiles"

mkdir tmp-build
cd tmp-build
cmake ../pythonfmu/pythonfmu-export -DCMAKE_PREFIX_PATH:FILEPATH="%PREFIX%" -DCMAKE_BUILD_TYPE=Release -A x64
cmake --build . --config Release
cd ..

%PYTHON% -m pip install . -vv

if errorlevel 1 exit 1
