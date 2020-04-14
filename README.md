# Synergie
Bash script which makes continuous login requests to Librus Synergia. Synergie allows you also to browse your grades, timetable, attendances & more. Don't worry, your account won't be banned.

**Please note that Synergie is a CLI app and there is no GUI included.**

| Overview table   |                |
| :--------------- | :------------- |
| Version          | v3.6.9 FINAL   |
| Condition        | Stable         |
| Released         | 10 Jun 2019    |
| Avg. login speed | ~50/min        |
| License          | WTFPL          |
| Languages        | 2              |

-----

## Installation on Android
1. Install an app called `Termux`.
2. Once installed, open it and wait until it prepares its files.
3. Install required packages by typing:
```
pkg install -y curl libcurl lynx git
```
4. Now download Synergie. (copy-paste the code below)
```
git clone https://gitlab.com/czlek/synergie.git
```
5. Now, go to ***Running Synergie*** section.

-----

## Installation on Linux (Debian-based distros)
1. Open an app called `Terminal` (or access shell via SSH)
2. Firstly, install required packages. (copy-paste code below)
```
sudo apt install -y curl lynx git
```
3. And now, download Synergie with the following command:
```
git clone https://github.com/czl3k/synergie.git
```
4. Now, go to ***Running Synergie*** section.

-----

## Installation on Windows
Windows is not supported bitches

due **it's one big useless piece of shit**

-----

## Running Synergie
Things which you need to do every time you open Terminal:

1. Navigate to app's working directory:
```
cd synergie
```
2. And, finally, run the script.
```
source synergie.sh
```
3. All done! Now you are the most urgent person in your class.

## Notes
- Script is abandoned
- If you provide wrong username/password the script won't work and will stuck on continuous login mode.
- Continuous login speed depends on your hardware and internet connection.
