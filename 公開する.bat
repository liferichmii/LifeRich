@echo off
chcp 932 >nul
setlocal
cd /d "%~dp0"

echo ============================================
echo   LifeRich HP を GitHub にアップします
echo ============================================
echo.

where git >nul 2>&1
if errorlevel 1 (
  echo [!] Git がこのパソコンに入っていません。
  echo.
  echo     https://git-scm.com/download/win
  echo     を開いてインストールし、
  echo     終わったらもう一度このファイルをダブルクリックしてください。
  echo     （インストールは「次へ」を押し続けるだけでOKです）
  echo.
  pause
  exit /b
)

git config --global --get user.name >nul 2>&1 || git config --global user.name "LifeRich"
git config --global --get user.email >nul 2>&1 || git config --global user.email "lucky8mizuki@gmail.com"

if not exist ".git" (
  echo [1/3] 初期設定をしています...
  git init -b main >nul
  git remote add origin https://github.com/liferichmii/LifeRich.git
) else (
  echo [1/3] 設定済みです。
)

echo [2/3] 変更を記録しています...
git add -A
git commit -m "LifeRich HP 更新 %date% %time%" >nul 2>&1
if errorlevel 1 echo     （変更はありませんでした）

echo [3/3] GitHub に送信しています...
echo.
echo     ※ 初回はブラウザが開いて GitHub のログインを求められます。
echo        画面の指示どおりログインしてください（1回だけです）。
echo.
git push -u origin main
if errorlevel 1 (
  echo.
  echo     送信できなかったので、最新の状態を取り込んでからもう一度試します...
  git pull --rebase origin main
  git push -u origin main
)

echo.
if errorlevel 1 (
  echo [x] うまくいきませんでした。この画面をスクリーンショットして送ってください。
) else (
  echo [OK] 完了しました！
  echo.
  echo     https://github.com/liferichmii/LifeRich
  echo     で確認できます。
)
echo.
pause
