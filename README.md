# homebrew-gt
This repository is a Homebrew Tap for Georgia Tech class-related formulae. Maintained by Cem Gokmen (cgokmen at gatech dot edu).

## Setting up
Open your Terminal - either use Spotlight Search (CMD + Space) and search for Terminal, or find it through Finder as Applications/Utilities/Terminal.app

Install homebrew if you haven't already:
```bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

Then tap into this repo:
```bash
brew tap skyman/gt
```

## CS 2110
The following packages are used for CS 2110.

### Installing / Upgrading complx
First update your Homebrew repositories:
```bash
brew update
```

Then install the complx formula:
```bash
brew install complx
```

If you already have it installed and want to upgrade to a newer version:
```bash
brew upgrade complx
```

You can then access the complx executables (`complx`, `lc3test`, `as2obj`) directly through your Terminal.app:
```bash
complx
```

### Installing / Upgrading nin10kit
First update your Homebrew repositories:
```bash
brew update
```

Then install the nin10kit formula:
```bash
brew install nin10kit
```

If you already have it installed and want to upgrade to a newer version:
```bash
brew upgrade nin10kit
```

You can then access the nin10kit executable (`nin10kit`) directly through your Terminal.app:
```bash
nin10kit
```
