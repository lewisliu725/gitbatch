@echo off
setlocal EnableDelayedExpansion

echo Executing git command "git %*" for all the git repositories under current folder.

FOR /D %%d IN (*) DO (
  cd %%d
  IF EXIST .git (
    REM The actions for each git repository folder
    echo ___________
    echo %%d
    git %*
  )
  cd ..
)

@pause