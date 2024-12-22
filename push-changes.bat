rd /s /q "Five Nights at Freddy's 2"

ren "Five Nights at Freddy's 2.sb3" "Five Nights at Freddy's 2.zip"

powershell -NoProfile -Command ^
    "& {Expand-Archive -Path 'Five Nights at Freddy''s 2.zip' -DestinationPath 'Five Nights at Freddy''s 2'}"

ren "Five Nights at Freddy's 2.zip" "Five Nights at Freddy's 2.sb3"

git add .

REM Commit changes with a timestamp
for /f "tokens=2 delims==" %%a in ('"wmic OS Get localdatetime /value"') do set datetime=%%a
set year=%datetime:~0,4%
set month=%datetime:~4,2%
set day=%datetime:~6,2%
set hour=%datetime:~8,2%
set minute=%datetime:~10,2%
set second=%datetime:~12,2%

set commit_msg=Updated project - %year%-%month%-%day% %hour%:%minute%:%second%

git commit -m "%commit_msg%"

git push || (echo Push failed. & exit /b 1)

echo Changes successfully pushed!

pause