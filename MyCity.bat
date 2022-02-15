@echo off  
title My City v1.0.1
color 0a

:Authorization
set /p Color=<savecolor.cmd
set /p Name=<savename.cmd
color %Color%
cls
echo ==========================
echo === Welcome to MyCity! ===
echo ==========================
echo.
echo Are you %Name%? (If nothing appeared after "Are you", type in N or n.)
set /p "Y/N=[Y/N]:"
if %Y/N%==Y goto MainMenu
if %Y/N%==y goto MainMenu
if %Y/N%==N goto registry
if %Y/N%==n goto registry

:registry
cls
echo To start the game, you'll need to sign up.
echo Please enter your name:
set /p "name=>> "
echo.
echo Alright %name%! Do you want to change the color of the text?
(
    echo %name%
)>savename.cmd
set /p "Y/N=[Y/N]:"
if %Y/N%==Y goto colorChange
if %Y/N%==y goto colorChange
if %Y/N%==N goto MainMenu
if %Y/N%==n goto MainMenu

:colorChange
cls
echo %Name%, please enter the codename of the color that you want to use: 
echo 0 = black	8 = gray
echo 1 = navy	9 = blue
echo 2 = green	A = lime
echo 3 = teal	B = aqua
echo 4 = maroon	C = red
echo 5 = purple	D = fuchsia
echo 6 = olive	E = yellow
echo 7 = silver	F = white
echo (Enter small letters)
set /p "Color=>>"
color %Color%
(
    echo %Color%
)>savecolor.cmd
echo press any key to go back to the main menu.
pause>nul
goto MainMenu

:MainMenu
cls
echo === Main Menu ===
echo 1. Start the game
echo 2. How to play
echo 3. Info
echo 4. Quit
set /p Pick a number:=Enter a number:
if %Pick a number:%==1 goto game
if %Pick a number:%==2 goto howtoplay
if %Pick a number:%==3 goto info
if %Pick a number:%==4 goto quit

:quit
cls
echo Thanks for playing!
echo Press any key to quit
pause>nul
exit

:info
cls
echo This game was made by Hubert Poruszek.
echo Press any key to go back to the main menu.
pause>nul
goto MainMenu

:howtoplay
cls
echo you are a president of a city. Your task is to take care of the citizens.
echo.
ping localhost-n 2 >nul
echo You have some money, that you can use to expand your city.
echo Press any key to go back to the main menu.
pause>nul
goto MainMenu

:game
cls
set money=1000
set citizens=0
set house=200
set skyscraper=350
set hut=120
set apartment=240
set housecount=0
set skyscrapercount=0
set hutcount=0
set apartmentcount=0
set newspaper=25
set lottery=100
echo Welcome %name%, here your journey as a president begins.
echo.
ping localhost-n 1 >nul
echo Please enter the name of your city:
set /p "city=>> "
cls
echo %name%, I think that %city% sounds good!
echo Your starting money is 1000 dollars.
echo Press any key to start the game.
pause>nul
cls
echo ==========================================================
echo ============ Welcome to the stats table!  ================
echo ==========================================================
echo Your money is: %money%$
echo You have: %citizens% citizens
echo It is %time% in %city%
echo.
echo.
echo Your city is empty!
echo Press any key to go buy buildings
pause>nul
goto buy

:buy
echo 1. Build a house (200$)
echo 2. Build a skyscraper (350$)
echo 3. Build a hut (120$)
echo 4. Build an apartment (240$)
set /p Pick a number:=Pick a number:
if %Pick a number:%==1 goto house
if %Pick a number:%==2 goto skyscraper
if %Pick a number:%==3 goto hut
if %Pick a number:%==4 goto apartment

:skyscraper
cls
echo That'll be 350 dollars!
echo Press any key to proceed
pause>nul
cls
set /a money=money-skyscraper
set /a skyscrapercount=skyscrapercount+1
set /a citizens=citizens+50
echo ==========================================================
echo ============ Welcome to the stats table!  ================
echo ==========================================================
echo Your money is: %money%$
echo You have: %citizens% citizens
echo It is %time% in %city%
echo.
echo.
echo You have %housecount% houses, %skyscrapercount% skyscrapers, %hutcount% huts and %apartmentcount% apartments.
echo What do you want to do now?
echo 1. Buy buildings
echo 2. Earn money
echo 3. Read the newspaper
set /p Pick a number:=Pick a number:
if %Pick a number:%==1 goto buy
if %Pick a number:%==2 goto earn
if %Pick a number:%==3 goto newspaper

:house
cls
echo That'll be 200 dollars!
echo Press any key to proceed
pause>nul
cls
set /a money=money-house
set /a housecount=housecount+1
set /a citizens=citizens+20
echo ==========================================================
echo ============ Welcome to the stats table!  ================
echo ==========================================================
echo Your money is: %money%$
echo You have: %citizens% citizens
echo It is %time% in %city%
echo.
echo.
echo You have %housecount% houses, %skyscrapercount% skyscrapers, %hutcount% huts and %apartmentcount% apartments.
echo What do you want to do now?
echo 1. Buy buildings
echo 2. Earn money
echo 3. Read the newspaper
set /p Pick a number:=Pick a number:
if %Pick a number:%==1 goto buy
if %Pick a number:%==2 goto earn
if %Pick a number:%==3 goto newspaper

