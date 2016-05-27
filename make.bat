SETLOCAL
SET PATH=%PATH%;c:\gbdk

c:\gbdk\bin\lcc -Wa-l -Wl-m -Wl-j -DUSE_SFR_FOR_REG -c -o dmu.o dmu.c
c:\gbdk\bin\lcc -Wa-l -Wl-m -Wl-j -DUSE_SFR_FOR_REG -o dmu.gb dmu.o

ENDLOCAL