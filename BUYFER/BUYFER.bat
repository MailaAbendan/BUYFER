@echo off
echo BUYFER: WHAT DO YOU WANT TO BUY?
set /p choice=
if /i "%choice%"=="GTA V" (
    echo BUYFER: Alright, but you forgot your payment. What do you choose from the company payment options: Gcash, Paypal, Maya, or Shopee Pay?
    set /p payment=
    if /i "%payment%"=="Gcash" (
        echo BUYFER: Opening Gcash website...
        start https://www.gcash.com/
    ) else if /i "%payment%"=="Maya" (
        echo BUYFER: System error: Hang lagging and closing the BUYFER command prompt.
        exit
    ) else if /i "%payment%"=="Paypal" (
        echo BUYFER: Alright, coming right up but without a physical disc, only delivering to your desktop.
        echo BUYFER: buying loading...
        for /l %%x in (1, 1, 100) do (
            echo Loading %%x/100
            ping localhost -n 2 >nul
        )
        echo BUYFER: downloading...
        for /l %%x in (1, 1, 100) do (
            echo Downloading %%x/100
            ping localhost -n 2 >nul
        )
        echo BUYFER: Enjoy :)
        echo [Desktop] GTA V - Shortcut created.

        echo [GTA V Shortcut] > "%desktop%\GTA V - Shortcut.Game"
        echo Game=file:///%desktop%/GTA_V_Shortcut.exe >> "%desktop%\GTA V - Shortcut.Game"
    )
)

pause