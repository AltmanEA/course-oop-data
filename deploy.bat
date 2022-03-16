hugo

SET CURDRIVE=%CD:~0,3%

ROBOCOPY ".\public"   "%CURDRIVE%Work\AltmanEA.github.io\1c" /S

RD /S /Q ".\public\"

git add *
git commit -m %1
git push origin main