:hut
cls
echo That'll be 120 dollars!
echo Press any key to proceed
pause>nul
cls
set /a money=money-hut
set /a hutcount=hutcount+1
set /a citizens=citizens+5
echo ==========================================================
echo ============ Welcome to the stats table!  ================
echo ==========================================================
echo Your money is: %money%$
echo You have: %citizens% citizens
echo It is %time% in %city%
echo.
echo.
echo You have %housecount% houses, %skyscrapercount% skyscrapers, %hutcount% huts and %apartmentcount% apartments.
echo What do you want to do now?
echo 1. Buy buildings
echo 2. Earn money
echo 3. Read the newspaper
set /p Pick a number:=Pick a number:
if %Pick a number:%==1 goto buy
if %Pick a number:%==2 goto earn
if %Pick a number:%==3 goto newspaper

:apartment
cls
echo That'll be 240 dollars!
echo Press any key to proceed
pause>nul
cls
set /a money=money-apartment
set /a apartmentcount=apartmentcount+1
set /a citizens=citizens+35
echo ==========================================================
echo ============ Welcome to the stats table!  ================
echo ==========================================================
echo Your money is: %money%$
echo You have: %citizens% citizens
echo It is %time% in %city%
echo.
echo.
echo You have %housecount% houses, %skyscrapercount% skyscrapers, %hutcount% huts and %apartmentcount% apartments.
echo What do you want to do now?
echo 1. Buy buildings
echo 2. Earn money
echo 3. Read the newspaper
set /p Pick a number:=Pick a number:
if %Pick a number:%==1 goto buy
if %Pick a number:%==2 goto earn
if %Pick a number:%==3 goto newspaper

:newspaper
cls
echo The newspaper costs 25$.
echo Press any key to proceed.
pause>nul
cls
set /a money=money-newspaper
echo        ##########################################
echo        #        ### BREAKING NEWS! ###          
echo        # %city% is expanding! We just got an    
echo        # information, that %name%, that city's  
echo        # president just built something new!    
echo        # for now the city has:                  
echo        # %skyscrapercount% skyscrapers,         
echo        # %housecount% houses and                
echo        # %hutcount% huts!                       
echo        ##########################################
echo.
echo Press any key to go back to the city menu.
echo (The right side of the newspaper got bugged, so i deleted it.)
pause>nul
cls
goto SecondMenu

:earn
cls
echo How do you want to earn money?
echo 1. Play the lottery
echo 2. Work
set /p Pick a number:=Pick a number:
if %Pick a number:%==1 goto lotterybuy
if %Pick a number:%==2 goto work

:lotterybuy
cls
echo Welcome to the lottery!
echo Do you want to buy a ticket?
set /p Yes or No:=Yes or No:
if %Yes or No:%==Yes goto lottery
if %Yes or No:%==No goto skyscraper

:lottery
cls
set /a money=money-lottery
echo This is your ticket:
echo ######################################
echo #             ####                   #
echo #            #    ##                 # 
echo #                 #                  #
echo #               #                    #
echo #               #                    #
echo #                                    #
echo #               #                    #
echo ######################################
echo.
echo Spinning...
set /a result=%RANDOM% * 50 / 32768 + 1
set /a winningNum1=%RANDOM% * 50 / 32768 + 1
set /a winningNum2=%RANDOM% * 50 / 32768 + 1
set /a winningNum3=%RANDOM% * 50 / 32768 + 1
set /a winningNum4=%RANDOM% * 50 / 32768 + 1
set /a winningNum5=%RANDOM% * 50 / 32768 + 1
ping localhost-n 1 >nul
cls
echo This is your ticket:
echo ######################################
echo #             ####                   #
echo #            #    ##                 # 
echo #                 #                  #
echo #               #                    #
echo #               #                    #
echo #                                    #
echo #               #                    #
echo ######################################
echo.
if %result%==%winningNum1% echo You won 600 dollars! (Main prize)
if %result%==%winningNum2% echo You won 500 dollars!
if %result%==%winningNum3% echo You won 400 dollars!
if %result%==%winningNum4% echo You won 300 dollars!
if %result%==%winningNum5% echo You won 200 dollars!
if %result%==%winningNum1% set /a money=money+600
if %result%==%winningNum2% set /a money=money+500
if %result%==%winningNum3% set /a money=money+400
if %result%==%winningNum4% set /a money=money+300
if %result%==%winningNum5% set /a money=money+200!
echo.
echo If "You won" message didn't appear, that means that you lost.
echo Press any key to go back to the main menu.
pause>nul
goto SecondMenu

:SecondMenu
cls
echo ==========================================================
echo ============ Welcome to the stats table!  ================
echo ==========================================================
echo Your money is: %money%$
echo You have: %citizens% citizens
echo It is %time% in %city%
echo.
echo.
echo You have %housecount% houses, %skyscrapercount% skyscrapers, %hutcount% huts and %apartmentcount% apartments.
echo What do you want to do now?
echo 1. Buy buildings
echo 2. Earn money
echo 3. Read the newspaper
set /p Pick a number:=Pick a number:
if %Pick a number:%==1 goto buy
if %Pick a number:%==2 goto earn
if %Pick a number:%==3 goto newspaper

:work
echo Welcome to your workplace!
echo This is still in development.
pause