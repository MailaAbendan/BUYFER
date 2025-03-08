
# BUYFER Command Prompt Simulation

This script simulates a command prompt interaction for buying and downloading a game, specifically "GTA V." The script includes payment options and creates a dummy shortcut on your desktop. Please note that this is a simulation and does not actually download or install the game.

## How to Use

1. Open Notepad.
2. Copy and paste the following script into Notepad:

    ```batch
    @echo off
    setlocal EnableDelayedExpansion

    set "desktop=%USERPROFILE%\Desktop"

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

            echo [InternetShortcut] > "%desktop%\GTA V - Shortcut.url"
            echo URL=file:///%desktop%/GTA_V_Shortcut.exe >> "%desktop%\GTA V - Shortcut.url"
        )
    )

    pause
    ```

3. Save the file with a `.bat` extension (e.g., `buyfer.bat`).
4. Double-click the `.bat` file to run the script.

## Script Workflow

1. The command prompt asks, "WHAT DO YOU WANT TO BUY?"
2. User types "GTA V."
3. The command prompt asks for a payment method (Gcash, Paypal, Maya, or Shopee Pay).
    - If the user types "Gcash," it opens the Gcash website.
    - If the user types "Maya," the command prompt simulates a system error and exits.
    - If the user types "Paypal," the script simulates a purchase and downloading process, and then creates a dummy shortcut on the desktop named "GTA V - Shortcut."
4. The command prompt displays a message "Enjoy :)" and closes.
5. The user can click on the "GTA V - Shortcut" on their desktop to simulate launching the game.

Please note that this script is a simulation and does not actually download or install any software. It is intended for demonstration purposes only.
