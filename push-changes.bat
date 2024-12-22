rd /s /q "Five Nights at Freddy's 2"

ren "Five Nights at Freddy's 2.sb3" "Five Nights at Freddy's 2.zip"

powershell -NoProfile -Command ^
    "& {Expand-Archive -Path 'Five Nights at Freddy''s 2.zip' -DestinationPath 'Five Nights at Freddy''s 2'}"

ren "Five Nights at Freddy's 2.zip" "Five Nights at Freddy's 2.sb3"

git add .

for /f "tokens=1-4 delims=-: " %%a in ("%date% %time%") do (
    set commit_msg=Updated project - %%a-%%b-%%c %%d
)

git commit -m "%commit_msg%"

git push || (echo Push failed. & exit /b 1)

echo Changes successfully pushed!

pause