####################################################################################
##                                                                                ##
##                 ____                             _                             ##
##                / ___| _   _ _ __   ___ _ __ __ _(_) ___                        ##
##                \___ \| | | | '_ \ / _ \ '__/ _` | |/ _ \                       ##
##                 ___) | |_| | | | |  __/ | | (_| | |  __/                       ##
##                |____/ \__, |_| |_|\___|_|  \__, |_|\___|                       ##
##                       |___/                |___/                               ##
##                                                                                ##
##                             2018-2019 Daniel J                                 ##
##                            Licensed under WTFPL                                ##
##                                                                                ##
##                                                                                ##
####################################################################################
if [[ $(basename $BASH_SOURCE) = "synergie.sh" ]] 2>/dev/null; then
	usr=`whoami`
	user=`echo -n $usr`
	if [[ -f ".pl" ]]; then
	clear
	echo
	sleep 0.01
	echo
	sleep 0.01
	echo -e "\033[35m"
	sleep 0.01
	echo "         ____                             _       "
	sleep 0.01
	echo "        / ___| _   _ _ __   ___ _ __ __ _(_) ___  "
	sleep 0.01
	echo "        \___ \| | | | '_ \ / _ \ '__/ _' | |/ _ \ "
	sleep 0.01
	echo "         ___) | |_| | | | |  __/ | | (_| | |  __/ "
	sleep 0.01
	echo "        |____/ \__, |_| |_|\___|_|  \__, |_|\___| "
	sleep 0.01
	echo "               |___/                |___/         "
	sleep 0.01
	echo -e "\033[0m"
	sleep 0.01
	if [[ -f ".input" ]]; then
		echo -e "\033[93m"" -------------------   Główne menu   -------------------""\033[0m"
		sleep 0.01
		echo
		sleep 0.01
		echo -e "   ""\033[32m""1]""\033[0m""  Aktualne konto"
		sleep 0.01
		echo -e "   ""\033[32m""2]""\033[0m""  Zacznij logowanie"
		sleep 0.01
		echo -e "   ""\033[32m""3]""\033[0m""  Autologin do Synergii"
		sleep 0.01
		echo -e "   ""\033[32m""4]""\033[0m""  O skrypcie"
		sleep 0.01
		echo -e "   ""\033[32m""x]""\033[0m""  Wyjdź"
		sleep 0.01
		echo -e "\033[0m"
		sleep 0.01
		echo -ne "  ""\033[36m""Wybierz opcję:""\033[0m"" "
		sleep 0.01
		read guwno
		echo
		sleep 0.01
		if [[ $guwno = "1" ]]; then
			clear
			sleep 0.01
			echo
			sleep 0.01
			echo
			sleep 0.01
			echo -e "\033[35m"
			sleep 0.01
			echo "         ____                             _       "
			sleep 0.01
			echo "        / ___| _   _ _ __   ___ _ __ __ _(_) ___  "
			sleep 0.01
			echo "        \___ \| | | | '_ \ / _ \ '__/ _' | |/ _ \ "
			sleep 0.01
			echo "         ___) | |_| | | | |  __/ | | (_| | |  __/ "
			sleep 0.01
			echo "        |____/ \__, |_| |_|\___|_|  \__, |_|\___| "
			sleep 0.01
			echo "               |___/                |___/         "
			sleep 0.01
			echo -e "\033[0m"
			sleep 0.01
			echo -e "\033[93m"" -------------------   Moje konto   --------------------""\033[0m"
			sleep 0.01
			echo
			sleep 0.01
			echo -e "      \033[33m"$user"\033[0m"
			sleep 0.01
			echo
			sleep 0.01
			if [[ -f ".synergie.log" ]]; then
			tutol=`wc -l .synergie.log | grep -o '[0-9]*'`
			sajz=`du -s . | grep -o "[0-9]*"`
				echo -e '   '"\033[32m"'Wynik:    '"\033[0m""  "$tutol
				sleep 0.01
				echo -e '   '"\033[32m"'Rozmiar:  '"\033[0m""  "$sajz" K"
				sleep 0.01
				echo
				sleep 0.01
				echo -e "   ""\033[32m""1]""\033[0m""  Przełącz na tryb LiveLogin"
				sleep 0.01
			else
				echo -e "\033[33m""   Statystyki i LiveLogin nie będą działać"
				sleep 0.01
				echo -e "  dopóki nie zaczniesz się logować!""\033[0m"
				sleep 0.01
				echo
				sleep 0.01
				echo -e "   ""\033[32m""1]""\033[0m""  Przełącz na tryb LiveLogin (nie działa)"
				sleep 0.01
			fi
			echo -e "   ""\033[32m""2]""\033[0m""  Zmień konto / hasło"
			sleep 0.01
			echo -e "   ""\033[32m""3]""\033[0m""  ""\033[31m""Ustawienia fabryczne""\033[0m"
			sleep 0.01
			echo -e "   ""\033[32m""*]""\033[0m""  Główne menu"
			sleep 0.01
			echo
			sleep 0.01
			echo -ne "  ""\033[36m""Wybierz opcję:""\033[0m"" "
			sleep 0.01
			read accunt
			if [[ $accunt = "1" ]]; then
				true="true"
				while [[ $true != "false" ]]; do
					tutol=`wc -l .synergie.log | grep -o '[0-9]*'`
					clear
					echo
					echo
					echo -e "\033[35m"
					echo "         ____                             _       "
					echo "        / ___| _   _ _ __   ___ _ __ __ _(_) ___  "
					echo "        \___ \| | | | '_ \ / _ \ '__/ _' | |/ _ \ "
					echo "         ___) | |_| | | | |  __/ | | (_| | |  __/ "
					echo "        |____/ \__, |_| |_|\___|_|  \__, |_|\___| "
					echo "               |___/                |___/         "
					echo -e "\033[0m"
					echo -e "\033[93m"" -------------------   LiveLogin   --------------------""\033[0m"
					echo
					echo
					echo -e "        Całkowita ilość zalogowań:   ""\033[33m"$tutol"\033[0m"
					echo
					echo
					echo
					echo "    Kliknij 'm', by wrócić do menu"
					read -s -n 1 entar
					if [[ $entar = "m" ]]; then
						true="false"
					fi
					sleep 2
				done
				sleep 0.9
				echo "   Wracanie do menu..."
				sleep 0.6
				. synergie.sh
			elif [[ $accunt = "2" ]]; then
				clear
				echo
				sleep 0.01
				echo
				sleep 0.01
				echo -e "\033[35m"
				sleep 0.01
				echo "         ____                             _       "
				sleep 0.01
				echo "        / ___| _   _ _ __   ___ _ __ __ _(_) ___  "
				sleep 0.01
				echo "        \___ \| | | | '_ \ / _ \ '__/ _' | |/ _ \ "
				sleep 0.01
				echo "         ___) | |_| | | | |  __/ | | (_| | |  __/ "
				sleep 0.01
				echo "        |____/ \__, |_| |_|\___|_|  \__, |_|\___| "
				sleep 0.01
				echo "               |___/                |___/         "
				sleep 0.01
				echo -e "\033[0m"
				sleep 0.01
				echo -e "\033[93m"" ---------------   Zmień konto / hasło   ---------------""\033[0m"
				sleep 0.01
				echo
				sleep 0.01
				echo -n "   Na pewno chcesz się wylogować? [t/N]: "
				sleep 0.01
				read yesornot
				if [[ $yesornot = "t" ]]; then
					sleep 2
					echo
					echo -n "   Usuwanie plików wejściowych..."
					rm -rf .input .inpoot
					echo -e " ""\033[32m""ZROBIONE""\033[0m"
					sleep 0.4
					echo "   Restartowanie Synergie..."
					sleep 1.6
					. synergie.sh
				else
					echo
					echo "   Uuuuuff"
					sleep 1.3
					echo "   Wracanie do menu..."
					sleep 0.7
					. synergie.sh
				fi
			elif [[ $accunt = "3" ]]; then
				clear
				echo
				sleep 0.01
				echo
				sleep 0.01
				echo -e "\033[35m"
				sleep 0.01
				echo "         ____                             _       "
				sleep 0.01
				echo "        / ___| _   _ _ __   ___ _ __ __ _(_) ___  "
				sleep 0.01
				echo "        \___ \| | | | '_ \ / _ \ '__/ _' | |/ _ \ "
				sleep 0.01
				echo "         ___) | |_| | | | |  __/ | | (_| | |  __/ "
				sleep 0.01
				echo "        |____/ \__, |_| |_|\___|_|  \__, |_|\___| "
				sleep 0.01
				echo "               |___/                |___/         "
				sleep 0.01
				echo -e "\033[0m"
				sleep 0.01
				echo -e "\033[31m"" ----------------   Ustawienia fabryczne   ----------------""\033[0m"
				sleep 0.01
				echo
				sleep 0.01
				echo -e "   ""\033[93m""Czy jesteś pewny, że chcesz wyczyścić wszystkie dane?""\033[0m"
				sleep 0.01
				echo
				sleep 0.01
				echo -e " By to zrobić, napisz: ""\033[33m""Tak, jestem cholernie pewny!""\033[0m"
				sleep 0.01
				echo " albo cokolwiek innego, by anulować"
				sleep 0.01
				echo
				sleep 0.01
				echo -ne "\033[33m""  "
				sleep 0.01
				read kurwa
				echo -e "\033[0m"
				if [[ $kurwa = "Tak, jestem cholernie pewny!" ]]; then
					sleep 3
					echo -n "  Usuwanie plików wejściowych... "
					sleep 0.7
					rm -rf .input .inpoot
					echo -e " ""\033[32m""ZROBIONE""\033[0m"
					echo -n "  Usuwanie danych logowań..."
					sleep 1.6
					rm -rf .synergie.log
					echo -e " ""\033[32m""ZROBIONE""\033[0m"
					sleep 0.5
					echo "  Restartowanie Synergie..."
					sleep 2.2
					. synergie.sh
				else
					echo
					echo "  Uuuuuff"
					sleep 1.3
					echo "  Wracanie do menu..."
					sleep 0.7
					. synergie.sh
				fi
			else
				. synergie.sh
			fi
		elif [[ $guwno = "2" ]]; then
			clear
			echo
			sleep 0.01
			echo
			sleep 0.01
			echo -e "\033[35m"
			sleep 0.01
			echo "         ____                             _       "
			sleep 0.01
			echo "        / ___| _   _ _ __   ___ _ __ __ _(_) ___  "
			sleep 0.01
			echo "        \___ \| | | | '_ \ / _ \ '__/ _' | |/ _ \ "
			sleep 0.01
			echo "         ___) | |_| | | | |  __/ | | (_| | |  __/ "
			sleep 0.01
			echo "        |____/ \__, |_| |_|\___|_|  \__, |_|\___| "
			sleep 0.01
			echo "               |___/                |___/         "
			sleep 0.01
			echo -e "\033[0m"
			sleep 0.01
			echo -e "\033[93m"" --------------------   Logowanie   --------------------""\033[0m"
			sleep 0.01
			echo
			if [[ `curl -s -o /dev/null -w "%{http_code}" http://80.54.46.6/synergie/synergie_core_undefined_shit` = "000" ]]; then
				echo
				sleep 0.01
				echo -e "                    \033[31m""BRAK POŁĄCZENIA!""\033[0m"
				sleep 1.6
				echo
				sleep 0.01
				echo
				sleep 0.01
				echo "   Wracanie do menu..."
				sleep 0.34
				. synergie.sh
			else
				sleep 0.01
				echo -e "  ""\033[36m""Ile razy się zalogować? ('m' by powrócić do menu)""\033[0m"
				sleep 0.01
				echo -n "  "
				sleep 0.01
				read tajmz
				if [ $tajmz -ge 0 ] 2>/dev/null; then
					echo -e "\033[0m""  Proszę czekać..."
					SECONDS=1
					for (( i = 1; i <= $tajmz; i++ )); do
						lynx -nopause -nostatus https://m.synergia.librus.pl/module/Common/action/Login -accept_all_cookies -cmd_script=.input > /dev/null
						percem=`expr $i '*' 100 / $tajmz`
						aprox=`expr $i '*' 60 / $SECONDS`
						tajms=`expr $tajmz - $i`
						left=`expr $tajms '*' 60 / $aprox`
						echo -ne "\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b"
						echo "Login at "`date` >> .synergie.log
						if [ $left -gt '59' ]; then
							lewt=`expr $left / 60`
							echo -ne "  ["$percem"% "$i"/"$tajmz"] Logowanie, zostało ~"$lewt"m ("$aprox"/min)"
						else
							echo -ne "  ["$percem"% "$i"/"$tajmz"] Logowanie, zostało ~"$left"s ("$aprox"/min)"
						fi
					done
					echo
					sleep 0.01
					echo -e "\033[32m""  Zalogowano się "$tajmz" razy w ciągu "$SECONDS" sekund!\033[0m"
					sleep 1.5
					echo
					echo "  Wciśnij [ENTER], by powrócić do menu"
					read enter
					sleep 0.5
					. synergie.sh
				elif [[ $tajmz = "m" ]]; then
					. synergie.sh
				else
					echo
					sleep 0.01
					echo
					sleep 0.01
					echo -e "\033[0m""   ""\033[31m""Głupi debilu wpisz tutaj numer""\033[0m"
					sleep 0.01
					echo
					sleep 0.01
					echo
					sleep 2.5
					echo "  Wracanie do menu..."
					sleep 0.5
					. synergie.sh
				fi
			fi
		elif [[ $guwno = "3" ]]; then
			clear
			echo
			sleep 0.01
			echo
			sleep 0.01
			echo -e "\033[35m"
			sleep 0.01
			echo "         ____                             _       "
			sleep 0.01
			echo "        / ___| _   _ _ __   ___ _ __ __ _(_) ___  "
			sleep 0.01
			echo "        \___ \| | | | '_ \ / _ \ '__/ _' | |/ _ \ "
			sleep 0.01
			echo "         ___) | |_| | | | |  __/ | | (_| | |  __/ "
			sleep 0.01
			echo "        |____/ \__, |_| |_|\___|_|  \__, |_|\___| "
			sleep 0.01
			echo "               |___/                |___/         "
			sleep 0.01
			echo -e "\033[0m"
			sleep 0.01
			echo -e "\033[93m"" --------------------   Autologin   --------------------""\033[0m"
			sleep 0.01
			echo
			if [[ `curl -s -o /dev/null -w "%{http_code}" http://80.54.46.6/synergie/synergie_core_undefined_shit` = "000" ]]; then
				echo
				sleep 0.01
				echo -e "                    \033[31m""BRAK POŁĄCZENIA!""\033[0m"
				sleep 1.6
				echo
				sleep 0.01
				echo
				sleep 0.01
				echo "   Wracanie do menu..."
				sleep 0.34
				. synergie.sh
			else
				sleep 0.01
				echo "  Wpisz 'm', aby powrócić do menu, albo cokolwiek innego, by kontynuować"
				sleep 0.01
				echo -n "   "
				sleep 0.01
				read continuu
				if [[ $continuu = "m" ]]; then
					sleep 0.3
					. synergie.sh
				else
					echo "  Proszę czekać..."
					sleep 0.7
					echo "Login at "`date` >> .synergie.log
					head -n -2 .input > .inpoot
					lynx -nopause -nostatus https://m.synergia.librus.pl/module/Common/action/Login -accept_all_cookies -cmd_script=.inpoot
					. synergie.sh
				fi
			fi
		elif [[ $guwno = "4" ]]; then
			clear
			sleep 0.01
			echo
			sleep 0.01
			echo
			sleep 0.01
			echo -e "\033[35m"
			sleep 0.01
			echo "         ____                             _       "
			sleep 0.01
			echo "        / ___| _   _ _ __   ___ _ __ __ _(_) ___  "
			sleep 0.01
			echo "        \___ \| | | | '_ \ / _ \ '__/ _' | |/ _ \ "
			sleep 0.01
			echo "         ___) | |_| | | | |  __/ | | (_| | |  __/ "
			sleep 0.01
			echo "        |____/ \__, |_| |_|\___|_|  \__, |_|\___| "
			sleep 0.01
			echo "               |___/                |___/         "
			sleep 0.01
			echo -e "\033[0m"
			sleep 0.01
			echo -e "\033[93m"" -------------------   O skrypcie   --------------------""\033[0m"
			sleep 0.01
			echo
			sleep 0.01
			echo -e "  ""\033[33m""Wersja""\033[0m""                                   ""\033[32m""v3.6.9 FINAL"
			sleep 0.01
			echo -e "  ""\033[33m""Opublikowano""\033[0m""                              ""\033[32m""25 Wrz 2019"
			sleep 0.01
			echo -e "  ""\033[33m""Licencja""\033[0m""                                       ""\033[32m""WTFPL"
			sleep 0.01
			echo -e "  ""\033[33m""Opiekun""\033[0m""                           ""\033[32m""Daniel J (akaCzlek)"
			sleep 0.01
			echo
			sleep 0.01
			echo -e "   ""\033[32m""1]""\033[0m""  ""\033[31m""Zniszcz skrypt (odinstaluj)""\033[0m"
			sleep 0.01
			echo -e "   ""\033[32m""2]""\033[0m""  Język"
			sleep 0.01
			echo -e "   ""\033[32m""*]""\033[0m""  Menu główne"
			sleep 0.01
			echo -e "\033[0m"
			sleep 0.01
			echo -ne "  ""\033[36m""Wybierz opcję:""\033[0m"" "
			sleep 0.01
			read guwno
			echo
			if [[ $guwno = "1" ]]; then
				clear
				echo
				sleep 0.01
				echo
				sleep 0.01
				echo -e "\033[35m"
				sleep 0.01
				echo "         ____                             _       "
				sleep 0.01
				echo "        / ___| _   _ _ __   ___ _ __ __ _(_) ___  "
				sleep 0.01
				echo "        \___ \| | | | '_ \ / _ \ '__/ _' | |/ _ \ "
				sleep 0.01
				echo "         ___) | |_| | | | |  __/ | | (_| | |  __/ "
				sleep 0.01
				echo "        |____/ \__, |_| |_|\___|_|  \__, |_|\___| "
				sleep 0.01
				echo "               |___/                |___/         "
				sleep 0.01
				echo -e "\033[0m"
				sleep 0.01
				echo -e "\033[31m"" ---------------------   Odinstaluj   ---------------------""\033[0m"
				sleep 0.01
				echo
				sleep 0.01
				echo -e "   ""\033[93m""Czy jesteś pewny, że chcesz usunąć skrypt""\033[0m"
				sleep 0.01
				echo -e "            ""\033[93m""i wszystkie zapisane ustawienia?""\033[0m"
				sleep 0.01
				echo
				sleep 0.01
				echo -e " By to zrobić, wpisz: ""\033[33m""Tak, jestem idiotą i chcę umrzeć.""\033[0m"
				sleep 0.01
				echo " albo cokolwiek innego, by anulować"
				sleep 0.01
				echo
				sleep 0.01
				echo -ne "\033[33m""  "
				sleep 0.01
				read kurwa
				echo -e "\033[0m"
				sleep 0.01
				if [[ $kurwa = "Tak, jestem idiotą i chcę umrzeć." ]]; then
					sleep 0.3
					echo "  Żegnaj, okrutny świecie..."
					sleep 2.7
					echo -n "  Usuwanie plików wejściowych... "
					sleep 0.7
					rm -rf .input .inpoot
					echo -e " ""\033[32m""ZROBIONE""\033[0m"
					echo -n "  Czyszczenie danych logowań..."
					sleep 1.6
					rm -rf .synergie.log
					echo -e " ""\033[32m""ZROBIONE""\033[0m"
					sleep 0.5
					echo -n "  Niszczenie skryptu..."
					sleep 2.3
					rm -rf synergie.sh
					echo -e " ""\033[32m""ZROBIONE""\033[0m"
					sleep 0.5
					echo -n "  Czyszczenie folderu..."
					sleep 1.2
					rm -rf "../`basename "$PWD"`"
					cd ..
					echo -e " ""\033[32m""ZROBIONE""\033[0m"
					sleep 2.2
					echo -e "  ""\033[35m""Synergie""\033[0m"" zostało ""\033[32m""pomyślnie""\033[0m"" ""\033[31m""usunięte.""\033[0m"
					cd
				else
					echo
					echo "  Uuuuuff"
					sleep 1.3
					echo "  Wracanie do menu..."
					sleep 0.7
					. synergie.sh
				fi
			elif [[ $guwno = "2" ]]; then
				clear
				echo
				sleep 0.01
				echo
				sleep 0.01
				echo -e "\033[35m"
				sleep 0.01
				echo "         ____                             _       "
				sleep 0.01
				echo "        / ___| _   _ _ __   ___ _ __ __ _(_) ___  "
				sleep 0.01
				echo "        \___ \| | | | '_ \ / _ \ '__/ _' | |/ _ \ "
				sleep 0.01
				echo "         ___) | |_| | | | |  __/ | | (_| | |  __/ "
				sleep 0.01
				echo "        |____/ \__, |_| |_|\___|_|  \__, |_|\___| "
				sleep 0.01
				echo "               |___/                |___/         "
				sleep 0.01
				echo -e "\033[0m"
				sleep 0.01
				echo -e "\033[93m"" ---------------------   Język   ----------------------""\033[0m"
				sleep 0.01
				echo
				sleep 0.01
				echo -e "   1) English"
				sleep 0.01
				echo -e "   2) Polski"
				sleep 0.01
				echo -e "   *) Menu główne"
				sleep 0.01
				echo
				sleep 0.01
				echo
				sleep 0.01
				echo -ne "  ""\033[36m""Wybierz język:""\033[0m"" "
				read lang
				if [[ $lang = "1" ]]; then
					echo
					sleep 0.9
					echo "   Proszę czekać..."
					sleep 2.4
					rm -rf .pl
					echo "   Restartowanie skryptu..."
					sleep 0.7
					. synergie.sh
				elif [[ $lang = "2" ]]; then
					echo
					sleep 0.9
					echo "   To jest polski geniuszu"
					sleep 1.7
					echo "   Wracanie do menu..."
					sleep 0.4
					. synergie.sh
				else
					echo
					echo "   Wracanie do menu..."
					sleep 0.7
					. synergie.sh
				fi
			else
				. synergie.sh
			fi
		elif [[ $guwno = "x" ]]; then
			clear
			echo
			sleep 0.01
			echo -e "\033[35m"
			sleep 0.01
			echo "    ____                   _     _               _       "
			sleep 0.01
			echo "   |  _ \  ___   __      _(_) __| |_______ _ __ (_) __ _ "
			sleep 0.01
			echo "   | | | |/ _ \  \ \ /\ / / |/ _\` |_  / _ \ '_ \| |/ _\` |"
			sleep 0.01
			echo "   | |_| | (_) |  \ V  V /| | (_| |/ /  __/ | | | | (_| |"
			sleep 0.01
			echo "   |____/ \___/    \_/\_/ |_|\__,_/___\___|_| |_|_|\__,_|"
			sleep 0.01
			echo -e "      ""\033[33m"""$user"!""\033[0m"
			sleep 0.01
			echo
			sleep 0.01
			echo
			sleep 0.01
		else
			. synergie.sh
		fi
	else
		echo -e "  ""\033[93m""Musisz skonfigurować swoje konto.""\033[0m"
		sleep 0.01
		echo
		sleep 0.01
		sleep 0.5
		echo -ne "   Wpisz swoją nazwę użytkownika: ""\033[32m"
		read password
		echo -ne "\033[0m""   Wpisz swoje hasło: ""\033[32m"
		read username
		echo -e "\033[0m"
		echo -n "   Zapisywanie..."
		for (( i=0; i<${#password}; i++ )); do
			echo key "${password:$i:1}" >> .input
		done
		echo "key <tab>" >> .input
		for (( i=0; i<${#username}; i++ )); do
			echo key "${username:$i:1}" >> .input
		done
		echo "key <tab>" >> .input
		echo "key ^J" >> .input
		echo "key ^q" >> .input
		echo "key q" >> .input
		sleep 0.8
		echo -e " ""\033[32m""ZROBIONE""\033[0m"
		sleep 0.2
		echo "   Restartowanie skryptu..."
		sleep 2
		. synergie.sh
	fi
	else
	clear
	echo
	sleep 0.01
	echo
	sleep 0.01
	echo -e "\033[35m"
	sleep 0.01
	echo "         ____                             _       "
	sleep 0.01
	echo "        / ___| _   _ _ __   ___ _ __ __ _(_) ___  "
	sleep 0.01
	echo "        \___ \| | | | '_ \ / _ \ '__/ _' | |/ _ \ "
	sleep 0.01
	echo "         ___) | |_| | | | |  __/ | | (_| | |  __/ "
	sleep 0.01
	echo "        |____/ \__, |_| |_|\___|_|  \__, |_|\___| "
	sleep 0.01
	echo "               |___/                |___/         "
	sleep 0.01
	echo -e "\033[0m"
	sleep 0.01
	if [[ -f ".input" ]]; then
		echo -e "\033[93m"" --------------------   Main menu   --------------------""\033[0m"
		sleep 0.01
		echo
		sleep 0.01
		echo -e "   ""\033[32m""1]""\033[0m""  Current account"
		sleep 0.01
		echo -e "   ""\033[32m""2]""\033[0m""  Start logging in"
		sleep 0.01
		echo -e "   ""\033[32m""3]""\033[0m""  Autologin to Synergia"
		sleep 0.01
		echo -e "   ""\033[32m""4]""\033[0m""  About"
		sleep 0.01
		echo -e "   ""\033[32m""x]""\033[0m""  Exit"
		sleep 0.01
		echo -e "\033[0m"
		sleep 0.01
		echo -ne "  ""\033[36m""Select an option:""\033[0m"" "
		sleep 0.01
		read guwno
		echo
		sleep 0.01
		if [[ $guwno = "1" ]]; then
			clear
			sleep 0.01
			echo
			sleep 0.01
			echo
			sleep 0.01
			echo -e "\033[35m"
			sleep 0.01
			echo "         ____                             _       "
			sleep 0.01
			echo "        / ___| _   _ _ __   ___ _ __ __ _(_) ___  "
			sleep 0.01
			echo "        \___ \| | | | '_ \ / _ \ '__/ _' | |/ _ \ "
			sleep 0.01
			echo "         ___) | |_| | | | |  __/ | | (_| | |  __/ "
			sleep 0.01
			echo "        |____/ \__, |_| |_|\___|_|  \__, |_|\___| "
			sleep 0.01
			echo "               |___/                |___/         "
			sleep 0.01
			echo -e "\033[0m"
			sleep 0.01
			echo -e "\033[93m"" -------------------   My account   --------------------""\033[0m"
			sleep 0.01
			echo
			sleep 0.01
			echo -e "      \033[33m"$user"\033[0m"
			sleep 0.01
			echo
			sleep 0.01
			if [[ -f ".synergie.log" ]]; then
			tutol=`wc -l .synergie.log | grep -o '[0-9]*'`
			sajz=`du -s . | grep -o "[0-9]*"`
				echo -e '   '"\033[32m"'Score:  '"\033[0m""  "$tutol
				sleep 0.01
				echo -e '   '"\033[32m"'Size:   '"\033[0m""  "$sajz" K"
				sleep 0.01
				echo
				sleep 0.01
				echo -e "   ""\033[32m""1]""\033[0m""  Switch to LiveLogin"
				sleep 0.01
			else
				echo -e "\033[33m""   Stats and LiveLogin won't work"
				sleep 0.01
				echo -e "  until you start logging in!""\033[0m"
				sleep 0.01
				echo
				sleep 0.01
				echo -e "   ""\033[32m""1]""\033[0m""  Switch to LiveLogin (broken)"
				sleep 0.01
			fi
			echo -e "   ""\033[32m""2]""\033[0m""  Change account/password"
			sleep 0.01
			echo -e "   ""\033[32m""3]""\033[0m""  ""\033[31m""Factory reset""\033[0m"
			sleep 0.01
			echo -e "   ""\033[32m""*]""\033[0m""  Main Menu"
			sleep 0.01
			echo
			sleep 0.01
			echo -ne "  ""\033[36m""Select an option:""\033[0m"" "
			sleep 0.01
			read accunt
			if [[ $accunt = "1" ]]; then
				true="true"
				while [[ $true != "false" ]]; do
					tutol=`wc -l .synergie.log | grep -o '[0-9]*'`
					clear
					echo
					echo
					echo -e "\033[35m"
					echo "         ____                             _       "
					echo "        / ___| _   _ _ __   ___ _ __ __ _(_) ___  "
					echo "        \___ \| | | | '_ \ / _ \ '__/ _' | |/ _ \ "
					echo "         ___) | |_| | | | |  __/ | | (_| | |  __/ "
					echo "        |____/ \__, |_| |_|\___|_|  \__, |_|\___| "
					echo "               |___/                |___/         "
					echo -e "\033[0m"
					echo -e "\033[93m"" -------------------   LiveLogin   --------------------""\033[0m"
					echo
					echo
					echo -e "        Number of logins:   ""\033[33m"$tutol"\033[0m"
					echo
					echo
					echo
					echo "    Press 'm' to return to menu"
					read -s -n 1 entar
					if [[ $entar = "m" ]]; then
						true="false"
					fi
					sleep 2
				done
				sleep 0.9
				echo "   Returning to menu..."
				sleep 0.6
				. synergie.sh
			elif [[ $accunt = "2" ]]; then
				clear
				echo
				sleep 0.01
				echo
				sleep 0.01
				echo -e "\033[35m"
				sleep 0.01
				echo "         ____                             _       "
				sleep 0.01
				echo "        / ___| _   _ _ __   ___ _ __ __ _(_) ___  "
				sleep 0.01
				echo "        \___ \| | | | '_ \ / _ \ '__/ _' | |/ _ \ "
				sleep 0.01
				echo "         ___) | |_| | | | |  __/ | | (_| | |  __/ "
				sleep 0.01
				echo "        |____/ \__, |_| |_|\___|_|  \__, |_|\___| "
				sleep 0.01
				echo "               |___/                |___/         "
				sleep 0.01
				echo -e "\033[0m"
				sleep 0.01
				echo -e "\033[93m"" ------------   Change account / password   ------------""\033[0m"
				sleep 0.01
				echo
				sleep 0.01
				echo -n "   Are you sure to logout? [y/N]: "
				sleep 0.01
				read yesornot
				if [[ $yesornot = "y" ]]; then
					sleep 2
					echo
					echo -n "   Removing input file..."
					rm -rf .input .inpoot
					echo -e " ""\033[32m""DONE""\033[0m"
					sleep 0.4
					echo "   Restarting Synergie..."
					sleep 1.6
					. synergie.sh
				else
					echo
					echo "   Oooof"
					sleep 1.3
					echo "   Returning to main menu..."
					sleep 0.7
					. synergie.sh
				fi
			elif [[ $accunt = "3" ]]; then
				clear
				echo
				sleep 0.01
				echo
				sleep 0.01
				echo -e "\033[35m"
				sleep 0.01
				echo "         ____                             _       "
				sleep 0.01
				echo "        / ___| _   _ _ __   ___ _ __ __ _(_) ___  "
				sleep 0.01
				echo "        \___ \| | | | '_ \ / _ \ '__/ _' | |/ _ \ "
				sleep 0.01
				echo "         ___) | |_| | | | |  __/ | | (_| | |  __/ "
				sleep 0.01
				echo "        |____/ \__, |_| |_|\___|_|  \__, |_|\___| "
				sleep 0.01
				echo "               |___/                |___/         "
				sleep 0.01
				echo -e "\033[0m"
				sleep 0.01
				echo -e "\033[31m"" -------------------   Factory Reset   --------------------""\033[0m"
				sleep 0.01
				echo
				sleep 0.01
				echo -e "   ""\033[93m""Are you sure to wipe all your data?""\033[0m"
				sleep 0.01
				echo
				sleep 0.01
				echo -e " To do this, write: ""\033[33m""Yes, I am damn serious!""\033[0m"
				sleep 0.01
				echo " or anything else to abort"
				sleep 0.01
				echo
				sleep 0.01
				echo -ne "\033[33m""  "
				sleep 0.01
				read kurwa
				echo -e "\033[0m"
				if [[ $kurwa = "Yes, I am damn serious!" ]]; then
					sleep 3
					echo -n "  Removing input files... "
					sleep 0.7
					rm -rf .input .inpoot
					echo -e " ""\033[32m""DONE""\033[0m"
					echo -n "  Wiping login data..."
					sleep 1.6
					rm -rf .synergie.log
					echo -e " ""\033[32m""DONE""\033[0m"
					sleep 0.5
					echo "  Restarting Synergie..."
					sleep 2.2
					. synergie.sh
				else
					echo
					echo "  Oooof"
					sleep 1.3
					echo "  Returning to main menu..."
					sleep 0.7
					. synergie.sh
				fi
			else
				. synergie.sh
			fi
		elif [[ $guwno = "2" ]]; then
			clear
			echo
			sleep 0.01
			echo
			sleep 0.01
			echo -e "\033[35m"
			sleep 0.01
			echo "         ____                             _       "
			sleep 0.01
			echo "        / ___| _   _ _ __   ___ _ __ __ _(_) ___  "
			sleep 0.01
			echo "        \___ \| | | | '_ \ / _ \ '__/ _' | |/ _ \ "
			sleep 0.01
			echo "         ___) | |_| | | | |  __/ | | (_| | |  __/ "
			sleep 0.01
			echo "        |____/ \__, |_| |_|\___|_|  \__, |_|\___| "
			sleep 0.01
			echo "               |___/                |___/         "
			sleep 0.01
			echo -e "\033[0m"
			sleep 0.01
			echo -e "\033[93m"" -------------------   Login l00p   --------------------""\033[0m"
			sleep 0.01
			echo
			sleep 0.01
			if [[ `curl -s -o /dev/null -w "%{http_code}" http://80.54.46.6/synergie/synergie_core_undefined_shit` = "000" ]]; then
				echo
				sleep 0.01
				echo -e "                      \033[31m""NO CONNECTION!""\033[0m"
				sleep 1.6
				echo
				sleep 0.01
				echo
				sleep 0.01
				echo "   Returning to menu..."
				sleep 0.34
				. synergie.sh
			else
				echo -e "  ""\033[36m""How many times to login? ('m' to return to menu)""\033[0m"
				sleep 0.01
				echo -n "  "
				sleep 0.01
				read tajmz
				if [ $tajmz -ge 0 ] 2>/dev/null; then
					echo -e "\033[0m""  Please wait..."
					SECONDS=1
					for (( i = 1; i <= $tajmz; i++ )); do
						lynx -nopause -nostatus https://m.synergia.librus.pl/module/Common/action/Login -accept_all_cookies -cmd_script=.input > /dev/null
						percem=`expr $i '*' 100 / $tajmz`
						aprox=`expr $i '*' 60 / $SECONDS`
						tajms=`expr $tajmz - $i`
						left=`expr $tajms '*' 60 / $aprox`
						echo -ne "\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b"
						echo "Login at "`date` >> .synergie.log
						if [ $left -gt '59' ]; then
							lewt=`expr $left / 60`
							echo -ne "  ["$percem"% "$i"/"$tajmz"] Logging in, ~"$lewt"m left ("$aprox"/min)"
						else
							echo -ne "  ["$percem"% "$i"/"$tajmz"] Logging in, ~"$left"s left ("$aprox"/min)"
						fi
					done
					echo
					sleep 0.01
					echo -e "\033[32m""  Logged in "$tajmz" times in "$SECONDS" seconds.\033[0m"
					sleep 1.5
					echo
				echo "  Press [ENTER] to return to menu"
				read enter
				sleep 0.5
				. synergie.sh
				elif [[ $tajmz = "m" ]]; then
					. synergie.sh
				else
					echo
					sleep 0.01
					echo
					sleep 0.01
					echo -e "\033[0m""   ""\033[31m""Dumb idiot write a number here""\033[0m"
					sleep 0.01
					echo
					sleep 0.01
					echo
					sleep 2.5
					echo "  Exiting to menu..."
					sleep 0.5
					. synergie.sh
				fi
			fi
		elif [[ $guwno = "3" ]]; then
			clear
			echo
			sleep 0.01
			echo
			sleep 0.01
			echo -e "\033[35m"
			sleep 0.01
			echo "         ____                             _       "
			sleep 0.01
			echo "        / ___| _   _ _ __   ___ _ __ __ _(_) ___  "
			sleep 0.01
			echo "        \___ \| | | | '_ \ / _ \ '__/ _' | |/ _ \ "
			sleep 0.01
			echo "         ___) | |_| | | | |  __/ | | (_| | |  __/ "
			sleep 0.01
			echo "        |____/ \__, |_| |_|\___|_|  \__, |_|\___| "
			sleep 0.01
			echo "               |___/                |___/         "
			sleep 0.01
			echo -e "\033[0m"
			sleep 0.01
			echo -e "\033[93m"" --------------------   Autologin   --------------------""\033[0m"
			sleep 0.01
			echo
			if [[ `curl -s -o /dev/null -w "%{http_code}" http://80.54.46.6/synergie/synergie_core_undefined_shit` = "000" ]]; then
				echo
				sleep 0.01
				echo -e "                      \033[31m""NO CONNECTION!""\033[0m"
				sleep 1.6
				echo
				sleep 0.01
				echo
				sleep 0.01
				echo "   Returning to menu..."
				sleep 0.34
				. synergie.sh
			else
				sleep 0.01
				echo "  Type 'm' to return to menu or anything else to continue"
				sleep 0.01
				echo -n "   "
				sleep 0.01
				read continuu
				if [[ $continuu = "m" ]]; then
					sleep 0.3
					. synergie.sh
				else
					echo "  Please wait..."
					sleep 0.7
					echo "Login at "`date` >> .synergie.log
					head -n -2 .input > .inpoot
					lynx -nopause -nostatus https://m.synergia.librus.pl/module/Common/action/Login -accept_all_cookies -cmd_script=.inpoot
					. synergie.sh
				fi
			fi
		elif [[ $guwno = "4" ]]; then
			clear
			sleep 0.01
			echo
			sleep 0.01
			echo
			sleep 0.01
			echo -e "\033[35m"
			sleep 0.01
			echo "         ____                             _       "
			sleep 0.01
			echo "        / ___| _   _ _ __   ___ _ __ __ _(_) ___  "
			sleep 0.01
			echo "        \___ \| | | | '_ \ / _ \ '__/ _' | |/ _ \ "
			sleep 0.01
			echo "         ___) | |_| | | | |  __/ | | (_| | |  __/ "
			sleep 0.01
			echo "        |____/ \__, |_| |_|\___|_|  \__, |_|\___| "
			sleep 0.01
			echo "               |___/                |___/         "
			sleep 0.01
			echo -e "\033[0m"
			sleep 0.01
			echo -e "\033[93m"" ----------------------   About   ----------------------""\033[0m"
			sleep 0.01
			echo
			sleep 0.01
			echo -e "  ""\033[33m""Version""\033[0m""                                  ""\033[32m""v3.6.9 FINAL"
			sleep 0.01
			echo -e "  ""\033[33m""Released""\033[0m""                                  ""\033[32m""25 Sep 2019"
			sleep 0.01
			echo -e "  ""\033[33m""License""\033[0m""                                         ""\033[32m""WTFPL"
			sleep 0.01
			echo -e "  ""\033[33m""Maintainer""\033[0m""                        ""\033[32m""Daniel J (akaCzlek)"
			sleep 0.01
			echo
			sleep 0.01
			echo -e "   ""\033[32m""1]""\033[0m""  ""\033[31m""Destroy script""\033[0m"
			sleep 0.01
			echo -e "   ""\033[32m""2]""\033[0m""  Language"
			sleep 0.01
			echo -e "   ""\033[32m""*]""\033[0m""  Main menu"
			sleep 0.01
			echo -e "\033[0m"
			sleep 0.01
			echo -ne "  ""\033[36m""Select an option:""\033[0m"" "
			sleep 0.01
			read guwno
			echo
			if [[ $guwno = "1" ]]; then
				clear
				echo
				sleep 0.01
				echo
				sleep 0.01
				echo -e "\033[35m"
				sleep 0.01
				echo "         ____                             _       "
				sleep 0.01
				echo "        / ___| _   _ _ __   ___ _ __ __ _(_) ___  "
				sleep 0.01
				echo "        \___ \| | | | '_ \ / _ \ '__/ _' | |/ _ \ "
				sleep 0.01
				echo "         ___) | |_| | | | |  __/ | | (_| | |  __/ "
				sleep 0.01
				echo "        |____/ \__, |_| |_|\___|_|  \__, |_|\___| "
				sleep 0.01
				echo "               |___/                |___/         "
				sleep 0.01
				echo -e "\033[0m"
				sleep 0.01
				echo -e "\033[31m"" ---------------------   Uninstall   ----------------------""\033[0m"
				sleep 0.01
				echo
				sleep 0.01
				echo -e "   ""\033[93m""Are you sure to uninstall and wipe ALL data?""\033[0m"
				sleep 0.01
				echo
				sleep 0.01
				echo -e " To do this, write: ""\033[33m""Yes, I am faggot and want to die.""\033[0m"
				sleep 0.01
				echo " or anything else to abort"
				sleep 0.01
				echo
				sleep 0.01
				echo -ne "\033[33m""  "
				sleep 0.01
				read kurwa
				echo -e "\033[0m"
				sleep 0.01
				if [[ $kurwa = "Yes, I am faggot and want to die." ]]; then
					sleep 0.3
					echo "  Goodbye cruel world..."
					sleep 2.7
					echo -n "  Removing input files... "
					sleep 0.7
					rm -rf .input .inpoot
					echo -e " ""\033[32m""DONE""\033[0m"
					echo -n "  Wiping login data..."
					sleep 1.6
					rm -rf .synergie.log
					echo -e " ""\033[32m""DONE""\033[0m"
					sleep 0.5
					echo -n "  Wiping core..."
					sleep 2.3
					rm -rf synergie.sh
					echo -e " ""\033[32m""DONE""\033[0m"
					sleep 0.5
					echo -n "  Clean-up..."
					sleep 1.2
					rm -rf "../`basename "$PWD"`"
					cd ..
					echo -e " ""\033[32m""DONE""\033[0m"
					sleep 2.2
					echo -e "  ""\033[35m""Synergie""\033[0m"" has been ""\033[32m""successfully""\033[0m"" ""\033[31m""removed.""\033[0m"
					cd
				else
					echo
					echo "  Oooof"
					sleep 1.3
					echo "  Returning to main menu..."
					sleep 0.7
					. synergie.sh
				fi
			elif [[ $guwno = "2" ]]; then
				clear
				echo
				sleep 0.01
				echo
				sleep 0.01
				echo -e "\033[35m"
				sleep 0.01
				echo "         ____                             _       "
				sleep 0.01
				echo "        / ___| _   _ _ __   ___ _ __ __ _(_) ___  "
				sleep 0.01
				echo "        \___ \| | | | '_ \ / _ \ '__/ _' | |/ _ \ "
				sleep 0.01
				echo "         ___) | |_| | | | |  __/ | | (_| | |  __/ "
				sleep 0.01
				echo "        |____/ \__, |_| |_|\___|_|  \__, |_|\___| "
				sleep 0.01
				echo "               |___/                |___/         "
				sleep 0.01
				echo -e "\033[0m"
				sleep 0.01
				echo -e "\033[93m"" ---------------------   Language   --------------------""\033[0m"
				sleep 0.01
				echo
				sleep 0.01
				echo -e "   1) English"
				sleep 0.01
				echo -e "   2) Polski"
				sleep 0.01
				echo -e "   *) Main menu"
				sleep 0.01
				echo
				sleep 0.01
				echo
				sleep 0.01
				echo -ne "  ""\033[36m""Select language:""\033[0m"" "
				read lang
				if [[ $lang = "1" ]]; then
				echo
				sleep 0.9
				echo "   This is English nigger!"
				sleep 1.7
				echo "   Exiting to menu..."
				sleep 0.4
				. synergie.sh
				elif [[ $lang = "2" ]]; then
				echo
				sleep 0.9
				echo "   Please wait..."
				sleep 2.4
				touch .pl
				echo "   Restarting script..."
				sleep 0.7
				. synergie.sh
				else
				echo
				echo "   Returning to menu..."
				sleep 0.7
				. synergie.sh
				fi
			elif [[ $guwno = "m" ]]; then
				. synergie.sh
			else
				. synergie.sh
			fi
		elif [[ $guwno = "x" ]]; then
			clear
			echo
			sleep 0.01
			echo -e "\033[35m"
			sleep 0.01
			echo "     ____                 _ _"
			sleep 0.01
			echo "    / ___| ___   ___   __| | |__  _   _  ___"
			sleep 0.01
			echo "   | |  _ / _ \ / _ \ / _\` | '_ \| | | |/ _ \ "
			sleep 0.01
			echo "   | |_| | (_) | (_) | (_| | |_) | |_| |  __/_"
			sleep 0.01
			echo "    \____|\___/ \___/ \__,_|_.__/ \__, |\___( )"
			sleep 0.01
			echo "                                  |___/     |/"
			sleep 0.01
			echo -e "      ""\033[33m"""$user"!""\033[0m"
			sleep 0.01
			echo
			sleep 0.01
			echo
			sleep 0.01
		else
			. synergie.sh
		fi
	else
		echo -e "  ""\033[93m""You need to configure your account.""\033[0m"
		sleep 0.01
		echo
		sleep 0.01
		sleep 0.5
		echo -ne "   Enter your ""\033[35m""Synergia""\033[0m"" username: ""\033[32m"
		read password
		echo -ne "\033[0m""   Enter your ""\033[35m""Synergia""\033[0m"" password: ""\033[32m"
		read username
		echo -e "\033[0m"
		echo -n "   Saving config..."
		for (( i=0; i<${#password}; i++ )); do
			echo key "${password:$i:1}" >> .input
		done
		echo "key <tab>" >> .input
		for (( i=0; i<${#username}; i++ )); do
			echo key "${username:$i:1}" >> .input
		done
		echo "key <tab>" >> .input
		echo "key ^J" >> .input
		echo "key ^q" >> .input
		echo "key q" >> .input
		sleep 0.8
		echo -e " ""\033[32m""Done""\033[0m"
		sleep 0.2
		echo "   Restarting script..."
		sleep 2
		. synergie.sh
	fi
	fi
else
	echo
	sleep 0.01
	echo -e "\033[35m"
	sleep 0.01
	echo "         ____                             _       "
	sleep 0.01
	echo "        / ___| _   _ _ __   ___ _ __ __ _(_) ___  "
	sleep 0.01
	echo "        \___ \| | | | '_ \ / _ \ '__/ _' | |/ _ \ "
	sleep 0.01
	echo "         ___) | |_| | | | |  __/ | | (_| | |  __/ "
	sleep 0.01
	echo "        |____/ \__, |_| |_|\___|_|  \__, |_|\___| "
	sleep 0.01
	echo "               |___/                |___/         "
	sleep 0.01
	echo -e "\033[0m"
	sleep 0.01
	echo
	sleep 0.01
	echo -e "     ""\033[31m""You stupid idiot STOP SPOILING\033[0m"
	sleep 0.01
	echo
	sleep 0.01
	echo "  and rename this script to synergie.sh"
	sleep 0.01
	echo -e "   or \033[93mGTFO\033[0m"
	sleep 0.01
	echo
	sleep 0.01
	echo
fi
