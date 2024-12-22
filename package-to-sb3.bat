echo "If an older copy of the sb3 file already exists, it will be deleted."
pause

del "Five Nights at Freddy's 2.sb3"

powershell -NoProfile -Command ^
    "& {Compress-Archive -Path 'Five Nights at Freddy''s 2\*' -DestinationPath 'Five Nights at Freddy''s 2.zip'}"

ren "Five Nights at Freddy's 2.zip" "Five Nights at Freddy's 2.sb3"

pause