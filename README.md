uva-tools
===================


Fork of the command Line Based Tool for [uva onlinejudge](https://uva.onlinejudge.org/), [uva-tool](https://github.com/arafat-hasan/uva-tool).

Allows the user to download a problem, automatically display it, submit a solution and see the veredict.

## Dependency
- Command line based tool [`curl`](https://curl.haxx.se/)


## External Libraries
- [`nlohmann json`](https://github.com/nlohmann/json) C++ library


## Installation
General installation process is only available for Linux operating system.

- **Install `curl`:** Download and install [curl](https://github.com/curl/curl) (website: https://curl.haxx.se/). On ubuntu to install curl execute  

```sh
sudo apt install curl #Debian based
sudo pacman -S curl   #Arch based
```
- **Download uva-tools:** Execute command

```sh
git clone https://github.com/vlermandac/uva-tools
```
- **Install uva-tools:** In the downloaded folder `uva-tools`, look for `install.sh` file and execute it (C++ compiler needed here, GNU g++ used in testing).  

```sh
chmod +x install.sh 
./install.sh
```
- **Setup uva-tools:** You might want to run the setup option. The program will ask you for all that is needed to work, so you don't have to worry after.

```sh
uva --setup
```

## Usage
Use -h or --help to display the help message.
```sh
$uva -h
Usage: uva [OPTIONS] <parameters>
Options:
  --setup                         set all that's needed to properly work. ("-l" + "-d" + "-w").
	-d, --path <path>               set path where the download problems will be stored.
	-w, --pdf-viewer <pdfviewer>    set PDF viewer.
	-l, --login                     log in in Online Judge (UVa).
	-p, --problem <problemid>       download and display a problem. If the problem was already downloaded, just display it.
	-po,--problem-only  <problemid> download a problem.
	-s, --submit <file>             submit a problem, your file MUST have the same name as the problem id. The program will guess the programming language.
	-v, --veredict <number>         show your last <number> problem's veredict. No argument means 1.
```
**Examples** 
- Download and display problem: `uva -p problem_id`
- Submit problem solution: `uva -s solution_file_path`
- See your n last veredicts: `uva -v n` (no n will show your last veredict).


## Notes

This project doesn't have a lot of functionalities that the original does, you might wanna look [uva-tool](https://github.com/arafat-hasan/uva-tool) as well.

First bash script, there must be a lot of things to improve, starting with the names of the files which are pretty similar lol.
Anyway, it was a fun project. Hope you enjoy it.

