cargo build --release
if errorlevel 1 exit 1

mkdir %PREFIX%\Scripts
if errorlevel 1 exit 1

copy build\target\recto.exe %PREFIX%\Scripts
if errorlevel 1 exit 1

copy build\target\verso.exe %PREFIX%\Scripts
if errorlevel 1 exit 1
