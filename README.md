# Pushover CLI
A command line tool for [Pushover](https://pushover.net/) notifications. This project is not written, maintained, or supported by Superblock (the creators of Pushover), and is not an official tool.


## Installation
```
git clone git@github.com:aaronfagan/pushover-cli.git && \
find ./pushover-cli -type f -name "install.sh" -exec chmod +x {} \; -exec bash {} \; && \
rm -rf ./pushover-cli
```

## Usage
Run `pushover --help` for usage instructions.

### Configuration
```
pushover --configure
```

### Upgrade
```
pushover --upgrade
```

# Contributors
* Aaron Fagan - [Github](https://github.com/aaronfagan), [Website](https://www.aaronfagan.ca/)
