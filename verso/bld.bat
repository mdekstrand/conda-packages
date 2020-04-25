cargo install --locked --root "%PREFIX%" --path . || goto :error
del /F /Q "%PREFIX%\.crates.toml"
goto :EOF

:error
echo Failed with error #%errorlevel%.
exit 1
