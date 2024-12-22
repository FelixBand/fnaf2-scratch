rd /s /q "Five Nights at Freddy's 2"

ren "Five Nights at Freddy's 2.sb3" "Five Nights at Freddy's 2.zip"

powershell -NoProfile -Command ^
    "& {Expand-Archive -Path 'Five Nights at Freddy''s 2.zip' -DestinationPath 'Five Nights at Freddy''s 2'}"

ren "Five Nights at Freddy's 2.zip" "Five Nights at Freddy's 2.sb3"

pause