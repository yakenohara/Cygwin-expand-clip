::note @SETLOCAL��@ENDLOCAL�ň͂ނƁA���̒��Őݒ肵�����ϐ��͂��͈͓̔��ł����L��
@SETLOCAL

::<Settings>------------------------
@SET PATH="C:\cygwin64\bin"
@set SH_PATH_WIN="%~dp0%expand-clip.sh"

::Bash�V�F���N�����̃J�����g�f�B���N�g�����R�}���h�v�����v�g�̃J�����g�f�B���N�g���ɂ���
@SET CHERE_INVOKING=yes
@SET LANG=ja_JP.SJIS
::-----------------------</Settings>

:: Windows �X�^�C���p�X������ -> UNIX �X�^�C���p�X������ϊ�
@for /f %%f in ('cygpath.exe -u %SH_PATH_WIN%') do @set SH_PATH_UNI=%%f

:: Shell Script ���s
@bash.exe --login -i -c "%SH_PATH_UNI%"

@ENDLOCAL

@echo Done!
::@pause
@exit /B 0