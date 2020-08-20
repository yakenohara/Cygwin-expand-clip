::note @SETLOCALと@ENDLOCALで囲むと、その中で設定した環境変数はその範囲内でだけ有効
@SETLOCAL

::<Settings>------------------------
@SET PATH="C:\cygwin64\bin"
@set SH_PATH_WIN="%~dp0%cygexpand-clip.sh"

::Bashシェル起動時のカレントディレクトリをコマンドプロンプトのカレントディレクトリにする
@SET CHERE_INVOKING=yes
@SET LANG=ja_JP.SJIS
::-----------------------</Settings>

:: Windows スタイルパス文字列 -> UNIX スタイルパス文字列変換
@for /f %%f in ('cygpath.exe -u %SH_PATH_WIN%') do @set SH_PATH_UNI=%%f

:: Shell Script 実行
@bash.exe --login -i -c "%SH_PATH_UNI%"

@ENDLOCAL

@echo Done!
::@pause
@exit /B 0
